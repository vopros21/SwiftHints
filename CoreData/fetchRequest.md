### Parameters
- sortDescriptors: takes array of SortDesrciptor's and returns data in according order
- predicate: takes NSPredicate and filters results according it

##### predicate: NSPredicate(format: format)
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
