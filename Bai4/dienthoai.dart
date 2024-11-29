class DienThoai {
  String _maDienThoai;
  String _tenDienThoai;
  String _hangSanXuat;
  double _giaNhap;
  double _giaBan;
  int _soLuongTonKho;
  bool _conKinhDoanh;

  // Constructor
  DienThoai(this._maDienThoai, this._tenDienThoai, this._hangSanXuat, this._giaNhap, this._giaBan, this._soLuongTonKho, this._conKinhDoanh) {
    if (!_maDienThoai.startsWith("DT-")) throw Exception("Mã điện thoại phải có định dạng 'DT-XXX'");
    if (_giaNhap <= 0 || _giaBan <= 0 || _giaBan <= _giaNhap) throw Exception("Giá bán phải lớn hơn giá nhập và lớn hơn 0");
    if (_soLuongTonKho < 0) throw Exception("Số lượng tồn kho phải >= 0");
  }

  // Getter và Setter
  String get maDienThoai => _maDienThoai;
  set maDienThoai(String ma) {
    if (ma.startsWith("DT-")) _maDienThoai = ma;
    else throw Exception("Mã điện thoại phải có định dạng 'DT-XXX'");
  }

  String get tenDienThoai => _tenDienThoai;
  set tenDienThoai(String ten) {
    if (ten.isNotEmpty) _tenDienThoai = ten;
    else throw Exception("Tên điện thoại không được rỗng");
  }

  double get giaBan => _giaBan;
  set giaBan(double gia) {
    if (gia > _giaNhap) _giaBan = gia;
    else throw Exception("Giá bán phải lớn hơn giá nhập");
  }

  int get soLuongTonKho => _soLuongTonKho;
  set soLuongTonKho(int soLuong) {
    if (soLuong >= 0) _soLuongTonKho = soLuong;
    else throw Exception("Số lượng tồn kho không thể âm");
  }

  // Phương thức tính lợi nhuận dự kiến
  double tinhLoiNhuan() => (_giaBan - _giaNhap) * _soLuongTonKho;

  // Phương thức hiển thị thông tin
  void hienThiThongTin() {
    print("Mã điện thoại: $_maDienThoai");
    print("Tên điện thoại: $_tenDienThoai");
    print("Hãng sản xuất: $_hangSanXuat");
    print("Giá nhập: $_giaNhap");
    print("Giá bán: $_giaBan");
    print("Số lượng tồn kho: $_soLuongTonKho");
    print("Trạng thái: ${_conKinhDoanh ? 'Còn kinh doanh' : 'Ngừng kinh doanh'}");
  }

  // Phương thức kiểm tra có thể bán
  bool coTheBan() => _conKinhDoanh && _soLuongTonKho > 0;
}
