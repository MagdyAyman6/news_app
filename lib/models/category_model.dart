
class CategoryModel {
  final String image;
  final String title;

  CategoryModel({required this.image, required this.title});
}

List <CategoryModel> category = [
  CategoryModel(image: "https://image.cnbcfm.com/api/v1/image/108042423-1727891892609-108042383-1727889284875-Screenshot_2024-10-02_at_11426_PM.webp?v=1727891966&w=1920&h=1080", title: "business"),
  CategoryModel(image: "https://www.hollywoodreporter.com/wp-content/uploads/2024/10/Sabrina-Carpenter-and-Beyonce-Split-Getty-H-2024.jpg?w=1296&h=730&crop=1", title: "entertainment"),
  CategoryModel(image: "https://media.cnn.com/api/v1/images/stellar/prod/gettyimages-2175298774.jpg?c=16x9&q=w_800,c_fill", title: "general"),
  CategoryModel(image: "https://ichef.bbci.co.uk/news/1024/branded_news/caf2/live/ec448a50-80dc-11ef-875f-61935c981968.jpg", title: "health"),
  CategoryModel(image: "https://gizmodo.com/app/uploads/2024/10/1-voyager_before_launch.width-1320.jpg", title: "science"),
  CategoryModel(image: "https://static.www.nfl.com/image/upload/t_editorial_landscape_12_desktop/league/ytk8rxjivbifvprh7oub", title: "sports"),
  CategoryModel(image: "https://cdn.vox-cdn.com/thumbor/Ao1H09-Ej_rtl3tVwT250RbSlIo=/0x0:2000x1125/1200x628/filters:focal(1000x563:1001x564)/cdn.vox-cdn.com/uploads/chorus_asset/file/25654480/archive011_respitev2_tab_2022_0150_pho_q2_raspb_nket_0016_cb.jpg", title: "technology"),

];