import 'package:demo_apllication/CompanyList/company_list.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CompanyDetails extends StatelessWidget {
  const CompanyDetails({super.key, required this.companyView});

  final CompanyList companyView;

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri(scheme: "https", host: url);
    if (!await launchUrl(
      uri,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Cannot Launch URL';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(companyView.companyName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              companyView.companyImage,
              height: 300,
            ),
            const Divider(
              thickness: 2,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    companyView.companyName,
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                companyView.companyDescription,
                textAlign: TextAlign.justify,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    '${companyView.companyName} Website Link: ',
                    textAlign: TextAlign.left,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.deepOrange,
                  ),
                  child: GestureDetector(
                      onTap: () {
                        _launchURL(companyView.companyURL);
                      },
                      child: const Text('Click Here')),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
