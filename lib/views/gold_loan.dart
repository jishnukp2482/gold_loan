import 'package:flutter/material.dart';

import 'package:flutter_boxicons/flutter_boxicons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class GoldLoan extends StatelessWidget {
  static const routeName = '/goldloan';
  const GoldLoan({super.key});

  @override
  Widget build(BuildContext context) {
    final item = ModalRoute.of(context)!.settings.arguments;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, kToolbarHeight + 20, 15, 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    Icon(
                      Icons.my_location,
                      color: Colors.red,
                      size: 15,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      "Kochi",
                      style: TextStyle(color: Colors.black),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: TextFormField(
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(15),
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            FontAwesomeIcons.hashtag,
                            color: Colors.black,
                            size: 17,
                          ),
                          hintText: "Customer ID"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: TextFormField(
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(15),
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.person,
                            color: Colors.black,
                          ),
                          hintText: "Name"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(15),
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.phone,
                            color: Colors.black,
                          ),
                          hintText: "Contact Number"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: TextFormField(
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(15),
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.home,
                            color: Colors.black,
                          ),
                          hintText: "Address"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 25, 15, 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        "Add Ornament Details - ",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              color: Colors.blue),
                          child: const Padding(
                            padding: EdgeInsets.all(2),
                            child: Icon(
                              Icons.add,
                              size: 17,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 5, 0, 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: const [
                      Text(
                        "Ornament",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Count",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Purity",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Gross Wt Deduction",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Net Wt",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 5, 15, 15),
                  child: Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: TextFormField(
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(15),
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.line_weight,
                            color: Colors.black,
                            //size: 15,
                          ),
                          hintText: "Total Net Wt"),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(15, 25, 15, 5),
                  child: Text(
                    "Loan Details",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: const TextField(
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(15),
                        border: InputBorder.none,
                        hintText: "Select Loan Type",
                        suffixIcon:
                            Icon(Icons.arrow_drop_down, color: Colors.black),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: TextFormField(
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(15),
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.timelapse_rounded,
                            color: Colors.black,
                          ),
                          hintText: "Period"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: TextFormField(
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(15),
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.percent,
                            color: Colors.black,
                          ),
                          hintText: "Interest Rate"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: TextFormField(
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(15),
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            MdiIcons.bank,
                            color: Colors.black,
                          ),
                          hintText: "Bank Rate"),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(15, 25, 15, 5),
                  child: Text(
                    "Loan Amount",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: const TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(15),
                        border: InputBorder.none,
                        hintText: "Gold Rate",
                        prefixIcon: Icon(Boxicons.bxs_dollar_circle,
                            color: Colors.black),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: TextFormField(
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(15),
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            MdiIcons.dotsHorizontalCircleOutline,
                            color: Colors.black,
                          ),
                          hintText: "Eligible Amount"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: TextFormField(
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(15),
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            MdiIcons.cash,
                            color: Colors.black,
                          ),
                          hintText: "Processing Fees"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: TextFormField(
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(15),
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            MdiIcons.cash100,
                            color: Colors.black,
                          ),
                          hintText: "Settlement Amount"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: const [
                      Icon(
                        MdiIcons.diamondStone,
                        color: Colors.black,
                      ),
                      SizedBox(width: 15),
                      Text(
                        "Ornament :",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Center(
                    child: Text(
                  "No image selected",
                  style: TextStyle(color: Colors.black),
                )),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 60, right: 60),
                      child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.add_a_photo_outlined),
                          label: const Text("Upload Here")),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    children: const [
                      Icon(
                        Icons.person_2_outlined,
                        color: Colors.black,
                      ),
                      SizedBox(width: 15),
                      Text(
                        "Customer :",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Center(
                    child: Text(
                  "No image selected",
                  style: TextStyle(color: Colors.black),
                )),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 60, right: 60),
                      child: ElevatedButton.icon(
                          onPressed: () {},
                          icon: const Icon(Icons.add_a_photo_outlined),
                          label: const Text("Upload Here")),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 100,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 40,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 60, right: 60),
                    child: ElevatedButton(
                        onPressed: () {}, child: const Text("Save")),
                  ),
                ),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
