import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'designer_avatar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 80,
        leading: Center(child: SvgPicture.asset('asset/icons/menu_icon.svg')),
        actions: [
          SvgPicture.asset('asset/icons/search_icon.svg'),
          const SizedBox(
            width: 20,
          ),
          Container(
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: Color(0xFFE6EEFE)),
            child: const Padding(
              padding: EdgeInsets.all(5.0),
              child: CircleAvatar(
                backgroundImage: AssetImage('asset/images/profile_img.png'),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              title: const Text(
                'Top Designer',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              trailing: SvgPicture.asset('asset/icons/arrow_icon.svg'),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 75,
              child: Row(
                children: [
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        DesignerAvatarWidget(
                          imagePath: 'asset/images/designer1.png',
                          name: 'Henno',
                        ),
                        DesignerAvatarWidget(
                          imagePath: 'asset/images/designer2.png',
                          name: 'Henno',
                        ),
                        DesignerAvatarWidget(
                          imagePath: 'asset/images/designer3.png',
                          name: 'Henno',
                        ),
                        DesignerAvatarWidget(
                          imagePath: 'asset/images/designer4.png',
                          name: 'Henno',
                        ),
                        DesignerAvatarWidget(
                          imagePath: 'asset/images/designer5.png',
                          name: 'Henno',
                        ),
                        DesignerAvatarWidget(
                          imagePath: 'asset/images/designer6.png',
                          name: 'Henno',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              title: const Text(
                'Popular Design',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              trailing: SvgPicture.asset('asset/icons/arrow_icon.svg'),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: StaggeredGridView.countBuilder(
                crossAxisCount: 4,
                crossAxisSpacing: 15,
                mainAxisSpacing: 5,
                itemCount: 5,
                primary: false,
                shrinkWrap: true,
                itemBuilder: (context, index) => ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    'asset/images/design${index + 1}.png',
                    fit: BoxFit.fitWidth,
                  ),
                ),
                staggeredTileBuilder: (index) => StaggeredTile.count(
                    index == 0 ? 4 : 2,
                    index == 4
                        ? 1
                        : index / 2 == 1
                            ? 3
                            : 2),
              ),
            )
          ],
        ),
      ),
    );
  }
}
