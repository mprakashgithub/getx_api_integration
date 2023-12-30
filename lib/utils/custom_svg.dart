// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// import '../../gen/assets.gen.dart';
// export 'package:flutter_svg/flutter_svg.dart';

// class CustomSvgAsset extends StatelessWidget {
//   final String imageUrl;
//   final String? assetImagePlaceHolder;
//   final double? height;
//   final double? width;
//   final BoxFit? fit;
//   final ColorFilter? colorFilter;
//   final SvgTheme theme;
//   const CustomSvgAsset(
//     this.imageUrl, {
//     Key? key,
//     this.assetImagePlaceHolder,
//     this.height,
//     this.width,
//     this.fit,
//     this.colorFilter,
//     this.theme = const SvgTheme(),
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Transform.scale(
//       scaleX: 1, //Get.locale?.languageCode == "ar" ? -1 : 1,
//       child: SvgPicture.asset(
//         imageUrl,
//         height: height,
//         width: width,
//         fit: fit ?? BoxFit.contain,
//         theme: theme,
//         colorFilter: colorFilter,
//         placeholderBuilder: (c) {
//           return (assetImagePlaceHolder != null)
//               ? Image.asset(
//                   assetImagePlaceHolder!,
//                   height: height,
//                   width: width,
//                 )
//               : const SizedBox.shrink();
//         },
//       ),
//     );
//   }
// }

// class CustomSvgNetwork extends StatelessWidget {
//   final String imageUrl;
//   final double? height;
//   final double? width;
//   final double? loaderHeight;
//   final double? loaderWidth;
//   final BoxFit? fit;
//   final String? semanticsLabel;
//   final double? transformScaleX;
//   final ColorFilter? colorFilter;
//   final String? svgPlaceHolder;
//   const CustomSvgNetwork(this.imageUrl,
//       {Key? key,
//       this.height,
//       this.width,
//       this.fit,
//       this.loaderHeight,
//       this.loaderWidth,
//       this.semanticsLabel,
//       this.transformScaleX,
//       this.colorFilter,
//       this.svgPlaceHolder})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     bool validURL = Uri.parse(imageUrl).isAbsolute;

//     return (validURL)
//         ? Transform.scale(
//             scaleX: transformScaleX ?? 1,
//             child: CachedNetworkSvgImage(
//               url: imageUrl,
//               semanticsLabel: semanticsLabel,
//               height: height,
//               width: width,
//               fit: fit ?? BoxFit.contain,
//               placeholderBuilder: (context) {
//                 return Padding(
//                   padding: const EdgeInsets.all(15),
//                   child: CustomSvgAsset(
//                     svgPlaceHolder ?? Assets.svg.categoryIc,
//                     fit: BoxFit.contain,
//                     colorFilter: colorFilter,
//                     height: height,
//                     width: width,
//                   ),
//                 );
//               },
//             ),
//           )
//         : const SizedBox.shrink();
//   }
// }
