import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:furrfriendlyfinds/util/colors.dart';

class ServiceAppPage extends StatefulWidget {
  const ServiceAppPage({super.key});

  @override
  State<ServiceAppPage> createState() => _ServiceAppPageState();
}

class _ServiceAppPageState extends State<ServiceAppPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 24, right: 24, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 30,
                      child: ElevatedButton(
                        onPressed: () => Navigator.pop(context),
                        child: FaIcon(
                          FontAwesomeIcons.chevronLeft,
                          size: 20,
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(2),
                            backgroundColor: Colors.white, // <-- Button color
                            foregroundColor: Colors.black,
                            elevation: 3,
                            side: const BorderSide(
                              width: 1.0,
                              color: Colors.black,
                            ) // <-- Splash color
                            ),
                      ),
                    ),
                    Text(
                      "Service",
                      style: TextStyle(
                          color: ColorConstants.blueMain, fontSize: 30),
                    ),
                    SizedBox(
                      width: 30,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: FaIcon(
                          FontAwesomeIcons.bell,
                          size: 20,
                        ),
                        style: ElevatedButton.styleFrom(
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(2),
                            backgroundColor: Colors.white, // <-- Button color
                            foregroundColor: Colors.black,
                            elevation: 3,
                            side: const BorderSide(
                              width: 1.0,
                              color: Colors.black,
                            ) // <-- Splash color
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Pet training service',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      color: Color(0xffBBE2EC),
                      borderRadius: BorderRadius.circular(25)),
                  width: double.infinity,
                  child: Theme(
                    data:
                        Theme.of(context).copyWith(dividerColor: Colors.black),
                    child: DataTable(
                      headingRowHeight: 30,
                      dataRowHeight: 30,
                      border: const TableBorder(
                        horizontalInside: BorderSide(
                          width: 1,
                          color: Colors.black,
                        ),
                      ),
                      columns: const <DataColumn>[
                        DataColumn(
                          label: Expanded(
                            child: Text(
                              'Weight',
                            ),
                          ),
                        ),
                        DataColumn(label: VerticalDivider(color: Colors.black)),
                        DataColumn(
                          label: Expanded(
                            child: Text(
                              'Price',
                            ),
                          ),
                        ),
                      ],
                      rows: const <DataRow>[
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('0-5kg')),
                            DataCell(VerticalDivider(color: Colors.black)),
                            DataCell(Text('100PHP')),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('6-10kg')),
                            DataCell(VerticalDivider(color: Colors.black)),
                            DataCell(Text('200PHP')),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('11-15kg')),
                            DataCell(VerticalDivider(color: Colors.black)),
                            DataCell(Text('300PHP')),
                          ],
                        ),
                        DataRow(
                          cells: <DataCell>[
                            DataCell(Text('>15kg')),
                            DataCell(VerticalDivider(color: Colors.black)),
                            DataCell(Text('450PHP')),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage('assets/images/service_a.jpg'),
                              fit: BoxFit.fill,
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage('assets/images/service_b.jpg'),
                              fit: BoxFit.fill,
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage('assets/images/service_c.jpg'),
                              fit: BoxFit.fill,
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                              image: AssetImage('assets/images/service_d.jpg'),
                              fit: BoxFit.fill,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Detail Service',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.0, right: 30.0),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.as popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus ',
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          color: ColorConstants.mainGreen,
          child: Center(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 2.0),
              child: GestureDetector(
                onTap: () => print('object'),
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: ColorConstants.whiteMain,
                    ),
                    alignment: Alignment.center,
                    width: double.infinity,
                    child: Text(
                      'RESERVATION',
                      style: TextStyle(
                          fontSize: 20, color: ColorConstants.mainGreen),
                    )),
              ),
            ),
          )),
    ));
  }
}
