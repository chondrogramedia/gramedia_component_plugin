import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/GramediaComponent.dart';

class ListButtonView extends StatefulWidget {
  const ListButtonView({super.key});

  @override
  State<ListButtonView> createState() => _ListButtonViewState();
}

class _ListButtonViewState extends State<ListButtonView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              GramediaButton(
                child: GramediaText(
                  "Button",
                  fontStyle: UrbanistFont.mobile_text_s_extrabold,
                  color: Colors.white,
                ),
                background: GramediaColor.brand500,
                onPressed: () {},
                priority: ButtonPriority.primary,
              ),
              GramediaButton(
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                child: GramediaText(
                  "Button",
                  fontStyle: UrbanistFont.mobile_text_s_extrabold,
                  color: Colors.white,
                ),
                background: GramediaColor.brand500,
                onPressed: () {},
                priority: ButtonPriority.primary,
              ),
              GramediaButton(
                child: GramediaText(
                  "Button",
                  fontStyle: UrbanistFont.mobile_text_s_extrabold,
                  color: Colors.white,
                ),
                background: GramediaColor.brand500,
                onPressed: null,
                priority: ButtonPriority.primary,
              ),
              GramediaButton(
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                child: GramediaText(
                  "Button",
                  fontStyle: UrbanistFont.mobile_text_s_extrabold,
                  color: Colors.white,
                ),
                background: GramediaColor.brand500,
                onPressed: null,
                priority: ButtonPriority.primary,
              )
            ],
          ),
          Column(
            children: [
              GramediaButton(
                child: Text("Button"),
                onPressed: () {},
                priority: ButtonPriority.secondary,
              ),
              GramediaButton(
                  icon: Icon(
                    Icons.add,
                  ),
                  child: Text("Button"),
                  onPressed: () {},
                  priority: ButtonPriority.secondary),
              GramediaButton(
                child: Text("Button"),
                onPressed: null,
                priority: ButtonPriority.secondary,
              ),
              GramediaButton(
                  icon: Icon(
                    Icons.add,
                  ),
                  child: Text("Button"),
                  onPressed: null,
                  priority: ButtonPriority.secondary)
            ],
          ),
          Column(
            children: [
              GramediaButton(
                child: Text("Button"),
                onPressed: () {},
                priority: ButtonPriority.tertiery,
              ),
              GramediaButton(
                  icon: Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                  child: Text("Button"),
                  onPressed: () {},
                  priority: ButtonPriority.tertiery),
              GramediaButton(
                child: Text("Button"),
                onPressed: null,
                priority: ButtonPriority.tertiery,
              ),
              GramediaButton(
                  icon: Icon(
                    Icons.add,
                  
                  ),
                  child: Text("Button"),
                  onPressed: null,
                  priority: ButtonPriority.tertiery)
            ],
          )
        ],
      ),
    );
  }
}
