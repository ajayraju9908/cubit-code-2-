import 'package:api_pratice/repository/post_repository.dart';
import 'package:flutter/material.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  late  PostRepository postRepository;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    postRepository = PostRepository();
    getDataFromPostRepo()
;
    // PostRepository().getAllPosts();
  }

  Future<void> getDataFromPostRepo() async {
    await postRepository.getAllPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Api practice"),
          centerTitle: true,
        ),
        body: SafeArea(
            child: Center(
          child: Text("api testing"),
        )));
  }
}
