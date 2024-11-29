import 'sinhvien.dart';
void main(){
    var sv = SinhVien("Nguyen Van A",20,"SV001",8.5)
    print(sv.hoten);

    sv.hoTen = 'Nguyen Van B'
    print(sv.hoTen);

    print(sv.xepLoai);

    sv.hienThiThongTin();

    var Lophoc = Lophoc("21DTHE5");
    Lophoc.themSinhVien(Sinhvien("Nguyen Van A",20,"SV001",8.5));
    Lophoc.themSinhVien(Sinhvien("Nguyen Van B",20,"SV002",6.5));
    Lophoc.themSinhVien(Sinhvien("Nguyen Van C",20,"SV011",4.5));
    Lophoc.themSinhVien(Sinhvien("Nguyen Van D",20,"SV031",1.5));
    Lophoc.hienThiDanhSach();
}