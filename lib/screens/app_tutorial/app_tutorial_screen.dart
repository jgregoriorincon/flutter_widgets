import 'package:flutter/material.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String imageUrl;

  const SlideInfo({
    required this.title,
    required this.caption,
    required this.imageUrl,
  });
}

final slides = <SlideInfo>[
  const SlideInfo(
    title: 'Busca la comida',
    caption:
        'Esse officia nostrud exercitation id anim culpa ut ad incididunt enim dolore aliqua.',
    imageUrl: '/assets/Images/1.png',
  ),
  const SlideInfo(
    title: 'Entrega rápida',
    caption:
        'Ad culpa tempor deserunt cupidatat culpa ut aliquip dolor eiusmod ad sint sint nisi est.',
    imageUrl: '/assets/Images/2.png',
  ),
  const SlideInfo(
    title: 'Disfruta la comida',
    caption:
        'Laboris voluptate labore eiusmod cupidatat deserunt adipisicing ullamco quis reprehenderit cupidatat elit.',
    imageUrl: '/assets/Images/3.png',
  ),
];

class AppTutorialScreen extends StatelessWidget {
  static const String name = 'app_tutorial_screen';

  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('App Tutorial')),
      body: PageView(
        physics: const BouncingScrollPhysics(),
        children:
            slides
                .map(
                  (slideData) => _Slide(
                    title: slideData.title,
                    caption: slideData.caption,
                    imageUrl: slideData.imageUrl,
                  ),
                )
                .toList(),
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;

  const _Slide({
    required this.title,
    required this.caption,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
