import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_management_system/src/utils/media-query.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../../../routing/app_router.dart';

class Project_List extends StatefulWidget {
  @override
  State<Project_List> createState() => _Project_ListState();
}

TextEditingController _searchProject = new TextEditingController();
final _controller = PageController();
final _doingProjects = PageController();
final _onHoldProjects = PageController();
final _doneProjects = PageController();
int all = 3;
bool OnDotClicked = true;


class _Project_ListState extends State<Project_List> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 780,
      padding: EdgeInsets.only(
        left: SizeVariables.getWidth(context) * 0.01,
      ),
      child: ListView(
        // shrinkWrap: true,
        children: [
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: Text(
                    'Project Diagram',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: Theme.of(context).hintColor,
                          fontSize: 23,
                        ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: SizeVariables.getHeight(context) * 0.008,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    // height: SizeVariables.getHeight(context) * 0.04,
                    width: SizeVariables.getWidth(context) * 0.8,
                    decoration: BoxDecoration(
                        color: Color(0xfffFFFFFF),
                        borderRadius: BorderRadius.circular(20)),
                    child: TextFormField(
                      controller: _searchProject,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: const Icon(
                          Icons.search,
                        ),
                        prefixIconColor: Colors.grey,
                        hintText: 'Search Project List',
                        hintStyle:
                            Theme.of(context).textTheme.bodyMedium!.copyWith(
                                  color: Color(0xfff000000).withAlpha(67),
                                  fontSize: 14,
                                ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text(
                'All Projects',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).hintColor,
                      fontSize: 18,
                    ),
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: SizeVariables.getHeight(context) * 0.15,
                child: ListView.builder(
                  controller: _controller,
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Get.toNamed(RoutesClass.project_detailsRoute());
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Image.asset(
                          'assets/img/Group 6.png',
                          // width: SizeVariables.getWidth(context)*0.5,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                    effect: const ExpandingDotsEffect(
                      dotColor: Color(0xfffD9D9D9),
                      activeDotColor: Colors.blue,
                      dotHeight: 10,
                      dotWidth: 10,
                      strokeWidth: 5,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: SizeVariables.getHeight(context) * 0.01,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text(
                'Doing Projects',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).hintColor,
                      fontSize: 18,
                    ),
              ),
            ),
          ),
          Column(
            children: [
              Container(
                height: SizeVariables.getHeight(context) * 0.15,
                child: ListView.builder(
                  controller: _doingProjects,
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {},
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Image.asset(
                          'assets/img/Group 6.png',
                          // width: SizeVariables.getWidth(context)*0.5,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SmoothPageIndicator(
                onDotClicked: (index) {},
                controller: _doingProjects,
                count: 3,
                effect: const ExpandingDotsEffect(
                  dotColor: Color(0xfffD9D9D9),
                  activeDotColor: Colors.blue,
                  dotHeight: 10,
                  dotWidth: 10,
                  strokeWidth: 5,
                ),
              ),
            ],
          ),
          SizedBox(
            height: SizeVariables.getHeight(context) * 0.01,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text(
                'On Hold Projects',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).hintColor,
                      fontSize: 18,
                    ),
              ),
            ),
          ),
          Column(
            children: [
              Container(
                height: SizeVariables.getHeight(context) * 0.15,
                child: ListView.builder(
                  controller: _onHoldProjects,
                  scrollDirection: Axis.horizontal,
                  itemCount: 9,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {},
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Image.asset(
                          'assets/img/Group 6.png',
                          // width: SizeVariables.getWidth(context)*0.5,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SmoothPageIndicator(
                controller: _onHoldProjects,
                count: 4,
                effect: const ExpandingDotsEffect(
                  dotColor: Color(0xfffD9D9D9),
                  activeDotColor: Colors.blue,
                  dotHeight: 10,
                  dotWidth: 10,
                  strokeWidth: 5,
                ),
              ),
            ],
          ),
          SizedBox(
            height: SizeVariables.getHeight(context) * 0.01,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text(
                'Done Projects',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context).hintColor,
                      fontSize: 18,
                    ),
              ),
            ),
          ),
          Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: SizeVariables.getHeight(context) * 0.15,
                child: ListView.builder(
                  controller: _doneProjects,
                  scrollDirection: Axis.horizontal,
                  itemCount: 6,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {},
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(18),
                        child: Image.asset(
                          'assets/img/Group 6.png',
                          // width: SizeVariables.getWidth(context)*0.5,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SmoothPageIndicator(
                controller: _doneProjects,
                count: 3,
                effect: const ExpandingDotsEffect(
                  dotColor: Color(0xfffD9D9D9),
                  activeDotColor: Colors.blue,
                  dotHeight: 10,
                  dotWidth: 10,
                  strokeWidth: 5,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}