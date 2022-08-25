import 'package:toby_estate/export/file_exports.dart';

class EstateListingView extends StatelessWidget {
  const EstateListingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<EstateListingViewModel>.nonReactive(
      viewModelBuilder: () => EstateListingViewModel(),
      builder: (context, viewModel, _) {
        return Scaffold(
          bottomNavigationBar: const EstateNav(),
          //backgroundColor: Colors.yellow,
          body: SingleChildScrollView(
            child: Expanded(
              child: Stack(
                children: [
                  Positioned(
                    top: 0.0,
                    right: 0.0,
                    child: Image.asset(
                      'assets/images/blank.png',
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 91,
                      ),
                      const SearchItem(),
                      const SizedBox(
                        height: 26,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 36),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              'Explore',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 24),
                            ),
                            Text(
                              'Different Locations',
                              style: TextStyle(
                                  fontWeight: FontWeight.w700, fontSize: 24),
                            ),
                          ],
                        ),
                      ),
                      ...viewModel.estates.map(
                        (e) {
                          return Container(
                            padding: const EdgeInsets.all(10.0),
                            height: 201,
                            margin:
                                const EdgeInsets.fromLTRB(32.0, 23.0, 32.0, 23),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Stack(
                                  children: [
                                    Image.network(
                                      e.image,
                                      height: 183,
                                      width: 185,
                                      fit: BoxFit.fill,
                                    ),
                                    Positioned(
                                      bottom: 5.0,
                                      left: 5.0,
                                      child: Container(
                                        padding: const EdgeInsets.all(5.0),
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                        ),
                                        child:
                                            const Icon(Icons.favorite_border),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  width: 18,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        e.location,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 24,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        e.title,
                                        maxLines: 4,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Text(
                                        '\$${e.price}',
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 16,
                                        ),
                                      ),
                                      const Spacer(),
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: ((context) {
                                              return EstateDetailsView(
                                                estate: viewModel.estates[
                                                    viewModel.estates
                                                        .indexOf(e)],
                                              );
                                            })),
                                          );
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.all(10.0),
                                          width: double.infinity,
                                          color: AppColors.appButton,
                                          child: const Center(
                                            child: Text(
                                              'Check Details',
                                              style: TextStyle(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
