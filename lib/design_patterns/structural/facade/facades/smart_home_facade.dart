import 'package:flutter_design_patterns/design_patterns/structural/facade/apis/audio_api.dart';
import 'package:flutter_design_patterns/design_patterns/structural/facade/apis/netflix_api.dart';
import 'package:flutter_design_patterns/design_patterns/structural/facade/apis/smart_home_api.dart';
import 'package:flutter_design_patterns/design_patterns/structural/facade/apis/tv_api.dart';
import 'package:flutter_design_patterns/design_patterns/structural/facade/facades/gaming_facade.dart';
import 'package:flutter_design_patterns/design_patterns/structural/facade/smart_home_state.dart';

class SmartHomeFacade {
  final GamingFacade gamingFacade;
  final TvApi tvApi;
  final AudioApi audioApi;
  final NetflixApi netflixApi;
  final SmartHomeApi smartHomeApi;

  const SmartHomeFacade({
    this.gamingFacade = const GamingFacade(),
    this.tvApi = const TvApi(),
    this.audioApi = const AudioApi(),
    this.netflixApi = const NetflixApi(),
    this.smartHomeApi = const SmartHomeApi(),
  });

  // ** Start Movie
  void startMovie(SmartHomeState smartHomeState, String movieTitle) {
    smartHomeState.lightsOn = smartHomeApi.turnLightsOff();
    smartHomeState.tvOn = tvApi.turnOn();
    smartHomeState.audioSystemOn = audioApi.turnSpeakerOn();
    smartHomeState.netflixConnected = netflixApi.connect();
    netflixApi.play(movieTitle);
  }

  // ** Stop Movie
  void stopMovie(SmartHomeState smartHomeState) {
    smartHomeState.netflixConnected = netflixApi.disconnect();
    smartHomeState.tvOn = tvApi.turnOff();
    smartHomeState.audioSystemOn = audioApi.turnSpeakerOff();
    smartHomeState.lightsOn = smartHomeApi.turnLightsOn();
  }

  // ** Start Gaming
  void startGaming(SmartHomeState smartHomeState) {
    smartHomeState.lightsOn = smartHomeApi.turnLightsOff();
    smartHomeState.tvOn = tvApi.turnOn();
    gamingFacade.startGaming(smartHomeState);
  }

  // ** Stop Gaming
  void stopGaming(SmartHomeState smartHomeState) {
    gamingFacade.stopGaming(smartHomeState);
    smartHomeState.tvOn = tvApi.turnOff();
    smartHomeState.lightsOn = smartHomeApi.turnLightsOn();
  }

  // ** Start Streaming
  void startStreaming(SmartHomeState smartHomeState) {
    smartHomeState.lightsOn = smartHomeApi.turnLightsOn();
    smartHomeState.tvOn = tvApi.turnOn();
    gamingFacade.startStreaming(smartHomeState);
  }

  // ** Stop Streaming
  void stopStreaming(SmartHomeState smartHomeState) {
    gamingFacade.stopStreaming(smartHomeState);
    smartHomeState.tvOn = tvApi.turnOff();
    smartHomeState.lightsOn = smartHomeApi.turnLightsOn();
  }
}
