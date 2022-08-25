import 'package:dashboard_flow/models/my_files.dart';
import 'package:dashboard_flow/screens/dashboard/components/file_info_card.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class MyFiles extends StatelessWidget {
  const MyFiles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "My files",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            ElevatedButton.icon(
              style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding * 1.5,
                vertical: defaultPadding,
              )),
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text("Add new"),
            ),
          ],
        ),
        const SizedBox(
          height: defaultPadding,
        ),
        GridView.builder(
          shrinkWrap: true,
          itemCount: 4,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: defaultPadding,
            childAspectRatio: 1.4,
          ),
          itemBuilder: ((context, index) =>
              FileInfoCard(info: demoMyFiels[index])),
        ),
      ],
    );
  }
}
