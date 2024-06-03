import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyCurrentLocations extends StatelessWidget {
  const MyCurrentLocations({super.key});

  // openLocationSearchBox method
  void openLocationSearchBox(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Your Location"),
        content: const TextField(
          decoration: InputDecoration(hintText: "Search Adress...."),
        ),
        actions: [
          
          // cancel button
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel"),
          ),


          // save button
          MaterialButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Save"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Deliver Now",
            style: TextStyle(color: Theme.of(context).colorScheme.primary),
          ),
          Row(
            children: [
              // address
              GestureDetector(
                onTap: () => openLocationSearchBox(context),
                child: Text(
                  "Embu, Kenya",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              // drop down menu
              Icon(Icons.keyboard_arrow_down_rounded),
            ],
          )
        ],
      ),
    );
  }
}
