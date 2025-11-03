import 'package:flutter/material.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 40,
        elevation: 1,

        titleSpacing: 18,
        title: Row(
          children: [
            // Location Text Section
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Location',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      color: Colors.black87,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 3),
                  Text(
                    'Bali, Indonesia',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF007EF2), // blue color
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),

            // Notification Icon with Red Dot Badge
            Stack(
              //clipBehavior: Clip.hardEdge,
              children: [
                // Main icon button
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.notifications, color: Colors.black),
                    onPressed: () {},
                  ),
                ),

                // Small red circle badge
                Positioned(
                  right: 12,
                  top: 14,
                  child: Container(
                    //small circle on the bell icon
                    width: 8,
                    height: 8,
                    decoration: const BoxDecoration(
                      color: Colors.orangeAccent,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        //  এটা দেয়ার কারন হল  যাতে এই ইরর না আসে-A RenderFlex overflowed by 85 pixels on the bottom.
        child: Padding(
          padding: EdgeInsets.only(top: 9, left: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  // প্রথম কন্টেইনার (২ অংশ)
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 3,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFFE7F2FF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.calendar_month_outlined,
                            color: Colors.black,
                            size: 18,
                          ),
                          SizedBox(width: 5),
                          Text(
                            '24 OCT - 26 OCT ',
                            style: TextStyle(
                              color: Color(0xFF007EF2),
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.blue, // লাইন রঙ
                              decorationThickness: 0.8, // লাইন পুরুত্ব
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 8),

                  // দ্বিতীয় কন্টেইনার (১ অংশ)
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 3,
                        vertical: 8,
                      ),
                      decoration: BoxDecoration(
                        color: Color(0xFFE7F2FF),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          '3 guests',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            decorationColor: Colors.blue, // লাইন রঙ
                            decorationThickness: 0.8, // লাইন পুরুত্ব
                            color: Color(0xFF007EF2),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(flex: 1, child: SizedBox()),
                ],
              ),
              SizedBox(height: 7),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search Hotel By Name',
                        prefixIcon: Icon(Icons.search, color: Colors.grey),
                        //contentPadding: EdgeInsets.symmetric(vertical: 3),
                        labelText: 'Search your location',
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          // borderSide: BorderSide(color: Colors.grey.shade300),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Padding(
                    padding: const EdgeInsets.only(right: 15),
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(Icons.tune, color: Colors.white),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 4),
              Text(
                'Recommended Hotels',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF007EF2),
                ),
              ),

              SizedBox(
                // সাইজ বক্স , কন্টেইনার হিসেবে ব্যবহৃত হচ্ছে এখ
                height: 270, // লিস্টের মোট উচ্চতা
                child: ListView(
                  physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal, // হরাইজন্টাল স্ক্রল

                  children: [
                    Card(
                      //card start
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(6),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              // picture from here
                              'assets/images/rest1.png',

                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 10),

                            Row(
                              // in one row row 3 children
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  // first child
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 6,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFD0DFF3),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    '10% OFF',
                                    style: TextStyle(
                                      color: Color(0xFF007EF2),
                                      fontSize: 7,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 7),
                                Container(
                                  // second chaild
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 6,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFD0DFF3),
                                    borderRadius: BorderRadius.circular(10),
                                  ),

                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star_rounded,
                                        color: Colors.yellow,
                                        size: 10,
                                      ),
                                      Text(
                                        " 4.5   ",
                                        style: TextStyle(
                                          color: Color(0xFF007EF2),
                                          fontSize: 8,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 65),
                                Icon(Icons.favorite_border, color: Colors.blue),
                                // third child
                              ],
                            ),
                            SizedBox(height: 8),

                            Text(
                              'AYANA Resort',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),

                            SizedBox(height: 5),

                            RichText(
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.location_on_outlined,

                                      size: 15,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Bali, Indonesia',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 11,
                                      //fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(height: 10),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '\$200 - \$500 USD ',
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '/night',
                                    style: TextStyle(color: Colors.black45),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 7),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 4), // কার্ডের মাঝে ফাঁকা
                    Card(
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(6),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/rest1.png',

                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 10),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 6,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFD0DFF3),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    '10% OFF',
                                    style: TextStyle(
                                      color: Color(0xFF007EF2),
                                      fontSize: 7,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 7),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 6,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFD0DFF3),
                                    borderRadius: BorderRadius.circular(10),
                                  ),

                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star_rounded,
                                        color: Colors.yellow,
                                        size: 10,
                                      ),
                                      Text(
                                        " 4.5   ",
                                        style: TextStyle(
                                          color: Color(0xFF007EF2),
                                          fontSize: 8,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 65),
                                Icon(Icons.favorite_border, color: Colors.blue),
                              ],
                            ),
                            SizedBox(height: 8),

                            Text(
                              'COMO Uma Resort',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),

                            SizedBox(height: 5),

                            RichText(
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.location_on_outlined,

                                      size: 15,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Bali, Indonesia',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 11,
                                      //fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(height: 10),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '\$200 - \$500 USD ',
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '/night',
                                    style: TextStyle(color: Colors.black45),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 7),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 4),
                    Card(
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(6),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/rest1.png',

                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 10),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 6,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFD0DFF3),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    '10% OFF',
                                    style: TextStyle(
                                      color: Color(0xFF007EF2),
                                      fontSize: 7,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 7),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 6,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFD0DFF3),
                                    borderRadius: BorderRadius.circular(10),
                                  ),

                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star_rounded,
                                        color: Colors.yellow,
                                        size: 10,
                                      ),
                                      Text(
                                        " 4.5   ",
                                        style: TextStyle(
                                          color: Color(0xFF007EF2),
                                          fontSize: 8,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 65),
                                Icon(Icons.favorite_border, color: Colors.blue),
                              ],
                            ),
                            SizedBox(height: 8),

                            Text(
                              'AYANA Resort',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),

                            SizedBox(height: 5),

                            RichText(
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.location_on_outlined,

                                      size: 15,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Bali, Indonesia',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 11,
                                      //fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(height: 10),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '\$200 - \$500 USD ',
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '/night',
                                    style: TextStyle(color: Colors.black45),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 7),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 4), // কার্ডের মাঝে ফাঁকা
                    Card(
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(6),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'assets/images/rest1.png',

                              fit: BoxFit.cover,
                            ),
                            SizedBox(height: 10),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 6,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFD0DFF3),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Text(
                                    '10% OFF',
                                    style: TextStyle(
                                      color: Color(0xFF007EF2),
                                      fontSize: 7,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 7),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 6,
                                  ),
                                  decoration: BoxDecoration(
                                    color: Color(0xFFD0DFF3),
                                    borderRadius: BorderRadius.circular(10),
                                  ),

                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.star_rounded,
                                        color: Colors.yellow,
                                        size: 10,
                                      ),
                                      Text(
                                        " 4.5   ",
                                        style: TextStyle(
                                          color: Color(0xFF007EF2),
                                          fontSize: 8,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 65),
                                Icon(Icons.favorite_border, color: Colors.blue),
                              ],
                            ),
                            SizedBox(height: 8),

                            Text(
                              'COMO Uma Resort',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),

                            SizedBox(height: 5),

                            RichText(
                              text: TextSpan(
                                children: [
                                  WidgetSpan(
                                    child: Icon(
                                      Icons.location_on_outlined,

                                      size: 15,
                                      color: Colors.grey,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Bali, Indonesia',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 11,
                                      //fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            SizedBox(height: 10),
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: '\$200 - \$500 USD ',
                                    style: TextStyle(
                                      color: Colors.blue,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: '/night',
                                    style: TextStyle(color: Colors.black45),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 7),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ), //  এখানে কার্ডগুলো  আছে

              Text(
                'Business Accommodates',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF007EF2),
                ),
              ),

              Container(
                height: 161,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Card(
                      color: Colors.white,
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.2),
                            child: Image.asset(
                              'assets/images/rest3.png',
                              width: 175,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 6,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFFD0DFF3),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  'Fast Wi-Fi',
                                  style: TextStyle(
                                    color: Color(0xFF007EF2),
                                    fontSize: 8,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              SizedBox(width: 7),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 6,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFFD0DFF3),
                                  borderRadius: BorderRadius.circular(10),
                                ),

                                child: Row(
                                  children: [
                                    Text(
                                      " AC Conference rooms",
                                      style: TextStyle(
                                        color: Color(0xFF007EF2),
                                        fontSize: 8,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 8),
                    Card(
                      color: Colors.white,
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.2),
                            child: Image.asset(
                              'assets/images/rest3.png',
                              width: 175,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 6,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFFD0DFF3),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  'In-room work stations',
                                  style: TextStyle(
                                    color: Color(0xFF007EF2),
                                    fontSize: 8,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              SizedBox(width: 7),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 6,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFFD0DFF3),
                                  borderRadius: BorderRadius.circular(10),
                                ),

                                child: Row(
                                  children: [
                                    Text(
                                      " LakeView",
                                      style: TextStyle(
                                        color: Color(0xFF007EF2),
                                        fontSize: 8,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 8),
                    Card(
                      color: Colors.white,
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.2),
                            child: Image.asset(
                              'assets/images/rest3.png',
                              width: 175,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 6,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFFD0DFF3),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  'Fast Wi-Fi',
                                  style: TextStyle(
                                    color: Color(0xFF007EF2),
                                    fontSize: 8,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              SizedBox(width: 7),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 6,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFFD0DFF3),
                                  borderRadius: BorderRadius.circular(10),
                                ),

                                child: Row(
                                  children: [
                                    Text(
                                      " AC Conference rooms",
                                      style: TextStyle(
                                        color: Color(0xFF007EF2),
                                        fontSize: 8,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 8),
                    Card(
                      color: Colors.white,
                      elevation: 1,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(3.2),
                            child: Image.asset(
                              'assets/images/rest3.png',
                              width: 175,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 6,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFFD0DFF3),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                  'In-room work stations',
                                  style: TextStyle(
                                    color: Color(0xFF007EF2),
                                    fontSize: 8,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                              SizedBox(width: 7),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 10,
                                  vertical: 6,
                                ),
                                decoration: BoxDecoration(
                                  color: Color(0xFFD0DFF3),
                                  borderRadius: BorderRadius.circular(10),
                                ),

                                child: Row(
                                  children: [
                                    Text(
                                      " LakeView",
                                      style: TextStyle(
                                        color: Color(0xFF007EF2),
                                        fontSize: 8,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              //shes er code
            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        // ← OUTSIDE body
        backgroundColor: Colors.white,
        elevation: 7,
        selectedItemColor: const Color(0xFF007EF2),
        unselectedItemColor: Colors.grey,
       type: BottomNavigationBarType.fixed,






        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
            tooltip: 'Home',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline_rounded),
            label: 'Favorites',
            tooltip: 'Favorites',
            backgroundColor: Colors.indigoAccent,
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark_outline),
            label: 'My bookings',
            tooltip: 'My bookings',
            backgroundColor: Colors.redAccent,
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.chat_outlined),
            label: 'Chats',
            tooltip: 'Chats',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Profile',
            tooltip: 'Profile',
            backgroundColor: Colors.brown,
          ),
        ],
      ),
    );
  }
}
