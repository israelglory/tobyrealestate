import 'package:toby_estate/export/file_exports.dart';

class IntroPageView extends StatelessWidget {
  const IntroPageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<IntroPageViewModel>.reactive(
      viewModelBuilder: () => IntroPageViewModel(),
      onModelReady: (model) {
        model.init();
      },
      builder: (context, model, _) {
        return PageView(
          controller: model.pageController,
          children: [
            FirstIntro(onNextTap: () {
              model.pageNavigator(1);
            }),
            SecondIntro(onNextTap: () {
              model.pageNavigator(2);
            }),
            ThirdIntro(onConfirmTap: () {
              model.navigateToView(context, const EstateListingView());
              //Navigator.push(context, MaterialPageRoute(builder: builder))
            })
          ],
        );
      },
    );
  }
}
