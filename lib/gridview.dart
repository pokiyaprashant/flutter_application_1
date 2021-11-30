import 'package:flutter/material.dart';

class Gridpage extends StatefulWidget {
  const Gridpage({Key? key}) : super(key: key);

  @override
  _GridpageState createState() => _GridpageState();
}

class _GridpageState extends State<Gridpage> {
  final wallpaper = [
    'https://images.unsplash.com/photo-1638176061592-d8475d970c19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=400&q=60',
    'https://images.unsplash.com/photo-1638176061592-d8475d970c19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=400&q=60',
    'https://images.unsplash.com/photo-1638176061592-d8475d970c19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=400&q=60',
    'https://images.unsplash.com/photo-1638176061592-d8475d970c19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=400&q=60',
    'https://images.unsplash.com/photo-1638176061592-d8475d970c19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=400&q=60',
    'https://images.unsplash.com/photo-1638176061592-d8475d970c19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=400&q=60',
    'https://images.unsplash.com/photo-1638176061592-d8475d970c19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=400&q=60',
    'https://images.unsplash.com/photo-1638176061592-d8475d970c19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=400&q=60',
    'https://images.unsplash.com/photo-1638176061592-d8475d970c19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=400&q=60',
    'https://images.unsplash.com/photo-1638176061592-d8475d970c19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=400&q=60',
    'https://images.unsplash.com/photo-1638176061592-d8475d970c19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHw3fHx8ZW58MHx8fHw%3D&auto=format&fit=crop&w=400&q=60',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: GridView(
            children: wallpaper
                .map((e) => ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: GridTile(
                        child: Image.network(
                          e,
                          fit: BoxFit.cover,
                        ),
                        footer: GridTileBar(
                          title: Center(
                              child: Text(
                            "wallpaper",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )),
                          backgroundColor: Colors.orange.withOpacity(0.2),
                        ),
                      ),
                    ))
                .toList(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 1 / 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10)),
      ),
    );
  }
}
