import 'package:flutter/material.dart';

class Detail_Screen extends StatelessWidget {
  const Detail_Screen({super.key, @required this.image, @required this.name, @required this.email});

  final String? image, name, email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SizedBox(
            width: double.infinity,
            height: 400,
            child: Card(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                      width: double.infinity,
                      height: 200,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(image!),
                        radius: 50,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16,),
                  Text(name!,style: const TextStyle(fontSize: 20,fontWeight: FontWeight.w700),),
                  const SizedBox(height: 16,),
                  Text(email!,style: const TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}