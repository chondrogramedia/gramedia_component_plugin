import 'package:flutter/material.dart';
import 'package:papilus_component_gramedia/Core/Color/Color.dart';

enum ElevationCase { elevation_1, elevation_2, elevation_3, elevation_4 }

class ElevationHelper {
  List<BoxShadow> get({required ElevationCase elevation}) {
    var neutral70 = Color(0xff323437);
    switch (elevation) {
      case ElevationCase.elevation_1:
        return [
          BoxShadow(
              offset: Offset(0, 1),
              color: neutral70.withOpacity(0.04),
              spreadRadius: 2,
              blurRadius: 4),
          BoxShadow(
              offset: Offset(0, 1),
              color: neutral70.withOpacity(0.10),
              spreadRadius: 0,
              blurRadius: 8)
        ];
      case ElevationCase.elevation_2:
        return [
          BoxShadow(
              offset: Offset(0, 4),
              color: neutral70.withOpacity(0.08),
              spreadRadius: 3,
              blurRadius: 8),
          BoxShadow(
              offset: Offset(0, 2),
              color: neutral70.withOpacity(0.20),
              spreadRadius: 0,
              blurRadius: 16)
        ];
      case ElevationCase.elevation_3:
        return [
          BoxShadow(
              offset: Offset(0, 8),
              color: neutral70.withOpacity(0.08),
              spreadRadius: 6,
              blurRadius: 12),
          BoxShadow(
              offset: Offset(0, 4),
              color: neutral70.withOpacity(0.20),
              spreadRadius: 0,
              blurRadius: 36)
        ];
      case ElevationCase.elevation_4:
        return [
          BoxShadow(
              offset: Offset(0, -1),
              color: neutral70.withOpacity(0.08),
              spreadRadius: 3,
              blurRadius: 8),
        ];
    }
  }
}
