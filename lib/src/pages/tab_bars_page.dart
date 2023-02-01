import 'package:flutter/material.dart';

class TabBarsPage extends StatelessWidget {
  const TabBarsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: const Text("TabBars"),
      ),
      body: DefaultTabController(
          length: 3,
          child: Column(
            children: const [
              ColoredBox(
                color: Colors.deepOrangeAccent,
                child: TabBar(
                  labelColor: Colors.white,
                  indicatorColor: Colors.deepOrangeAccent,
                  unselectedLabelColor: Colors.black26,
                  tabs: [
                    Tab(text: "Lista 1", icon: Icon(Icons.home),),
                    Tab(text: "Lista 2", icon: Icon(Icons.star),),
                    Tab(text: "Lista 3", icon: Icon(Icons.add_alert),),
                  ],
                ),
              ),
              Expanded(
                  child: TabBarView(
                      children: [
                        Tab1(),
                        Tab2(),
                        Tab3()
                      ]
                  )
              ),
            ],
          )
      ),
    );
  }
}


class Tab1 extends StatelessWidget {
  const Tab1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: const [
          ListTile(title: Text("Lista de elementos")),
          ListTile(title: Text("Lista de elementos")),
          ListTile(title: Text("Lista de elementos")),
          ListTile(title: Text("Lista de elementos")),
          ListTile(title: Text("Lista de elementos")),
          ListTile(title: Text("Lista de elementos")),
        ],
      ),
    );
  }
}

class Tab2 extends StatelessWidget {
  const Tab2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: const [
          ListTile(title: Text("Lista de elementos"), subtitle: Text("Subtitulo"),),
          ListTile(title: Text("Lista de elementos"), subtitle: Text("Subtitulo")),
          ListTile(title: Text("Lista de elementos"), subtitle: Text("Subtitulo")),
          ListTile(title: Text("Lista de elementos"), subtitle: Text("Subtitulo")),
          ListTile(title: Text("Lista de elementos"), subtitle: Text("Subtitulo")),
          ListTile(title: Text("Lista de elementos"), subtitle: Text("Subtitulo")),
        ],
      ),
    );
  }
}

class Tab3 extends StatelessWidget {
  const Tab3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        children: const [
          ListTile(title: Text("Lista de elementos"), subtitle: Text("Subtitulo"),leading: Icon(Icons.confirmation_num_sharp), trailing: Icon(Icons.double_arrow_sharp)),
          ListTile(title: Text("Lista de elementos"), subtitle: Text("Subtitulo"),leading: Icon(Icons.confirmation_num_sharp), trailing: Icon(Icons.double_arrow_sharp)),
          ListTile(title: Text("Lista de elementos"), subtitle: Text("Subtitulo"),leading: Icon(Icons.confirmation_num_sharp), trailing: Icon(Icons.double_arrow_sharp)),
          ListTile(title: Text("Lista de elementos"), subtitle: Text("Subtitulo"),leading: Icon(Icons.confirmation_num_sharp), trailing: Icon(Icons.double_arrow_sharp)),
          ListTile(title: Text("Lista de elementos"), subtitle: Text("Subtitulo"),leading: Icon(Icons.confirmation_num_sharp), trailing: Icon(Icons.double_arrow_sharp)),
          ListTile(title: Text("Lista de elementos"), subtitle: Text("Subtitulo"),leading: Icon(Icons.confirmation_num_sharp), trailing: Icon(Icons.double_arrow_sharp)),
        ],
      ),
    );
  }
}


