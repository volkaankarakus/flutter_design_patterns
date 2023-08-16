import 'package:flutter/material.dart';
import 'package:flutter_design_patterns/design_patterns/behavioral/mediator/team_member.dart';

class NotificationList extends StatelessWidget {
  const NotificationList({
    required this.members,
    required this.onTap,
  });

  final List<TeamMember> members;
  final ValueSetter<TeamMember> onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Last notifications',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        Text(
          'Note: click on the card to send a notification from the team member.',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        for (final member in members)
          Card(
            margin: const EdgeInsets.symmetric(),
            child: InkWell(
              onTap: () => onTap(member),
              child: Container(
                padding: const EdgeInsets.symmetric(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            member.toString(),
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(member.lastNotification ?? '-'),
                        ],
                      ),
                    ),
                    Icon(Icons.message),
                  ],
                ),
              ),
            ),
          )
      ],
    );
  }
}
