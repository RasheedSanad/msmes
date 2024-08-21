import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../res/values_manager.dart';


class UiImageFile extends StatelessWidget {
  const UiImageFile(
    this.image, {
    super.key,
    this.onTap,
    this.fit,
    this.size,
    this.isImage = true,
    this.isDeleteIconVisible = true,
  });
  final File image;
  final Function()? onTap;
  final BoxFit? fit;
  final double? size;
  final bool isImage;
  final bool isDeleteIconVisible;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return InkWell(
      // dimension: AppSizes.HEIGHT_50,
      onTap: onTap,
      child: Stack(
        children: [
          SizedBox.square(
            dimension: size ?? AppSizes.HEIGHT_50,
            child: isImage
                ? Image.file(
                    image,
                    fit: fit ?? BoxFit.contain,
                  )
                : const Icon(Icons.file_copy_outlined),
          ),
          Visibility(
            visible: isDeleteIconVisible,
            child: SizedBox.square(
              dimension: size ?? AppSizes.HEIGHT_50,
              child: Align(
                alignment: Alignment.center,
                child: Icon(
                  Icons.close_outlined,
                  color: theme.colorScheme.primary,
                  size: AppSizes.ICON_SIZE_24,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
