import 'package:flutter/material.dart';
import '../../../../../constans.dart';
import '../../../../common_widgets/containerStyle.dart';
import '../../../../utils/media-query.dart';

class CompleteTabview extends StatefulWidget {
  @override
  State<CompleteTabview> createState() => _CompleteTabviewState();
}

class _CompleteTabviewState extends State<CompleteTabview> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Firstgradient,
            Secondgradient,
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
      child: ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: TabviewCard(
            child: Container(
              // height: 200,
              padding: EdgeInsets.only(
                left: SizeVariables.getWidth(context) * 0.07,
                right: SizeVariables.getWidth(context) * 0.07,
                top: SizeVariables.getHeight(context) * 0.02,
                bottom: SizeVariables.getHeight(context) * 0.03,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: SizeVariables.getHeight(context) * 0.02,
                    width: SizeVariables.getWidth(context) * 0.15,
                    decoration: BoxDecoration(
                      color: Color(0xfffC2EDEA),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        'Ui not fix',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontSize: 10,
                            ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: SizeVariables.getHeight(context) * 0.01,
                  ),
                  Text(
                    'Claimz PI - II',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Color(0xfffFFFFFF),
                          fontSize: 20,
                        ),
                  ),
                  SizedBox(
                    height: SizeVariables.getHeight(context) * 0.01,
                  ),
                  Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Color(0xfffFFFFFF),
                          fontSize: 14,
                        ),
                  ),
                  SizedBox(
                    height: SizeVariables.getHeight(context) * 0.01,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: SizeVariables.getWidth(context) * 0.2,
                        child: Stack(
                          children: [
                            Positioned(
                              child: CircleAvatar(
                                radius: SizeVariables.getHeight(context) * 0.02,
                                backgroundImage: const AssetImage(
                                  'assets/img/taskdemo.jpeg',
                                ),
                              ),
                            ),
                            Positioned(
                              left: 18,
                              child: CircleAvatar(
                                radius: SizeVariables.getHeight(context) * 0.02,
                                backgroundImage: const AssetImage(
                                  'assets/img/taskdemo1.jpg',
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(
                        '3 hr ago',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Color(0xfffFFFFFF),
                              fontSize: 10,
                            ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
