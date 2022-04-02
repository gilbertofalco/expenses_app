import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  // const NewTransaction({Key? key}) : super(key: key);
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  final Function addTx;

  NewTransaction(this.addTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              style: TextStyle(color: Colors.black),
              cursorColor: Colors.red,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
                labelText: "Title",
                labelStyle: TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: amountController,
              // onChanged: (val) {
              //   titleInput = val;
              // },
              style: TextStyle(
                color: Colors.black,
              ),
              cursorColor: Colors.red,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.red,
                  ),
                ),
                labelText: "Amount",
                labelStyle: TextStyle(
                  color: Colors.red,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 10),
              child: TextButton(
                onPressed: () {
                  addTx(
                    titleController.text,
                    double.parse(amountController.text),
                  );
                },
                child: Text(
                  "Add Transaction",
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
                style: TextButton.styleFrom(
                  primary: Colors.red,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
