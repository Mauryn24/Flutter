# flutter_widgets

A new Flutter project.

## Getting Started

### Creating the simplest flutter app
1. Create the app using the comand
   ```flutter create flutter_widgets```

2. Remove the ```test``` folder 
   
3. In your ```main.dart``` remove the every code that follows the class MyApp
   
4. Add this startup code
   
   ```
   import 'package:flutter/material.dart';

    void main() {
        runApp(MaterialApp(
        home: Text('Hello World!'),
    ));
    }
   ```
5. Style property
   
   ```
   import 'package:flutter/material.dart';

    void main() {
    runApp(MaterialApp(
        home: Text(
            'Hello World!',
            style: TextStyle(
            color: Colors.greenAccent,
            backgroundColor: Colors.black54,
            ),
            ),
    ));
    }

   ```
6. Center widget
   
   ```
   import 'package:flutter/material.dart';

    void main() {
    runApp(MaterialApp(
        home: Center(
            child: Text(
            'Hello World!',
            style: TextStyle(
                color: Colors.greenAccent,
                backgroundColor: Colors.black54,
                ),
            ),
        ),
    ));
    }

   ```
7. Run the app
   - Use ```flutter run```