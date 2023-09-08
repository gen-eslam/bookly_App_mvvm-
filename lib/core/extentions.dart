import 'package:flutter/material.dart';

import '../constants.dart';

extension RaduisSide on Side {
  BorderRadius radiusSide({required double radius}) {
    switch (this) {
      case Side.right:
        return BorderRadius.only(
          bottomRight: Radius.circular(radius),
          topRight: Radius.circular(radius),
        );
      case Side.lift:
        return BorderRadius.only(
          bottomLeft: Radius.circular(radius),
          topLeft: Radius.circular(radius),
        );
    }
  }
}
