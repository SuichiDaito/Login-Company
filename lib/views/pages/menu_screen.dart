import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_demo/bloc/login_feature_request/login_request_state.dart';
import 'package:login_demo/views/sections/menu_section_customer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:login_demo/bloc/login_feature_request/login_request_bloc.dart';
import 'package:login_demo/bloc/login_feature_request/login_request_event.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});
  @override
  State<MenuScreen> createState() => MenuScreenState();
}

class MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Menu",
          style: GoogleFonts.roboto(
            textStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w400,
              fontSize: 16,
            ),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: Divider(height: 1, thickness: 1, color: Colors.grey.shade300),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: BlocBuilder<LoginRequestBloc, LoginRequestState>(
                builder: (context, state) {
                  if (state is LoginLoadedInfo) {
                    return Text(
                      "Hello, ${state.customer.name}",
                      style: GoogleFonts.roboto(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      ),
                    );
                  }
                  return Text(
                    "Hello, User",
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17.0),
              child: Divider(
                height: 20,
                thickness: 1,
                color: Colors.grey.shade300,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  MenuSectionCustomer(
                    title: "My Profile",
                    subtitle: "View and edit your profile",
                    icon: Icons.person,
                    onTap: () {
                      // Handle menu item tap
                    },
                  ),
                  MenuSectionCustomer(
                    title: "My Profile",
                    subtitle: "View and edit your profile",
                    icon: Icons.person,
                    onTap: () {
                      // Handle menu item tap
                    },
                  ),
                  MenuSectionCustomer(
                    title: "My Profile",
                    subtitle: "View and edit your profile",
                    icon: Icons.person,
                    onTap: () {
                      // Handle menu item tap
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                "Hello, User",
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17.0),
              child: Divider(
                height: 20,
                thickness: 1,
                color: Colors.grey.shade300,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  MenuSectionCustomer(
                    title: "My Profile",
                    subtitle: "View and edit your profile",
                    icon: Icons.person,
                    onTap: () {
                      // Handle menu item tap
                    },
                  ),
                  MenuSectionCustomer(
                    title: "My Profile",
                    subtitle: "View and edit your profile",
                    icon: Icons.person,
                    onTap: () {
                      // Handle menu item tap
                    },
                  ),
                  MenuSectionCustomer(
                    title: "My Profile",
                    subtitle: "View and edit your profile",
                    icon: Icons.person,
                    onTap: () {
                      // Handle menu item tap
                    },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                "Hello, User",
                style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17.0),
              child: Divider(
                height: 20,
                thickness: 1,
                color: Colors.grey.shade300,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Column(
                children: [
                  MenuSectionCustomer(
                    title: "My Profile",
                    subtitle: "View and edit your profile",
                    icon: Icons.person,
                    onTap: () {
                      // Handle menu item tap
                    },
                  ),
                  MenuSectionCustomer(
                    title: "My Profile",
                    subtitle: "View and edit your profile",
                    icon: Icons.person,
                    onTap: () {
                      // Handle menu item tap
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
