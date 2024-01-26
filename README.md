# papilus_component_gramedia

Gramedia Base Component UI for Flutter.

## Getting Started

```
  dependencies:
  flutter:
    sdk: flutter

  papilus_component_gramedia:
    git:
      url: https://github.com/chondrogramedia/gramedia_component_plugin.git
      ref: main # branch name
```
## Gramedia Tabbar
<img src="https://github.com/chondrogramedia/gramedia_component_plugin/blob/main/documentation/tabbar_unscrolled.gif" width="128">

```
GramediaTabBar(
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.red),
                      tabs: List.generate(
                          values.length,
                          (index) => GramediaTab(
                              content: GramediaText("${values[index]}",
                                  fontStyle:
                                      UrbanistFont.mobile_text_2xs_extrabold))),
                    )
```
