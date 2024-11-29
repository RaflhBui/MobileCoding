import 'dienThoai.dart';
import 'hoaDon.dart';

class CuaHang {
  String _tenCuaHang;
  String _diaChi;
  List<DienThoai> _danhSachDienThoai = [];
  List<HoaDon> _danhSachHoaDon = [];

  // Constructor
  CuaHang(this._tenCuaHang, this._diaChi);

  // Quản lý điện thoại
  void themDienThoai(DienThoai dt) => _danhSachDienThoai.add(dt);

  void hienThiDanhSachDienThoai() {
    print("Danh sách điện thoại trong cửa hàng:");
    for (var dt in _danhSachDienThoai) {
      dt.hienThiThongTin();
      print("--------------------");
    }
  }

  // Quản lý hóa đơn
  void taoHoaDon(HoaDon hd) {
    if (!hd._dienThoai.coTheBan()) throw Exception("Điện thoại không còn kinh doanh hoặc hết hàng");
    hd._dienThoai.soLuongTonKho -= hd._soLuongMua;
    _danhSachHoaDon.add(hd);
  }

  void hienThiDanhSachHoaDon() {
    print("Danh sách hóa đơn:");
    for (var hd in _danhSachHoaDon) {
      hd.hienThiThongTin();
      print("--------------------");
    }
  }
}
