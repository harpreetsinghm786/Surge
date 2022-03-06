class Project{
  final String? title,description,image,url;

  Project({this.title, this.description, this.image,this.url});

}
List<Project> demo_projects=[
  Project(
      title: "Satya-Ecommerce App to Buy Women Stuff",
      description: "An E-commerce app that sales women related stuff have amazing UI design, Payment gateway, small size and Order tracking System.",
      image:"assets/images/satya.jpeg",
  ),
  Project(title: "Visualgo-Algorithm Visualizer App",
      description: "An algorithm visualizer which allows you to visualize any algorithm by some mathematical models like pie charts and Bar Graphs."),
  Project(title: "Chatify- Single and Group Chat Application",
      description: "Chatify is a free chatting application which allow you to make new friends and group so that you can chat with them"),
  Project(title: "Digital Sahungra-Online Gram Panchayat Management System",
      description: "A mobile application that handles almost all the events and online transactions of a village gram Panchayat, Informs about the various Stats of the village."),
  Project(title: "Gmap Extractor",
      description: "Google Map Extractor is a free google Extension that can be used to extract data from google maps and to store it in the excel sheet for futher use."),

];