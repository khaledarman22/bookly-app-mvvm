import 'package:booklyapp/features/home_featuer/presentation/cubit/home_feature_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custem_image_item.dart';

class CustemListViewItem extends StatelessWidget {
  const CustemListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeFeatureCubit, HomeFeatureState>(
      builder: (context, state) {
        if (state is HomeFeatureLoding) {
          return const Center(
            child: CircularProgressIndicator(color: Colors.grey),
          );
        }
        if (state is HomeFeatureError) {
          return Center(
            child: Text(state.errMassage),
          );
        }
        if (state is HomeFeatureLoded) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) => Container(
                padding: const EdgeInsets.only(right: 15),
                width: 200,
                height: MediaQuery.of(context).size.height * .3,
                child: const CustemImageItem(),
              ),
            ),
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
