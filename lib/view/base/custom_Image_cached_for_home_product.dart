

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomImageCachedForProduct extends StatelessWidget {
  final String image;
  final double? height;
  final double? width;
  final BoxFit ?fit;
  final String placeholder;
  final double? raduis;
  CustomImageCachedForProduct({required this.image, this.height, this.width, this.fit, this.placeholder='assets/icon/placeholder.png',  this.raduis});

  @override
  Widget build(BuildContext context) {
    print(image);
    return CachedNetworkImage(

        imageUrl:image,
        placeholder: (context, url) =>Container(
          
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: raduis!=null?BorderRadius.only(topLeft:Radius.circular(raduis!),topRight:Radius.circular(raduis!) ):null,
            image: DecorationImage(

              image: new AssetImage(placeholder),
              fit: fit,

            ),
          ),
        ),


        imageBuilder: (context, imageProvider) => Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: raduis!=null?BorderRadius.only(topLeft:Radius.circular(raduis!),topRight:Radius.circular(raduis!) ):null,
            image: DecorationImage(

                image: imageProvider,
                fit: fit,

               ),
          ),
        ),
      errorWidget: (c, o, s) => Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: raduis!=null?BorderRadius.only(topLeft:Radius.circular(raduis!),topRight:Radius.circular(raduis!) ):null,
          image: DecorationImage(

            image: new AssetImage(placeholder),
            fit: fit,

          ),
        ),
      ),
    );
  }
}
