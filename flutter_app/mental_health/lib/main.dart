import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MentalAwarenessApp());
}

class MentalAwarenessApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mental Awareness App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> _affirmations = [
    "You are capable of amazing things.",
    "You are stronger than you think.",
    "Every day is a new beginning.",
    "Believe in yourself.",
    "You are enough."
  ];

  String _getTodaysAffirmation() {
    int dayOfYear = int.parse(DateFormat("D").format(DateTime.now()));
    return _affirmations[dayOfYear % _affirmations.length];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mental Awareness App'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'Daily Affirmation:',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              _getTodaysAffirmation(),
              style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MoodPage()),
                );
              },
              child: Text('Track Your Mood'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WriteFeelingPage()),
                );
              },
              child: Text('Write Your Feelings'),
            ),
          ],
        ),
      ),
    );
  }
}

class MoodPage extends StatefulWidget {
  @override
  _MoodPageState createState() => _MoodPageState();
}

class _MoodPageState extends State<MoodPage> {
  String _mood = 'Happy';
  final Map<String, String> _moodEmojis = {
    'Happy': '😊',
    'Sad': '😢',
    'Anxious': '😟',
    'Calm': '😌',
    'Angry': '😠'
  };

  void _updateMood(String mood) {
    setState(() {
      _mood = mood;
    });
    _showFeedbackDialog(mood);
  }

  void _showFeedbackDialog(String mood) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Feedback'),
          content: Text(_getFeedbackForMood(mood)),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  String _getFeedbackForMood(String mood) {
    switch (mood) {
      case 'Happy':
        return 'Great to hear that you are happy! Keep spreading positivity!';
      case 'Sad':
        return 'It\'s okay to feel sad sometimes. Take care and talk to someone you trust.';
      case 'Anxious':
        return 'Feeling anxious is tough. Try some deep breathing exercises to calm down.';
      case 'Calm':
        return 'Glad to hear you are calm. Keep it up!';
      case 'Angry':
        return 'Anger is a natural emotion. Try to relax and cool down.';
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Track Your Mood'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'How are you feeling today?',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            DropdownButton<String>(
              value: _mood,
              items: _moodEmojis.keys.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Row(
                    children: <Widget>[
                      Text(_moodEmojis[value] ?? ''),
                      SizedBox(width: 10),
                      Text(value),
                    ],
                  ),
                );
              }).toList(),
              onChanged: (String? newValue) {
                if (newValue != null) {
                  _updateMood(newValue);
                }
              },
            ),
            SizedBox(height: 20),
            Text(
              'Selected Mood: ${_moodEmojis[_mood]} $_mood',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}

class WriteFeelingPage extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Write Your Feelings'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'How do you feel?',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _controller,
              maxLines: 10,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Write about your feelings...',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // You can save the feelings to a database or show a confirmation message
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Your feelings have been saved.')),
                );
                _controller.clear();
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
