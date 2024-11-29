class SinhVien{
String _hoTen;
int _tuoi;
String _maSV;
double _diemTB;

//constructor
SinhVien(this._hoTen,this._tuoi,this._maSV,this._diemTB);

//Getter
String get hoten => _hoTen;
int get tuoi => _tuoi;
String get maSV => _maSV;
double get diemTB => _diemTB

//Setter
set hoten(String hoTen){
    if(hoten.isNotEmpty){
        _hoTen = hoTen;
    }
}
set tuoi(int tuoi){
    _tuoi = (tuoi>0)? tuoi : _tuoi
}
set maSV(String maSV){
    _maSV = (maSV.isNotEmpty)?maSV:_maSV;
}
set diemTB(double diemTB){
    if(diemTV >=0 && diemTB <=10){
        _diemTB=diemTB;
    }
}

//methods
void hienThiThongTin(){
    print('Ho Ten:$hoten')
    print('Tuoi:$tuoi')
    print('Ma SV:$maSV')
    print('Diem TB:$diemTB')
}

String xepLoai(){
    if (_diemTB >=8.0 ) return 'Gioi';
    if (_diemTB >=6.5 ) return 'Kha';
    if (_diemTB >=5.0 ) return 'Trung Binh';
    return 'Yeu';
}

}