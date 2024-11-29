import 'package:flutter/material.dart';
import '../../../sale/presentation/sale.provider.dart';
import '../../../../shared/widget/custom_button.widget.dart';
import '../../../../shared/widget/custom_body_bottom_sheet.widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<FormState> _formCreateSale = GlobalKey();
  final TextEditingController _nameSaleController = TextEditingController();
  final GlobalKey<FormState> _formJoinSale = GlobalKey();
  final TextEditingController _codeSaleController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const SizedBox(
              height: 250,
              width: 200,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Text(
                    'LOGO',
                    style: TextStyle(
                      fontSize: 60,
                    ),
                  ),
                  Placeholder(),
                ],
              ),
            ),
            const SizedBox(height: 60.0),
            CustomButton(
              text: 'Crear sala',
              onPressed: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) {
                    return CustomBodyBottomSheet(
                      title: 'Crear Sala',
                      label: 'Nombre de la Sala',
                      formKey: _formCreateSale,
                      controller: _nameSaleController,
                      validator: (value) {
                        if(value == null || value.isEmpty) return 'El nombre de la sala no puede estar vacío.';
                        if(value.length > 16) return 'El nombre de la sala no debe tener más de 16 caracteres';
                        return null;
                      },
                      onPressed: () async {
                        if(_formCreateSale.currentState!.validate()) {
                          await SaleProvider().createSale(_nameSaleController.text);
                          Navigator.pop(context);
                          Navigator.pushNamed(context, '/list-items');
                        }
                      },
                      buttonText: 'Crear',
                    );
                  },
                );
              },
            ),
            const SizedBox(height: 16.0),
            CustomButton(
              text: 'Unirme a una sala',
              onPressed: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                  builder: (context) {
                    return CustomBodyBottomSheet(
                      title: 'Unirme a la sala',
                      label: 'Código de la Sala',
                      formKey: _formJoinSale,
                      controller: _codeSaleController,
                      validator: (value) {
                        if(value == null || value.isEmpty) return 'El código de la sala no puede estar vacío.';
                        if(value.length != 20) return 'El código de la sala es inválido';
                        return null;
                      },
                      onPressed: () async {
                        if(_formJoinSale.currentState!.validate()) {
                          await SaleProvider().joinSale(_codeSaleController.text);
                          Navigator.pop(context);
                          Navigator.pushNamed(context, '/estimate');
                        }
                      },
                      buttonText: 'Unirme',
                    );
                  },
                );
              },
            ),
            const SizedBox(height: 32.0),
          ],
        ),
      )
    );
  }
}
