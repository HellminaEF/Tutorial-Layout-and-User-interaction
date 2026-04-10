import 'package:flutter/material.dart';

class Tutorial112Page extends StatefulWidget {
  const Tutorial112Page({super.key});

  @override
  State<Tutorial112Page> createState() => _Tutorial112PageState();
}

class _Tutorial112PageState extends State<Tutorial112Page> {
  final List<String> _items = [];
  final TextEditingController _controller = TextEditingController();

  void _showAddDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Tambah Data'),
          content: TextField(
            controller: _controller,
            decoration: const InputDecoration(hintText: 'Masukkan data'),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Batal'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _items.add(_controller.text);
                  _controller.clear();
                });
                Navigator.pop(context);
              },
              child: const Text('Tambah'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tutorial 11-2')),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return ListTile(title: Text(_items[index]));
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showAddDialog,
        child: const Icon(Icons.add),
      ),
    );
  }
}
