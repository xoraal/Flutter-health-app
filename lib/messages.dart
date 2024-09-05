import 'package:flutter/material.dart';
import 'OnboardingPage3.dart';

import 'productPage.dart';

class Messages extends StatelessWidget {
  const Messages({super.key});

  @override
  Widget build(BuildContext context) {
    // Example list of contacts with picture, name, and number
    List<Contact> contacts = [
      Contact(
        name: 'John Doe',
        number: '+123 456 7890',
        pictureUrl: 'https://example.com/john_doe.jpg',
      ),
      Contact(
        name: 'Jane Smith',
        number: '+987 654 3210',
        pictureUrl: 'https://example.com/jane_smith.jpg',
      ),
      Contact(
        name: 'Alice Johnson',
        number: '+456 789 0123',
        pictureUrl: 'https://example.com/alice_johnson.jpg',
      ),
      Contact(
        name: 'Bob Brown',
        number: '+321 654 9870',
        pictureUrl: 'https://example.com/bob_brown.jpg',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Contacts'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: contacts.length,
              itemBuilder: (context, index) {
                final contact = contacts[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(contact.pictureUrl),
                  ),
                  title: Text(contact.name),
                  subtitle: Text(contact.number),
                  onTap: () {
                    // Handle tap event if needed
                  },
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Back button
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return OnboardingPage3(); // Navigate to the previous onboarding page
                      }),
                    );
                  },
                  child: Text('Back'),
                ),
                // Next button
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return ProductPage(); // Navigate to the next onboarding page
                      }),
                    );
                  },
                  child: Text('Next'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Contact {
  final String name;
  final String number;
  final String pictureUrl;

  Contact({
    required this.name,
    required this.number,
    required this.pictureUrl,
  });
}

