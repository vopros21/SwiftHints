### Parameters
- sortDescriptors: takes array of SortDesrciptor's and returns data in according order
- predicate: takes NSPredicate and filters results according it

##### predicate: NSPredicate(format: format)
Source: [Filtering @FetchRequest using NSPredicate](https://www.hackingwithswift.com/books/ios-swiftui/filtering-fetchrequest-using-nspredicate)
###### format:
- `"fieldname == 'pattern'"` - where fieldname is fieldtitle in Core Data, pattern is some string for comparison
- `"fieldname == %@", "pattern"` - the same as previous
- `"fieldname < %@", "pattern"`
- `"fieldname IN %@", ["pattern1", "pattern2", ...]`
- `"fieldname BEGINSWITH %@", "pattern"` - case sensitive
- `"fieldname BEGINSWITH[c] %@", "pattern"` - case insensitive
- `"fieldname CONTAINS %@", "pattern"` - case sensitive
- `"fieldname CONTAINS[c] %@", "pattern"` - case insensitive
- `"NOT fieldname BEGINSWITH %@", "pattern"` - negative filtration
- `"%K BEGINSWITH %@", "keyName", "pattern"` - add keyName for dynamic filtration
(source: [Dynamically filtering @FetchRequest](https://youtu.be/O4043RVjCGU?si=iWtU0dy5ZlQy3dz7))
