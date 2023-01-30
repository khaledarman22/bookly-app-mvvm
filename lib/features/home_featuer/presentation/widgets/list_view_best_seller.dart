import 'package:booklyapp/core/widgets/const_item_rate.dart';
import 'package:booklyapp/features/home_featuer/presentation/widgets/custem_image_item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ListBestSeller extends StatelessWidget {
  const ListBestSeller({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 20,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            GoRouter.of(context).push('/openBookView');
          },
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 135,
                width: 95,
                margin: const EdgeInsets.only(right: 30),
                child: const CustemImageItem(),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .75 - 60,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 6),
                      width: MediaQuery.of(context).size.width * .75 - 60,
                      child: Text(
                        'Harry Potter and the Goblet of Fire',
                        style: Theme.of(context).textTheme.bodyLarge,
                        maxLines: 2,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(top: 2),
                      width: MediaQuery.of(context).size.width * .5,
                      child: Text(
                        'J.K. Rowling',
                        style: Theme.of(context).textTheme.bodySmall,
                        maxLines: 2,
                        softWrap: true,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(top: 2),
                          child: Text(
                            '19.99 \$',
                            style: Theme.of(context).textTheme.bodyLarge,
                            maxLines: 2,
                            softWrap: true,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        const Spacer(),
                        const ConstantItemRate()
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: 20,
        );
      },
    );
  }
}
