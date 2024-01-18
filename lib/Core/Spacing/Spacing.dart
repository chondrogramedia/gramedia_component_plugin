enum Spacing {
  spacing_1,
  spacing_2,
  spacing_3,
  spacing_4,
  spacing_5,
  spacing_6,
  spacing_7,
  spacing_8,
  spacing_9,
  spacing_10,
  spacing_11,
  spacing_12,
  spacing_13,
  spacing_14,
  spacing_15
}

extension on Spacing {
  double get value {
    switch(this){
      case Spacing.spacing_1:
        return 4.0;
      case Spacing.spacing_2:
        return 8.0;
      case Spacing.spacing_3:
        return 12.0;
      case Spacing.spacing_4:
        return 16.0;
      case Spacing.spacing_5:
        return 20.0;
      case Spacing.spacing_6:
        return 24.0;
      case Spacing.spacing_7:
        return 28.0;
      case Spacing.spacing_8:
        return 32.0;
      case Spacing.spacing_9:
        return 40.0;
      case Spacing.spacing_10:
        return 48.0;
      case Spacing.spacing_11:
        return 64.0;
      case Spacing.spacing_12:
        return 80.0;
      case Spacing.spacing_13:
        return 96.0;
      case Spacing.spacing_14:
        return 128.0;
      case Spacing.spacing_15:
        return 160.0;
      default :
      return 0.0;
    }
  }
}

class SpacingHelper{
  double getvalue(Spacing spaceType) {
    switch(spaceType){
      case Spacing.spacing_1:
        return 4.0;
      case Spacing.spacing_2:
        return 8.0;
      case Spacing.spacing_3:
        return 12.0;
      case Spacing.spacing_4:
        return 16.0;
      case Spacing.spacing_5:
        return 20.0;
      case Spacing.spacing_6:
        return 24.0;
      case Spacing.spacing_7:
        return 28.0;
      case Spacing.spacing_8:
        return 32.0;
      case Spacing.spacing_9:
        return 40.0;
      case Spacing.spacing_10:
        return 48.0;
      case Spacing.spacing_11:
        return 64.0;
      case Spacing.spacing_12:
        return 80.0;
      case Spacing.spacing_13:
        return 96.0;
      case Spacing.spacing_14:
        return 128.0;
      case Spacing.spacing_15:
        return 160.0;
      default :
      return 0.0;
    }
  }
}