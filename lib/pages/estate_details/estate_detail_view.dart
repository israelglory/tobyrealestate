import 'package:toby_estate/export/file_exports.dart';

class EstateDetailsView extends StatelessWidget {
  final EstateModel estate;
  const EstateDetailsView({Key? key, required this.estate}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<EstateDetailsViewModel>.nonReactive(
      viewModelBuilder: () => EstateDetailsViewModel(),
      builder: (context, viewModel, _) {
        return Scaffold(
          body: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 1.00,
                color: Colors.white,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.70,
                width: double.infinity,
                child: Image.network(
                  estate.image,
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 0.0,
                right: 0.0,
                left: 0.0,
                child: Container(
                  padding: const EdgeInsets.all(30.0),
                  height: MediaQuery.of(context).size.height * 0.40,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        estate.title,
                        style: const TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Location: ${estate.location}',
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 28,
                      ),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text(
                                'Starting Price:',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 28,
                                ),
                              ),
                              Text(
                                '\$${estate.price}',
                                style: const TextStyle(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 36,
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Text(
                            estate.availability,
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      Center(
                        child: Container(
                          padding: const EdgeInsets.all(10.0),
                          width: double.infinity,
                          height: 50,
                          color: AppColors.appButton,
                          child: const Center(
                            child: Text(
                              'Checkout',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
