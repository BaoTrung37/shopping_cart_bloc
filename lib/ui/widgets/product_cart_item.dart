import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoppingcart/models/product.dart';
import 'package:shoppingcart/ui/widgets/dialog/selected_number_dialog.dart';

class ProductCartItem extends StatelessWidget {
  const ProductCartItem({
    Key? key,
    required this.product,
    required this.onAmountChanged,
    required this.onRemoveTap,
    this.elevation = 1,
  }) : super(key: key);

  final Product product;
  final ValueChanged<int> onAmountChanged;
  final VoidCallback onRemoveTap;
  final double elevation;
  @override
  Widget build(BuildContext context) {
    var productImage = ClipRRect(
      borderRadius: const BorderRadius.all(
        Radius.circular(14),
      ),
      child: Image(
        image: AssetImage(product.imageUrl),
        height: 100,
        width: 100,
        fit: BoxFit.cover,
      ),
    );
    var productTitleText = Text(
      product.title,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 16,
        fontWeight: FontWeight.bold,
        overflow: TextOverflow.ellipsis,
      ),
    );
    var closeButton = GestureDetector(
      onTap: onRemoveTap,
      child: Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(6),
        ),
        child: SvgPicture.asset(
          'assets/icons/multiply.svg',
          width: 18,
          height: 18,
        ),
      ),
    );
    var productPriceText = Text(
      product.price.toString(),
      style: TextStyle(
        fontSize: 16,
        color: Colors.amber[700],
        fontWeight: FontWeight.bold,
      ),
    );

    return Card(
      elevation: elevation,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 14,
          horizontal: 16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                productImage,
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: productTitleText,
                          ),
                          const SizedBox(width: 4),
                          closeButton,
                        ],
                      ),
                      const SizedBox(height: 16),
                      Row(
                        children: [
                          _NumberPicker(
                            onChanged: (value) {
                              onAmountChanged.call(value);
                            },
                            onNumberTap: (value) async {
                              await showSelectNumberDialog(
                                context,
                                amount: value,
                                productTitle: product.title,
                                onAmountChanged: (value) {
                                  onAmountChanged.call(value);
                                },
                              );
                            },
                          ),
                          Expanded(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: productPriceText,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _NumberPicker extends StatefulWidget {
  final ValueChanged<int> onChanged;
  final Function(String) onNumberTap;

  const _NumberPicker({
    Key? key,
    required this.onChanged,
    required this.onNumberTap,
  }) : super(key: key);

  @override
  State<_NumberPicker> createState() => _NumberPickerState();
}

class _NumberPickerState extends State<_NumberPicker> {
  int _number = 1;

  void _increment() {
    if (_number == 999) return;
    widget.onChanged(_number + 1);
    setState(() {
      _number += 1;
    });
  }

  void _decrement() {
    if (_number == 1) return;
    widget.onChanged(_number - 1);
    setState(() {
      _number -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var decrementButton = GestureDetector(
      onTap: _decrement,
      child: Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(6),
            bottomLeft: Radius.circular(6),
          ),
        ),
        child: SvgPicture.asset(
          'assets/icons/minus.svg',
          width: 18,
          height: 18,
        ),
      ),
    );
    var amountText = GestureDetector(
      onTap: () => widget.onNumberTap.call(
        _number.toString(),
      ),
      child: Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
        ),
        child: SizedBox(
          height: 18,
          width: 30,
          child: Center(
            child: Text(
              _number.toString(),
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
    var incrementButton = GestureDetector(
      onTap: _increment,
      child: Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(6),
            bottomRight: Radius.circular(6),
          ),
        ),
        child: SvgPicture.asset(
          'assets/icons/plus.svg',
          width: 18,
          height: 18,
        ),
      ),
    );
    return Row(
      children: [
        decrementButton,
        amountText,
        incrementButton,
      ],
    );
  }
}
