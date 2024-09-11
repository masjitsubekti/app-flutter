import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primaryColor: Colors.deepOrange),
    home: ListViewHomeLayout(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter List View"),
      ),
      body: ListView(
        children: const <Widget>[
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Cupcake"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Donut"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Eclair"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Froyo"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Gingerbread"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Honeycomb"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Ice Cream Sandwich"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Jelly Bean"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Jelly Bean"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Kitkat"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Lollipop"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Marshmallow"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Nougat"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Oreo"),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text("Android Pie"),
          ),
        ],
      ),
    );
  }
}

class MyApp2 extends StatelessWidget {
  // const MyApp2({super.key});

  var androidVersions = [
    "Android Cupcake",
    "Android Donut",
    "Android Eclair",
    "Android Froyo",
    "Android Gingerbread",
    "Android Honeycomb",
    "Android Ice Cream Sandwich",
    "Android Jelly Bean",
    "Android Kitkat",
    "Android Lollipop",
    "Android Marshmallow",
    "Android Nougat",
    "Android Oreo",
    "Android Pie"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter List View 2"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(androidVersions[index]),
          );
        },
        itemCount: androidVersions.length,
      ),
    );
  }
}

class MyApp3 extends StatelessWidget {
  // const MyApp2({super.key});

  var androidVersions = [
    "Android Cupcake",
    "Android Donut",
    "Android Eclair",
    "Android Froyo",
    "Android Gingerbread",
    "Android Honeycomb",
    "Android Ice Cream Sandwich",
    "Android Jelly Bean",
    "Android Kitkat",
    "Android Lollipop",
    "Android Marshmallow",
    "Android Nougat",
    "Android Oreo",
    "Android Pie"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter List View 3"),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return const Divider(
            color: Colors.grey,
          );
        },
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(androidVersions[index]),
          );
        },
        itemCount: androidVersions.length,
      ),
    );
  }
}

class MyApp4 extends StatelessWidget {
  const MyApp4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter List View 4"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: const <Widget>[
          ListTile(
              title: Text("Battery Full"),
              subtitle: Text("The battery is full."),
              leading: Icon(Icons.battery_full),
              trailing: Icon(Icons.star)),
          ListTile(
              title: Text("Anchor"),
              subtitle: Text("Lower the anchor."),
              leading: Icon(Icons.anchor),
              trailing: Icon(Icons.star)),
          ListTile(
              title: Text("Alarm"),
              subtitle: Text("This is the time."),
              leading: Icon(Icons.access_alarm),
              trailing: Icon(Icons.star)),
          ListTile(
              title: Text("Ballot"),
              subtitle: Text("Cast your vote."),
              leading: Icon(Icons.ballot),
              trailing: Icon(Icons.star))
        ],
      ),
    );
  }
}

class MyApp5 extends StatelessWidget {
  const MyApp5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter List View 5"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: const <Widget>[
          ListTile(
              title: Text("Javascript"),
              subtitle: Text("The battery is full."),
              // leading: CircleAvatar(backgroundImage: AssetImage("assets/js.png")),
              leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1547721064-da6cfb341d50")),
              trailing: Icon(Icons.star)),
          ListTile(
              title: Text("Vue JS"),
              subtitle: Text("Lower the anchor."),
              leading:
                  CircleAvatar(backgroundImage: AssetImage("assets/vue.png")),
              trailing: Icon(Icons.star)),
          ListTile(
              title: Text("React JS"),
              subtitle: Text("This is the time."),
              leading:
                  CircleAvatar(backgroundImage: AssetImage("assets/react.png")),
              trailing: Icon(Icons.star)),
          ListTile(
              title: Text("Node JS"),
              subtitle: Text("Cast your vote."),
              leading:
                  CircleAvatar(backgroundImage: AssetImage("assets/node.png")),
              trailing: Icon(Icons.star))
        ],
      ),
    );
  }
}

class MyApp6 extends StatelessWidget {
  final titles = ["Javascript", "Vue JS", "React JS", "Node JS"];
  final subtitles = [
    "Here is list 1 subtitle",
    "Here is list 2 subtitle",
    "Here is list 3 subtitle",
    "Here is list 4 subtitle"
  ];
  final images = [
    "assets/js.png",
    "assets/vue.png",
    "assets/react.png",
    "assets/node.png"
  ];
  final icons = [
    Icons.ac_unit,
    Icons.access_alarm,
    Icons.access_time,
    Icons.ballot
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter List View 6"),
        ),
        body: ListView.builder(
            itemCount: titles.length,
            itemBuilder: (context, index) {
              return Card(
                  child: ListTile(
                      onTap: () {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(titles[index] + ' pressed!'),
                        ));
                      },
                      title: Text(titles[index]),
                      subtitle: Text(subtitles[index]),
                      leading: CircleAvatar(
                          backgroundImage: AssetImage(images[index])),
                      trailing: Icon(icons[index])));
            }));
  }
}

class ListViewHomeLayout extends StatefulWidget {
  @override
  ListViewHome createState() {
    return new ListViewHome();
  }
}

class ListViewHome extends State<ListViewHomeLayout> {
  List<String> titles = ["List 1", "List 2", "List 3"];
  final subtitles = [
    "Here is list 1 subtitle",
    "Here is list 2 subtitle",
    "Here is list 3 subtitle"
  ];
  final icons = [Icons.ac_unit, Icons.access_alarm, Icons.access_time];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Flutter List View 6"),
        ),
        body: ListView.builder(
            itemCount: titles.length,
            itemBuilder: (context, index) {
              return Card(
                  child: ListTile(
                      onTap: () {
                        setState(() {
                          titles.add('List' + (titles.length + 1).toString());
                          subtitles.add('Here is list' +
                              (titles.length + 1).toString() +
                              ' subtitle');
                          icons.add(Icons.zoom_out_sharp);
                        });
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          content: Text(titles[index] + ' pressed!'),
                        ));
                      },
                      title: Text(titles[index]),
                      subtitle: Text(subtitles[index]),
                      leading: CircleAvatar(
                          backgroundImage: AssetImage("assets/js.png")),
                      trailing: Icon(icons[index])));
            }));
  }
}

