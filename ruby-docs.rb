STRING

>> A String object holds and manipulates an arbitrary sequence of bytes, typically representing characters.
String objects may be created using String::new or as literals.

length →
Returns the character length of str.

strip →
Returns a copy of str with leading and trailing whitespace removed.

split
Divides str into substrings based on a delimiter, returning an array of these substrings.

If pattern is a String, then its contents are used as the delimiter when splitting str.
If pattern is a single space, str is split on whitespace, with leading whitespace and runs of contiguous
whitespace characters ignored.

If pattern is a Regexp, str is divided where the pattern matches. Whenever the pattern matches a zero-length string,
str is split into individual characters. If pattern contains groups, the respective matches will be returned in the
array as well.

If pattern is omitted, the value of $; is used. If $; is nil (which is the default), str is split on whitespace as
if "` ‘" were specified.

If the limit parameter is omitted, trailing null fields are suppressed. If limit is a positive number,
at most that number of fields will be returned (if limit is 1, the entire string is returned as the only entry
in an array). If negative, there is no limit to the number of fields returned, and trailing null fields are not
suppressed.

When the input str is empty an empty Array is returned as the string is considered to have no fields to split.

start_with?([prefixes]+) → true or false
Returns true if str starts with one of the prefixes given.


ARRAY

>> Arrays are ordered, integer-indexed collections of any object.

first
Returns the first element, or the first n elements, of the array.
If the array is empty, the first form returns nil, and the second form returns an empty array.

delete_at(index) → obj or nil
Deletes the element at the specified index, returning that element, or nil if the index is out of range.

delete(obj) { block } → item or result of block
Deletes all items from self that are equal to obj.

Returns the last deleted item, or nil if no matching item is found.

If the optional code block is given, the result of the block is returned if the item is not found.
(To remove nil elements and get an informative return value, use #compact!)

pop → obj or nil
pop(n) → new_ary
Removes the last element from self and returns it, or nil if the array is empty.

If a number n is given, returns an array of the last n elements (or less) just like array.slice!(-n, n) does.
See also #push for the opposite effect.

HASH

>> A Hash is a dictionary-like collection of unique keys and their values.
Also called associative arrays, they are similar to Arrays, but where an Array uses integers as its index,
a Hash allows you to use any object type.
Hashes enumerate their values in the order that the corresponding keys were inserted.

to_a →
Converts hsh to a nested array of [ key, value ] arrays.

has_value?(value) → true or false
Returns true if the given value is present for some key in hsh.

has_key?(key) → true or false
Returns true if the given key is present in hsh.

TIME

>>Time is an abstraction of dates and times.

now → time
Creates a new Time object for the current time. This is same as ::new without arguments.

FILE

>>A File is an abstraction of any file object accessible by the program and is closely associated with
class IO File includes the methods of module FileTest as class methods, allowing you to write (for example)
  File.exist?("foo").


exist?(file_name) → true or false
Return true if the named file exists.

extname(path) →
Returns the extension (the portion of file name in path starting from the last period).

If path is a dotfile, or starts with a period, then the starting dot is not dealt with the start of the extension.

An empty string will also be returned when the period is the last character in path.
