import 'package:flutter/material.dart';
import 'sale.provider.dart';
import '../../../../shared/widget/custom_button.widget.dart';

enum ItemType { UserStory, TechStory, Bug}

class CreateItemPage extends StatefulWidget {
  const CreateItemPage({super.key});

  @override
  State<CreateItemPage> createState() => _CreateItemPageState();
}

class _CreateItemPageState extends State<CreateItemPage> {
  final TextEditingController _nameItemController = TextEditingController();
  ItemType? type;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Crear Item'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Nombre del Item',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16
              ),
            ),
            TextFormField(controller: _nameItemController),
            const SizedBox(height: 32.0),
            const Text(
              'Tipo de Item',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16
              ),
            ),
            const SizedBox(height: 8.0),
            Wrap(
              spacing: 16.0,
              children: [
                FilterChip(
                  showCheckmark: false,
                  selected: type == ItemType.UserStory,
                  selectedColor: Colors.blue,
                  label: Text(
                    'User Story',
                    style: TextStyle(
                      color: type == ItemType.UserStory
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                  onSelected: (val) {
                    setState(() {
                      type = ItemType.UserStory;
                    });
                  },
                ),
                FilterChip(
                  showCheckmark: false,
                  selected: type == ItemType.TechStory,
                  selectedColor: Colors.grey,
                  label: Text(
                    'Tech Story',
                    style: TextStyle(
                      color: type == ItemType.TechStory
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                  onSelected: (val) {
                    setState(() {
                      type = ItemType.TechStory;
                    });
                  },
                ),
                FilterChip(
                  showCheckmark: false,
                  selected: type == ItemType.Bug,
                  selectedColor: Colors.red,
                  label: Text(
                    'Bug',
                    style: TextStyle(
                      color: type == ItemType.Bug
                          ? Colors.white
                          : Colors.black,
                    ),
                  ),
                  onSelected: (val) {
                    setState(() {
                      type = ItemType.Bug;
                    });
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: CustomButton(
          onPressed: _nameItemController.text.isNotEmpty && type != null
              ? () async {
                await ItemProvider().createItem(_nameItemController.text, type!.name);
                Navigator.pop(context);
              }
              : null,
          text: 'Agregar',
        ),
      ),
    );
  }
}