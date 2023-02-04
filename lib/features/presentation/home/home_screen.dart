import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mvvm_project/core/di.dart';
import 'package:mvvm_project/core/resources/constants/color_manager.dart';
import 'package:mvvm_project/core/resources/constants/value_manager.dart';
import 'package:mvvm_project/core/widgets/responsive.dart';
import 'package:mvvm_project/features/domain/model/model.dart';
import 'package:mvvm_project/features/presentation/home/home_page_state.dart';
import 'package:mvvm_project/features/presentation/home/home_viewmodel.dart';
import 'package:mvvm_project/features/presentation/home/widget/widgets_matches.dart';

import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../core/resources/constants/assets_manager.dart';






class HomeScreen extends StatefulWidget {

  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {


  CharactersViewModel charactersViewModel= instance<CharactersViewModel>();
   List<Matches_Model> allCharacters=[];






  @override
  void initState() {
    super.initState();
    charactersViewModel.start();
  }


  Widget getContentWidget(){

    return ChangeNotifierProvider(
      create: (_) => charactersViewModel..getCharacters(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [

          Container(
            width: AppSize.s40.w,
           height: AppSize.s12.h,
           child: Image.asset(ImageAssets.splashLogo
          )

          ),
          Consumer<CharactersViewModel>(
            builder: (_, value, __) {
              final currentState = value.state;
              if (currentState is HomeLoadingState) {
                return  Expanded(
                  child: Center(
                    child: CircularProgressIndicator(
                      color: ColorManager.white,
                    ),
                  ),
                );
              }
              if (currentState is HomeFailureState) {

                return Expanded(
                  child: Center(
                    child: Text(
                      currentState.message.toString(),
                    ),
                  ),
                );
              }
              if (currentState is HomeSuccessState) {
                final characters = currentState.modelFootball;

                allCharacters = characters.matches!;
                return Expanded(

                    child:  ListView.builder(
                    shrinkWrap: true,
                    physics:
                    const ClampingScrollPhysics(),
                    scrollDirection: Axis.vertical,
                    itemCount: allCharacters.length,
                    itemBuilder: (context, index) {
                      return new GestureDetector(
                          child: Widget_Matches(allCharacters[index],characters.competition));
                    })

              );
              }
              return const SizedBox.shrink();
            },
          ),
        ],
      ),
    );



  }

  @override
  Widget build(BuildContext context) {


    // TODO: implement build
    return Scaffold(
      backgroundColor:ColorManager.primary,
      body: SafeArea(child:
      Responsive(
        mobile: getContentWidget(),
        tablet: Container(),
        desktop: Container(),
      )
      )

    );

  }
}
