import 'package:doctor/Core/Util/Images.dart';
import 'package:doctor/Core/Util/String.dart';
import 'package:doctor/Features/Presentation/Manager/QualityStandard/quality_standard_cubit.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/QualityStandardPage/Screens/QualityStandardPageOne.dart';
import 'package:doctor/Features/Presentation/View/HomeScreen/QualityStandardPage/Widget/AppBarQualityStandard.dart';
import 'package:doctor/Widget/ContainerCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ViewStandardQualityBody extends StatefulWidget {
  const ViewStandardQualityBody({super.key});

  @override
  State<ViewStandardQualityBody> createState() => _ViewStandardsState();
}

class _ViewStandardsState extends State<ViewStandardQualityBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            AppBarQualityStandard(
              text: Strings.qualityStandards,
              color: Theme.of(context).colorScheme.primary,
              colorIcon: Theme.of(context).colorScheme.primary,
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () async{
                await BlocProvider.of<QualityStandardCubit>(context).getQualityStandard();

                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return  QualityStandardPageOne();
                  },
                ));
              },
              child: ContainerContent(
                color: Theme.of(context).colorScheme.primary,
                colorText: Theme.of(context).primaryColor,
                imageUrl: Images.qualityStandards,
                text: Strings.viewStandards,
              ),
            )
          ],
        ),
      ),
    );
  }
}
