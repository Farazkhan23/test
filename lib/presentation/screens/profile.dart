import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:test/data/model/user.dart';
import 'package:test/presentation/bloc/profile_bloc.dart';
import 'package:test/presentation/utils/colors.dart';
import 'package:test/presentation/widgets/quality_chip.dart';
import 'package:test/presentation/widgets/semi_circle_btn.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  PageController _pageController = PageController();
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    context.read<ProfileBloc>().add(LoadProfileEvent(1));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: RefreshIndicator(
          onRefresh: () async {
            //Loading next user
            int currentUserId =
                (context.read<ProfileBloc>().state as ProfileLoadedState)
                    .user
                    .id;
            context.read<ProfileBloc>().add(
              LoadProfileEvent(currentUserId == 1 ? 2 : 1),
            );
          },
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            child: BlocBuilder<ProfileBloc, ProfileState>(
              builder: (context, state) {
                if (state is ProfileErrorState) {
                  return Center(child: Text(state.message));
                }

                bool isLoading =
                    state is ProfileLoadingState ||
                    state is ProfileInitialState;
                //Showing Skeleton Loader
                if (isLoading) {
                  return Skeletonizer(
                    child: Skeleton.leaf(
                      child: Container(
                        margin: EdgeInsets.only(top: 24, left: 16, right: 16),
                        height: 720,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(130),
                            topRight: Radius.circular(50),
                          ),
                          border: Border.all(color: Colors.black, width: 1),
                          color: Colors.black,
                        ),
                      ),
                    ),
                  );
                }

                User user = (state as ProfileLoadedState).user;
                return Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    // height: 723,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(130),
                        topRight: Radius.circular(50),
                      ),
                      border: Border.all(
                        color: ColorPalette.tealSecondary500,
                        width: 1,
                      ),
                      color: ColorPalette.scaffoldColor,
                    ),
                    padding: EdgeInsets.only(top: 24),
                    child: Stack(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      children: [
                        //Bar
                        Positioned(
                          top: 0,
                          left: 0,
                          child: Container(
                            // width: 375,
                            padding: EdgeInsets.only(left: 16),
                            child: SvgPicture.asset(
                              'assets/icons/bar.svg',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),

                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 60),
                                //Profile Container
                                Container(
                                  padding: EdgeInsets.only(left: 16),
                                  height: 300,
                                  child: Stack(
                                    fit: StackFit.expand,
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    children: [
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Container(
                                          width: 260,
                                          height: 300,
                                          decoration: BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                color: Colors.black.withOpacity(
                                                  0.15,
                                                ),
                                                blurRadius: 6,
                                                spreadRadius: 0,
                                                offset: Offset(0, 2),
                                              ),
                                            ],
                                            color: Colors.transparent,
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(40),
                                              bottomRight: Radius.circular(40),
                                            ),
                                            border: Border.all(
                                              color:
                                                  ColorPalette.tealSecondary300,
                                              width: 1,
                                            ),
                                          ),
                                          child: Stack(
                                            fit: StackFit.expand,
                                            clipBehavior:
                                                Clip.antiAliasWithSaveLayer,
                                            children: [
                                              //Profile Image Carousel
                                              ClipRRect(
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(40),
                                                  bottomRight: Radius.circular(
                                                    40,
                                                  ),
                                                ),
                                                child: PageView.builder(
                                                  controller: _pageController,
                                                  onPageChanged: (index) {
                                                    setState(() {
                                                      currentPage = index;
                                                    });
                                                  },
                                                  itemCount: user.photos.length,
                                                  itemBuilder: (context, index) {
                                                    return ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                            topLeft:
                                                                Radius.circular(
                                                                  40,
                                                                ),
                                                            bottomRight:
                                                                Radius.circular(
                                                                  40,
                                                                ),
                                                          ),
                                                      child: CachedNetworkImage(
                                                        imageUrl:
                                                            user.photos[index],
                                                        fit: BoxFit.cover,
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),

                                              //Pages Indicator
                                              Align(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: Container(
                                                  height: 10,
                                                  margin: EdgeInsets.only(
                                                    bottom: 14,
                                                  ),
                                                  child: ListView.builder(
                                                    itemCount:
                                                        user.photos.length,
                                                    scrollDirection:
                                                        Axis.horizontal,
                                                    shrinkWrap: true,
                                                    padding: EdgeInsets.zero,
                                                    itemBuilder: (context, index) {
                                                      return Container(
                                                        width: 7,
                                                        height: 7,
                                                        decoration:
                                                            BoxDecoration(
                                                              color:
                                                                  currentPage ==
                                                                      index
                                                                  ? Colors.white
                                                                  : Colors
                                                                        .black,
                                                              shape: BoxShape
                                                                  .circle,
                                                              border: Border.all(
                                                                color: Colors
                                                                    .white,
                                                                width: 1,
                                                              ),
                                                            ),
                                                        margin: EdgeInsets.only(
                                                          right: 4,
                                                        ),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                              //Online status
                                              Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Container(
                                                  margin: EdgeInsets.only(
                                                    bottom: 14,
                                                    left: 14,
                                                  ),
                                                  width: 10,
                                                  height: 10,
                                                  decoration: BoxDecoration(
                                                    color: ColorPalette
                                                        .onlineGreen,
                                                    shape: BoxShape.circle,
                                                  ),
                                                ),
                                              ),

                                              //Edit Profile Button
                                              Align(
                                                alignment: Alignment.topRight,
                                                child: TextButton.icon(
                                                  onPressed: () {},
                                                  style: TextButton.styleFrom(
                                                    iconAlignment:
                                                        IconAlignment.end,
                                                  ),
                                                  label: Text(
                                                    'Edit Profile',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyMedium
                                                        ?.copyWith(
                                                          color: ColorPalette
                                                              .secondaryText,
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                        ),
                                                  ),
                                                  icon: SvgPicture.asset(
                                                    'assets/icons/edit_btn.svg',
                                                    width: 20,
                                                    height: 20,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),

                                      //Qualities
                                      Positioned(
                                        bottom: 82,
                                        right: 0,
                                        child: Container(
                                          margin: EdgeInsets.only(right: 32),

                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            spacing: 8,
                                            children: [
                                              QualityChip(
                                                text: 'Self Deprecating',
                                              ),
                                              QualityChip(text: 'Feminism'),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 15),

                                //Details
                                Container(
                                  decoration: BoxDecoration(
                                    color: ColorPalette.scaffoldColor,
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(40),
                                    ),
                                  ),
                                  padding: EdgeInsets.only(
                                    top: 16,
                                    bottom: 34,
                                    right: 16,
                                    left: 16,
                                  ),
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    spacing: 16,
                                    children: [
                                      //Name and Age
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              // spacing: 8,
                                              children: [
                                                Text(
                                                  user.name,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .headlineMedium
                                                      ?.copyWith(
                                                        fontSize: 24,
                                                        color: ColorPalette
                                                            .primaryText,
                                                        fontWeight:
                                                            FontWeight.w700,
                                                      ),
                                                ),
                                                Row(
                                                  spacing: 8,
                                                  children: [
                                                    Flexible(
                                                      child: Text(
                                                        '${user.age}, ${user.location}',
                                                        style: Theme.of(context)
                                                            .textTheme
                                                            .bodyMedium
                                                            ?.copyWith(
                                                              fontSize: 20,
                                                              color: ColorPalette
                                                                  .primaryText,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600,
                                                            ),
                                                      ),
                                                    ),
                                                    SvgPicture.asset(
                                                      'assets/icons/france.svg',
                                                      height: 20,
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),

                                          Row(
                                            spacing: 8,
                                            children: [
                                              SemiCircleBtn(
                                                text: '+Chat',
                                                color: ColorPalette
                                                    .tealSecondary500,
                                                textColor: Colors.white,
                                              ),
                                              SemiCircleBtn(
                                                text: 'Profile',
                                                color: Color(0xffEEAB26),
                                                textColor: Colors.black,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),

                                      //Gender
                                      Row(
                                        spacing: 8,
                                        children: [
                                          Flexible(
                                            child: Text(
                                              user.gender,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodyLarge
                                                  ?.copyWith(
                                                    fontSize: 16,
                                                    color: ColorPalette
                                                        .primaryText,
                                                    fontWeight: FontWeight.w400,
                                                  ),
                                            ),
                                          ),
                                          Image.asset(
                                            'assets/icons/gender.png',
                                            height: 20,
                                          ),
                                        ],
                                      ),

                                      //Pronouns
                                      Text(
                                        'Pronouns: ${user.pronouns}',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyLarge
                                            ?.copyWith(
                                              fontSize: 16,
                                              color: ColorPalette.primaryText,
                                              fontWeight: FontWeight.w400,
                                            ),
                                      ),

                                      //About
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        spacing: 8,
                                        children: [
                                          Text.rich(
                                            TextSpan(
                                              children: [
                                                TextSpan(text: 'About '),
                                                TextSpan(
                                                  text: '(100 chars)',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyLarge
                                                      ?.copyWith(
                                                        fontSize: 12,
                                                        color: ColorPalette
                                                            .primaryText,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        letterSpacing: 0,
                                                      ),
                                                ),
                                              ],
                                            ),
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge
                                                ?.copyWith(
                                                  fontSize: 20,
                                                  color:
                                                      ColorPalette.primaryText,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),

                                          Text(
                                            user.about,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodyLarge
                                                ?.copyWith(
                                                  fontSize: 16,
                                                  color:
                                                      ColorPalette.primaryText,
                                                  fontWeight: FontWeight.w400,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        //Label
                        Positioned(
                          top: 0,
                          right: -4,
                          child: SvgPicture.asset(
                            'assets/icons/Label.svg',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
