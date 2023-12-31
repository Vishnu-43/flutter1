

import 'package:flutter/material.dart';
import 'package:flutter1/Screens/Sqlite/sqlitedbhelper.dart';

class SqlfliteHomePage extends StatefulWidget {
  const SqlfliteHomePage({super.key});

  @override
  State<SqlfliteHomePage> createState() => _SqlfliteHomePageState();
}

class _SqlfliteHomePageState extends State<SqlfliteHomePage> {
  List<Map<String,dynamic>> _journals=[];

  bool _isLoading=true;
  void _refreshJournals() async{
    final data = await SQLHelper.getItems();
    setState(() {
      _journals = data;
      _isLoading= false;
    });
  }
  void _showForm(int? id) async{
    if(id != null){
      final existingJournal=
          _journals.firstWhere((element) => element['id']==id);
          _titleController.text = existingJournal['title'];
          _descriptionController.text=existingJournal['description'];
    }
    showModalBottomSheet(
    context: context,isScrollControlled: true,
    builder:(context){
      return SingleChildScrollView(
      child: Container(
      padding: EdgeInsets.only(
    top: 15,
    left: 15,
    right: 15,
    bottom: MediaQuery.of(context).viewInsets.bottom + 120,
    ),
    child: Column(
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.end,
    children: [
      TextField(
    controller: _titleController,
    decoration: InputDecoration(labelText: 'Title'),
    ),
    TextField(
    controller:_descriptionController,
    decoration: InputDecoration(labelText: "Description"),
    ),
    Padding(padding: EdgeInsets.all(8.0),
    child: ElevatedButton(style: ButtonStyle(backgroundColor:
        MaterialStatePropertyAll(Colors.teal)),
    onPressed: () async {
      if(id == null){
        await _addItem();
    }
      if(id != null){
        await _updateItem(id);
    }
      _titleController.text='';
      _descriptionController.text='';
      Navigator.of(context).pop();

    }, child: Text(id == null ? "create new":"update"),),)
    ],
    ),
      ),
      );
    }
    );
  }
  Future<void> _addItem() async{
    await SQLHelper.createItem(
      _titleController.text, _descriptionController.text
    );
    _refreshJournals();
  }
  Future<void> _updateItem(int id) async{
    await SQLHelper.updataItem(id, _titleController.text, _descriptionController.text);
    _refreshJournals();
  }
  void _deleteItem(int id) async {
    await SQLHelper.deleteItem(id);
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Successfully deleted a journal !')));
    _refreshJournals();
  }
  @override
  void initState(){
    super.initState();
    _refreshJournals();
  }
  final TextEditingController _titleController= TextEditingController();
  final TextEditingController _descriptionController=TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('Sqlflite crud operation'),
      ),
      body: _isLoading ? Center(
        child: CircularProgressIndicator(),
      ):ListView.builder(
        itemCount: _journals.length,
        itemBuilder: (context, index) => Card(
          color: Colors.yellow[200],
          margin: EdgeInsets.all(15),
          child: ListTile(
            title: Text(_journals[index]['title']),
            subtitle: Text(_journals[index]['description']),
            trailing: SizedBox(
              width: 100,
              child: Row(
                children: [
                  IconButton(
                      icon: const Icon(Icons.edit),

                      onPressed: () =>_showForm(_journals[index]['id']), ),
            IconButton( icon: const Icon(Icons.delete), onPressed: () => _deleteItem(_journals[index]['id']),
            ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
          backgroundColor:Colors.teal,
          onPressed:() => _showForm(null),
          label: Text("Add details"),
      icon: Icon(Icons.add),)


    );
  }
}
