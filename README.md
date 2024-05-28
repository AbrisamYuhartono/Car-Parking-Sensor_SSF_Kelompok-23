# CAR PARKING SENSOR

## MADE BY KELOMPOK 23
- [Muhammad Abrisam Cahyo Juhartono](https://github.com/AbrisamYuhartono) (2206026050)
- [Zikri Zulfa Azhim](https://github.com/verszz) (2206028390)
- [Faruq Sami Ramadhan](https://github.com/Faruqsamr) (2206026675)
- [Muhammad Rifki Pratama](https://github.com/MRifkiPratama) (2206828903)
- [Nakita Rahma Dinanti](https://github.com/nakita1203) (2206059401)


## TABLE OF CONTENTS
- [INTRODUCTION](#introduction)
- [HARDWARE DESIGN AND IMPLEMENTATION](#hardware-design-and-implementation)
- [TEST RESULTS AND PERFORMANCE EVALUATION](#test-results-and-performance-evaluation)
- [SOFTWARE IMPLEMENTATION](#software-implementation)
- [CONCLUSION AND FUTURE WORK](#conclusion-and-future-work)


## INTRODUCTION

### PROBLEM
Dalam dunia dimana setiap harinya orang-orang penduduk bumi ini menghargai waktu mereka dan tidak ingin membuang-buang waktu mereka ini, untuk pergi dari satu lokasi ke lokasi yang mereka ingin tuju maka sudah pasti jika mereka memiliki kendaraan pribadi. Kendaraan pribadi yang menjadi pilihan favorit merupakan mobil. Jika sudah memiliki mobil maka salah satu kemampuan yang harus dimiliki adalah memparkir mobil tersebut. Namun, tidak sedikit orang yang mengeluh mobilnya mengenai dinding atau hal lainnya karena beberapa hal, contohnya tidak fokus, salah menilai jarak, dll. Oleh karena itu, kami dari kelompok 23 merancang alat yang berguna untuk mengeliminasi permasalahan tersebut. Alat ini kami berikan nama Car Parking Sensor.

### SOLUTION
Dalam upaya mengeliminasi permasalahan yang terjadi saat seseorang parkir, kami dari kelompok 23 membuat alat bernama Car Parking Sensor. Car Parking Sensor ini memakai sensor HC-SR04 yang dimana terhubung kepada dua buah Arduino Uno yang saling terhubungdengan koneksi I2C berupa Master dan Slave. Sensor HC-SR04 akan terhubung kepada Arduino Uno yang Master dimana sensor ini berguna untuk mengukur jarak mobil ke dinding atau hal lainnya. Jika jarak mobil sudah semakin dekat dengan dinding maka yang akan terjadi adalah buzzer yang telah terhubung kepada Arduino Uno Slave akan menghasilkan suara yang akan memperingati pengemudi mobil seberapa jauh jarak mereka dengan dinding.

### MAIN FEATURES
- **Deteksi Objek**: Mendeteksi objek apakah sudah terletak pada jarak yang perlu diantisipasi mobil saat parkir.
- **Mengukur Jarak Objek**: Dengan menggunakan sensor, alat ini akan mengukur jarak objek dari bagian belakang mobil.
- **Buzzer**: Menyalakan buzzer untuk mengingatkan pengemudi bahwa objek sudah berada pada jarak yang dekat dengan mobil dan intensitas buzzer meningkat ketika jarak mobil dengan objek di belakang semakin dekat.
- **Meredupkan Lampu**: Ketika mobil sudah hampir mendekati sebuah objek/dinding, lampu akan meredup untuk menjaga visibilitas pengemudi ke belakang.


## HARDWARE DESIGN AND IMPLEMENTATION
Alat Car Parking Sensor menggunakan beberapa komponen utama yaitu Arduino Uno, sensor ultrasonik HC-SR04, LED, buzzer, dan resistor. Arduino Uno berfungsi sebagai pengendali utama yang mengatur seluruh sistem. Sensor HC-SR04 digunakan untuk mengukur jarak antara mobil dan objek di sekitarnya, memastikan deteksi yang akurat. LED berperan sebagai indikator visual yang menyala saat mobil mendekati objek, memberikan tanda kepada pengemudi. Buzzer digunakan sebagai indikator suara yang berbunyi untuk memperingatkan pengemudi saat jarak mobil dengan objek semakin dekat. Resistor digunakan untuk membatasi arus listrik dalam rangkaian, melindungi komponen lain dari kerusakan. Kombinasi komponen ini menciptakan sistem yang efektif dalam membantu pengemudi memarkir mobil dengan aman dan akurat.


### COMPONENTS

#### ARDUINO UNO
![](https://github.com/AbrisamYuhartono/Car-Parking-Sensor_SSF_Kelompok-23/blob/main/IMAGE/ARDUINO%20UNO.jpg)

#### HC-SR04
![](https://github.com/AbrisamYuhartono/Car-Parking-Sensor_SSF_Kelompok-23/blob/main/IMAGE/HC-SR04.jpg)

#### LED
![](https://github.com/AbrisamYuhartono/Car-Parking-Sensor_SSF_Kelompok-23/blob/main/IMAGE/LED.jpg)

#### BUZZER
![](https://github.com/AbrisamYuhartono/Car-Parking-Sensor_SSF_Kelompok-23/blob/main/IMAGE/BUZZER.jpg)

#### RESISTOR
![](https://github.com/AbrisamYuhartono/Car-Parking-Sensor_SSF_Kelompok-23/blob/main/IMAGE/RESISTOR.jpeg)

### HARDWARE SCHEMATICS
![](https://github.com/AbrisamYuhartono/Car-Parking-Sensor_SSF_Kelompok-23/blob/main/IMAGE/MOBIL%20BERJARAK%20LEBIH%20DARI%2020%20CM%20DARI%20DINDING.png)


## SOFTWARE IMPLEMENTATION
Proses integrasi melibatkan penghubungan antara Arduino sebagai kontrol kendali dengan perangkat keras seperti sensor, arduino, dan buzzer sebagai input dan output. Kode yang dibuat diunggah ke Arduino sehingga microcontroller ATMega 328 dapat memproses input yang diberikan dan mengubahnya menjadi output yang sesuai dengan input tersebut. Dengan melakukan integrasi, terciptalah sistem yang dapat berjalan untuk mengaktifkan satu atau dua buzzer dan LED berdasarkan hasil pembacaan dari sensor jarak HC-SR04. Hal ini dapat mempermudah pengemudi mobil dalam mengetahui seberapa dekat mobil dengan objek di sekitarnya melalui bunyi buzzer dan LED yang menyala, sehingga meningkatkan keamanan dan kenyamanan dalam parkir.

### SOFTWARE USED

- [Proteus](https://www.labcenter.com/)
- [Arduino IDE](https://support.arduino.cc/hc/en-us/articles/360019833020-Download-and-install-Arduino-IDE)
- [VS Code](https://code.visualstudio.com/)

### FLOWCHART
![](https://github.com/AbrisamYuhartono/Car-Parking-Sensor_SSF_Kelompok-23/blob/main/IMAGE/FLOWCHART.png)


## TEST RESULTS AND PERFORMANCE EVALUATION

### TEST RESULTS

#### KONDISI SAAT MOBIL BERJARAK > 10 CM DARI DINDING
![](https://github.com/AbrisamYuhartono/Car-Parking-Sensor_SSF_Kelompok-23/blob/main/IMAGE/MOBIL%20BERJARAK%20LEBIH%20DARI%2020%20CM%20DARI%20DINDING.png)

Saat sensor mendeteksi bahwa mobil masih berjarak > 10 cm dari dinding maka yang akan dilakukan adalah salah satu buzzer akan bersuara dan kedua LED akan menyala. Seperti yang terlihat pada simulasi Proteus berikut.


#### KONDISI SAAT MOBIL BERJARAK < 10 CM DARI DINDING
![](https://github.com/AbrisamYuhartono/Car-Parking-Sensor_SSF_Kelompok-23/blob/main/IMAGE/MOBIL%20BERJARAK%20KURANG%20DARI%2030%20CM%20DARI%20DINDING.png)

Saat sensor mendeteksi bahwa mobil sudah berjarak < 10 cm dari dinding maka yang akan dilakukan adalah kedua buzzer akan bersuara dan salah satu dari LED akan menyala. Seperti yang terlihat pada simulasi Proteus berikut.

| Parameter                                                    | Status  |
| ------------------------------------------------------------ | ------- |
| Jika < 10 cm dua buzzer bersuara dan satu LED menyala        | SUCCESS |
| Jika > 10 cm satu buzzer bersuara dan kedua LED menyala      | SUCCESS |
| Dapat berjalan dalam waktu real-time                         | SUCCESS |


### PERFORMANCE EVALUATION
Evaluasi terhadap proyek ini adalah alat sudah dapat berfungsi sesuai dengan visi dari kelompok kami dan sudah memenuhi misi dari dibuatnya alat ini yaitu untuk mengeliminasi permasalahan yang sering terjadi saat seseorang sedang memarkir mobil mereka. Untuk kedepannya hal yang dapat dilakukan adalah untuk memperbaik sensor yang dipakai untuk selalu menghasilkan hasil yang konsisten demi memperbaik alat ini kalau akhirnya dapat dipakai untuk banyak orang dan parkiran pada bangunan.

## CONCLUSION AND FUTURE WORK

### CONCLUSION
Proyek Car Parking Sensor yang dirancang oleh kelompok 23 berhasil mencapai tujuannya dalam membantu pengemudi mobil memarkir dengan lebih aman dan akurat. Dengan memanfaatkan sensor HC-SR04 yang terhubung ke dua buah Arduino Uno melalui koneksi I2C, alat ini dapat mendeteksi jarak antara mobil dan dinding atau halangan lainnya. Jika jarak yang terdeteksi lebih dari 10 cm, buzzer akan bersuara dan kedua LED akan menyala, memberikan peringatan kepada pengemudi bahwa mereka masih memiliki cukup ruang untuk bergerak. Namun, saat jarak berkurang menjadi kurang dari 10 cm, kedua buzzer akan aktif dan hanya satu LED yang menyala, memberikan sinyal bahwa mobil sudah sangat dekat dengan dinding, sehingga pengemudi harus berhati-hati.

Melalui pengujian yang telah dilakukan, alat ini terbukti efektif dan dapat diandalkan dalam berbagai kondisi parkir. Keberhasilan alat ini tidak hanya mengurangi risiko kerusakan mobil akibat benturan, tetapi juga mengurangi stres pengemudi saat memarkir. Meski demikian, evaluasi lebih lanjut diperlukan untuk memastikan konsistensi hasil sensor agar alat ini bisa diterapkan lebih luas. Peningkatan akurasi dan kestabilan sensor akan meningkatkan kepercayaan pengguna dan memungkinkan alat ini digunakan di berbagai tempat parkir umum, membantu lebih banyak pengemudi dalam parkir mobil dengan aman.


### FUTURE WORK
Untuk kedepannya, kita dapat memperbagus alat Car Parking Sensor ini dengan meningkatkan akurasi dan konsistensi sensor HC-SR04 yang digunakan. Salah satu cara untuk meningkatkan akurasi adalah dengan menggunakan sensor jarak yang lebih canggih, seperti sensor LIDAR atau kamera berbasis visi komputer, yang dapat memberikan pengukuran jarak dengan lebih presisi dan kehandalan. Selain itu, menambahkan lebih banyak sensor di berbagai sudut mobil dapat memberikan cakupan yang lebih luas dan mendetail mengenai posisi kendaraan terhadap objek di sekitarnya, sehingga pengemudi mendapatkan informasi yang lebih komprehensif dan akurat saat memarkir mobil.

Selain itu, integrasi dengan sistem kendaraan yang lebih canggih, seperti sistem infotainment dalam mobil, dapat meningkatkan pengalaman pengguna. Alat ini bisa dihubungkan ke layar dashboard mobil untuk menampilkan visualisasi jarak secara real-time, memberikan notifikasi melalui tampilan visual, suara, dan getaran. Dengan menggabungkan data dari berbagai sensor dan memprosesnya menggunakan algoritma yang lebih pintar, alat ini juga bisa memberikan rekomendasi parkir optimal atau bahkan memungkinkan fitur parkir otomatis. Penambahan fitur-fitur ini akan membuat alat Car Parking Sensor lebih efisien, intuitif, dan bermanfaat bagi pengemudi, sehingga meningkatkan keselamatan dan kenyamanan saat memarkir kendaraan.

