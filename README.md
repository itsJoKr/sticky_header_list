# sticky_header_list
Sticky Header list for Flutter.

![](https://i.imgur.com/8M4nMcO.gifv)


## Usage

You need to wrap your widgets with `StickyListRow`. Use `HeaderRow` for headers that sticks
and `RegularRow` for regular rows that scroll normally.

Height is optional, but if you include it, it will avoid usage of GlobalKeys to determine height: 

`new StickyRow(child: yourWidget, height: 20.0)`

Usage is similar to ListView. You can either supply list:

    new StickyList(
          children: <StickyWidget>[
            new StickyRow(child: yourWidget),
            new RegularRow(child: yourWidget),
            new RegularRow(child: yourWidget),
            new StickyRow(child: yourWidget),
            new RegularRow(child: yourWidget),
            /...
          ],
        );
        
Or you can use builder:

    return new StickyList.builder(
          builder: (BuildContext context, int index) {
            if (something)
              return new StickyRow(yourWidget)
            else
              return new RegularRow(yourWidget)
          },
          itemCount: 20,
        );
        
