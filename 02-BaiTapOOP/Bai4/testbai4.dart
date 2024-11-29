import 'dienThoai.dart';
import 'hoaDon.dart';
import 'cuaHang.dart';

void main() {
  var cuaHang = CuaHang("Cửa hàng A", "123 Đường ABC");

  // Thêm điện thoại
  var dt1 = DienThoai("DT-001", "iPhone 14", "Apple", 20000000, 25000000, 10, true);
  var dt2 = DienThoai("DT-002", "Galaxy S22", "Samsung", 18000000, 22000000, 5, true);
  cuaHang.themDienThoai(dt1);
  cuaHang.themDienThoai(dt2);

  cuaHang.hienThiDanhSachDienThoai();

  // Tạo hóa đơn
  var hd1 = HoaDon("HD-001", DateTime.now(), dt1, 2, 25000000, "Nguyen Van A", "0123456789");
  cuaHang.taoHoaDon(hd1);

  cuaHang.hienThiDanhSachHoaDon();
}
