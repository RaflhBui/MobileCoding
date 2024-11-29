import 'sinhvien.dart'
class Lophoc{
  String _tenLop;
  List<SinhVien> _danhSachSV = [];
  Lophoc(this._tenLop);

  Lophoc(this._tenLop,this._danhSachSV);

  //Getter
String get tenLop => _tenLop;
List get danhsachSV => _danhSachSV;
  //Setter

// Them SV
void themSinhVien(SinhVien sv) => _danhSachSV.add(sv)

void hienThiDanhSach(){
  print("\n\n-----------------------------------------------------------");
  print("Danh sach sinh vien lop $_tenLop");
  for(var sv in _danhSachSV){
    print("\n--------------------:");
    sv.hienThiThongTin();
    print('Xep loai: $sv.xepLoai()')
  }
}

}