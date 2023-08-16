import 'package:flutter_design_patterns/design_patterns/behavioral/mediator/team_member.dart';

abstract interface class NotificationHub {
  List<TeamMember> getTeamMembers();
  void register(TeamMember member);
  void send(TeamMember member, String message);
  void sendTo<T extends TeamMember>(TeamMember sender, String message);
}
