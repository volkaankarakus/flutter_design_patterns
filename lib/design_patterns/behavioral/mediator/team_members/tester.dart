import 'package:flutter_design_patterns/design_patterns/behavioral/mediator/team_member.dart';

final class Tester extends TeamMember {
  Tester({required super.name});

  @override
  String toString() => '$name (QA)';
}
