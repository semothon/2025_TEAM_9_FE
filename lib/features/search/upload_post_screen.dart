import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UploadPostScreen extends StatefulWidget {
  const UploadPostScreen({super.key});

  @override
  State<UploadPostScreen> createState() => _UploadPostScreenState();
}

class _UploadPostScreenState extends State<UploadPostScreen> {
  final TextEditingController _titleTextController = TextEditingController();
  final TextEditingController _textController = TextEditingController();
  List<bool> tagSelection = List.generate(8, (_) => false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [Icon(Icons.add)]),
      body: Column(
        children: [
          SizedBox(height: 50.h), // 화면 밀도 적용
          Center(
            child: Container(
              width: 992.w, // 화면 밀도 적용
              height: 119.h, // 화면 밀도 적용
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFC4CAD4)),
                borderRadius: BorderRadius.all(
                  Radius.circular(38.5.r),
                ), // 화면 밀도 적용
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 2),
                child: TextField(
                  controller: _titleTextController,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                      fontSize: 44.sp,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF6B6B6B),
                    ),
                    hintText: "제목(20자 이내)",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 35.h), // 화면 밀도 적용
          Center(
            child: Container(
              width: 992.w, // 화면 밀도 적용
              height: 720.h, // 화면 밀도 적용
              decoration: BoxDecoration(
                border: Border.all(color: Color(0xFFC4CAD4)),
                borderRadius: BorderRadius.all(
                  Radius.circular(38.5.r),
                ), // 화면 밀도 적용
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10, bottom: 2),
                child: TextField(
                  controller: _textController,
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                      fontSize: 40.sp,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF6B6B6B),
                    ),
                    hintText: "본문(300자 이내)",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 30.h), // 화면 밀도 적용
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 90.w), // 화면 밀도 적용
              Text(
                "태그",
                style: TextStyle(
                  fontSize: 44.sp, // 화면 밀도 적용
                  color: Color(0XFF6B6B6B),
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          SizedBox(
            width: 935.w, // 화면 밀도 적용
            child: Wrap(
              alignment: WrapAlignment.start,
              runAlignment: WrapAlignment.center,
              spacing: 18.r, // 화면 밀도 적용
              runSpacing: 18.r, // 화면 밀도 적용
              children: [
                // 태그 버튼들에 대한 부분도 동일하게 화면 밀도 적용
                GestureDetector(
                  onTap: () {
                    setState(() {
                      // 태그 선택 상태 토글
                      tagSelection[0] = !tagSelection[0];
                    });
                  },
                  child: Container(
                    width: 190.w,
                    height: 100.h,
                    decoration: ShapeDecoration(
                      color:
                          tagSelection[0]
                              ? Color(0x21FF9F1C) // 주황색
                              : Colors.white, // 회색
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 2.75.w, // 화면 밀도 적용
                          color:
                              tagSelection[0]
                                  ? Color(0xFFFF9F1C) // 주황색
                                  : Color(0xFFECECEC), // 회색
                        ),
                        borderRadius: BorderRadius.circular(36.r), // 화면 밀도 적용
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '📚', // 예시: '전공', '학술', '예술' 등으로 바꾸세요
                          style: TextStyle(
                            color:
                                tagSelection[0]
                                    ? Color(0xFF1C1C1C)
                                    : Color(0xFF6B6B6B),
                            fontSize: 36.sp, // 화면 밀도 적용
                            fontFamily: 'Wanted Sans',
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.36,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          '학술', // 예시: '전공', '학술', '예술' 등으로 바꾸세요
                          style: TextStyle(
                            color:
                                tagSelection[0]
                                    ? Color(0xFF1C1C1C)
                                    : Color(0xFF6B6B6B),
                            fontSize: 36.sp, // 화면 밀도 적용
                            fontFamily: 'Wanted Sans',
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.36,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      // 태그 선택 상태 토글
                      tagSelection[1] = !tagSelection[1];
                    });
                  },
                  child: Container(
                    width: 190.w,
                    height: 100.h,
                    decoration: ShapeDecoration(
                      color:
                          tagSelection[1]
                              ? Color(0x21FF9F1C) // 주황색
                              : Colors.white, // 회색
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 2.75.w, // 화면 밀도 적용
                          color:
                              tagSelection[1]
                                  ? Color(0xFFFF9F1C) // 주황색
                                  : Color(0xFFECECEC), // 회색
                        ),
                        borderRadius: BorderRadius.circular(36.r), // 화면 밀도 적용
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '💻', // 예시: '전공', '학술', '예술' 등으로 바꾸세요
                          style: TextStyle(
                            color:
                                tagSelection[1]
                                    ? Color(0xFF1C1C1C)
                                    : Color(0xFF6B6B6B),
                            fontSize: 36.sp, // 화면 밀도 적용
                            fontFamily: 'Wanted Sans',
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.36,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          '전공', // 예시: '전공', '학술', '예술' 등으로 바꾸세요
                          style: TextStyle(
                            color:
                                tagSelection[1]
                                    ? Color(0xFF1C1C1C)
                                    : Color(0xFF6B6B6B),
                            fontSize: 36.sp, // 화면 밀도 적용
                            fontFamily: 'Wanted Sans',
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.36,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    setState(() {
                      // 태그 선택 상태 토글
                      tagSelection[2] = !tagSelection[2];
                    });
                  },
                  child: Container(
                    width: 190.w,
                    height: 100.h,
                    decoration: ShapeDecoration(
                      color:
                          tagSelection[2]
                              ? Color(0x21FF9F1C) // 주황색
                              : Colors.white, // 회색
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 2.75.w, // 화면 밀도 적용
                          color:
                              tagSelection[2]
                                  ? Color(0xFFFF9F1C) // 주황색
                                  : Color(0xFFECECEC), // 회색
                        ),
                        borderRadius: BorderRadius.circular(36.r), // 화면 밀도 적용
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '🎨', // 예시: '전공', '학술', '예술' 등으로 바꾸세요
                          style: TextStyle(
                            color:
                                tagSelection[2]
                                    ? Color(0xFF1C1C1C)
                                    : Color(0xFF6B6B6B),
                            fontSize: 36.sp, // 화면 밀도 적용
                            fontFamily: 'Wanted Sans',
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.36,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          '예술', // 예시: '전공', '학술', '예술' 등으로 바꾸세요
                          style: TextStyle(
                            color:
                                tagSelection[2]
                                    ? Color(0xFF1C1C1C)
                                    : Color(0xFF6B6B6B),
                            fontSize: 36.sp, // 화면 밀도 적용
                            fontFamily: 'Wanted Sans',
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.36,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      // 태그 선택 상태 토글
                      tagSelection[3] = !tagSelection[3];
                    });
                  },
                  child: Container(
                    width: 267.w,
                    height: 100.h,
                    decoration: ShapeDecoration(
                      color:
                          tagSelection[3]
                              ? Color(0x21FF9F1C) // 주황색
                              : Colors.white, // 회색
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 2.75.w, // 화면 밀도 적용
                          color:
                              tagSelection[3]
                                  ? Color(0xFFFF9F1C) // 주황색
                                  : Color(0xFFECECEC), // 회색
                        ),
                        borderRadius: BorderRadius.circular(36.r), // 화면 밀도 적용
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '👥', // 예시: '전공', '학술', '예술' 등으로 바꾸세요
                          style: TextStyle(
                            color:
                                tagSelection[3]
                                    ? Color(0xFF1C1C1C)
                                    : Color(0xFF6B6B6B),
                            fontSize: 36.sp, // 화면 밀도 적용
                            fontFamily: 'Wanted Sans',
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.36,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          '문화•취미', // 예시: '전공', '학술', '예술' 등으로 바꾸세요
                          style: TextStyle(
                            color:
                                tagSelection[3]
                                    ? Color(0xFF1C1C1C)
                                    : Color(0xFF6B6B6B),
                            fontSize: 36.sp, // 화면 밀도 적용
                            fontFamily: 'Wanted Sans',
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.36,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      // 태그 선택 상태 토글
                      tagSelection[4] = !tagSelection[4];
                    });
                  },
                  child: Container(
                    width: 190.w,
                    height: 100.h,
                    decoration: ShapeDecoration(
                      color:
                          tagSelection[4]
                              ? Color(0x21FF9F1C) // 주황색
                              : Colors.white, // 회색
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 2.75.w, // 화면 밀도 적용
                          color:
                              tagSelection[4]
                                  ? Color(0xFFFF9F1C) // 주황색
                                  : Color(0xFFECECEC), // 회색
                        ),
                        borderRadius: BorderRadius.circular(36.r), // 화면 밀도 적용
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '☀️', // 예시: '전공', '학술', '예술' 등으로 바꾸세요
                          style: TextStyle(
                            color:
                                tagSelection[4]
                                    ? Color(0xFF1C1C1C)
                                    : Color(0xFF6B6B6B),
                            fontSize: 36.sp, // 화면 밀도 적용
                            fontFamily: 'Wanted Sans',
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.36,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          '봉사', // 예시: '전공', '학술', '예술' 등으로 바꾸세요
                          style: TextStyle(
                            color:
                                tagSelection[4]
                                    ? Color(0xFF1C1C1C)
                                    : Color(0xFF6B6B6B),
                            fontSize: 36.sp, // 화면 밀도 적용
                            fontFamily: 'Wanted Sans',
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.36,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      // 태그 선택 상태 토글
                      tagSelection[5] = !tagSelection[5];
                    });
                  },
                  child: Container(
                    width: 190.w,
                    height: 100.h,
                    decoration: ShapeDecoration(
                      color:
                          tagSelection[5]
                              ? Color(0x21FF9F1C) // 주황색
                              : Colors.white, // 회색
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 2.75.w, // 화면 밀도 적용
                          color:
                              tagSelection[4]
                                  ? Color(0xFFFF9F1C) // 주황색
                                  : Color(0xFFECECEC), // 회색
                        ),
                        borderRadius: BorderRadius.circular(36.r), // 화면 밀도 적용
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '🔠', // 예시: '전공', '학술', '예술' 등으로 바꾸세요
                          style: TextStyle(
                            color:
                                tagSelection[5]
                                    ? Color(0xFF1C1C1C)
                                    : Color(0xFF6B6B6B),
                            fontSize: 36.sp, // 화면 밀도 적용
                            fontFamily: 'Wanted Sans',
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.36,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          '어학', // 예시: '전공', '학술', '예술' 등으로 바꾸세요
                          style: TextStyle(
                            color:
                                tagSelection[5]
                                    ? Color(0xFF1C1C1C)
                                    : Color(0xFF6B6B6B),
                            fontSize: 36.sp, // 화면 밀도 적용
                            fontFamily: 'Wanted Sans',
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.36,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      // 태그 선택 상태 토글
                      tagSelection[6] = !tagSelection[6];
                    });
                  },
                  child: Container(
                    width: 190.w,
                    height: 100.h,
                    decoration: ShapeDecoration(
                      color:
                          tagSelection[6]
                              ? Color(0x21FF9F1C) // 주황색
                              : Colors.white, // 회색
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 2.75.w, // 화면 밀도 적용
                          color:
                              tagSelection[6]
                                  ? Color(0xFFFF9F1C) // 주황색
                                  : Color(0xFFECECEC), // 회색
                        ),
                        borderRadius: BorderRadius.circular(36.r), // 화면 밀도 적용
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '🤝', // 예시: '전공', '학술', '예술' 등으로 바꾸세요
                          style: TextStyle(
                            color:
                                tagSelection[6]
                                    ? Color(0xFF1C1C1C)
                                    : Color(0xFF6B6B6B),
                            fontSize: 36.sp, // 화면 밀도 적용
                            fontFamily: 'Wanted Sans',
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.36,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          '창업', // 예시: '전공', '학술', '예술' 등으로 바꾸세요
                          style: TextStyle(
                            color:
                                tagSelection[6]
                                    ? Color(0xFF1C1C1C)
                                    : Color(0xFF6B6B6B),
                            fontSize: 36.sp, // 화면 밀도 적용
                            fontFamily: 'Wanted Sans',
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.36,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                GestureDetector(
                  onTap: () {
                    setState(() {
                      // 태그 선택 상태 토글
                      tagSelection[7] = !tagSelection[7];
                    });
                  },
                  child: Container(
                    width: 190.w,
                    height: 100.h,
                    decoration: ShapeDecoration(
                      color:
                          tagSelection[7]
                              ? Color(0x21FF9F1C) // 주황색
                              : Colors.white, // 회색
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 2.75.w, // 화면 밀도 적용
                          color:
                              tagSelection[7]
                                  ? Color(0xFFFF9F1C) // 주황색
                                  : Color(0xFFECECEC), // 회색
                        ),
                        borderRadius: BorderRadius.circular(36.r), // 화면 밀도 적용
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '✈️', // 예시: '전공', '학술', '예술' 등으로 바꾸세요
                          style: TextStyle(
                            color:
                                tagSelection[7]
                                    ? Color(0xFF1C1C1C)
                                    : Color(0xFF6B6B6B),
                            fontSize: 36.sp, // 화면 밀도 적용
                            fontFamily: 'Wanted Sans',
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.36,
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          '여행', // 예시: '전공', '학술', '예술' 등으로 바꾸세요
                          style: TextStyle(
                            color:
                                tagSelection[7]
                                    ? Color(0xFF1C1C1C)
                                    : Color(0xFF6B6B6B),
                            fontSize: 36.sp, // 화면 밀도 적용
                            fontFamily: 'Wanted Sans',
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.36,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // 다른 Container들도 동일하게 화면 밀도 적용
              ],
            ),
          ),
          SizedBox(height: 20),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(width: 90.w),
              Text(
                "사진",
                style: TextStyle(
                  fontSize: 44.sp, // 화면 밀도 적용
                  color: Color(0XFF6B6B6B),
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(width: 20),
              Text(
                "*최대 2장까지 가능합니다.",
                style: TextStyle(
                  fontSize: 40.sp, // 화면 밀도 적용
                  color: Color(0XFFC4CAD4),
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          SizedBox(height: 15),
          Row(
            children: [
              SizedBox(width: 30),
              SizedBox(
                width: 242.w,
                height: 242.h,
                child: Stack(
                  children: [
                    Container(
                      width: 242.w,
                      height: 242.h,
                      decoration: ShapeDecoration(
                        color: const Color(0xFFC4CAD4) /* gray */,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 95.r,
                      top: 95.r,
                      child: Container(
                        width: 53.w,
                        height: 53.h,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        child: Center(
                          child: Icon(Icons.add, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 10),
              SizedBox(
                width: 242.w,
                height: 242.h,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 242.w,
                        height: 242.h,
                        decoration: ShapeDecoration(
                          color: const Color(0xFFC4CAD4) /* gray */,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 95.r,
                      top: 95.r,
                      child: Container(
                        width: 53.w,
                        height: 53.h,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(),
                        child: Center(
                          child: Icon(Icons.add, color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
