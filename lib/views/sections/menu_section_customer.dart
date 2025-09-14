import 'package:flutter/material.dart';

class MenuSectionCustomer extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;
  final VoidCallback onTap;

  MenuSectionCustomer({
    super.key,
    required this.title,
    required this.subtitle,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
            leading: Icon(icon),
            title: Text(title),
            subtitle: Text(subtitle),
            onTap: onTap,
          ),
          Divider(height: 1, thickness: 1, color: Colors.grey.shade300),
        ],
      ),
    );
  }
}
