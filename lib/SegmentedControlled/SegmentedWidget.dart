import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/Core/WidgetSize/WidgetSize.dart';
import 'package:papilus_component_gramedia/SegmentedControlled/AdjustSize.dart';
import 'package:papilus_component_gramedia/SegmentedControlled/DividerSettings.dart';
import 'package:papilus_component_gramedia/SegmentedControlled/GramediaSegmentedController.dart';
import 'package:papilus_component_gramedia/SegmentedControlled/PanelAnimation.dart';
import 'package:papilus_component_gramedia/SegmentedControlled/SegmentedSettings.dart';
import 'package:papilus_component_gramedia/SegmentedControlled/SizeOffset.dart';

/// Example:
///
/// ```dart
/// CustomSlidingSegmentedControl<int>(
///   fromMax: true,
///   children: {
///     1: Text('Segmentation'),
///     2: Text('Max'),
///   },
///   thumbDecoration: BoxDecoration(
///     color: Colors.white,
///     boxShadow: [
///       BoxShadow(
///         color: Colors.black.withOpacity(.3),
///         blurRadius: 4.0,
///         spreadRadius: 1.0,
///         offset: Offset(
///           0.0,
///           2.0,
///         ),
///       ),
///     ],
///   ),
///   onValueChanged: (int value) {
///     print(value);
///   },
/// ),
/// ```
///
/// * `isStretch` - stretches CustomSlidingSegmentedControl to full width
/// * `onValueChanged` - on change current segment
/// * `children` - segment items map
/// * `isDisabled` - whether the switch control is disabled, default to false
/// * `initialValue` - initial segment
/// * `duration` - speed animation panel
/// * `curve` - curve for animated panel
/// * `innerPadding` - inner padding
/// * `fromMax` - gets the largest element, while the rest of the elements get its size
/// * `fixedWidth` - fixed width items
/// * `padding` - item padding
/// * `clipBehavior` - for container
/// * `decoration` - for decoration main panel
/// * `thumbDecoration` - for decoraton animation panel
/// * `height` - height panel
class GramediaSegmentedWidget<T> extends StatefulWidget {
  const GramediaSegmentedWidget({
    super.key,
    required this.children,
    this.isDisabled = false,
    required this.onValueChanged,
    this.initialValue,
    this.duration = const Duration(milliseconds: 200),
    this.curve = Curves.easeInOut,
    this.innerPadding = const EdgeInsets.all(2.0),
    this.padding = 12,
    this.fixedWidth,
    this.decoration = const BoxDecoration(color: CupertinoColors.systemGrey5),
    this.thumbDecoration = const BoxDecoration(color: Colors.white),
    this.isStretch = false,
    this.fromMax = false,
    this.isShowDivider = false,
    this.dividerSettings = const DividerSettings(),
    this.clipBehavior = Clip.none,
    this.height = 40,
    this.controller,
    this.customSegmentSettings,
    this.onHoverSegment,
    this.onOffsetScroll
  }) : assert(children.length != 0);
  final BoxDecoration? decoration;
  final BoxDecoration? thumbDecoration;
  final void Function (T value, double offset)? onOffsetScroll;
  final ValueChanged<T> onValueChanged;
  final void Function(T value, bool isHover)? onHoverSegment;
  final Duration duration;
  final Curve curve;
  final EdgeInsets innerPadding;
  final double padding;
  final double? fixedWidth;
  final Map<T, Widget> children;
  final bool isShowDivider;
  final DividerSettings dividerSettings;

  /// true if the switch control is disabled
  /// defalut to false
  final bool isDisabled;
  final bool isStretch;
  final T? initialValue;
  final bool fromMax;
  final Clip clipBehavior;

  final double? height;
  final GramediaSegmentedController<T>? controller;
  final SegmentedSettings? customSegmentSettings;

  @override
  _GramediaSegmentedWidgetState<T> createState() => _GramediaSegmentedWidgetState();
}

class _GramediaSegmentedWidgetState<T> extends State<GramediaSegmentedWidget<T>> {
  T? current;
  double? height;
  double offset = 0.0;
  Map<T?, double> sizes = {};
  bool hasTouch = false;
  double? maxSize;
  List<AdjustSize<T>> cacheItems = [];
  double differentOffset = 0.0;

  @override
  void initState() {
    widget.controller?.addListener(_controllerTap);
    super.initState();
    initialize();
  }

  @override
  void dispose() {
    widget.controller?.removeListener(_controllerTap);
    super.dispose();
  }

  @override
  void didUpdateWidget(covariant GramediaSegmentedWidget<T> oldWidget) {
    super.didUpdateWidget(oldWidget);

    final changeInitial = oldWidget.initialValue != widget.initialValue;

    final changeChildrenLength = oldWidget.children.length != widget.children.length;

    if (changeInitial || changeChildrenLength) {
      hasTouch = true;
      initialize(oldCurrent: current, isChangeInitial: changeInitial);
      for (final cache in cacheItems) {
        calculateSize(
          size: cache.size,
          item: cache.item,
          isCacheEnabled: false,
        );
      }
    }
  }

  void initialize({
    T? oldCurrent,
    bool isChangeInitial = false,
  }) {
    final List<T?> _list = widget.children.keys.toList();
    final _index = _list.indexOf(widget.initialValue);
    final _keys = _list.toList();

    if (!isChangeInitial && oldCurrent != null) {
      current = oldCurrent;
    } else {
      if (widget.initialValue != null) {
        current = _keys[_index];
      } else {
        current = _keys.first;
      }
    }
  }

  void calculateSize({required Size size, required MapEntry<T?, Widget> item, required bool isCacheEnabled}) {
    height ??= size.height;
    final Map<T?, double> _temp = {};
    _temp.putIfAbsent(item.key, () => widget.fixedWidth ?? size.width);

    if (widget.initialValue != null && widget.initialValue == item.key) {
      final _offset = sizeOffset<T>(
        current: current,
        items: widget.children.keys.toList(),
        sizes: sizes.values.toList(),
      );
      setState(() {
        offset = _offset;
      });
    }
    setState(() {
      if (isCacheEnabled) {
        cacheItems.add(AdjustSize<T>(item: item, size: size));
      }
      sizes = {...sizes, ..._temp};
      if (widget.fromMax) {
        maxSize = sizes.values.toList().reduce(max);
      }
    });
  }

  void _controllerTap() {
    if (widget.controller!.value == null || current == widget.controller!.value) {
      return;
    }

    final entry = widget.children.entries
        .where(
          (element) => element.key == widget.controller!.value,
        )
        .toList();
    if (entry.isEmpty) {
      return;
    }

    onTapItem(entry.first);
  }

  void onTapItem(MapEntry<T?, Widget> item) {
    // when the switch control is disabled
    // do nothing on tap item
    if (widget.isDisabled) {
      return;
    }
    if (!hasTouch) {
      setState(() => hasTouch = true);
    }
    setState(() => current = item.key);
    final List<T?> _keys = widget.children.keys.toList();
    final _offset = sizeOffset<T>(
      current: current,
      items: _keys,
      sizes: sizes.values.toList(),
    );
    differentOffset = _offset - offset;
    setState(() => offset = _offset);
    final _value = _keys[_keys.indexOf(current)]!;
    widget.onValueChanged(_value);
    if (widget.onOffsetScroll != null){
       widget.onOffsetScroll!(_value,differentOffset);
    }
    widget.controller?.value = current;
  }

  Widget _segmentItem(MapEntry<T, Widget> item) {
    return InkWell(
      onHover: (isHover) => widget.onHoverSegment?.call(item.key, isHover),
      onTap: () => onTapItem(item),
      mouseCursor: widget.customSegmentSettings?.mouseCursor,
      hoverColor: widget.customSegmentSettings?.hoverColor,
      overlayColor: widget.customSegmentSettings?.overlayColor,
      radius: widget.customSegmentSettings?.radius,
      splashColor: widget.customSegmentSettings?.splashColor,
      splashFactory: widget.customSegmentSettings?.splashFactory,
      highlightColor: widget.customSegmentSettings?.highlightColor,
      borderRadius: widget.customSegmentSettings?.borderRadius,
      child: Container(
        height: widget.height,
        width: maxSize ?? widget.fixedWidth,
        padding: EdgeInsets.symmetric(horizontal: widget.padding),
        child: Center(child: item.value),
      ),
    );
  }

  Widget _dividerItem(int index, MapEntry<T?, double> item) {
    final currentIndex = widget.children.keys.toList().indexOf(current!);
    int? prevIndex;
    if (currentIndex > 0) {
      prevIndex = currentIndex - 1;
    }

    final isHideDivider = (index == prevIndex || index == currentIndex) && widget.dividerSettings.isHideAutomatically;

    return IgnorePointer(
      child: SizedBox(
        height: widget.height,
        width: item.value,
        child: Stack(
          children: [
            if (item.key != widget.children.keys.last)
              Positioned(
                top: widget.dividerSettings.indent,
                bottom: widget.dividerSettings.endIndent,
                right: 0,
                child: Transform.translate(
                  offset: Offset(widget.dividerSettings.thickness / 2, 0),
                  child: AnimatedContainer(
                    padding: EdgeInsets.zero,
                    margin: EdgeInsets.zero,
                    curve: widget.dividerSettings.curve ?? widget.curve,
                    duration: widget.dividerSettings.duration ?? widget.duration,
                    width: isHideDivider ? 0 : widget.dividerSettings.thickness,
                    decoration: widget.dividerSettings.decoration ??
                        BoxDecoration(
                          color: Theme.of(context).dividerColor,
                        ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget layout() {
    return Container(
      clipBehavior: widget.clipBehavior,
      decoration: widget.decoration,
      padding: widget.innerPadding,
      child: Stack(
        children: [
          if (widget.isShowDivider && widget.children.length > 1)
            Row(
              children:
                  sizes.entries.toList().asMap().entries.map((item) => _dividerItem(item.key, item.value)).toList(),
            ),
          PanelAnimation<T>(
            hasTouch: hasTouch,
            offset: offset,
            height: height,
            width: sizes[current],
            duration: widget.duration,
            curve: widget.curve,
            decoration: widget.thumbDecoration,
          ),
          Row(
            children: [
              for (final item in widget.children.entries) ...[
                WidgetSize(
                  onChange: (value) {
                    calculateSize(
                      size: value,
                      item: item,
                      isCacheEnabled: true,
                    );
                  },
                  child: widget.isStretch ? Expanded(child: _segmentItem(item)) : _segmentItem(item),
                ),
              ],
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (widget.isStretch)
              Expanded(
                child: layout(),
              )
            else
              layout(),
          ],
        );
      },
    );
  }
}