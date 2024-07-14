// import 'package:comamarce/features/favorite_view/presentation/views/widgets/favorite_view_body.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_skeleton_ui/flutter_skeleton_ui.dart';
//
// class FavoriteSkeletonView extends StatelessWidget {
//   const FavoriteSkeletonView({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: FavoriteSkeletonBody(),
//     );
//   }
// }
//
// class FavoriteSkeletonBody extends StatelessWidget {
//   const FavoriteSkeletonBody({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return  const Skeleton(
//       isLoading: false,
//       skeleton:FavoriteSkeletonListView() ,
//         child: FavoriteViewBody());
//   }
// }
//
// class FeaturedSkeleton extends StatelessWidget {
//   const FeaturedSkeleton({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Container(
//           padding: const EdgeInsets.all(10),
//           margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
//           decoration: ShapeDecoration(
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(20),
//                 side: const BorderSide(color: Colors.grey),
//               )
//           ),
//           child: Row(
//             children: [
//               Container(
//                 width: MediaQuery.sizeOf(context).width * .4,
//                 height: MediaQuery.sizeOf(context).height * .15,
//                 decoration: BoxDecoration(
//                   color: Colors.grey,
//                   borderRadius: BorderRadius.circular(20),
//                 ),
//               ),
//               const SizedBox(width: 5,),
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(
//                       children: [
//                         Container(
//                           width: 100,
//                           height: 15,
//                           decoration: BoxDecoration(
//                               color: Colors.grey,
//                               borderRadius: BorderRadius.circular(20)
//                           ),
//
//                         ),
//                         const Spacer(),
//                         Container(
//                           width: 30,
//                           height: 30,
//                           decoration: BoxDecoration(
//                               color: Colors.grey,
//                               borderRadius: BorderRadius.circular(20)
//                           ),
//
//                         ),
//                       ],
//                     ),
//                     const SizedBox(height: 10,),
//                     Container(
//                       width: 150,
//                       height: 15,
//                       decoration: BoxDecoration(
//                           color: Colors.grey,
//                           borderRadius: BorderRadius.circular(20)
//                       ),
//
//                     ),
//                     const SizedBox(height: 10,),
//                     Row(
//                       children: [
//                         Container(
//                           width: 100,
//                           height: 15,
//                           decoration: BoxDecoration(
//                               color: Colors.grey,
//                               borderRadius: BorderRadius.circular(20)
//                           ),
//
//                         ),
//                         const Spacer(),
//                         Container(
//                           width: 30,
//                           height: 30,
//                           decoration: BoxDecoration(
//                               color: Colors.grey,
//                               borderRadius: BorderRadius.circular(20)
//                           ),
//
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
//
// class FavoriteSkeletonListView extends StatelessWidget {
//   const FavoriteSkeletonListView({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: 2,
//       physics:const  NeverScrollableScrollPhysics(),
//       itemBuilder: (context, index) =>const FeaturedSkeleton(),
//     );
//   }
// }
