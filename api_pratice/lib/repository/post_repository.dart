import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:api_pratice/model/posts/post_model.dart';
import 'package:http/http.dart' as http;

class PostRepository {
//! getting list of post
//create model from json to dart website 
  Future<List<PostModel?>> getAllPosts() async {
    List<PostModel> _posts = [];
    log('post api started');
    //! always use try/catch for every methods
    try {
      final response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

      if (response.statusCode == HttpStatus.ok) {
        log('post api succfull');
        // convert response into json body
        final List jsonbody = jsonDecode(response.body);

        log('post api mapping started');

        //   one method
        if (jsonbody.isNotEmpty) {
          _posts = jsonbody.map((e) => PostModel.fromJson(e)).toList();
           log('post api length = ${_posts.length.toString()}');
          
// for loop 
    for(int i  =0; i<_posts.length;i++){

         log('${_posts[i].toJson().toString()}');
    }


          log('post api mapping finshed');
        }

        // // second method
        // for(int i =0; i< _posts.length;i++) {
        //   PostModel postModel = PostModel(userId: jsonbody[i]['userId'], id: jsonbody[i]['id'], title: jsonbody[i]['title'], body: jsonbody[i]['body']);
        //   _posts.add(postModel);
        // }

        // // third method
        // for(Map data in jsonbody) {
        //   _posts.add(PostModel(userId: data['userId'], id: data['id'], title: data['title'], body: data['body']));
        // }
      } else {
        _posts = [];
        log('post api failed');
      }
    } catch (e) {
      log('post api failed ${e.toString()}');
      _posts = [];
    }
    return _posts;
  }

  //GETTING SINGLE POST
  
}
