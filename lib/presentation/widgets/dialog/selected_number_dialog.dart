import 'package:flutter/material.dart';
import 'package:shoppingcart/presentation/widgets/app_text_buton.dart';

Future<bool?> showSelectNumberDialog(
  BuildContext context, {
  required String productTitle,
  required String amount,
  required ValueChanged<int> onAmountChanged,
}) async {
  return showDialog(
    context: context,
    builder: (context) => _ContentSelectNumberDialog(
      productTitle: productTitle,
      amount: amount,
      onAmountChanged: onAmountChanged,
    ),
  );
}

class _ContentSelectNumberDialog extends StatefulWidget {
  const _ContentSelectNumberDialog({
    Key? key,
    required this.amount,
    required this.productTitle,
    required this.onAmountChanged,
  }) : super(key: key);

  final String amount;
  final String productTitle;
  final ValueChanged<int> onAmountChanged;

  @override
  State<_ContentSelectNumberDialog> createState() =>
      _ContentSelectNumberDialogState();
}

class _ContentSelectNumberDialogState
    extends State<_ContentSelectNumberDialog> {
  late final TextEditingController _controller;
  final _formKey = GlobalKey<FormState>();
  bool _isButtonActive = true;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.amount);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  bool _isButtonActived() {
    final isValid = _formKey.currentState?.validate() ?? false;
    return isValid;
  }

  @override
  Widget build(BuildContext context) {
    var productTitle = Text(
      widget.productTitle,
      style: const TextStyle(
        fontSize: 20,
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    );
    var textFormField = TextFormField(
      controller: _controller,
      autofocus: true,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onFieldSubmitted: (value) {
        //
      },
      onChanged: (value) {
        setState(() {
          _isButtonActive = _isButtonActived();
        });
      },
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter amount';
        }
        late int number;
        try {
          number = int.tryParse(value) ?? 1;
        } catch (e) {
          number = 1;
        }
        if (number < 1) {
          return 'Quantity must be greater than 0';
        } else if (number > 999) {
          return 'Quantity cannot exceed 999';
        }
        return null;
      },
      decoration: const InputDecoration(
        hintText: 'Enter amount',
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.orange, width: 1),
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        isDense: true,
      ),
      keyboardType: TextInputType.number,
    );
    var submitButton = AppTextButton(
      title: 'Submit',
      onTap: () {
        if (_formKey.currentState?.validate() ?? false) {
          final amount = int.tryParse(_controller.text) ?? 1;
          widget.onAmountChanged.call(amount);
          Navigator.pop(context);
        }
      },
      isActive: _isButtonActive,
    );
    return AlertDialog(
      shape: ShapeBorder.lerp(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        1,
      ),
      content: Container(
        color: Colors.white,
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              productTitle,
              const SizedBox(height: 16),
              textFormField,
              const SizedBox(height: 16),
              submitButton,
            ],
          ),
        ),
      ),
    );
  }
}
