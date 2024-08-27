import 'package:flutter/material.dart';
import '../measure/consts.dart';

class DocumentDetailBox extends StatelessWidget {
  const DocumentDetailBox({
    super.key,
    this.title = "Invitation to bid international competitive bidding",
    this.imagePath = "images/chereta2.jpg",
    this.deadlineText = "1 day ago",
    this.companyName = "Siinge Bank Share Company",
    this.price = "100",
    this.size = "1 MB",
  });

  final String companyName;
  final String deadlineText;
  final String price;
  final String imagePath;
  final String title;
  final String size;

  @override
  Widget build(BuildContext context) {
    AppSizes.init(context);
    return Container(
      margin: EdgeInsets.all(AppSizes.smallGap),
      padding: EdgeInsets.all(AppSizes.smallGap),
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 240, 240, 240),
        borderRadius: BorderRadius.circular(15),
        border: Border(
          left: BorderSide(
            color: const Color.fromRGBO(56, 103, 93, 1.0),
            width: AppSizes.smallGap * .3,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              // Image on the left
              ClipRRect(
                borderRadius: BorderRadius.circular(AppSizes.smallGap * .7),
                child: Image.asset(
                  imagePath, // Replace with your image asset or network path
                  width: AppSizes.largeGap * 2,
                  height: AppSizes.largeGap * 2,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 10),
              // Text information
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: AppSizes.tertiaryFontSize * .8,
                      ),
                    ),
                    SizedBox(height: AppSizes.smallGap * .5),
                    Text(
                      companyName,
                      style: TextStyle(
                        color: const Color.fromRGBO(56, 103, 93, 1.0),
                        fontSize: AppSizes.tertiaryFontSize * .8,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: AppSizes.smallGap),
          // Tender Documents Section
          Container(
            padding: EdgeInsets.all(AppSizes.smallGap),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 255, 255, 255),
              borderRadius: BorderRadius.circular(AppSizes.smallGap),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Tender details
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tender Documents',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: AppSizes.tertiaryFontSize),
                    ),
                    SizedBox(height: AppSizes.smallGap * .6),
                    Text(
                      "Deadline $deadlineText",
                      style:
                          TextStyle(fontSize: AppSizes.tertiaryFontSize * .8),
                    ),
                    SizedBox(height: AppSizes.smallGap * .6),
                    Text(
                      "Price: $price Birr",
                      style: TextStyle(
                          color: const Color.fromRGBO(56, 103, 93, 1.0),
                          fontWeight: FontWeight.bold,
                          fontSize: AppSizes.tertiaryFontSize * .8),
                    ),
                  ],
                ),
                // Buy Button and file size
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(56, 103, 93, 1.0),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(AppSizes.smallGap),
                        ),
                      ),
                      child: Text(
                        'Buy',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: AppSizes.tertiaryFontSize),
                      ),
                    ),
                    SizedBox(height: AppSizes.smallGap),
                    Text(
                      'File size: $size',
                      style:
                          TextStyle(fontSize: AppSizes.tertiaryFontSize * .8),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          // Bottom icons
          Align(
            alignment: Alignment.bottomRight,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Icon(Icons.refresh,
                    color: Color.fromRGBO(56, 103, 93, 1.0)),
                SizedBox(width: AppSizes.smallGap),
                const Icon(Icons.double_arrow,
                    color: Color.fromRGBO(56, 103, 93, 1.0)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
