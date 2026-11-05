# LOGAI – AI Usage Record

## AI-001: Order Summary Screen

**Date:** 5 November 2026

**Tool Used:** ChatGPT

**Prompt:**
Create a Flutter Order Summary screen that displays the item name, quantity and total price. Use the existing `orderTotal` function from `lib/order.dart` to calculate the total. Include a Back button using `Navigator.pop(context)`.

**AI Output:**
Generated a Flutter `StatelessWidget` named `OrderSummaryScreen` with the required order details and navigation button.

**My Changes:**
- Used Vegetable Pizza as the sample order item.
- Set the quantity to 2 and unit price to RM12.50.
- Used `orderTotal(items)` to calculate the total.
- Added a Back button.
- Created widget tests for the Order Summary screen.

**Test Results:**
- `flutter test` – All 5 tests passed.
- `flutter analyze` – No issues found.

**Decision:** Accepted after reviewing the generated code and verifying the test results.