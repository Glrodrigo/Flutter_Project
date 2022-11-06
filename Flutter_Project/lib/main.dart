import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  final sobreMim = 'Olá, sou Gleison e tenho 25 anos. Sempre gostei de tecnologia, e quando criança gostava de desmontar eletrônicos para consertar ou até mesmo para saber como funcionavam. \n\nAtualmente tenho a oportunidade de estar expandindo meus conhecimentos na área de tecnologia através da FATEC, utilizando algumas das linguagens como C++, HTML/CSS/JS, PHP e Dart.';
  final urlImagem = '../Image/Ft.jpg';


  @override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(title: Text('About me'), backgroundColor: Colors.cyan),
    drawer: Drawer(child: ListView(
    children: [
      UserAccountsDrawerHeader(
        currentAccountPicture: CircleAvatar(
          backgroundImage: NetworkImage('../Image/Ft.jpg'),
        ),
        accountName: Text('Gleison Rodrigo'),
        accountEmail: Text('Rodrigo@gmail.com'),
      ),
      ListTile(
        leading: Icon(Icons.email),
        title: Text('E-mail comercial'),
        subtitle: Text('Rod@gmail.com'),
        trailing: Icon(Icons.arrow_forward),
      ),
    ],
  ),
),
    body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.network(
            urlImagem,
            height: 200,
            width: 200,
            fit: BoxFit.cover,
          ),
          // O Padding controla o espaço externo com relação ao widget filho, neste caso o espaçamento ao topo
          const Padding(
            padding: EdgeInsets.only(top: 16),
            child: Text(
              'Gleison Rodrigo',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          // Exibir horizontamente o logo Flutter e o texto Flutter Developer
          Row(
            // Centraliza o conteúdo da Row
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              FlutterLogo(), // Logo Flutter
              Text('Flutter Developer'),
            ],
          ),
          // O Divider possui propriedades que facilitam a separação de conteúdos
          const Divider(
            indent: 32,
            endIndent: 32,
            height: 24,
            thickness: 3,
            color: Colors.cyan,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              sobreMim,
              // Ajuste de espaçamento entre linhas
              style: const TextStyle(height: 1.5),
              // Ajuste de alinhamento de texto justificado
              textAlign: TextAlign.justify,
            ),
          ),
        ],
    ),
    floatingActionButton: FloatingActionButton.extended(
      onPressed: () {},
      label: Text('Follow Me'),
      icon: Icon(Icons.favorite),backgroundColor: Colors.cyan,
    )
  );
}
}



