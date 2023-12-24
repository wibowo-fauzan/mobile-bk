import 'package:flutter/material.dart';

class VisiMisiScreen extends StatelessWidget {
  const VisiMisiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Visi Misi Sekolah SMK Taruna Bhakti'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 16),
              Text(
                'Visi SMK Taruna Bhakti',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Menghasilkan lulusan yang kompeten dalam IPTEK DAN  IMTAQ, serta mampu bersaing pada tingkat nasional dan global',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Misi SMK Taruna Bhakti',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                '1. Menumbuhkan semangat kreatifitas, bersinergi dan kompetitif kepada seluruh warga sekolah',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '2. Melaksanakan kurikulum melalui pembelajaran dan penilaian berbasis kompetensi, Berbasis wirausaha, berwawasan lingkungan.dan berlandaskan kejujuran',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '3. Meningkatkan kualitas sumber daya manusia melalui sertifikasi Kompetensi Tingkat Nasional dan Internasional',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '4. Mengembangkan potensi peserta didik melalui kegiatan Minat dan Bakat dan pembinaan kedisiplinan',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '5. Menerapkan layanan prima dalam pengelolaan sekolah melalui Sistem Manajeman Mutu',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16),
              Text(
                'Aplication Bimbingan Konseling About',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Aplikasi ini dibuat dengan tujuan utama untuk memberikan layanan konseling yang efektif kepada siswa SMK Taruna Bhakti Depok. Kami berkomitmen untuk memberikan yang terbaik dalam mendukung perkembangan akademis, emosional, dan sosial siswa.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 10),
              Text(
                'Fitur Utama:',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '1. Aplikasi ini menyediakan akses mudah untuk konseling personal, membantu siswa mengatasi tantangan dan mengembangkan potensi mereka secara maksimal.',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '2. Dapatkan informasi terkini tentang kegiatan sekolah, acara, dan pengumuman penting lainnya melalui aplikasi ini.',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                '3. Wali murid dapat terlibat aktif dalam perkembangan pendidikan anak mereka, mengikuti progress akademis, dan berkomunikasi langsung dengan para pengajar.',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
