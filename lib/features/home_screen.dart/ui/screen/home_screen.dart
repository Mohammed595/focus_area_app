import 'package:flutter/material.dart';
import 'package:focus_area_app/features/add_new_fucos.dart/data/save_focus_item.dart';
import 'package:focus_area_app/features/add_new_fucos.dart/model/focus_model.dart';
import 'package:focus_area_app/features/add_new_fucos.dart/view/screen/add_focus_screen.dart';
import 'package:focus_area_app/features/home_screen.dart/ui/widgets/app_bar_home_screen.dart';
import 'package:focus_area_app/features/home_screen.dart/ui/widgets/custom_focus_widget.dart';
import 'package:focus_area_app/features/home_screen.dart/ui/widgets/quick_focus_widget.dart';

/*
    my bugs: 

        - after save don't show it dirctly in home page (Done √)
        - after run app don't show dirctly in home page  (Done √)
        - if there is't data don't show hint about it (Done √)

        => remember this is problem state managment solve it 
        >> so try rebember what the problem
  */

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    List<FocusModel> fetchedData = await SaveFocusItemService.getD();
    setState(() {
      data = fetchedData;
    });
  }

  List<FocusModel> data = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: GestureDetector(
        onTap: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            backgroundColor: Colors.transparent,
            barrierColor: Colors.black12,
            builder: (BuildContext context) {
              return AddNewFocus();
            },
          );
        },
        child: Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            color: const Color(0xffD45555),
            borderRadius: BorderRadius.circular(50),
          ),
          child: const Icon(
            Icons.add,
            size: 45,
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        padding:
            const EdgeInsets.only(left: 25, right: 25, top: 70, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // app bar
            const AppBarForHomeScreen(),
            const SizedBox(height: 10),
            // quick focus
            GestureDetector(
              onTap: () {
                print('object');
              },
              child: const QuickFocusWidget(),
            ),

            const SizedBox(height: 10),

            // divider
            Divider(color: Colors.grey.shade400, height: 1),

            const SizedBox(height: 10),
            const Text('custom'),
            const SizedBox(height: 10),

            // custom focus

            data.isEmpty
                ? Column(children: [
                    SizedBox(height: MediaQuery.of(context).size.height * 0.2),
                    const Column(
                      children: [
                        Center(
                            child: Text('There is\'t any focus Now',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 20))),
                        SizedBox(height: 10),
                        Icon(Icons.no_backpack_outlined,
                            size: 70, color: Colors.grey),
                      ],
                    )
                  ])
                : Expanded(
                    child: ListView.builder(
                        itemCount: data.length == 0 ? 0 : data.length,
                        itemBuilder: (con, index) {
                          FocusModel c = data[index];

                          return CustomFocusWidget(
                            title: c.title,
                            desc: c.description,
                            period: c.period,
                            color: c.color,
                          );
                        })),
          ],
        ),
      ),
    );
  }
}
