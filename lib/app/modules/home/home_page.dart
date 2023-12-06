import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

import '../../infra/components/blog.dart';
import '../../infra/utils/block_wrapper.dart';

const String listItemTitleText = "A BETTER BLOG FOR WRITING";
const String listItemPreviewText =
    "Sed elementum tempus egestas sed sed risus. Mauris in aliquam sem fringilla ut morbi tincidunt. Placerat vestibulum lectus mauris ultrices eros. Et leo duis ut diam. Auctor neque vitae tempus […]";

class HomePage extends StatelessWidget {
  static const String name = 'list';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: BlockWrapper(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              children: <Widget>[
                const MinimalMenuBar(),
                Visibility(
                  visible:
                      ResponsiveBreakpoints.of(context).between(MOBILE, TABLET),
                  replacement: const Text('pão de açucar é mt bom'),
                  child: const ListItem(
                    title: listItemTitleText,
                    description: listItemPreviewText,
                  ),
                ),
                divider,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
