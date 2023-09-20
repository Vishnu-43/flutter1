import 'package:flutter/material.dart';
class WhatsAppSample extends StatefulWidget {
  const WhatsAppSample({super.key});

  @override
  State<WhatsAppSample> createState() => _WhatsAppSampleState();
}

class _WhatsAppSampleState extends State<WhatsAppSample> {
  List<String> name=['anu','arun','amal'];
  List<String> message=['hello','how are you','welcome'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("whatsapp",),backgroundColor: Colors.green,),
      body: ListView.builder(itemCount: name.length,
        itemBuilder: (context, index) {
        return ListTile(
          subtitle: Text(message[index]),
          leading: CircleAvatar(
            radius: 30,
              backgroundImage:NetworkImage("") ,
          ),
          title: Text(name[index]),
        );

      },) ,
    );
  }
}
