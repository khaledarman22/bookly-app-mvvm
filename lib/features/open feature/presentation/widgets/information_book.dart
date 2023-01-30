import 'package:booklyapp/core/utils/app_colors.dart';
import 'package:booklyapp/core/widgets/const_item_rate.dart';
import 'package:booklyapp/core/widgets/custem_buttom.dart';
import 'package:booklyapp/features/home_featuer/presentation/widgets/custem_image_item.dart';
import 'package:flutter/material.dart';

class InformationBook extends StatelessWidget {
  const InformationBook({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * .29,
          margin: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width * .2),
          child: const CustemImageItem(),
        ),
        const SizedBox(
          height: 40,
        ),
        SizedBox(
          child: Text(
            'The Jungle Book',
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        SizedBox(
          child: Text(
            'Rudyard Kipling',
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: AppColors.kGreyTextColorDarkTheme),
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        const ConstantItemRate(),
        const SizedBox(
          height: 40,
        ),
        Row(
          children: const [
            Expanded(
              child: CustomButtom(
                  borderRadius:
                      BorderRadius.horizontal(left: Radius.circular(10))),
            ),
            Expanded(
              child: CustomButtom(
                  textColor: AppColors.kMainTextColorDarkTheme,
                  backgroundColor: AppColors.kButtomColor,
                  borderRadius:
                      BorderRadius.horizontal(right: Radius.circular(10))),
            ),
          ],
        ),
      ],
    );
  }
}
