import 'package:flutter/material.dart';
import 'package:owly/absen_page.dart';
import 'package:owly/daftar_guru_page.dart';
import 'package:owly/jadwal_pelajaran_page.dart';
import 'package:owly/main/elearning_page.dart';
import 'package:owly/nilai_page.dart';
import 'package:owly/pembayaran/pembayaran_home.dart';

class BerandaMenu {
  Widget page;
  String menuIcon;
  String menuName;
  Color backgroundMenuColor;

  BerandaMenu({
    this.page, 
    this.menuIcon, 
    this.menuName, 
    this.backgroundMenuColor
  });
}

List<BerandaMenu> berandaMenu = <BerandaMenu> [
  new BerandaMenu(
    page: Absen(),
    menuIcon: 'assets/icons/absen.png',
    menuName: 'ABSEN',
    backgroundMenuColor: Colors.orangeAccent.withOpacity(0.9),
  ),
  
  new BerandaMenu(
    page: Nilai(),
    menuIcon: 'assets/icons/nilai.png',
    menuName: 'NILAI',
    backgroundMenuColor: Colors.redAccent.withOpacity(0.9),
  ),
  
  new BerandaMenu(
    page: JadwalPelajaran(),
    menuIcon: 'assets/icons/jadwal.png',
    menuName: 'PELAJARAN',
    backgroundMenuColor: Colors.blueAccent.withOpacity(0.9),
  ),

  new BerandaMenu(
    page: Elearning(),
    menuIcon: 'assets/icons/book.png',
    menuName: 'E-Learning',
    backgroundMenuColor: Colors.purpleAccent.withOpacity(0.9),
  ),

  new BerandaMenu(
    page: PembayaranHome(),
    menuIcon: 'assets/icons/money-bag.png',
    menuName: 'Pembayaran',
    backgroundMenuColor: Colors.indigo.withOpacity(0.9),
  ),
  
  new BerandaMenu(
    page: DaftarGuru(),
    menuIcon: 'assets/icons/teacher.png',
    menuName: 'GURU',
    backgroundMenuColor: Colors.greenAccent.withOpacity(0.9),
  ),
];