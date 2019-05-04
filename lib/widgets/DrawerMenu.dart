import 'package:flutter/material.dart';
import 'package:finance_management/features/salary_setting/SalarySettingScreen.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            child: DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red,
              ),
              child: Row(
                children: <Widget>[
                  Icon(Icons.access_alarm),
                  Expanded(
                    child: Text("Ngo Bao Toan"),
                  ),
                  PopupMenuButton(
                    icon: Icon(Icons.arrow_drop_down),
                    itemBuilder: (_) => <PopupMenuItem<String>>[
                          PopupMenuItem(
                            child: Text("Personal information"),
                            value: "Personal information",
                          ),
                          PopupMenuItem(
                            child: Text("Log out"),
                            value: "Log out",
                          ),
                        ],
                    onSelected: (value) {
                      print(value);
                    },
                  ),
                ],
              ),
            ),
          ),
          MediaQuery.removePadding(
            context: context,
            // DrawerHeader consumes top MediaQuery padding.
            removeTop: true,
            child: Expanded(
              child: ListView(
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.dashboard),
                    title: Text(
                      "Dashboard",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  ExpansionTile(
                    leading: Icon(Icons.apps),
                    title: Text(
                      "Tiện ích",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    children: <Widget>[
                      ListTile(
                        title: Text("Quy đổi tiền"),
                      ),
                    ],
                  ),
                  ExpansionTile(
                    leading: Icon(Icons.settings),
                    title: Text(
                      "Cài đặt",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    children: <Widget>[
                      ListTile(
                        title: Text("Lương tháng"),
                        onTap: () {
                          Navigator.of(context).pop();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (BuildContext context) =>
                                    SalarySettingScreen(),
                              ));
                        },
                      ),
                      ListTile(
                        title: Text("Các khoản chi"),
                      ),
                      ListTile(
                        title: Text("Mục tiêu cá nhân"),
                      ),
                      ListTile(
                        title: Text("Nhắc nhở"),
                      ),
                    ],
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.info_outline),
                    title: Text("Thông tin"),
                  ),
                  ListTile(
                    leading: Icon(Icons.power_settings_new),
                    title: Text("Đăng xuất"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
