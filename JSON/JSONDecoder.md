###### Catch different decoding errors:
```
do {
	let decodedResponse = try JSONDecoder().decode([User].self, from: data)
    users = decodedResponse
} catch DecodingError.dataCorrupted(let context) {
	print(context)
} catch DecodingError.keyNotFound(let key, let context) {
	print("Key '\(key)' not found:", context.debugDescription)
	print("codingPath:", context.codingPath)
} catch DecodingError.valueNotFound(let value, let context) {
	print("Value '\(value)' not found:", context.debugDescription)
	print("codingPath:", context.codingPath)
} catch DecodingError.typeMismatch(let type, let context) {
	print("Type '\(type)' mismatch:", context.debugDescription)
	print("codingPath:", context.codingPath)
} catch {
	print("error: ", error)
}
```
