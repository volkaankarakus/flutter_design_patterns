import 'package:flutter_design_patterns/design_patterns/behavioral/mediator/notification_hub.dart';

base class TeamMember {
  final String name;
  TeamMember({required this.name});

  NotificationHub? notificationHub;
  String? lastNotification;

  void receive(String from, String message) {
    lastNotification = '$from : "$message"';
  }

  void send(String message) {
    notificationHub?.send(this, message);
  }

  void sendTo<T extends TeamMember>(String message) {
    notificationHub?.sendTo<T>(this, message);
  }
}
