import 'package:flutter/material.dart';
import 'package:puwath_news/models/newsinfo.dart';
import 'package:puwath_news/services/api_manager.dart';

class HomePage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<HomePage> {
  Future<NewsModel> _newsModel;

  @override
  void initState() {
    _newsModel = API_Manager().getNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PUWATH-NEWS'),
      ),
      body: Container(
        child: FutureBuilder(
          future: _newsModel,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              child:
              ListView.builder(itemBuilder: (context, index) {
                return Container(
                  height: 100,
                  color: Colors.red,
                );
              });
            } else
              return CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
