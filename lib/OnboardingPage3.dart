import 'package:flutter/material.dart';
import 'OnboardingPage2.dart';
import 'messages.dart';

class OnboardingPage3 extends StatelessWidget {
  const OnboardingPage3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/onboarding1.png',
              height: 300,
            ),
            SizedBox(height: 20),
            Text(
              'niggaaaa',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),
            Text(
              'Your city, our responsibility. Your voice means our improvement to build this city.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Back button (disabled on the first page)
                ElevatedButton(
                  onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context){
                       return OnboardingPage2();
                      }),
                    );
                  },
                 // No action on the first page for Back
                  child: Text('Back'),
                ),
                // Next button
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return Messages(); // Navigate to the next onboarding page
                      }),
                    );
                  },
                  child: Text('next'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
