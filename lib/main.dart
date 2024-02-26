import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            selectedItemColor: Colors.white,
            unselectedItemColor: Color(0xFF717171),
            selectedLabelStyle: TextStyle(fontSize: 9),
            unselectedLabelStyle: TextStyle(fontSize: 9),
            backgroundColor: Color(0xFF121212)),
        appBarTheme: const AppBarTheme(
            backgroundColor: Color(0xDD000000),
            surfaceTintColor: Colors.white,
            actionsIconTheme: IconThemeData(color: Colors.white)),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  int selectedIndex = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          title: Image.network(
            'https://pngimg.com/d/netflix_PNG15.png',
            height: 42,
            width: 42,
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.cast),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {},
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 24,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.sports_esports_outlined), label: "Games"),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_library_outlined), label: "New & Hot"),
            BottomNavigationBarItem(
                icon: ClipRRect(
                  borderRadius: BorderRadius.circular(4.0),
                  child: Image.network(
                    "https://i.pinimg.com/474x/1b/71/b8/1b71b85dd741ad27bffa5c834a7ed797.jpg",
                    height: 24,
                    width: 24,
                  ),
                ),
                label: "My Netflix"),
          ],
        ),
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Column(
                children: [
                  SectionSlider(title: "30-Minute Laughs", items: [
                    "https://i.pinimg.com/originals/45/c8/a1/45c8a13fb34846b7e78eecd8bd0a306c.jpg",
                    "https://m.media-amazon.com/images/M/MV5BNDNiMjk4MmMtMDAzYy00ODY5LWFhZGUtMzQ2MzJmZDIxNjgzXkEyXkFqcGdeQXVyMTA3MTI2ODc5._V1_.jpg",
                    "https://preview.redd.it/fgrsubgf58l21.jpg?auto=webp&s=46d2d5b2521eb0c57da555c58ac3610ab1728299",
                    "https://m.media-amazon.com/images/M/MV5BNDQ5NDZiYjktZmFmMy00MjAxLTk1MDktOGZjYTY5YTE1ODdmXkEyXkFqcGdeQXVyNjcwMzEzMTU@._V1_.jpg"
                  ]),
                  SectionSlider(title: "Critically Acclaimed TV Shows", items: [
                    "https://art-s.nflximg.net/af523/97fc0b9faf2f4a2728a10b716fb2ab622a4af523.jpg",
                    "https://flixpatrol.com/runtime/cache/files/posters/v/w350/vp4jk2fg45trcx53w4aeysts75u.jpg",
                    "https://pbs.twimg.com/media/F4JqkDOWMAA5iFL.jpg",
                    "https://dnm.nflximg.net/api/v6/WNk1mr9x_Cd_2itp6pUM7-lXMJg/AAAABdWtisoZacbgXnf60F0sF-lktGJypHiLKBoKCcUejSwBbxQkiRiYRwJyYSOtuJ70twrQuX60bGeiDAApw5ydD9R8bbGep5-difEWELMZiH3c1rqYhsJ0UOnVi8G3HsAFMzI2OQ.jpg"
                  ]),
                  SectionSlider(title: "Award-Winning TV Shows", items: [
                    "https://occ-0-89-299.1.nflxso.net/dnm/api/v6/WNk1mr9x_Cd_2itp6pUM7-lXMJg/AAAABfZQzeMVT17_7xiUjN5bA4I0ZTcpV_-syQgG2uLNNgMHyVY8KnuEh81QdmCz4l9nMiZKErqY2HLU2sZ6n-rtcrK3eHiCSG5Zrc6X.jpg",
                    "https://dnm.nflximg.net/api/v6/WNk1mr9x_Cd_2itp6pUM7-lXMJg/AAAABdWtisoZacbgXnf60F0sF-lktGJypHiLKBoKCcUejSwBbxQkiRiYRwJyYSOtuJ70twrQuX60bGeiDAApw5ydD9R8bbGep5-difEWELMZiH3c1rqYhsJ0UOnVi8G3HsAFMzI2OQ.jpg",
                    "https://preview.redd.it/fgrsubgf58l21.jpg?auto=webp&s=46d2d5b2521eb0c57da555c58ac3610ab1728299",
                    "https://cdn.storymirror.com/cover/thumbnail/cnvcy2uj.jpg"
                  ]),
                  SectionSlider(title: "Documentaries", items: [
                    "https://occ-0-89-299.1.nflxso.net/dnm/api/v6/WNk1mr9x_Cd_2itp6pUM7-lXMJg/AAAABfZQzeMVT17_7xiUjN5bA4I0ZTcpV_-syQgG2uLNNgMHyVY8KnuEh81QdmCz4l9nMiZKErqY2HLU2sZ6n-rtcrK3eHiCSG5Zrc6X.jpg",
                    "https://dnm.nflximg.net/api/v6/WNk1mr9x_Cd_2itp6pUM7-lXMJg/AAAABdWtisoZacbgXnf60F0sF-lktGJypHiLKBoKCcUejSwBbxQkiRiYRwJyYSOtuJ70twrQuX60bGeiDAApw5ydD9R8bbGep5-difEWELMZiH3c1rqYhsJ0UOnVi8G3HsAFMzI2OQ.jpg",
                    "https://preview.redd.it/fgrsubgf58l21.jpg?auto=webp&s=46d2d5b2521eb0c57da555c58ac3610ab1728299",
                    "https://cdn.storymirror.com/cover/thumbnail/cnvcy2uj.jpg"
                  ])
                ],
              ),
            ),
          ),
        ));
  }
}

class SectionSlider extends StatelessWidget {
  SectionSlider({super.key, required this.title, required this.items});

  String title;
  List<String> items;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
            padding: const EdgeInsets.only(left: 16.0, top: 24, bottom: 6),
            child: Text(
              title,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800,
                color: Colors.white,
              ),
            )),
        ItemSlider(
          items: items,
        ),
      ],
    );
  }
}

class SecondRoute extends StatefulWidget {
  const SecondRoute({super.key});

  @override
  State<SecondRoute> createState() => _SecondRouteState();
}

class _SecondRouteState extends State<SecondRoute> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.networkUrl(Uri.parse(
        'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'))
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {
          _controller.play();
          _controller.setVolume(0);
          _controller.setLooping(true);
        });
      });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Route'),
      ),
      body: _controller.value.isInitialized
          ? AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            )
          : Container(),
    );
  }
}

class ItemSlider extends StatelessWidget {
  ItemSlider({super.key, required this.items});

  List<String> items;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      child: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        scrollDirection: Axis.horizontal,
        children: items.map((url) => ItemThumbnail(imageUrl: url)).toList(),
      ),
    );
  }
}

class ItemThumbnail extends StatelessWidget {
  ItemThumbnail({super.key, required this.imageUrl});

  String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SecondRoute()),
          );
        },
        child: Container(
          width: 114,
          child: Stack(alignment: Alignment.bottomCenter, children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(4.0),
              child: Image.network(
                this.imageUrl,
                height: 160,
                fit: BoxFit.fill,
              ),
            ),
            ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(4.0),
                    topRight: Radius.circular(4.0)),
                child: Container(
                  color: Color(0xFFE60710),
                  padding: EdgeInsets.symmetric(vertical: 2, horizontal: 4),
                  child: Text(
                    "Recently Added",
                    style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ))
          ]),
        ),
      ),
    );
  }
}
