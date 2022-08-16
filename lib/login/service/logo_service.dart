import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:usabai2/login/models/logo_model.dart';



Future<Logo> fetchLogo() async {
  final response = await http
      .get(Uri.parse('---------link API--------'));

  if (response.statusCode == 200) {
    return Logo.fromJson(jsonDecode(response.body));
  } else {
    
    throw Exception('Failed to load logo');
  }
}


class LogoApp extends StatefulWidget {
  const LogoApp({Key? key}) : super(key: key);

  @override
  State<LogoApp> createState() => _LogoAppState();
}

class _LogoAppState extends State<LogoApp> {
  late Future<Logo> futurelogo;
  @override
    void initState() {
    super.initState();
    futurelogo = fetchLogo();
  }

  
  Widget build(BuildContext context) {
    return FutureBuilder<Logo>(
                future: futurelogo,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                   Logo? logoData = snapshot.data;
                    return  Image.network(logoData!.logo);
                  } else if (snapshot.hasError) {
                    return Text('${snapshot.error}');
                  }
                  // By default, show a loading spinner.
                  return const CircularProgressIndicator();
                },
              );
  }
}