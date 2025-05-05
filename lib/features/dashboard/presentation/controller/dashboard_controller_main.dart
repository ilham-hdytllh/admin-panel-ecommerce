import 'package:admin_panel_ecommerce/features/authentication/presentation/orders/repository/entity/order_entity_data.dart';
import 'package:admin_panel_ecommerce/utils/constants/enums.dart';
import 'package:admin_panel_ecommerce/utils/helpers/helper_functions.dart';
import 'package:get/get.dart';

class DashboardControllerMain extends GetxController {
  final RxList<double> weeklySales = <double>[].obs;
  final RxMap<OrderStatus, int> orderStatusData = <OrderStatus, int>{}.obs;
  final RxMap<OrderStatus, double> totalAmounts = <OrderStatus, double>{}.obs;

  static final orders = [
    OrderEntityData(
      id: "CWT00001",
      status: OrderStatus.processing,
      totalAmount: 265,
      orderDate: DateTime(2025, 5, 5),
      deliveryDate: DateTime(2025, 5, 5),
    ),
    OrderEntityData(
      id: "CWT00002",
      status: OrderStatus.shipped,
      totalAmount: 200,
      orderDate: DateTime(2025, 5, 6),
      deliveryDate: DateTime(2025, 5, 6),
    ),
    OrderEntityData(
      id: "CWT00003",
      status: OrderStatus.delivered,
      totalAmount: 180,
      orderDate: DateTime(2025, 5, 7),
      deliveryDate: DateTime(2025, 5, 7),
    ),
    OrderEntityData(
      id: "CWT00004",
      status: OrderStatus.delivered,
      totalAmount: 175,
      orderDate: DateTime(2025, 5, 8),
      deliveryDate: DateTime(2025, 5, 8),
    ),
    OrderEntityData(
      id: "CWT00005",
      status: OrderStatus.delivered,
      totalAmount: 300,
      orderDate: DateTime(2025, 5, 9),
      deliveryDate: DateTime(2025, 5, 9),
    ),
    OrderEntityData(
      id: "CWT00001",
      status: OrderStatus.delivered,
      totalAmount: 320,
      orderDate: DateTime(2025, 5, 10),
      deliveryDate: DateTime(2025, 5, 10),
    ),
  ];

  @override
  void onInit() {
    _calculateWeeklySales();
    _calculateOrderStatusData();
    super.onInit();
  }

  void _calculateWeeklySales() {
    weeklySales.value = List<double>.filled(7, 0.0);
    for (OrderEntityData order in orders) {
      final DateTime orderWeekStart =
          HelperFunctions.getStartOfWeek(order.orderDate);

      if (orderWeekStart.isBefore(DateTime.now()) &&
          orderWeekStart.add(Duration(days: 7)).isAfter(DateTime.now())) {
        int index = (order.orderDate.weekday - 1) % 7;
        index = index < 0 ? index + 7 : index;

        weeklySales[index] += order.totalAmount ?? 0;
      }
    }
  }

  void _calculateOrderStatusData() {
    orderStatusData.clear();

    totalAmounts.value = {for (var status in OrderStatus.values) status: 0.0};

    for (var order in orders) {
      final status = order.status;
      orderStatusData[status] = (orderStatusData[status] ?? 0) + 1;

      totalAmounts[status] =
          (totalAmounts[status] ?? 0) + (order.totalAmount ?? 0);
    }
  }
}
