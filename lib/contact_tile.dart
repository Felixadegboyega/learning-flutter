import 'package:flutter/material.dart';

class ContactTile extends StatefulWidget {
  ContactTile({
    this.icon,
    this.name,
    this.value
  }) ;

  final IconData? icon;
  final String? name;
  final String? value;

  @override
  _ContactTileState createState() => _ContactTileState();
}

class _ContactTileState extends State<ContactTile> {
  bool isTouched = false;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        setState(() {
          isTouched = !isTouched;
        });
      },
      tileColor: isTouched ? Colors.blueGrey : Colors.white,
      leading: Icon(
        widget.icon,
        size: 40,
      ),
      title: Text(
        widget.name!,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.grey
        ),
      ),  
      subtitle: Text(
        widget.value!,
        style: TextStyle(
          color: Colors.grey,
          fontSize: 20,
        ),
      )
    );
  }
}
