import 'dienThoai.dart';

class HoaDon {
  String _maHoaDon;
  DateTime _ngayBan;
  DienThoai _dienThoai;
  int _soLuongMua;
  double _giaBanThucTe;
  String _tenKhachHang;
  String _soDienThoaiKhach;

  // Constructor
  HoaDon(this._maHoaDon, this._ngayBan, this._dienThoai, this._soLuongMua, this._giaBanThucTe, this._tenKhachHang, this._soDienThoaiKhach) {
    if (!_maHoaDon.startsWith("HD-")) throw Exception("Mã hóa đơn phải có định dạng 'HD-XXX'");
    if (_soLuongMua <= 0 || _soLuongMua > _dienThoai.soLuongTonKho) throw Exception("Số lượng mua phải > 0 và <= số lượng tồn kho");
    if (_giaBanThucTe <= 0) throw Exception("Giá bán thực tế phải > 0");
    if (_ngayBan.isAfter(DateTime.now())) throw Exception("Ngày bán không thể ở tương lai");
  }

  // Phương thức tính tổng tiền
  double tinhTongTien() => _soLuongMua * _giaBanThucTe;

  // Phương thức tính lợi nhuận thực tế
  double tinhLoiNhuanThucTe() => _soLuongMua * (_giaBanThucTe - _dienThoai.giaBan);

  // Phương thức hiển thị thông tin
  void hienThiThongTin() {
    print("Mã hóa đơn: $_maHoaDon");
    print("Ngày bán: $_ngayBan");
    print("Tên điện thoại: ${_dienThoai.tenDienThoai}"); // Sử dụng getter `tenDienThoai`
    print("Số lượng mua: $_soLuongMua");
    print("Giá bán thực tế: $_giaBanThucTe");
    print("Tên khách hàng: $_tenKhachHang");
    print("Số điện thoại khách: $_soDienThoaiKhach");
    print("Tổng tiền: ${tinhTongTien()}");
    print("Lợi nhuận thực tế: ${tinhLoiNhuanThucTe()}");
  }
}
