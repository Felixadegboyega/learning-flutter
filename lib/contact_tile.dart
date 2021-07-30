import 'package:flutter/material.dart';

class ContactTile extends StatelessWidget {
  ContactTile({
    this.icon,
    this.name,
    this.value
  }) ;

  final IconData? icon;
  final String? name;
  final String? value;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        size: 40,
      ),
      title: Text(
        name!,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.grey
        ),
      ),  
      subtitle: Text(
        value!,
        style: TextStyle(
          color: Colors.grey,
          fontSize: 20,
        ),
      )
    );
  }
}
