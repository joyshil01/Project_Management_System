import 'package:flutter/material.dart';
import 'package:project_management_system/src/common_widgets/containerStyle.dart';
import 'package:project_management_system/src/utils/media-query.dart';

class HomepageCard extends StatefulWidget {
  const HomepageCard({super.key});

  @override
  State<HomepageCard> createState() => _HomepageCardState();
}

class _HomepageCardState extends State<HomepageCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: SizeVariables.getHeight(context) * 0.202,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 7,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.only(
            right: SizeVariables.getWidth(context) * 0.04,
          ),
          child: InkWell(
            onTap: () {},
            child: ContainerNewStyle(
              width: SizeVariables.getWidth(context) * 0.6,
              child: Container(
                width: SizeVariables.getWidth(context) * 0.7,
                padding: EdgeInsets.all(13),
                margin: EdgeInsets.only(
                  right: SizeVariables.getWidth(context) * 0.02,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: SizeVariables.getWidth(context) * 0.7,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              'Claimz',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color: Color(0xfff50BFE3),
                                    fontSize: 16,
                                  ),
                            ),
                          ),
                          Container(
                            child: Text(
                              'Pending',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    color: Color(0xfff7E4CF9),
                                    fontSize: 12,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: SizeVariables.getHeight(context) * 0.01,
                    ),
                    Container(
                      child: Container(
                        child: Text(
                          'UI Bug problem is not fix perfectly. Try to fix them.',
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Theme.of(context).hintColor,
                                    fontSize: 12,
                                  ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: SizeVariables.getHeight(context) * 0.01,
                    ),
                    Container(
                      child: Text(
                        '4 days left',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: Color(0xfff7B7B7B),
                              fontSize: 12,
                            ),
                      ),
                    ),
                    SizedBox(
                      height: SizeVariables.getHeight(context) * 0.01,
                    ),
                    Container(
                      height: SizeVariables.getHeight(context) * 0.065,
                      width: SizeVariables.getWidth(context) * 0.7,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 10,
                        itemBuilder: (context, index) => Padding(
                          padding: EdgeInsets.only(
                            right: SizeVariables.getWidth(context) * 0.02,
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/drawer/pro1.jpg',
                              fit: BoxFit.cover,
                              height: 20,
                              width: 50,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
