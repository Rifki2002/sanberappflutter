import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sanberapp61/user/services/user_service.dart';
import 'package:sanberapp61/user/user_model.dart';

class DetailUserPage extends StatefulWidget {
  final int userId;
  const DetailUserPage({super.key, required this.userId});

  @override
  State<DetailUserPage> createState() => _DetailUserPageState();
}

class _DetailUserPageState extends State<DetailUserPage> {
  UserModel? user;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    isLoading = true;
    user = await UserService().detailUser(widget.userId);
    isLoading = false;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "User Detail Page",
          style: GoogleFonts.poppins(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : ListTile(
                title: Text('${user?.firstName} ${user?.lastName}'),
                leading: Image.network(user?.avatar ?? ''),
                subtitle: Text(user?.email ?? ''),
              ),
      ),
    );
  }
}
