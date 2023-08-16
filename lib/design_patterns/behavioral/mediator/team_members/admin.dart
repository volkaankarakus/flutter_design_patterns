import 'package:flutter_design_patterns/design_patterns/behavioral/mediator/team_member.dart';

final class Admin extends TeamMember {
  Admin({required super.name});

  @override
  String toString() => '$name (Admin)';
}
