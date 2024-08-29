// ignore_for_file: library_private_types_in_public_api, unused_element, avoid_print

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:getchereta/measure/consts.dart';
import 'package:getchereta/screens/login_screen.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:url_launcher/url_launcher.dart';

import '../provider/themes.dart';

class MyCarouselSlider extends StatefulWidget {
  const MyCarouselSlider({super.key});

  @override
  _MyCarouselSliderState createState() => _MyCarouselSliderState();
}

class _MyCarouselSliderState extends State<MyCarouselSlider> {
  final _controller = PageController();
  int _currentPage = 0;
  Timer? _timer;

  final List<Map<String, String?>> ads = [
    {
      'image': 'images/chereta1.png',
      'url':
          'https://drive.google.com/file/d/1WvOYC4oaKLFB1DApUlZvkE2xVcM8TCSw/view?usp=sharing',
      'name': 'Ad 2'
    },
    {
      'image': 'images/chereta2.jpg',
      'url': 'https://adolescentgirlseth.org/',
      'name': 'Ad 3'
    },
    {
      'image': 'images/chereta3.jpg',
      'url': 'https://adolescentgirlseth.org/',
      'name': 'Ad 4'
    },
  ];

  @override
  void initState() {
    super.initState();
    // Automatically show the popup with the second slide's image
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final secondSlide = ads[1]; // The second slide
      final imageUrl = secondSlide['image'] ?? 'images/chereta1.png';
      final url = secondSlide['url'] ?? 'https://default.url/';
      _showPopup(context, imageUrl, url);
    });

    _timer = Timer.periodic(const Duration(seconds: 5), (Timer timer) {
      if (_currentPage < ads.length - 1) {
        _controller.animateToPage(_currentPage + 1,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut);
      } else {
        _controller.animateToPage(0,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut);
      }
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  void _launchURL(String url) async {
    Uri uri = Uri.parse(url);
    try {
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      } else {
        print('Could not launch $url');
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Could not launch $url')),
        );
      }
    } catch (e) {
      print('Error launching $url: $e');
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error launching $url: $e')),
      );
    }
  }

  void _showPopup(BuildContext context, String imagePath, String url) {
    final themeNotifier = Provider.of<ThemeNotifier>(context, listen: false);

    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (BuildContext context) {
        return Dialog(
          backgroundColor: Colors.transparent,
          insetPadding: const EdgeInsets.only(
              top: 50.0,
              left: 10.0,
              right: 10.0), // Adjust this to position at the top
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Make a Difference with GetChereta!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: AppSizes.mediumGap),
                      ElevatedButton(
                        style: const ButtonStyle(),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginScreen()));
                        },
                        child: Center(
                          child: Text(
                            'Create Account',
                            style: TextStyle(
                              color: themeNotifier.isDarkMode
                                  ? Colors.white
                                  : Colors.black,
                              fontSize: AppSizes.secondaryFontSize,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                top: 10,
                right: 10,
                child: IconButton(
                  icon: const Icon(Icons.close, color: Colors.white),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 180,
          width: 450,
          child: PageView.builder(
            controller: _controller,
            itemCount: ads.length,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            itemBuilder: (context, index) {
              final ad = ads[index];
              final imageUrl = ad['image'] ?? 'images/chereta1.png';
              final url = ad['url'] ?? 'https://default.url/';
              final adName = ad['name'] ?? 'Unknown Ad';

              return _buildImageWithButton(
                imagePath: imageUrl,
                url: url,
                adName: adName,
              );
            },
          ),
        ),
        SmoothPageIndicator(
          controller: _controller,
          count: ads.length,
          effect: const ExpandingDotsEffect(
            activeDotColor: Color.fromRGBO(56, 103, 93, 1.0),
            dotColor: Color.fromRGBO(120, 147, 141, 1),
            dotWidth: 15,
            dotHeight: 15,
            spacing: 15,
          ),
        ),
      ],
    );
  }

  Widget _buildImageWithButton({
    required String imagePath,
    required String url,
    required String adName,
  }) {
    return GestureDetector(
      onTap: () => _showPopup(context, imagePath, url),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30.0),
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
        ),
      ),
    );
  }
}
