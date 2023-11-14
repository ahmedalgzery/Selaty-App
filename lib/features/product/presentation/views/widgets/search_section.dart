import 'package:flutter/material.dart';
import 'package:selaty/core/widgets/filter_icon.dart';
import 'package:selaty/core/widgets/search_field.dart';

class SearchSection extends StatelessWidget {
  const SearchSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: SearchField()),
        FilterIcon(),
      ],
    );
  }
}
