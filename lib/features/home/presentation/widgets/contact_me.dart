import 'package:flutter/material.dart';

class ContacMe extends StatelessWidget {
  const ContacMe();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).width * 0.05,
      child: Card(
        color: Colors.blue.shade100,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: SelectionArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _ContactItem(
                icon: Icons.email,
                text: 'hllsebastian@gmail.com',
              ),
              _ContactItem(
                icon: Icons.linked_camera,
                text: 'LinkedIn: https://www.linkedin.com/in/jospina-dev/',
              ),
              _ContactItem(
                icon: Icons.phone_iphone_outlined,
                text: '+57 3017959031',
              ),
              _Language()
            ],
          ),
        ),
      ),
    );
  }
}

// TODO: Change language functionality
class _Language extends StatelessWidget {
  const _Language();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Selecte Language'),
      ],
    );
  }
}

class _ContactItem extends StatelessWidget {
  const _ContactItem({
    required this.text,
    required this.icon,
  });

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(
              icon,
              color: Colors.black,
            ),
            onPressed: null,
            tooltip: text,
          ),
          Text(
            text,
            style: TextStyle(color: Colors.black),
          )
        ],
      ),
    );
  }
}
