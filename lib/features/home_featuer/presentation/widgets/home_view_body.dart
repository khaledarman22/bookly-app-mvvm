import 'package:booklyapp/features/home_featuer/presentation/widgets/appbar_home_page.dart';
import 'package:booklyapp/features/home_featuer/presentation/widgets/list_view_best_seller.dart';
import 'package:flutter/material.dart';

import 'custem_list_view_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: CustomScrollView(
            slivers: [
              SliverList(
                  delegate: SliverChildListDelegate([
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  const AppBareHomePage(),
                  const SizedBox(
                    height: 50,
                  ),
                  const CustemListViewItem(),
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    'Best Seler',
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const ListBestSeller()
                ])
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
