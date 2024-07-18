import 'package:flutter/material.dart';
import 'package:flutter_components/theme/app_theme.dart';


class CustomCard1 extends StatelessWidget {
  const CustomCard1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon( Icons.photo_album, color: AppTheme.primary ),
            title: Text('Titulo 1'),
            subtitle: Text('Ad et cillum incididunt duis Lorem consectetur dolor ex irure consectetur do velit enim eiusmod. Mollit aliquip amet amet elit deserunt ex incididunt magna laboris.'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () {}, 
                    child: const Text('Ok'),
                  ),
              ],
            ),
          )
        ]
      ),
    );
  }
}