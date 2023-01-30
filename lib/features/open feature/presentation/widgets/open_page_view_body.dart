import 'package:booklyapp/features/open%20feature/presentation/widgets/appbar_open_book_view.dart';
import 'package:booklyapp/features/open%20feature/presentation/widgets/custem_list_view_item.dart';
import 'package:booklyapp/features/open%20feature/presentation/widgets/information_book.dart';
import 'package:flutter/material.dart';

class OpenBookViewBody extends StatelessWidget {
  const OpenBookViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: CustomScrollView(
            slivers: [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const AppBarOpenBooKView(),
                        const SizedBox(
                          height: 35,
                        ),
                        const InformationBook(),
                        const SizedBox(
                          height: 50,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            'You can also like',
                            style: Theme.of(context).textTheme.bodySmall,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        const CustemListView(),
                        const SizedBox(
                          height: 50,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
