import 'package:bloody/core/utils/constants.dart';
import 'package:flutter/material.dart';

class DonationPageBody extends StatelessWidget {
  const DonationPageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 60),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Instructions '),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              'assets/blood.png',
              width: double.infinity,
            ),
            const Row(
              children: [
                Text(
                  'At least',
                  style: TextStyle(color: kPrimaryColor),
                ),
                Text(', you must be 18 years old and weigh 50 kg '),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
                'You must get enough hours of sleep before donating blood. '),
            const SizedBox(
              height: 15,
            ),
            const Text(
                'Do not take aspirin before donating blood for a whole day. '),
            const SizedBox(
              height: 15,
            ),
            const Text(
                'Eat balanced meals containing a large amount of nutrients and avoid fatty foods before donating blood. '),
            const SizedBox(
              height: 15,
            ),
            const Text(
                'Drink a large amount of fluids one day before donating blood, as well as after donating. '),
            const SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.bottomRight,
                child: ElevatedButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.red)),
                  child: const Text(
                    'Donate',
                    style: TextStyle(color: Colors.white),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
