### Tutorial 7 - Basic 3D - Trias 2106633645

### Inventory System
- Membuat variabel berupa array yang menyimpan nama Item di dalam script player.gd
- Membuat fungsi yang mengupdate isi dari array, "add to inventory"
- Mengextend fungsionalitas dari Interactable dengan memungkinkan adanya parameter, yaitu "interactor"
- Diperlukan karena perlu mengupdate state dari "interactor" yaitu Player
- Dalam script ray_cast_3d.gd, secara default akan pass value yaitu Player Node ketika interact
- Dalam script item.gd, akan cek kondisi apakah interactor memiliki fungsi "add to inventory", jika iya akan memanggil fungsi tersebut, dan menghilangkan diri sendiri

### Inventory UI
- Membuat base seperti biasa
- Membuat script pada UI:
  - Menghilangkan item yang sebelumnya diambil agak tidak terduplikat
  - Menambahkan item baru ke array dan menampilkannya dengan menambah label sebagai child
