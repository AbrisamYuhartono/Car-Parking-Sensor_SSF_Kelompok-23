# CAR PARKING SENSOR

## MADE BY KELOMPOK 23
- [Muhammad Abrisam Cahyo Juhartono](https://github.com/AbrisamYuhartono) (2206026050)
- [Zikri Zulfa Azhim](https://github.com/verszz) (2206028390)
- [Faruq Sami Ramadhan](https://github.com/Faruqsamr) (2206026675)
- [Muhammad Rifki Pratama](https://github.com/MRifkiPratama) (2206828903)
- [Nakita Rahma Dinanti](https://github.com/nakita1203) (2206059401)

## LATAR BELAKANG
Dalam dunia dimana setiap harinya orang-orang penduduk bumi ini menghargai waktu mereka dan tidak ingin membuang-buang waktu mereka ini, untuk pergi dari satu lokasi ke lokasi yang mereka ingin tuju maka sudah no brainer jika mereka memiliki kendaraan pribadi. Kendaraan pribadi yang menjadi pilihan favorit merupakan mobil. Jika sudah memiliki mobil maka salah satu kemampuan yang harus dimiliki adalah memparkir mobil tersebut. Namun, tidak sedikit orang yang mengeluh mobilnya mengenai dinding atau hal lainnya karena beberapa hal, contohnya tidak fokus, salah menilai jarak, dll. Oleh karena itu, kami dari kelompok 23 merancang alat yang berguna untuk mengeliminasi permasalahan tersebut. Alat ini kami berikan nama Car Parking Sensor.

## SOLUSI
Dalam upaya mengeliminasi permasalahan yang terjadi saat seseorang parkir, kami dari kelompok 23 membuat alat bernama Car Parking Sensor. Car Parking Sensor ini memakai sensor HC SR04 yang dimana terhubung kepada dua buah Arduino Uno yang saling terhubungdengan koneksi I2C berupa Master dan Slave. Sensor HC-SR04 akan terhubung kepada Arduino Uno yang Master dimana sensor ini berguna untuk mengukur jarak mobil ke dinding atau hal lainnya. Jika jarak mobil sudah semakin dekat dengan dinding maka yang akan terjadi adalah buzzer yang telah terhubung kepada Arduino Uno Slave akan menghasilkan suara yang akan memperingati pengemudi mobil seberapa jauh jarak mereka dengan dinding.

## KOMPONEN YANG DIPAKAI

### ARDUINO UNO
![](https://github.com/AbrisamYuhartono/Car-Parking-Sensor_SSF_Kelompok-23/blob/main/IMAGE/ARDUINO%20UNO.jpg)

### HC-SR04
![](https://github.com/AbrisamYuhartono/Car-Parking-Sensor_SSF_Kelompok-23/blob/main/IMAGE/HC-SR04.jpg)

### LED
![](https://github.com/AbrisamYuhartono/Car-Parking-Sensor_SSF_Kelompok-23/blob/main/IMAGE/LED.jpg)

### BUZZER
![](https://github.com/AbrisamYuhartono/Car-Parking-Sensor_SSF_Kelompok-23/blob/main/IMAGE/BUZZER.jpg)

### RESISTOR
![](https://github.com/AbrisamYuhartono/Car-Parking-Sensor_SSF_Kelompok-23/blob/main/IMAGE/RESISTOR.jpeg)

## HASIL TEST
Dari hasil test yang telah kelompok kami jalankan, alat yang telah kami buat telah berjalan sesuai dengan visi yang kami inginkan. Saat HC SR04 mendeteksi bahwa mobil masih berjarak > daripada 30 cm maka yang akan terjadi adalah kedua LED akan menyala dan salah satu dari buzzer akan bersuara. Lalu kondisi kedua adalah jika mobil sudah berjarak < 30 cm, dimana yang akan terjadi adalah kedua buzzer akan bersuara dan LED yang akan menyala hanya satu saja, ini akan mengindikasikan bahwa mobil sudah mulai mendekat dengan dinding.

Jarak dari kapan kondisi akan berubah dapat di atur di kode:

 ```bash
l80:  CPI   R28, 30         ;compare R28 with 30
      BRMI  dsp             ;jump when R28 < 30
      INC   R27             ;increment counter2 by 1
      SUBI  R28, 30         ;R28 = R28 - 30
      RJMP  l80
```


### KONDISI SAAT MOBIL BERJARAK > 30 CM DARI DINDING
![](https://github.com/AbrisamYuhartono/Car-Parking-Sensor_SSF_Kelompok-23/blob/main/IMAGE/MOBIL%20BERJARAK%20LEBIH%20DARI%2030%20CM%20DARI%20DINDING.png)

Saat sensor mendeteksi bahwa mobil masih berjarak > 30 cm dari dinding maka yang akan dilakukan adalah salah satu buzzer akan bersuara dan kedua LED akan menyala. Seperti yang terlihat pada simulasi Proteus berikut.


### KONDISI SAAT MOBIL BERJARAK < 30 CM DARI DINDING
![](https://github.com/AbrisamYuhartono/Car-Parking-Sensor_SSF_Kelompok-23/blob/main/IMAGE/MOBIL%20BERJARAK%20KURANG%20DARI%2030%20CM%20DARI%20DINDING.png)

Saat sensor mendeteksi bahwa mobil sudah berjarak < 30 cm dari dinding maka yang akan dilakukan adalah kedua buzzer akan bersuara dan salah satu dari LED akan menyala. Seperti yang terlihat pada simulasi Proteus berikut.



