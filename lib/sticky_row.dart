import 'package:flutter/material.dart';
import 'sticky_header_list.dart';

/// Represents row for StickyList.
///
/// Check [HeaderRow] and [RegularRow]
abstract class StickyListRow {
  Widget child;
  double _height;
  GlobalKey _key;

  StickyListRow(Widget child, double height) {
    if (height == null) {
      this._key = new GlobalKey();
      this.child = new WrapStickyWidget(key: _key, child: child,);
    } else {
      this._height = height;
      this.child = child;
    }
  }

  double getHeight() {
    if (_height == null) {
      if (_key.currentContext != null) {
        _height = _key.currentContext.size.height;
      } else {
        throw new Exception("Tried to get context height of non-visible row");
      }
    }

    return _height;
  }

  bool isSticky() {
    if (this is HeaderRow) {
      return true;
    } else {
      return false;
    }
  }
}

/// Header row for list that sticks to top when scrolled
class HeaderRow extends StickyListRow {

  HeaderRow({Widget child, double height}) :
        super(child, height);
}

/// Regular row for list
class RegularRow extends StickyListRow {

  RegularRow({Widget child, double height}) :
        super(child, height);
}


