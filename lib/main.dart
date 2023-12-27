import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import  'package:tracker_ui/Bar graph/bar_graph.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Nav',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    const HomeScreen(),
    const CalendarScreen(),
    const AddScreen(),
    const GraphScreen(),
    const ProfileScreen(),
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex],
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 6.0,
        color: Colors.green,
        child: SizedBox(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                icon: const Icon(Icons.home),
                color: Colors.white,
                onPressed: () => onTabTapped(0),
              ),
              IconButton(
                icon: const Icon(Icons.calendar_today),
                color: Colors.white,
                onPressed: () => onTabTapped(1),
              ),
              Container(
                height: 80,
                width: 80,
                decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.green)),
                child: IconButton(
                  icon: const Icon(Icons.add),
                  color: Colors.green,
                  iconSize: 40,
                  alignment: Alignment.center,
                  onPressed: () => onTabTapped(2),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.bar_chart),
                color: Colors.white,
                onPressed: () => onTabTapped(3),
              ),
              IconButton(
                icon: const Icon(Icons.person),
                color: Colors.white,
                onPressed: () => onTabTapped(4),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: const Column(
              children: [
                SizedBox(height: 50),
                ListTile(
                  contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/401981.jpg'),
                    radius: 30,
                  ),
                  title: Text(
                    'Hello Abhinav',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text('Good Morning',
                      style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12,
                          fontWeight: FontWeight.bold)),
                  trailing: Icon(Icons.notifications),
                )
              ],
            ),
          ),
          Container(
              height: 150,
              padding: const EdgeInsets.fromLTRB(20, 18, 20, 15),
              margin: const EdgeInsets.fromLTRB(20, 20, 20, 10),
              decoration: BoxDecoration(
                  color: Colors.greenAccent.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(children: <Widget>[
                const Column(children: <Widget>[
                  Text(
                    ' You are almost done!',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    '2/3       3/5',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 4),
                  Text('Habits       Tasks ',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold))
                ]),
                const SizedBox(
                  width: 23,
                ),
                CircularPercentIndicator(
                    radius: 50,
                    lineWidth: 10,
                    progressColor: Colors.green,
                    backgroundColor: Colors.green.withOpacity(0.5),
                    percent: 0.62,
                    circularStrokeCap: CircularStrokeCap.round,
                    center: const Text('62%',
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)))
              ])),
          Container(
            margin: const EdgeInsets.fromLTRB(20, 6, 20, 12),
            padding: const EdgeInsets.all(5),
            decoration: const BoxDecoration(color: Colors.white),
            child: Row(children: <Widget>[
              Container(
                  height: 95,
                  width: 50.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: Colors.green, width: 2),
                  ),
                  child: const Center(
                    child: Text(
                      ' 15\n\nWed',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  )),
              const SizedBox(
                width: 6.2,
              ),
              Container(
                  height: 95,
                  width: 50.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: Colors.green, width: 2),
                  ),
                  child: const Center(
                    child: Text(
                      ' 16\n\nThu',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  )),
              const SizedBox(
                width: 6.2,
              ),
              Container(
                  height: 95,
                  width: 50.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: Colors.green, width: 2),
                  ),
                  child: const Center(
                    child: Text(
                      '17\n\nFri',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  )),
              const SizedBox(
                width: 6.2,
              ),
              Container(
                  height: 95,
                  width: 50.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: Colors.green, width: 2),
                  ),
                  child: const Center(
                    child: Text(
                      ' 18\n\nSat',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  )),
              const SizedBox(
                width: 6.2,
              ),
              Container(
                  height: 95,
                  width: 50.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: Colors.green, width: 2),
                  ),
                  child: const Center(
                    child: Text(
                      ' 19\n\nSun',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  )),
              const SizedBox(
                width: 6.2,
              ),
              Container(
                  height: 95,
                  width: 50.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: Colors.green, width: 2),
                  ),
                  child: const Center(
                    child: Text(
                      '  20\n\nMon',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  )),
            ]),
          ),
          Container(
            height: 30,
            decoration: const BoxDecoration(color: Colors.white),
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: const Row(
              children: <Widget>[
                Text(
                  'Wednesday habit',
                  style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16),
                ),
                SizedBox(
                  width: 185,
                ),
                Text(
                  'See all',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          Container(
            height: 330,
            width: 500,
            decoration: const BoxDecoration(color: Colors.white),
            child: Row(
              children: <Widget>[
                Container(
                  height: 315,
                  width: 190,
                  decoration: const BoxDecoration(color: Colors.white),
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                  child: Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.green.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(20)),
                        padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                        height: 70,
                        width: 190,
                        child: Row(
                          children: <Widget>[
                            const Icon(
                              Icons.run_circle_sharp,
                              size: 40,
                              color: Colors.white,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              'Running\n5000 step',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black.withOpacity(0.7)),
                            ),
                            const SizedBox(
                              width: 7,
                            ),
                            CircularPercentIndicator(
                              radius: 20,
                              progressColor: Colors.green,
                              backgroundColor: Colors.grey,
                              percent: 0.82,
                              circularStrokeCap: CircularStrokeCap.round,
                              center: const Text(
                                '82%',
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.orange.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(20)),
                        padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                        height: 220,
                        width: 190,
                        child: Column(
                          children: <Widget>[
                            const Icon(
                              Icons.sports_gymnastics,
                              size: 100,
                              color: Colors.orange,
                            ),
                            const SizedBox(
                              width: 8,
                              height: 20,
                            ),
                            Container(
                                padding: const EdgeInsets.all(5),
                                height: 70,
                                child: Row(children: <Widget>[
                                  Text(
                                    'Yoga\n06.00 to 07.00',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black.withOpacity(0.7)),
                                  ),
                                  const SizedBox(
                                    width: 25,
                                  ),
                                  CircularPercentIndicator(
                                    radius: 20,
                                    progressColor: Colors.orange,
                                    backgroundColor: Colors.grey,
                                    percent: 1,
                                    circularStrokeCap: CircularStrokeCap.round,
                                    center: const Text(
                                      '100%',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ]))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 315,
                  width: 190,
                  decoration: const BoxDecoration(color: Colors.white),
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                  child: Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.pink.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(20)),
                        padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                        height: 220,
                        width: 185,
                        child: Column(
                          children: <Widget>[
                            const Icon(
                              Icons.pedal_bike,
                              size: 100,
                              color: Colors.pink,
                            ),
                            const SizedBox(
                              width: 8,
                              height: 20,
                            ),
                            Container(
                                padding: const EdgeInsets.all(5),
                                height: 70,
                                child: Row(children: <Widget>[
                                  Text(
                                    'Bicycle\n07.00 for 07 km',
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black.withOpacity(0.7)),
                                  ),
                                  const SizedBox(
                                    width: 16,
                                  ),
                                  CircularPercentIndicator(
                                    radius: 20,
                                    progressColor: Colors.pink,
                                    backgroundColor: Colors.grey,
                                    percent: 1,
                                    circularStrokeCap: CircularStrokeCap.round,
                                    center: const Text(
                                      '100%',
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  )
                                ])),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(20)),
                        padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                        height: 70,
                        width: 190,
                        child: Row(
                          children: <Widget>[
                            const Icon(
                              Icons.scuba_diving,
                              size: 40,
                              color: Colors.blue,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              'Swim\n30 min',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black.withOpacity(0.7)),
                            ),
                            const SizedBox(
                              width: 25,
                            ),
                            CircularPercentIndicator(
                              radius: 20,
                              progressColor: Colors.blue,
                              backgroundColor: Colors.grey,
                              percent: 0.62,
                              circularStrokeCap: CircularStrokeCap.round,
                              center: const Text(
                                '62%',
                                style: TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.bold),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CalendarScreen extends StatelessWidget {
  const CalendarScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Calendar Screen'),
    );
  }
}

class AddScreen extends StatelessWidget {
  const AddScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.green,
            ),
            child: const Column(
              children: [
                SizedBox(height: 50),
                ListTile(
                  title: Text("Let's choose",
                      style: TextStyle(color: Colors.black),
                      textAlign: TextAlign.center),
                  subtitle: Text(
                    'Some Habit',
                    style: TextStyle(color: Colors.white, fontSize: 40),
                    textAlign: TextAlign.center,
                  ),
                ),
                Text(
                  'Choose your daily habits, you can choose \n more than one',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
          Container(
            color: Colors.green,
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: GridView.count(
                padding: const EdgeInsets.fromLTRB(10, 25, 10, 0),
                crossAxisCount: 3,
                mainAxisSpacing: 1,
                crossAxisSpacing: 1,
                shrinkWrap: true,
                children: [
                  itemHabits('Running', Icons.run_circle),
                  itemHabits('Reading', Icons.book),
                  itemHabits('Swimming', Icons.scuba_diving),
                  itemHabits('Gym', Icons.fitness_center),
                  itemHabits('Music', Icons.my_library_music_sharp),
                  itemHabits('Cycling', Icons.pedal_bike_outlined),
                  itemHabits('Gaming', Icons.gamepad),
                  itemHabits('Yoga', Icons.sports_gymnastics),
                  itemHabits('Walking', Icons.nordic_walking),
                  itemHabits('Cuisine', Icons.brunch_dining),
                  itemHabits('Traveling', Icons.flight),
                  itemHabits('Binge', Icons.tv)
                ],
              ),
            ),
          ),
          Container(
              margin: const EdgeInsets.fromLTRB(15, 8, 15, 30),
              height: 70,
              width: 200,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.green),
              child: const Center(
                  child: Text(
                'Get Started!',
                style: TextStyle(color: Colors.white, fontSize: 20),
                textAlign: TextAlign.center,
              ))),
        ],
      ),
    );
  }

  itemHabits(String title, IconData iconData) => Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Container(
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(20)),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(
                  iconData,
                  color: Colors.black,
                  size: 40,
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(title, style: const TextStyle(color: Colors.black)),
              ]),
        ),
      );
}

class GraphScreen extends StatefulWidget {
  const GraphScreen({super.key});
  @override
  State<GraphScreen> createState() => _GraphPageState();
}

class _GraphPageState extends State<GraphScreen> {
  List<double> weeklySummary = [
    1400.10,
    1500.10,
    1280.10,
    1510.10,
    1200.10,
    1600.10,
    1640.10
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.green,
            weight: 40,
          ),
          centerTitle: true,
          title: const Text(
            'Calorie Stats',
            style: TextStyle(
                color: Colors.black, fontSize: 24, fontWeight: FontWeight.bold),
          ),
          actions: const <Widget>[
            Icon(
              Icons.calendar_month,
              color: Colors.green,
            ),
            SizedBox(width: 20)
          ],
        ),
        body: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          children: [
            const SizedBox(height: 10),
            Container(
              height: 90,
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: Column(
                children: [
                  const Text(
                    'Total Burn',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                        fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    '1230',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: 60,
                    height: 25,
                    padding: const EdgeInsets.all(3),
                    decoration: BoxDecoration(
                        color: Colors.green.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(25)),
                    child: const Text(
                      '85.9%',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 100,
              margin: const EdgeInsets.fromLTRB(15, 0, 15, 5),
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
              decoration: const BoxDecoration(color: Colors.white),
              child: Row(
                children: <Widget>[
                  Container(
                    height: 65,
                    padding: const EdgeInsets.all(20),
                    width: 167,
                    decoration: const BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(40),
                            topLeft: Radius.circular(40))),
                    child: const Text(
                      'Day',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    height: 65,
                    padding: const EdgeInsets.all(20),
                    width: 167,
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.3),
                        borderRadius: const BorderRadius.only(
                            bottomRight: Radius.circular(40),
                            topRight: Radius.circular(40))),
                    child: const Text(
                      'Week',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
             Container(
              height:270,
              padding: const EdgeInsets.all(10),
              
              child: MyBarGraph(
                weeklySummary: weeklySummary,
              ),
              
            ),const SizedBox(height:10),

            Container(
              height: 50,
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Container(
                    width: 200,
                    height: 40,
                    padding: const EdgeInsets.all(2),
                    child: const Text(
                      " Today's Challenges",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                  ),
                  const SizedBox(
                    width: 110,
                  ),
                  Container(
                    width: 50,
                    height: 40,
                    padding: const EdgeInsets.all(2),
                    child: const Text(
                      'See all',
                      style: TextStyle(color: Colors.grey, fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 360,
              height: 100,
              margin: const EdgeInsets.fromLTRB(12, 0, 12, 0),
              padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(30)),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.red),
                    child: const Icon(
                      Icons.sports_gymnastics_rounded,
                      color: Colors.white,
                      size: 25,
                    ),
                  ),
                  const SizedBox(width: 15),
                  Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 50,
                          width: 140,
                          child: Row(
                            children: [
                              Container(
                                child: const Text(
                                  "Yoga",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(width: 25),
                              Container(
                                child: CircularPercentIndicator(
                                  radius: 14,
                                  percent: 1,
                                  center: const Text('100%',style: TextStyle(fontSize: 6),),
                                  progressColor: Colors.green,
                                  backgroundColor: Colors.grey.withOpacity(0.5),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                          child: Text(
                            '06.00 to 07.00               ',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: Row(children: [
                      Container(
                        child: const Icon(
                          Icons.local_fire_department_sharp,
                          color: Colors.red,
                        ),
                      )
                    ]),
                  ),
                  Container(
                    child: const Text(
                      '200 Cells',
                      style: TextStyle(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 12),
            Container(
              width: 360,
              height: 100,
              margin: const EdgeInsets.fromLTRB(12, 0, 12, 15),
              padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(30)),
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(),
                    child: const Icon(
                      Icons.run_circle,
                      color: Colors.green,
                      size: 60,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 50,
                          width: 140,
                          child: Row(
                            children: [
                              Container(
                                child: const Text(
                                  "Running",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              const SizedBox(width: 25),
                              Container(
                                child: CircularPercentIndicator(
                                  radius: 14,
                                  percent: 0.82,
                                  center: const Text('82%',style: TextStyle(fontSize: 7),),
                                  progressColor: Colors.green,
                                  backgroundColor: Colors.grey.withOpacity(0.5),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                          child: Text(
                            '07.00 for 07km              ',
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 17,
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                    child: Row(children: [
                      Container(
                        child: const Icon(
                          Icons.local_fire_department_sharp,
                          color: Colors.green,
                        ),
                      )
                    ]),
                  ),
                  Container(
                    child: const Text(
                      '320 Cells',
                      style: TextStyle(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ],
        ));
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Profile Screen'),
    );
  }
}
