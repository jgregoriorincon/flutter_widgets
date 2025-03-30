import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
    imageUrl: 'assets/images/1.png',
  ),
  const SlideInfo(
    title: 'Entrega rápida',
    caption:
        'Ad culpa tempor deserunt cupidatat culpa ut aliquip dolor eiusmod ad sint sint nisi est.',
    imageUrl: 'assets/images/2.png',
  ),
  const SlideInfo(
    title: 'Disfruta la comida',
    caption:
        'Laboris voluptate labore eiusmod cupidatat deserunt adipisicing ullamco quis reprehenderit cupidatat elit.',
    imageUrl: 'assets/images/3.png',
  ),
];

class AppTutorialScreen extends StatefulWidget {
  static const String name = 'app_tutorial_screen';

  const AppTutorialScreen({super.key});

  @override
  State<AppTutorialScreen> createState() => _AppTutorialScreenState();
}

class _AppTutorialScreenState extends State<AppTutorialScreen> {
  final PageController pageViewController = PageController();
  bool isLastPage = false;
  // int currentPage = 0;

  @override
  void initState() {
    super.initState();

    pageViewController.addListener(() {
      final page = pageViewController.page ?? 0;

      if (!isLastPage && page >= (slides.length - 1.5)) {
        setState(() {
          isLastPage = true;
        });
      }

      print('${pageViewController.page}');
    });
  }

  @override
  void dispose() {    
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(title: const Text('App Tutorial')),
      body: Stack(
        children: [
          PageView(
            controller: pageViewController,
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

          Positioned(
            right: 20,
            top: 50,
            child: TextButton(
              child: Text('Salir'),
              onPressed: () => context.pop(),
            ),
          ),

          isLastPage ? Positioned(
            right: 30,
            bottom: 30,
            child: FadeInRight(
              from: 15,
              delay: const Duration(milliseconds: 500),
              child: FilledButton(
                onPressed: () => context.pop(),
                child: const Text('Comenzar'),
              ),
            ),
          ) : SizedBox(),
        ],
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
    final titleStyle = Theme.of(context).textTheme.titleLarge;
    final captionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(imageUrl)),
            const SizedBox(height: 20),
            Text(title, style: titleStyle),
            const SizedBox(height: 10),
            Text(caption, textAlign: TextAlign.center, style: captionStyle),
          ],
        ),
      ),
    );
  }
}
