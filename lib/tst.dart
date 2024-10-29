//
// import 'package:flutter/material.dart';
//
//
// // class MyPortfolioApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Portfolio Website',
// //       theme: ThemeData(primarySwatch: Colors.blue),
// //       home: PortfolioPage(),
// //     );
// //   }
// // }
//
// class PortfolioPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     double screenWidth = MediaQuery.of(context).size.width;
//     bool isDesktop = screenWidth > 800;
//
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("My Portfolio"),
//         backgroundColor: Colors.blueAccent,
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             HeaderSection(),
//             SizedBox(height: 30),
//             AboutSection(),
//             SizedBox(height: 30),
//             PortfolioSection(isDesktop: isDesktop),
//             SizedBox(height: 30),
//             ContactSection(),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// // Header Section with title and introductory text with fade-in animation
// class HeaderSection extends StatefulWidget {
//   @override
//   _HeaderSectionState createState() => _HeaderSectionState();
// }
//
// class _HeaderSectionState extends State<HeaderSection> with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _fadeAnimation;
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       duration: Duration(seconds: 2),
//       vsync: this,
//     );
//     _fadeAnimation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
//     _controller.forward();
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return FadeTransition(
//       opacity: _fadeAnimation,
//       child: Container(
//         padding: EdgeInsets.all(20),
//         width: double.infinity,
//         color: Colors.blueGrey[100],
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               'Welcome to My Portfolio',
//               style: TextStyle(
//                 fontSize: MediaQuery.of(context).size.width * 0.05,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             SizedBox(height: 10),
//             Text(
//               'Showcasing my work and projects',
//               style: TextStyle(fontSize: 18, color: Colors.grey[700]),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// // About Section with description text
// class AboutSection extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'About Me',
//             style: TextStyle(
//               fontSize: 28,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           SizedBox(height: 10),
//           Text(
//             'I am a developer with experience in creating responsive and interactive applications...',
//             style: TextStyle(fontSize: 16),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// // Portfolio Section with placeholder portfolio items and scale animation on hover
// class PortfolioSection extends StatelessWidget {
//   final bool isDesktop;
//
//   PortfolioSection({required this.isDesktop});
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 20),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Portfolio',
//             style: TextStyle(
//               fontSize: 28,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           SizedBox(height: 10),
//           Wrap(
//             spacing: 20,
//             runSpacing: 20,
//             children: [
//               PortfolioItem(title: 'Project 1', isDesktop: isDesktop),
//               PortfolioItem(title: 'Project 2', isDesktop: isDesktop),
//               PortfolioItem(title: 'Project 3', isDesktop: isDesktop),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class PortfolioItem extends StatefulWidget {
//   final String title;
//   final bool isDesktop;
//
//   const PortfolioItem({Key? key, required this.title, required this.isDesktop}) : super(key: key);
//
//   @override
//   _PortfolioItemState createState() => _PortfolioItemState();
// }
//
// class _PortfolioItemState extends State<PortfolioItem> with SingleTickerProviderStateMixin {
//   late AnimationController _controller;
//   late Animation<double> _scaleAnimation;
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = AnimationController(
//       duration: Duration(milliseconds: 200),
//       vsync: this,
//     );
//     _scaleAnimation = Tween<double>(begin: 1.0, end: 1.05).animate(_controller);
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MouseRegion(
//       onEnter: (_) => _controller.forward(),
//       onExit: (_) => _controller.reverse(),
//       child: ScaleTransition(
//         scale: _scaleAnimation,
//         child: Container(
//           width: widget.isDesktop ? 150 : MediaQuery.of(context).size.width * 0.4,
//           height: 150,
//           color: Colors.blueAccent.withOpacity(0.1),
//           child: Center(child: Text(widget.title, textAlign: TextAlign.center)),
//         ),
//       ),
//     );
//   }
// }
//
// // Contact Section with basic form layout
// class ContactSection extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(20.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(
//             'Contact Me',
//             style: TextStyle(
//               fontSize: 28,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           SizedBox(height: 10),
//           TextField(
//             decoration: InputDecoration(
//               labelText: 'Name',
//               border: OutlineInputBorder(),
//             ),
//           ),
//           SizedBox(height: 10),
//           TextField(
//             decoration: InputDecoration(
//               labelText: 'Email',
//               border: OutlineInputBorder(),
//             ),
//           ),
//           SizedBox(height: 10),
//           TextField(
//             decoration: InputDecoration(
//               labelText: 'Message',
//               border: OutlineInputBorder(),
//             ),
//             maxLines: 5,
//           ),
//           SizedBox(height: 20),
//           ElevatedButton(
//             onPressed: () {},
//             child: Text('Submit'),
//           )
//         ],
//       ),
//     );
//   }
// }
