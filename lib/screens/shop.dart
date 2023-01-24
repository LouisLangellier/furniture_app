import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  late TextEditingController _search;

  @override
  void initState() {
    _search = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _search.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.grey[500],
                      size: 30,
                    ),
                    const Text(
                      "saspik",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                    Icon(
                      Icons.shopping_cart_checkout,
                      color: Colors.grey[500],
                      size: 30,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30, left: 10, right: 10),
                child: Row(
                  children: [
                    Expanded(
                      child: Card(
                        elevation: 5,
                        child: TextFormField(
                          controller: _search,
                          // validator: (String? value) => value!.isEmpty
                          //     ? "Name field can not be empty"
                          //     : null,
                          textAlign: TextAlign.start,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: BorderSide.none),
                              hintText: "Search",
                              prefixIcon: const Icon(Icons.search)),
                        ),
                      ),
                    ),
                    Container(
                      height: 58,
                      width: 58,
                      decoration: BoxDecoration(
                        color: Colors.orange[500],
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5)),
                      ),
                      child: const Icon(
                        Icons.filter_alt,
                        color: Colors.white,
                        size: 32,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
