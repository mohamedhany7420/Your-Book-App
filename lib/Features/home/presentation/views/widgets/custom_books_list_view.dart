import 'package:flutter/cupertino.dart';
import 'package:your_book_app/Features/home/presentation/views/widgets/custom_book_item.dart';

class CustomBooksListView extends StatelessWidget {
   const CustomBooksListView({
     super.key,
     required this.listHeight
   });
  final double listHeight;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
     height: listHeight,
      child: ListView.builder(
        clipBehavior: Clip.none,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 8,
          itemBuilder: (context, index) {
            return  Padding(
              padding: const EdgeInsets.only(right:16),
              child: CustomBookItem(
                height: listHeight,
              ),
            );
          },
      ),
    );
  }
}
