import 'package:toby_estate/export/file_exports.dart';

class SecondIntro extends StatelessWidget {
  final Function() onNextTap;
  const SecondIntro({Key? key, required this.onNextTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            Image.asset('assets/images/second.png'),
            const SizedBox(
              height: 34,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 64,
                  height: 8,
                  decoration: BoxDecoration(
                    color: AppColors.inactiveIndicator,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                Container(
                  width: 64,
                  height: 8,
                  decoration: BoxDecoration(
                    color: AppColors.activeIndicator,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                Container(
                  width: 64,
                  height: 8,
                  decoration: BoxDecoration(
                    color: AppColors.inactiveIndicator,
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 48,
            ),
            const Expanded(
              child: Padding(
                padding: EdgeInsets.fromLTRB(43, 0.0, 43.0, 0.0),
                child: Text(
                  'You spend less with us',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: onNextTap,
              child: Container(
                width: 350,
                height: 53,
                decoration: BoxDecoration(
                  color: AppColors.appButton,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                          child: Center(
                        child: Text(
                          'Next',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )),
                      Icon(Icons.arrow_forward_ios),
                      SizedBox(
                        width: 20,
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 120,
            )
          ],
        ),
      ),
    );
  }
}
