import 'package:codingchef_sliver/image_widget.dart';
import 'package:flutter/material.dart';

class ScrollEffect extends StatelessWidget {
  const ScrollEffect({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: const Text('Sliver appbar'),
            backgroundColor: Colors.blue,
            expandedHeight: 200,
            leading: const Icon(Icons.arrow_back),
            actions: const [
              Icon(Icons.settings),
              SizedBox(
                width: 12,
              )
            ],
            flexibleSpace: FlexibleSpaceBar(
              background:
                  Image.asset('assets/youtube.png', fit: BoxFit.contain),
            ),
          ),
          SliverToBoxAdapter(
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: 20,
                primary: false,
                shrinkWrap: true,
                itemBuilder: ((context, index) {
                  return ImageWidget(
                    index: index,
                  );
                })),
          )
        ],
      ),
    );
  }
}
