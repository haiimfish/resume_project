import 'package:flutter/material.dart'; // Import ไลบรารี Material ของ Flutter
import 'package:google_fonts/google_fonts.dart'; //Import google_font

void main() {
  // จุดเริ่มต้นของแอป Flutter
  runApp(const MyApp()); // บอก Flutter ว่าวิดเจ็ตใดคือรากฐานของแอป
}

// MyApp โดยทั่วไปคือวิดเจ็ตรากฐานของแอปพลิเคชันของคุณ
class MyApp extends StatelessWidget {
  const MyApp({super.key}); // Constructor

  @override
  Widget build(BuildContext context) {
    // เมธอด build() ส่งคืนโครงสร้างต้นไม้วิดเจ็ตสำหรับวิดเจ็ตนี้
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true, // ใช้ Material Design เวอร์ชันล่าสุด
      ),
      home: const MyHomePage(),
    );
  }
}

// ตัวอย่างวิดเจ็ตที่ส่งคืนโดย property 'home' ของ MaterialApp
class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ให้โครงสร้างแอปพื้นฐาน
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(150),
        child: AppBar(
          backgroundColor: Colors.blueGrey,
          centerTitle: true,

          flexibleSpace: Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisSize: MainAxisSize.min, // ให้ขนาดพอดีกับเนื้อหา
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipOval(
                    child: Image.asset(
                      'assets/images/student.png',
                      width: 100,
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'นายพิสิษฐ์ หนูใจ',
                        style: GoogleFonts.prompt(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        '66313739',
                        style: GoogleFonts.prompt(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'วิทยากาคอมพิวเตอร์',
                        style: GoogleFonts.prompt(
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ), // ระยะห่างระหว่างรูปกับข้อความ
                ],
              ),
            ),
          ),
        ),
      ),

      body: Column(
        children: [
          const SizedBox(height: 20),
          Center(
            child: Container(
              padding: EdgeInsets.only(top: 20.0),
              width: 310.0,
              height: 415.0,
              decoration: BoxDecoration(
                color: Colors.blueGrey[50],
                borderRadius: BorderRadius.horizontal(
                  right: Radius.circular(19.0),
                  left: Radius.circular(19.0),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.home, size: 16),
                          SizedBox(width: 6),
                          Text(
                            'ภูมิลำเนา',
                            style: GoogleFonts.prompt(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 2), // ระยะห่างระหว่างหัวข้อกับรายละเอียด
                      Text(
                        'บ้านเลขที่ 99/294 หมู่ 2 ต.สะเดียง อ.เมือง จ.เพชรบูรณ์',
                        style: GoogleFonts.prompt(
                          fontSize: 12,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.work_history, size: 16),
                          SizedBox(width: 6),
                          Text(
                            'งานอดิเรก',
                            style: GoogleFonts.prompt(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 2), // ระยะห่างระหว่างหัวข้อกับรายละเอียด
                      Text(
                        'เล่นเกม, ดู anime, ฟังเพลง, วาดรูป(บางครั้งบางคราว), เขียนโปรแกรมตามใจอยากศึกษา',
                        style: GoogleFonts.prompt(
                          fontSize: 12,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.school, size: 16),
                          SizedBox(width: 6),
                          Text(
                            'การศึกษา',
                            style: GoogleFonts.prompt(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 2), // ระยะห่างระหว่างหัวข้อกับรายละเอียด
                      Text(
                        '1. ประถมศึกษาที่ โรงเรียนเทศบาท 1 (บ้านในเมือง) จบปี 2559',
                        style: GoogleFonts.prompt(
                          fontSize: 12,
                          color: Colors.black87,
                        ),
                      ),
                      Text(
                        '2. มัธยมต้นศึกษาที่ โรงเรียนเพชรพิทยาคม จบปี 2563',
                        style: GoogleFonts.prompt(
                          fontSize: 12,
                          color: Colors.black87,
                        ),
                      ),
                      Text(
                        '3. มัธยมปลายศึกษาที่ โรงเรียนเพชรพิทยาคม จบปี 2566',
                        style: GoogleFonts.prompt(
                          fontSize: 12,
                          color: Colors.black87,
                        ),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.email, size: 16, color: Colors.grey),
                          SizedBox(width: 6),
                          Text(
                            'Email: pisitn66@nu.ac.th',
                            style: GoogleFonts.prompt(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.facebook, size: 16, color: Colors.blue),
                          SizedBox(width: 6),
                          Text(
                            'FB: Pisit Noojai',
                            style: GoogleFonts.prompt(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.phone, size: 16, color: Colors.green),
                          SizedBox(width: 6),
                          Text(
                            'Phone: 063-6690920',
                            style: GoogleFonts.prompt(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
