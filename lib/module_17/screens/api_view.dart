import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_15/module_17/model/post_model.dart';
import 'package:flutter_15/module_17/utils/urls.dart';
import 'package:http/http.dart' as http;
class ApiView extends StatefulWidget {
  const ApiView({super.key});

  @override
  State<ApiView> createState() => _ApiViewState();
}

class _ApiViewState extends State<ApiView> {
  List<postModel> posts = [];

  Future<void>fetchPosts() async {
    final response = await http.get(Uri.parse(Urls.getPost));
    log(response.toString());

    if(response.statusCode == 200){
      List data = json.decode(response.body);

      setState(() {
        posts = data.map((e)=>postModel.fromJson(e)).toList();
      });
    }else{

    }

  }

  Future<void>deletePosts(String id) async {
    final response = await http.delete(Uri.parse(Urls.deletePost(id)));
    log(response.statusCode.toString());
    log(response.body.toString());
    if(response.statusCode == 200){
      await fetchPosts();
      setState(() {

      });
    }else{

    }

  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchPosts();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Posts'),
      ),
      body: ListView.builder(
        itemCount: posts.length,
          itemBuilder: (context,index){
          final post = posts[index];
          return Card(
            child: ListTile(
              title: Text(post.title.toString()),
              subtitle: Text( post.body.toString()),
              trailing: IconButton(onPressed: (){
                deletePosts(post.id.toString());
              }, icon: Icon(Icons.delete,color: Colors.red,)),
            ),
          );
          }

      ),
    );
  }
}
