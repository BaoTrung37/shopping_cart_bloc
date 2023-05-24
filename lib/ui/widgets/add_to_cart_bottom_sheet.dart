// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:shoppingcart/ui/widgets/app_text_buton.dart';
import 'package:shoppingcart/ui/widgets/dialog/selected_number_dialog.dart';

Future<void> showAddToCartBottomSheet(
  BuildContext context, {
  required String imagePath,
  required String productTitle,
  required String productPrice,
  required VoidCallback onAddToCart,
  required ValueChanged<int> onAmountChanged,
}) async {
  await showModalBottomSheet(
    context: context,
    builder: (context) {
      var productImage = ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(14),
        ),
        child: Image(
          image: AssetImage(imagePath),
          height: 100,
          width: 100,
          fit: BoxFit.cover,
        ),
      );
      var productTitleText = Text(
        productTitle,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.bold,
          overflow: TextOverflow.ellipsis,
        ),
      );
      var closeButton = GestureDetector(
        onTap: () {
          Navigator.pop(context);
        },
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
        productPrice,
        style: TextStyle(
          fontSize: 16,
          color: Colors.amber[700],
          fontWeight: FontWeight.bold,
        ),
      );
      var addProductToCartButton = AppTextButton(
        onTap: onAddToCart,
        title: 'Add to card',
      );
      return Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(14),
            topRight: Radius.circular(14),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  productImage,
                  const SizedBox(width: 8),
                  Expanded(
                    child: Column(
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
                                  productTitle: productTitle,
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
              const SizedBox(height: 16),
              addProductToCartButton,
            ],
          ),
        ),
      );
    },
  );
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
