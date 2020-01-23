# sticky_header_list
Sticky Header list for Flutter.

**DEPRECATED:** There was no sticky library when I created this. Hope it helped someone, but now there are better solutions out there, so please check them at pub.dev

https://pub.dev/packages/sticky_headers
https://pub.dev/packages/flutter_sticky_header

![](https://i.imgur.com/8M4nMcO.gif)


## Usage

You need to wrap your widgets with `StickyListRow`. Use `HeaderRow` for headers that sticks
and `RegularRow` for regular rows that scroll normally.

Height is optional, but if you include it, it will avoid usage of GlobalKeys to determine height: 

`new StickyRow(child: yourWidget, height: 20.0)`

Usage is similar to ListView. You can either supply list:

    new StickyList(
          children: <StickyListRow>[
            new HeaderRow(child: yourWidget),
            new RegularRow(child: yourWidget),
            new RegularRow(child: yourWidget),
            new HeaderRow(child: yourWidget),
            new RegularRow(child: yourWidget),
            /...
          ],
        );
        
Or you can use builder:

     new StickyList.builder(
          builder: (BuildContext context, int index) {
            if (something)
              return new HeaderRow(yourWidget)
            else
              return new RegularRow(yourWidget)
          },
          itemCount: 20,
        );
        
