import 'package:flutter/material.dart';
import 'package:laboratorioleccion7/src/providers/people_provider.dart';

class ListViewsListTilesPage extends StatefulWidget {
  const ListViewsListTilesPage({Key? key}) : super(key: key);

  @override
  State<ListViewsListTilesPage> createState() => _ListViewsListTilesPageState();
}

class _ListViewsListTilesPageState extends State<ListViewsListTilesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista Personas"),
      ),
      body: cargarElementos(context),
    );
  }

  Widget cargarElementos(BuildContext context) {
    return FutureBuilder(
        future: peopleProvider.cargarDatos(),
        builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
          return Padding(
            padding: const EdgeInsets.all(5),
            child: ListView(children: listaItems(snapshot.data!)),
          );
        });
  }

  List<Widget> listaItems(List<dynamic> data) {
    List<Widget> personas = [];
    for (var persona in data) {
      personas.add(crearItem(
        persona['name'],
        persona['country'],
        persona['region'],
        persona['image'],
      ));
    }
    return personas;
  }

  Widget crearItem(name, country, region, image) {
    return Card(
      elevation: 4,
      color: Colors.lightBlueAccent.shade100,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      child: ListTile(
        title: Text(name),
        subtitle: Text("$country | $region"),
        leading: CircleAvatar(
          backgroundImage: Image(
              image: AssetImage(image)
          ).image,
        ),
        trailing: const Icon(Icons.arrow_right),
        onTap: () {
          print("Hizo click en $name");
        },
      ),
    );
  }
}
