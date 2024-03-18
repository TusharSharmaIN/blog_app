import 'dart:io';

import 'package:blog_app/core/error/failures.dart';
import 'package:blog_app/core/common/use_case/use_case.dart';
import 'package:blog_app/features/blog/domain/entities/blog.dart';
import 'package:blog_app/features/blog/domain/repositories/blog_repository.dart';
import 'package:fpdart/fpdart.dart';

class UploadBlog implements UseCase<Blog, UploadBlogParams> {
  final BlogRepository blogRepository;

  UploadBlog(this.blogRepository);

  @override
  Future<Either<Failure, Blog>> call(UploadBlogParams params) async {
    return await blogRepository.uploadBlog(
      image: params.image,
      title: params.title,
      content: params.content,
      blogPosterId: params.blogPosterId,
      topics: params.topics,
    );
  }
}

class UploadBlogParams {
  final String blogPosterId;
  final String title;
  final String content;
  final File image;
  final List<String> topics;

  UploadBlogParams({
    required this.blogPosterId,
    required this.title,
    required this.content,
    required this.image,
    required this.topics,
  });
}
