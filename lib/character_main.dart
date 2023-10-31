import 'package:flutter/material.dart';

class CharacterInformationPage extends StatelessWidget {
  const CharacterInformationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Character Information'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Character Information',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Character Name'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Race'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Class'),
              ),
              TextFormField(
                decoration: const InputDecoration(
                    labelText:
                        'Strength'), //TODO: make only numeral input for all modifiers
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Dexterity'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Constitution'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Intelligence'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Wisdom'),
              ),
              TextFormField(
                decoration: const InputDecoration(labelText: 'Charisma'),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () {
                  // Add logic to save character information to Firebase
                },
                child: const Text('Save Character'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
