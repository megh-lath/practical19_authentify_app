import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:practical19/ui/home/home_view_model.dart';
import 'package:practical19/ui/navigation/app_routes.dart';

import '../../data/dummy_data/dummy_workout_data.dart';
import '../../data/model/workout_data/workout_data.dart';
import '../../data/storage/preferences/preference_service.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});

  @override
  ConsumerState<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  late HomeViewNotifier notifier;
  int _selectedIndex = 0;
  int _selectedBottomItem = 0;

  static const colorsList = [
    Color(0xFFccfff5),
    Color(0xFFffcccc),
    Color(0xFFccffcc),
    Color(0xFFffcce6),
    Color(0xFFd6d6f5),
    Color(0xFFFFC4B8),
    Color(0xFFFFC4B8),
    Color(0xFFFFC4B8),
    Color(0xFFFFC4B8),
    Color(0xFFFFC4B8),
    Color(0xFFFFC4B8),
    Color(0xFFFFC4B8),
    Color(0xFFd6d6f5),
    Color(0xFFffcccc),
    Color(0xFFccffcc),
    Color(0xFFffcce6),
    Color(0xFFd6d6f5)
  ];

  void _updateSelectedItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _updateSelectedBottomItem(int index) {
    setState(() {
      _selectedBottomItem = index;
    });
  }

  @override
  void initState() {
    super.initState();
    notifier = ref.read(homeViewNotifier.notifier);
    onStart();
  }

  void onStart() async {
    final userFromPrefs = ref.read(currentUserDetails);
    print("User from prefs: $userFromPrefs");
    notifier.getUserDetails(userFromPrefs);
  }

  @override
  Widget build(BuildContext context) {
    final workoutData = WorkoutData.fromJson(DummyData.workoutData);
    return SafeArea(
        child: Scaffold(
      backgroundColor: const Color(0xFFFFF7F4),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.supervisor_account_outlined), label: 'Account'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_outlined), label: 'Stats'),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_a_photo_outlined), label: 'Photos'),
          BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined), label: 'Notifications')
        ],
        currentIndex: _selectedBottomItem,
        selectedItemColor: const Color(0xffffcf4b),
        selectedFontSize: 12,
        unselectedItemColor: Colors.grey,
        onTap: _updateSelectedBottomItem,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            _topBarView(context, workoutData),
            _workoutProgramsView(context, workoutData, _selectedIndex),
            _mapView(),
            const SizedBox(height: 30)
          ],
        ),
      ),
    ));
  }

  Widget _topBarView(BuildContext context, WorkoutData workoutData) {
    final state = ref.watch(homeViewNotifier);
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Good Morning, ${state.userDetails?.firstName ?? "James"}!",
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 14),
              ),
              const Text("Ready to workout?",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 28))
            ],
          ),
          // Logout icon button
          IconButton(
              onPressed: () {
                _showLogoutDialog(ref);
              },
              icon: const Icon(Icons.logout))
        ],
      ),
    );
  }

  Widget _bodyMonitorsView(BuildContext context, WorkoutData workoutData) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: SizedBox(
          height: 180,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: workoutData.bodyMonitor?.length,
            padding: const EdgeInsets.symmetric(horizontal: 8),
            itemBuilder: (context, index) {
              return SizedBox(
                width: 170,
                child: GestureDetector(
                    behavior: HitTestBehavior.deferToChild,
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(
                          color: colorsList[index],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(50))),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(16))),
                                child: Padding(
                                  padding: const EdgeInsets.all(16),
                                  child: Image.asset(
                                    workoutData
                                            .bodyMonitor?[index].monitorImage ??
                                        "",
                                    width: 16,
                                    height: 16,
                                  ),
                                )),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(workoutData.bodyMonitor?[index].title ?? "",
                                style: const TextStyle(
                                    color: Colors.black, fontSize: 12.0)),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(
                              workoutData.bodyMonitor?[index].value ?? "",
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20.0),
                            )
                          ],
                        ),
                      ),
                    )),
              );
            },
          )),
    );
  }

  Widget _workoutProgramsView(
      BuildContext context, WorkoutData workoutData, int selectedIndex) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text("Workout Programs",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 20.0))),
        const SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...workoutData.workoutPrograms?.asMap().entries.map((program) {
                    int index = program.key;
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _updateSelectedItem(index);
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(50)),
                          border: Border.all(color: const Color(0xFFffedc2)),
                          color: index == selectedIndex
                              ? const Color(0xFFffedc2)
                              : null,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 28, vertical: 16),
                          child: Text(program.value.type ?? "",
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 14.0)),
                        ),
                      ),
                    );
                  }) ??
                  []
            ],
          ),
        ),
        _programTypeList(context, workoutData, selectedIndex)
      ],
    );
  }

  Widget _programTypeList(
      BuildContext context, WorkoutData workoutData, int selectedIndex) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 16),
        child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                ...workoutData.workoutPrograms?[selectedIndex].items
                        ?.map((program) {
                      return Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(50)),
                          color: getRandomElement(colorsList),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 28, vertical: 16),
                          child: _programCardView(context, program),
                        ),
                      );
                    }) ??
                    []
              ],
            )));
  }

  Widget _programCardView(BuildContext context, WorkoutItem workoutItem) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text("Coach:\nStretch",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w900,
                    fontSize: 20.0)),
            Text(workoutItem.time ?? "12pm-20pm",
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 14.0)),
            const SizedBox(height: 8),
            Row(
              children: [
                for (var image in workoutItem.userImages!.take(2))
                  Align(
                    widthFactor: 0.4,
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(image),
                      radius: 18,
                    ),
                  ),
                const Align(
                  widthFactor: 0.3,
                  child: CircleAvatar(
                    radius: 18,
                    child: Icon(Icons.add),
                  ),
                )
              ],
            )
          ],
        ),
        const SizedBox(width: 40),
        Image.asset(
          "assets/strength.png",
          width: 160,
        )
      ],
    );
  }

  Widget _mapView() {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Row(
        children: [
          Container(
            height: screenHeight / 3.5,
            width: screenWidth / 3.5,
            padding: const EdgeInsets.only(right: 16),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 4),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                color: Color(0xFFFFDC78),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white,
                    ),
                    child: const Icon(Icons.location_on),
                  ),
                  const SizedBox(height: 8),
                  const Text("See\nRoute",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 14.0))
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
                height: screenHeight / 3.5,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                    color: Color(0xFFFFDC78),
                    image: DecorationImage(
                        image: NetworkImage(
                          "https://www.trinetrawireless.com/wp-content/uploads/2017/12/Efficient-Fleet-Route-Optimization-With-Trinetra-Wireless.jpg",
                        ),
                        fit: BoxFit.cover)),
                padding: const EdgeInsets.only(right: 16)),
          ),
        ],
      ),
    );
  }

  Future _showLogoutDialog(WidgetRef ref) async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Logout'),
          content: const Text('Are you sure you want to logout?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('No'),
            ),
            TextButton(
              onPressed: () {
                ref.read(isUserLoggedIn.notifier).state = false;
                ref.read(currentUserJson.notifier).state = "";
                AppRoute.login.push(context);
              },
              child: const Text('Yes'),
            ),
          ],
        );
      },
    );
  }
}

T getRandomElement<T>(List<T> list) {
  final random = Random();
  var i = random.nextInt(list.length);
  return list[i];
}
