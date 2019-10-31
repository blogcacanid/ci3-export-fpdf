CREATE DATABASE ci3_fpdf;
USE ci3_fpdf;
 
CREATE TABLE `pegawai` (
  `pegawai_id` int(11) NOT NULL AUTO_INCREMENT,
  `nip` varchar(15) NOT NULL,
  `nama_pegawai` varchar(30) NOT NULL,
  `alamat` text NOT NULL,
  PRIMARY KEY (`pegawai_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `pegawai`
INSERT INTO `pegawai` (`nip`, `nama_pegawai`, `alamat`) VALUES
('200503', 'Ade Kartono', 'Jl. H. Azra\'i RT.007/01\r\nMenteng Dalam'),
('200505', 'Amalia', 'Jl. Ciak RT.004/01 No.18\r\nBukit Duri'),
('200506', 'Arief Budiman', 'Gg. Subur Ujung No.12 RT.012/015\r\nMenteng Atas'),
('200507', 'Balqis', 'Jl. Kampung Melayu Kecil III/14 RT.001/09'),
('200509', 'Endah Suci Rahayu', 'Harapan Indah\r\nJl. Melon VI Blok SM No.2'),
('200510', 'Era Hapsari', 'Jl. Puspa II/2 RT.002/01\r\nSenayan'),
('200511', 'Erny Yulianty', 'Jl. Kampung Melayu Kecil I/31 RT.004/011'),
('200513', 'Euis Herawati', 'Jl. Kalibata Utara III/32 RT.005/02'),
('200514', 'Fitri Rizkiyanti', 'Jl. Kebon Baru V RT.006/09 No.27\r\nTebet'),
('200515', 'Untung Sugianto', 'Cinere No.187 Kelapa Sawit Blok E'),
('200516', 'Hasanah', 'Jl. X No.10 RT.004/100\r\nKebon Baru'),
('200517', 'Ira Ekawati', 'Jl. Jatinegara Barat No.13 RT.011/03'),
('200518', 'Jerry Manggreno', 'Jl. Minangkabau RT.01/08 No. 1A\r\nManggarai'),
('200519', 'Roskawati', 'Perum Depok Indah I/A No.64 RT.002/09'),
('200520', 'Mery Theresia', 'Jl. H. Mochtar Raya No.23\r\nGg. Belimbing RT.002/01\r\nKreo-Lembang'),
('200523', 'Aldiles', 'Jl. Turi II RT.03/010 Depok I, Kemiri Muka'),
('200524', 'Hendi Ekopanto', 'Jl. Tambak II/24 Komp. POLRI Inkopol'),
('200525', 'Arif Fadilah', 'Jl. Penegak No.15 RT.03/02'),
('200526', 'Lelly Kusumawati', 'Jl. Jatinegara Barat No.24 RT.05/02'),
('200527', 'Andriansyah', 'Jl. Tebet Timur II F No.24 RT.05/07'),
('200528', 'Bayu Chandra Purnomo', 'Jl. Perkutut No.100 RT.06/08'),
('200529', 'Herlianti', 'Jl. Siaga Raya Komplek Siaga Baru Blok C No.6'),
('200531', 'Kati Lianarisanti', 'Jl. Panti Asuhan A 6 No.1 RT,013/01'),
('200532', 'Ika Astuti', 'Jl. Mampang Prapatan XVI/30 RT.02/055'),
('200533', 'Merlindo Rachmono', 'Jl. Jati Padang Utara No.21 RT.010/02'),
('200534', 'Khairul Anwar', 'Jl. Bangka IX No.32 RT.010/012'),
('200535', 'Dewi Rahayu', 'Jl. Bukit Duri Utara Blok L 196 RT.03/03'),
('200536', 'Dewi Rahmawati', 'Komplek PBB Kalang Tirta No.4 RT.04/09'),
('200537', 'Nurlidiantini Virgonita', 'Jl. Kramat V No.16 RT.03/06'),
('200538', 'Lucky Chandra Dewi', 'Jl. TB Simatupang G. H. Dul No.61 RT.09/02'),
('200541', 'Adang Ningsih', 'Jl. Kawi No.8 RT.10/02'),
('200542', 'Chairul Anwar', 'Jl. Jatinegara Barat No.24 RT.05/02'),
('200545', 'Chastel Idris', 'Jl. Meruya Utara No.4 RT.05/09'),
('200546', 'Dian Partiana Dewi', 'Jl. Otista Raya G. Sa\'abun No.22 RT.10/02'), 
('200547', 'Fajar Nugraha', 'Jl. Tebet Utara II F/4 RT.04/01'),
('200548', 'Ferry Irawan', 'Jl. Majid Annur No.4 RT.05/02'),
('200549', 'Jeffi Bachtiar', 'Jl. Persada Raya G. Merpati IV/9'),
('200550', 'Andri Iskandar', 'Jl. Bukit Duri Utara Blok L 195 RT.03/03'),
('200551', 'Fahmi', 'Jl. Pejaten Timur No.19 RT.03/07'),
('200553', 'Vera Nawira', 'Jl. Pengadegan Timur No.9 RT.05/01'),
('200555', 'Hendri Fernadi', 'Jl. Otista I G. {ermata No.12 RT.02/02'),
('200556', 'Abdul Khair', 'Jl. Tegal Parang Utara I No.27 RT.018/02'),
('200557', 'Achmadi', 'Jl. Masjid II/2 RT.09/02'),
('200558', 'Fairus', 'Jl. Jl. Crucuk Bukit Duri Puteran No.17 RT.01/02'),
('200559', 'Abdul Rozak', 'G. Sumbangsih V RT.08/02'),
('200560', 'Indra Firmandiyuni', 'Jl. Cikoko Barat III/9 RT.12/02'),
('200561', 'Leny Muliawati', 'Jl. Bukit Duri Puteran G. Mandar No.7 RT.02/02'),
('200562', 'Julianne Tweedale', 'Jl. Padang No.9 B/5 RT.03/08'),
('200563', 'Tri Setyo', 'Jl. Kemang Barat II RT.01/05'),
('200564', 'Tessi Tresnasari', 'Jl. Jatinegara Kaum No.6 RT.09/01'),
('200566', 'Prima Charry Hastomo', 'Jl. Kesemek No.24 RT.03/05'),
('200568', 'Sintia Dewi', 'Jl. Kirai II/L No.32 RT.05/04\r\nCipete Utara');
