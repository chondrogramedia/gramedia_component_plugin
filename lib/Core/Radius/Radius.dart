enum RadiusCase {
  radius_2XS,
  radius_XS,
  radius_S,
  radius_M,
  radius_L,
  radius_XL,
  radius_2XL,
  radius_3XL,
  radius_4XL,
  radius_5XL,
  radius_infinity
}

extension MyRadiusCase on RadiusCase {
  double get value {
    switch (this) {
      case RadiusCase.radius_2XS:
        return 4.0;
      case RadiusCase.radius_XS:
        return 8.0;
      case RadiusCase.radius_S:
        return 12.0;
      case RadiusCase.radius_M:
        return 16.0;
      case RadiusCase.radius_L:
        return 24.0;
      case RadiusCase.radius_XL:
        return 32.0;
      case RadiusCase.radius_2XL:
        return 40.0;
      case RadiusCase.radius_3XL:
        return 48.0;
      case RadiusCase.radius_4XL:
        return 56.0;
      case RadiusCase.radius_5XL:
        return 64.0;
      case RadiusCase.radius_infinity:
        return 1000.0;
      default:
        return 0.0;
    }
  }
}

class RadiusHelper {
  double radius(RadiusCase type) {
    switch (type) {
      case RadiusCase.radius_2XS:
        return 4.0;
      case RadiusCase.radius_XS:
        return 8.0;
      case RadiusCase.radius_S:
        return 12.0;
      case RadiusCase.radius_M:
        return 16.0;
      case RadiusCase.radius_L:
        return 24.0;
      case RadiusCase.radius_XL:
        return 32.0;
      case RadiusCase.radius_2XL:
        return 40.0;
      case RadiusCase.radius_3XL:
        return 48.0;
      case RadiusCase.radius_4XL:
        return 56.0;
      case RadiusCase.radius_5XL:
        return 64.0;
      case RadiusCase.radius_infinity:
        return 1000.0;
      default:
        return 0.0;
    }
  }
}
