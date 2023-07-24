import 'package:animate_do/animate_do.dart';
import 'package:base_project_with_cubit/application/core/core_providers.dart';
import 'package:base_project_with_cubit/domain/models/photo.dart';
import 'package:base_project_with_cubit/presentation/core/AppColors.dart';
import 'package:base_project_with_cubit/presentation/core/AppDimens.dart';
import 'package:base_project_with_cubit/presentation/core/AppImages.dart';
import 'package:base_project_with_cubit/presentation/core/AppTextStyles.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../application/home/home_provider.dart';

class HomePage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: _buildAppBar(),
        body: _buildBody(context),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title:Text("home_title".tr(), style: AppTextStyles.appBarTitle),
      backgroundColor: AppColors.background,
      elevation: AppDimens.elevationMin,
    );
  }

  Widget _buildBody(BuildContext context) {
    final state = useProvider(homeProvider);

    if (useProvider(loadingProvider)) {
      return Container(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    } else if (useProvider(errorProvider) != null) {
      return Container(
        child: Center(child: Text(useProvider(errorProvider)!)),
      );
    } else {
      return Container(
        child: _buildListPhotos(useProvider(homeProvider).photos),
      );
    }
  }

  Widget _buildListPhotos(List<Photo> photos) {
    return ListView.builder(
      padding: EdgeInsets.all(AppDimens.smallMargin),
      itemCount: photos.length,
      itemBuilder: (BuildContext context, int index) {
        return ElasticIn(
          delay: Duration(milliseconds: 150),
          child: PhotoCardWidget.build(
            photos[index],
          ),
        );
      },
    );
  }
}

class PhotoCardWidget extends StatelessWidget {
  Photo photo;

  PhotoCardWidget.build(this.photo);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(AppDimens.xSmallMargin),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppDimens.smallMargin),
        ),
        elevation: AppDimens.elevationMedium,
        shadowColor: AppColors.shadow,
        child: Container(
          child: Column(
            children: [
              _buildImage(),
              _buildPhotoTitle(),
              _buildAlbum(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImage() {
    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(AppDimens.smallMargin),
          topLeft: Radius.circular(AppDimens.smallMargin),
        ),
        child: FadeInImage(
          height: 200,
          width: double.infinity,
          image: NetworkImage(photo.url ?? "", scale: 1),
          placeholder: AppImages.imagePlaceholder,
          imageErrorBuilder: (context, error, _) => Container(
            child: AppImages.notPhoto,
          ),
          fit: BoxFit.cover,
        ),
        clipBehavior: Clip.antiAlias,
      ),
    );
  }

  Widget _buildPhotoTitle() {
    return Container(
      alignment: Alignment.bottomLeft,
      margin: EdgeInsets.symmetric(
        horizontal: AppDimens.smallMargin,
        vertical: AppDimens.mediumMargin,
      ),
      child: Text(
        photo.title,
        style: AppTextStyles.primaryTitle,
      ),
    );
  }

  Widget _buildAlbum() {
    return Container(
      alignment: Alignment.bottomLeft,
      margin: EdgeInsets.only(
        right: AppDimens.smallMargin,
        left: AppDimens.smallMargin,
        bottom: AppDimens.smallMargin,
      ),
      child: Row(
        children: [
          Text(
            'Album: ',
            style: AppTextStyles.normalText,
          ),
          Text(
            photo.albumId.toString(),
            style: AppTextStyles.normalText,
          ),
          Expanded(
            child: Container(
              alignment: Alignment.bottomRight,
              child: ZoomIn(
                delay: Duration(milliseconds: 250),
                child: Icon(
                  Icons.photo_camera_outlined,
                  color: AppColors.orangeAccent,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
