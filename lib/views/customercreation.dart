import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomerCreation extends StatelessWidget {
  static const routeName = '/customercreation';
  const CustomerCreation({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "CUSTOMER CREATION",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          elevation: 0,
          backgroundColor: Colors.white.withOpacity(0.3),
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(Icons.arrow_back))),
      body: Container(
        height: height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/bg/primaryBg.png"),
                fit: BoxFit.cover)),
        child: SingleChildScrollView(
            child: Column(
          children: [
            const SizedBox(
              height: 100,
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
                      hintText: "Full Name"),
                ),
              ),
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 15, 10, 15),
                  child: Container(
                    width: width / 2.3,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: TextFormField(
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.all(15),
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.person_add_alt,
                            color: Colors.black,
                          ),
                          hintText: "Relation: Select",
                          suffixIcon:
                              Icon(Icons.arrow_drop_down, color: Colors.black)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 15, 15, 15),
                  child: Container(
                    width: width / 2.3,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: TextFormField(
                      cursorColor: Colors.black,
                      // textAlign: TextAlign.left,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(15),
                        border: InputBorder.none,
                        hintText: "Relative Name",
                      ),
                    ),
                  ),
                ),
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
                      FontAwesomeIcons.mars,
                      color: Colors.black,
                      size: 19,
                    ),
                    hintText: "Gender: Not Selected",
                    suffixIcon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                    ),
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
                  keyboardType: TextInputType.datetime,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(15),
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      FontAwesomeIcons.calendarDays,
                      color: Colors.black,
                      size: 19,
                    ),
                    hintText: "Date of Birth: Not Selected",
                    suffixIcon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                    ),
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
                      Icons.family_restroom,
                      color: Colors.black,
                    ),
                    hintText: "Marital Status: Not Selected",
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
                      Icons.person_2_outlined,
                      color: Colors.black,
                    ),
                    hintText: "Spouse Name",
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
                  keyboardType: TextInputType.number,
                  cursorColor: Colors.black,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(15),
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      FontAwesomeIcons.calendarDays,
                      color: Colors.black,
                      size: 19,
                    ),
                    hintText: "Spouse DOB: Not Selected",
                    suffixIcon: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.black,
                    ),
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
                  // keyboardType: TextInputType.number,
                  cursorColor: Colors.black,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(15),
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      FontAwesomeIcons.hashtag,
                      color: Colors.black,
                      size: 19,
                    ),
                    hintText: "House No",
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
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(15),
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      FontAwesomeIcons.hashtag,
                      color: Colors.black,
                      size: 19,
                    ),
                    hintText: "House Name",
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
                      Icons.location_on_outlined,
                      color: Colors.black,
                    ),
                    hintText: "Locality",
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
                      Icons.local_post_office_outlined,
                      color: Colors.black,
                    ),
                    hintText: "Post Office",
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
                      Icons.home_work_outlined,
                      color: Colors.black,
                    ),
                    hintText: "Panchayath",
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
                      Icons.location_on_outlined,
                      color: Colors.black,
                    ),
                    hintText: "District",
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
                      Icons.location_on,
                      color: Colors.black,
                    ),
                    hintText: "State",
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
                      Icons.location_on_rounded,
                      color: Colors.black,
                    ),
                    hintText: "Country",
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
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.all(15),
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.person_pin_circle_outlined,
                      color: Colors.black,
                    ),
                    hintText: "Pincode",
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    width: width / 1.5,
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    child: TextFormField(
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.all(15),
                        border: InputBorder.none,
                        prefixIcon: Icon(
                          FontAwesomeIcons.mobile,
                          color: Colors.black,
                          size: 19,
                        ),
                        hintText: "Mobile Number",
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(),
                      onPressed: () {},
                      child: const Text("GET OTP")),
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
                      FontAwesomeIcons.briefcase,
                      color: Colors.black,
                      size: 19,
                    ),
                    hintText: "Occupation",
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
                      FontAwesomeIcons.graduationCap,
                      color: Colors.black,
                      size: 19,
                    ),
                    hintText: "Education",
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
                      FontAwesomeIcons.bookTanakh,
                      color: Colors.black,
                      size: 19,
                    ),
                    hintText: "Religion",
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
                      FontAwesomeIcons.book,
                      color: Colors.black,
                      size: 19,
                    ),
                    hintText: "Caste",
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
                        Icons.attach_money,
                        color: Colors.black,
                      ),
                      hintText: "Annual Income"),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: const [
                  Icon(
                    FontAwesomeIcons.idCard,
                    color: Colors.black,
                  ),
                  SizedBox(width: 15),
                  Text(
                    "ID Proof :",
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
                    Icons.person,
                    color: Colors.black,
                  ),
                  SizedBox(width: 15),
                  Text(
                    "Customer Image :",
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
                child:
                    ElevatedButton(onPressed: () {}, child: const Text("Save")),
              ),
            ),
            const SizedBox(
              height: 25,
            )
          ],
        )),
      ),
    ));
  }
}
