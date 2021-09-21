import 'package:day05_cubit/data_service.dart';
import 'package:day05_cubit/post.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostsCubit extends Cubit<List<Post>> {
  final _dataService = DataService();
  PostsCubit() : super([]);
  void getPosts() async => emit(
        await _dataService.getPosts(),
      );
}
