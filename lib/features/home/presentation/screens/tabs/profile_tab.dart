import 'package:flutter/material.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({super.key});

  @override
  Widget build(BuildContext context) {
    final url =
        'https://s3-alpha-sig.figma.com/img/9580/54b4/2e7a7e5b64d6b1ed5716ce40c594ccba?Expires=1740960000&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=pv3doOe~vizzjUDWdCtsfrHiRl7h2qg-O3Y7YNJSf1n8UNfpJthEvgxkP4zQvAi~q5wfFAeU9TxmmomMSljY5YionqQU2uKXuqHasPOnnrm5hreMdu4NORo5AZ1qOCoPrZGun4rX5zu6wYBZBlTdb2YP6npFQc-~o28X6jeJ6JnIacWb66mR5fkzeAZ0FjzpWgT1K9BMhz4tBMboC9x86G-8eqeMMpnbSNiLurMxydOrk8HcNMngsIFVkzkAV2VgLlEUBCXQKY65oXpe07QqMvVA~fmBzBHxsXiR8g8Vept06~erZe7mZ50R53~wMKcJY2plpprL7A3I4GZEpdVBpA__';
    return Column(
      children: [
        CircleAvatar(
          backgroundImage: NetworkImage(url),
          radius: 50,
        ),
      ],
    );
  }
}
