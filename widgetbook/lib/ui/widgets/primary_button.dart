import 'package:flutter/material.dart' as mat;
import 'package:flutter/widgets.dart';
import 'package:groceries_app/ui/ui.dart';
import 'package:widgetbook/widgetbook.dart';
import 'package:widgetbook_annotation/widgetbook_annotation.dart';

/// Add Widgetbook use-case here
@UseCase(
  name: 'Default',
  type: PrimaryButton,
)
Widget buildCoolButtonUseCase(BuildContext context) {
  final showTrailing = context.knobs.boolean(
    label: 'Show trailing',
  );
  final showLeading = context.knobs.boolean(
    label: 'Show leading',
  );

  final dropdown = context.knobs.list<String>(
    label: 'text amount',
    initialOption: 'short text',
    options: ['short text', 'long text text tete asf ijoasdf aasd fasd fasdf '],
  );

  return mat.Padding(
    padding: const EdgeInsets.all(12),
    child: PrimaryButton(
      content: dropdown,
      // content: context.knobs.string(label: 'Button Text', initialValue: 'Buy'),
      leading:
          showLeading ? const mat.Icon(mat.Icons.arrow_back_outlined) : null,
      trailing: showTrailing
          ? const mat.Icon(mat.Icons.arrow_forward_outlined)
          : null,
      onPressed: () {},
    ),
  );
}
