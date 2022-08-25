import 'package:toby_estate/export/file_exports.dart';

class SearchItem extends StatelessWidget {
  const SearchItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(36, 0, 36, 0),
      height: 56,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.black26, //New
            blurRadius: 5.0,
            offset: Offset(0, 9),
          ),
        ],
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 16,
          ),
          const Expanded(
              child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: 'Search by Location',
            ),
          )),
          SvgPicture.asset('assets/svg/Search.svg'),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}
