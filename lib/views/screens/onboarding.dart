import 'package:flutter/material.dart';
import 'package:exam_4_oy/views/screens/register.dart';
import 'package:exam_4_oy/views/widgets/button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int _currentIndex = 0;

  final List<Map<String, String>> _pages = [
    {
      "title": "All your favorites",
      "desc":
          "Get all your loved foods in one once place,\nyou just place the orer we do the rest",
    },
    {
      "title": "All your favorites",
      "desc":
          "Get all your loved foods in one once place,\nyou just place the orer we do the rest",
    },
    {
      "title": "Order from choosen chef",
      "desc":
          "Get all your loved foods in one once place,\nyou just place the orer we do the rest",
    },
    {
      "title": "Free delivery offers",
      "desc":
          "Get all your loved foods in one once place,\nyou just place the orer we do the rest",
    },
  ];

  void _nextPage() {
    if (_currentIndex < _pages.length - 1) {
      _controller.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: _pages.length,
                onPageChanged: (index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                itemBuilder: (context, index) {
                  final item = _pages[index];
                  return Column(
                    children: [
                      SizedBox(height: 120),
                      Container(
                        width: 250,
                        height: 300,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        // child: Image.asset('assets/images/onboarding.png'),
                      ),
                      Spacer(),
                      Text(
                        item['title']!,
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 16),
                      Text(
                        item['desc']!,
                        style: TextStyle(fontSize: 16, color: Colors.black54),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 30),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: List.generate(
                          _pages.length,
                          (dotIndex) => Container(
                            margin: EdgeInsets.symmetric(horizontal: 6),
                            width: 12,
                            height: 12,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color:
                                  _currentIndex == dotIndex
                                      ? Colors.orange
                                      : Colors.orange.shade100,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 80),
                    ],
                  );
                },
              ),
            ),
            Button(
              text: _currentIndex == _pages.length - 1 ? "GET STARTED" : "NEXT",
              onTap: _nextPage,
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Text(
                "Skip",
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
