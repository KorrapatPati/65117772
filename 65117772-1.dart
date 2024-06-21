import 'dart:math';

double calculateTriangleArea(double sideA, double sideB, double sideC) {
  if (sideA <= 0 || sideB <= 0 || sideC <= 0) {
    return -1;
  }

  if ((sideA + sideB <= sideC) ||
      (sideA + sideC <= sideB) ||
      (sideB + sideC <= sideA)) {
    return -2;
  }

  double semiPerimeter = (sideA + sideB + sideC) / 2;
  double area = sqrt(semiPerimeter *
      (semiPerimeter - sideA) *
      (semiPerimeter - sideB) *
      (semiPerimeter - sideC));
  return area;
}

void main() {
  double sideA = 25;
  double sideB = 36;
  double sideC = 52;

  double area = calculateTriangleArea(sideA, sideB, sideC);

  if (area == -1) {
    print("ข้อผิดพลาด: ความยาวด้านทั้งหมดต้องเป็นจำนวนบวก");
  } else if (area == -2) {
    print("ข้อผิดพลาด: ด้านที่กำหนดไม่ก่อตัวเป็นรูปสามเหลี่ยม");
  } else {
    print("พื้นที่ของรูปสามเหลี่ยม: $area");
  }
}
