import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

///Create custom [SliverAppBar] with network picture on background and
///50% opacity mask using [Stack] and [Container] over [SliverAppBar]
///Add [lorem] as text
class _MyHomePageState extends State<MyHomePage> {
  static const String lorem =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut euismod risus nec suscipit pharetra. Phasellus nec sapien vel odio feugiat convallis. Suspendisse potenti. Lorem ipsum dolor sit amet, consectetur adipiscing elit. In quis nisi placerat tortor cursus consectetur. Proin sit amet metus consequat, rutrum lacus vitae, pharetra nulla. Vestibulum non purus sollicitudin neque eleifend feugiat ut non urna. Donec aliquam sollicitudin est, et molestie leo mollis eget. Maecenas nec ullamcorper tortor, id auctor orci. Nam tincidunt iaculis convallis. Sed lobortis blandit dolor. Donec at est eu nulla condimentum efficitur et nec nibh. Nulla sodales sagittis rhoncus. Nullam sit amet lobortis turpis. Donec pretium bibendum turpis ullamcorper interdum. Donec id neque non nibh ullamcorper iaculis. Phasellus congue tempus lobortis. Mauris vestibulum nibh id egestas imperdiet. Donec laoreet leo sed mi pretium sollicitudin. Pellentesque maximus laoreet enim quis pulvinar. Duis vel neque felis. Nullam finibus quam est, id dignissim risus tincidunt ut. Suspendisse sed libero egestas, egestas libero sed, fermentum diam. Quisque posuere, elit blandit sagittis elementum, nunc dui auctor orci, iaculis viverra tellus libero quis massa. Suspendisse pretium diam a mauris congue feugiat. Nulla vitae lacus est. Nulla imperdiet risus magna, eget vulputate erat hendrerit vel. Quisque auctor pellentesque tincidunt. Nullam in lorem porta, malesuada risus eget, hendrerit ex. Donec lacinia quis libero eget pulvinar. In mattis, nibh nec mattis condimentum, est quam porttitor arcu, id euismod nulla tortor eget massa. Suspendisse maximus massa ac ullamcorper convallis. Maecenas vitae posuere risus, nec tincidunt metus. Pellentesque eu metus hendrerit libero dignissim mattis eget vitae diam. Sed diam justo, porttitor a leo vitae, vestibulum ultricies mi. Ut fermentum justo bibendum mattis dapibus. In non libero lacinia, imperdiet nibh ullamcorper, euismod felis. Fusce consectetur felis lorem, et dapibus nibh dignissim rutrum. Sed non quam quis orci mattis eleifend. Vestibulum tempor viverra sapien eget dapibus. Praesent congue fermentum nunc, eget condimentum diam iaculis nec. Proin tempus justo augue, et fringilla odio commodo sit amet. Maecenas ultricies ante at blandit convallis. Quisque vestibulum sagittis ligula, nec consequat diam porttitor id. Morbi volutpat ac mi at tristique. Sed elit quam, pulvinar eget massa quis, congue posuere ipsum. Sed purus felis, eleifend quis est quis, auctor condimentum odio. Integer rhoncus, augue sed gravida viverra, turpis turpis eleifend nulla, quis mattis odio eros vitae dui. Duis quis purus est. Proin quis sodales sapien. Nulla pellentesque sapien sed lorem ullamcorper finibus. Mauris hendrerit sodales justo eget accumsan. Sed laoreet fermentum diam sed vehicula. Fusce id rutrum nisi, non viverra dolor. Nunc quis fringilla nunc. Sed tincidunt orci non rhoncus fringilla. Duis lacus lacus, cursus ac hendrerit ut, semper sit amet nisi. Ut faucibus viverra tortor sit amet posuere. Nam tempor in enim at sollicitudin. Etiam porttitor lobortis augue at lobortis. Integer id leo et nisl tristique convallis. Aliquam erat volutpat. Aliquam pretium tortor erat, quis consequat velit laoreet sed. Integer mollis lacinia eros, vitae hendrerit purus mattis eu. Lorem ipsum dolor sit amet, consectetur adipiscing elit.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 300,
            flexibleSpace: Stack(children: [
              FlexibleSpaceBar(
                title: Text(widget.title),
                centerTitle: false,
                background: Image.network(
                  "https://photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography-960x640.jpg",
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                color: Colors.black87.withOpacity(0.3),
              )
            ]),
          ),
          const SliverToBoxAdapter(
            child: Text(lorem),
          ),
        ],
      ),
    );
  }
}
