import 'package:flutter/material.dart';

class AdjustSize<T> {
  final MapEntry<T?,Widget> item;
  final Size size;

  AdjustSize({
    required this.item,
    required this.size
  });

  @override
  bool operator ==(Object other){
    if (other is AdjustSize){
      return identical(size, other.size) && identical(item, other.item);
    }
    return false;
  }

  @override
  int get hashCode => size.hashCode ^ item.hashCode;
}