import 'package:flutter/material.dart';
import 'package:login_demo/constant/colors.dart';
import 'package:login_demo/views/pages/order_list.dart';
import 'package:test1/l10n/app_localizations.dart';
import 'package:test1/library/constant_lib.dart';
import 'package:test1/presentation/pages/order_list.dart';

class OrderListScreen extends StatefulWidget {
  const OrderListScreen({super.key});

  @override
  State<OrderListScreen> createState() => _OrderListScreenState();
}

class _OrderListScreenState extends State<OrderListScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final localization = AppLocalizations.of(context);

    List<String> listTitle = [
      localization.title_all,
      localization.title_searching,
      localization.title_active,
      localization.title_completed,
      localization.title_cancelled,
    ];
    return Scaffold(
      backgroundColor: ColorButton.colorNeutral4,
      appBar: AppBar(
        toolbarHeight: 44,
        backgroundColor: Colors.white,
        centerTitle: false,
        title: Text(
          "Order List",
          style: TextStyle(
            color: ColorButton.colorNeutral1,
            fontFamily: 'Roboto',
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(48),
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0, bottom: 12.0),
            child: SizedBox(
              height: 40,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const SizedBox(width: 20),
                      ChoiceChip(
                        label: Text(listTitle[index]),
                        showCheckmark: false,
                        elevation: 0,
                        side: BorderSide(color: Colors.transparent),
                        backgroundColor: ColorButton.colorNeutral4,
                        selected: selectedIndex == index,
                        selectedColor: ColorButton.colorBackgroundSecondary,
                        labelStyle: TextStyle(color: ColorButton.colorNeutral1),
                        onSelected: (_) => {
                          setState(() {
                            selectedIndex = index;
                          }),
                        },
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
      body: IndexedStack(
        index: selectedIndex,
        children: [
          OrderList(state: "Searching"),
          OrderList(state: "Searching"),
          OrderList(state: "Active"),
          OrderList(state: "Completed"),
          OrderList(state: "Cancelled"),
        ],
      ),
    );
  }
}
