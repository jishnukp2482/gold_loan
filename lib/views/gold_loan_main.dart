import 'package:flutter/material.dart';
import 'package:gold_loan/views/Report.dart';
import 'package:gold_loan/views/customercreation.dart';
import 'package:gold_loan/views/gold_loan.dart';
import 'package:gold_loan/views/logout.dart';

import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class GoldLoanMain extends StatelessWidget {
  const GoldLoanMain({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    const icontypes = <IconData>[
      MdiIcons.accountEdit,
      MdiIcons.gold,
      MdiIcons.bookInformationVariant,
      MdiIcons.logout,
    ];
    const iconnames = [
      "Customer Creation",
      "Gold Loan",
      "Reports",
      "Logout",
    ];

    return SafeArea(
        child: Scaffold(
            extendBodyBehindAppBar: true,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.white.withOpacity(0.5),
              title: const Text(
                "Gold Loan",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              centerTitle: true,
            ),
            body: Container(
                height: height,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/bg/primaryBg.png"),
                        fit: BoxFit.cover)),
                child: ListView(children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 30, 10, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text(
                              "Agent Name:",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Rahul",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                        Row(
                          children: const [
                            Text(
                              "Date:",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              "04/04/2023",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 0, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(
                          "Assigned Branch:",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Kochi",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, height / 8, 20, 0),
                    child: Container(
                      height: height / 2,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(top: height / 13.5),
                        child: GridView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisSpacing: 2,
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 2,
                                  childAspectRatio: 1.25),
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.all(15),
                              child: GestureDetector(
                                onTap: () {
                                  if (index == 0) {
                                    Navigator.pushNamed(
                                      context,
                                      CustomerCreation.routeName,
                                    );
                                  } else if (index == 1) {
                                    Navigator.pushNamed(
                                      context,
                                      GoldLoan.routeName,
                                    );
                                  } else if (index == 2) {
                                    Navigator.pushNamed(
                                        context, Report.routeName);
                                  } else {
                                    Navigator.pushNamed(
                                        context, LogOut.routeName);
                                  }
                                },
                                child: Container(
                                  // height: 50,
                                  decoration: BoxDecoration(
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.black38,
                                          offset: Offset(3, 9))
                                    ],
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.yellow.shade300,
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        icontypes[index],
                                        color: Colors.black,
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Text(
                                        iconnames[index],
                                        style: const TextStyle(
                                            color: Colors.black),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            );
                          },
                          itemCount: icontypes.length,
                        ),
                      ),
                    ),
                  ),
                ]))));
  }
}
