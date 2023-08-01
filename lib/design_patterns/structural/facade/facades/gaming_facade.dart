import 'package:flutter_design_patterns/design_patterns/structural/facade/apis/camera_api.dart';
import 'package:flutter_design_patterns/design_patterns/structural/facade/apis/playstation_api.dart';
import 'package:flutter_design_patterns/design_patterns/structural/facade/smart_home_state.dart';

class GamingFacade {
  final PlaystationApi playstationApi;
  final CameraApi cameraApi;
  const GamingFacade({
    this.playstationApi = const PlaystationApi(),
    this.cameraApi = const CameraApi(),
  });

  void startGaming(SmartHomeState smartHomeState) {
    smartHomeState.gamingConsoleOn = playstationApi.turnOn();
  }

  void stopGaming(SmartHomeState smartHomeState) {
    smartHomeState.gamingConsoleOn = playstationApi.turnOff();
  }

  void startStreaming(SmartHomeState smartHomeState) {
    smartHomeState.streamingCameraOn = cameraApi.turnCameraOn();
  }

  void stopStreaming(SmartHomeState smartHomeState) {
    smartHomeState.streamingCameraOn = cameraApi.turnCameraOff();
  }
}
