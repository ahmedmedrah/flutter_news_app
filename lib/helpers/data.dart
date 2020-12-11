import 'package:flutter_news_app/models/category_model.dart';

List<CategoryModel> getCategories() {
  List<CategoryModel> categories = List<CategoryModel>();

  CategoryModel categoryModel;

  //1
  categoryModel = CategoryModel();
  categoryModel.categoryName = "أعمال";
  categoryModel.imageUrl =
      "https://images.unsplash.com/photo-1507679799987-c73779587ccf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1502&q=80";
  categoryModel.category = 'business';
  categories.add(categoryModel);

  //2
  categoryModel = CategoryModel();
  categoryModel.categoryName = "فن";
  categoryModel.imageUrl =
      "https://images.unsplash.com/photo-1522869635100-9f4c5e86aa37?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80";
  categoryModel.category = 'entertainment';
  categories.add(categoryModel);

  //3
  categoryModel = CategoryModel();
  categoryModel.categoryName = "عام";
  categoryModel.imageUrl =
      "https://images.unsplash.com/photo-1495020689067-958852a7765e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60";
  categoryModel.category = 'general';
  categories.add(categoryModel);

  //4
  categoryModel = CategoryModel();
  categoryModel.categoryName = "صحة";
  categoryModel.imageUrl =
      "https://images.unsplash.com/photo-1494390248081-4e521a5940db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1595&q=80";
  categoryModel.category = 'health';
  categories.add(categoryModel);

  //5
  categoryModel = CategoryModel();
  categoryModel.categoryName = "علوم";
  categoryModel.imageUrl =
      "https://images.unsplash.com/photo-1554475901-4538ddfbccc2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1504&q=80";
  categoryModel.category = 'science';
  categories.add(categoryModel);

  //5
  categoryModel = CategoryModel();
  categoryModel.categoryName = "رياضة";
  categoryModel.imageUrl =
      "https://images.unsplash.com/photo-1495563923587-bdc4282494d0?ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80";
  categoryModel.category = 'sport';
  categories.add(categoryModel);

  //5
  categoryModel = CategoryModel();
  categoryModel.categoryName = "تقنية";
  categoryModel.imageUrl =
      "https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80";
  categoryModel.category = 'technology';
  categories.add(categoryModel);

  return categories;
}
