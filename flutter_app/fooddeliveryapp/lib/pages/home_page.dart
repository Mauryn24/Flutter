import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/components/my_current_location.dart';
import 'package:fooddeliveryapp/components/my_description_box.dart';
import 'package:fooddeliveryapp/components/my_drawer.dart';
import 'package:fooddeliveryapp/components/my_sliver_app_bar.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) =>[
          MySliverAppBar(
            title: const Text("Title"),

            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Divider(
                  indent: 25,
                  endIndent: 25,
                  color: Theme.of(context).colorScheme.secondary,
                  ),

                // My Current Location
                const MyCurrentLocations(),

                // Description Box
                const MyDescriptionBox(),
              ],
            ),
            ),
            ],
        body: Container(
          color: Colors.blue,
        ),
      ),
    );
  }
}
