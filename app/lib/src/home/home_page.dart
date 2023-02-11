import 'package:flutter/material.dart';
import 'package:listinha/src/home/widgets/custom_drawer.dart';
import 'package:listinha/src/shared/widgets/user_image_button.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({super.key});

  @override
  State<HomeWidget> createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),
      appBar: AppBar(
        title: const Text(
          'Listinha',
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: UserImageButton(),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () => {},
        label: const Text('Nova Lista'),
        icon: const Icon(Icons.edit),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8),
              child: SegmentedButton(
                segments: const [
                  ButtonSegment(value: 0, label: Text('Todos')),
                  ButtonSegment(value: 1, label: Text('Pendentes')),
                  ButtonSegment(value: 2, label: Text('Concluidas')),
                  ButtonSegment(value: 3, label: Text('Desativadas')),
                ],
                selected: const {0},
                onSelectionChanged: (values) {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
