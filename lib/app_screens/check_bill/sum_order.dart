import 'package:flutter/material.dart';
import 'package:pig_order/app_screens/provider/store.dart';
import 'package:provider/provider.dart';

class SumOrder extends StatelessWidget {
  const SumOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var provider = context.watch<Store>();
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
        title: const Text(
          'สรุปรายการอาหาร',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            listOrder(),
            listOrder(),
            listOrder(),
            listOrder(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'ราคารวม',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  provider.sumAll.toString(),
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'บาท',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pinkAccent),
                onPressed: () {},
                child: const Text(
                  'ยืนยันรายการอาหาร',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }

  Row listOrder() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Text('เมนู 1'),
            Text('เมนู 2'),
          ],
        ),
        Column(
          children: [
            Text('เมนู 3'),
            Text('เมนู 4'),
          ],
        ),
      ],
    );
  }
}
