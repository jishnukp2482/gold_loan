import 'package:flutter/material.dart';

class Report extends StatelessWidget {
  static const routeName = '/report';
  const Report({super.key});

  @override
  Widget build(BuildContext context) {
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
          "Report",
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
        child: Padding(
          padding: const EdgeInsets.only(top: kToolbarHeight + 40),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Container(
                    //  height: height / 3,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.5),
                    ),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 35),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 5, 0, 15),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Text(
                                    "Date:04/04/2023",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                            DataTable(
                                // dataRowColor: MaterialStateProperty.all(Colors.yellow),
                                border: TableBorder.all(color: Colors.black),
                                columns: const <DataColumn>[
                                  DataColumn(
                                      label: Text(
                                    "Customer ID",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )),
                                  DataColumn(
                                      label: Text(
                                    "Name",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )),
                                  DataColumn(
                                      label: Text(
                                    "Amount",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )),
                                ],
                                rows: const <DataRow>[
                                  DataRow(cells: <DataCell>[
                                    DataCell(Text("1")),
                                    DataCell(Text("Rohit")),
                                    DataCell(Text("10000")),
                                  ]),
                                  DataRow(cells: <DataCell>[
                                    DataCell(Text("2")),
                                    DataCell(Text("James")),
                                    DataCell(Text("25000")),
                                  ]),
                                  DataRow(cells: <DataCell>[
                                    DataCell(Text("Total")),
                                    DataCell(Text("")),
                                    DataCell(Text("35000")),
                                  ]),
                                ]),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
