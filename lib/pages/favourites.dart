// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:task/bloc/bloc/favourite_bloc.dart';
// import 'package:task/pages/favourite_tile.dart';

// class FavouritePage extends StatefulWidget {
//   const FavouritePage({super.key});

//   @override
//   State<FavouritePage> createState() => _FavouritePageState();
// }

// class _FavouritePageState extends State<FavouritePage> {
//   final FavouriteBloc favouriteBloc = FavouriteBloc();
//   @override
//   void initState() {
//     favouriteBloc.add(FavouriteInitialEvent());
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: BlocConsumer<FavouriteBloc, FavouriteState>(
//         bloc: favouriteBloc,
//         listener: (context, state) {},
//         builder: (context, state) {
//           switch (state.runtimeType) {
//             case FavouriteSuccessState:
//               final successState = state as FavouriteSuccessState;
//               return ListView.builder(
//                 itemBuilder: (context, index) {
//                   return MyFavourites(
//                     favouriteBloc: favouriteBloc,
//                   );
//                 },
//               );
//           }
//           return Container();
//         },
//       ),
//     );
//   }
// }
