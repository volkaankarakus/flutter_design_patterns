import 'package:flutter_design_patterns/design_patterns/behavioral/mediator/team_member.dart';

final class Developer extends TeamMember {
  Developer({required super.name});

  @override
  String toString() => '$name (Developer)';
}
