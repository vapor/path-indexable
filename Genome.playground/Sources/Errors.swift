
public enum JSONConvertibleError : ErrorType {
    case UnsupportedType(String)
    case UnableToConvert(json: Json, toType: String)
}

public enum MappingError : ErrorType {
    case UnableToMap(key: KeyType, error: ErrorType)
    case UnexpectedOperationType(String)
}

public enum SequenceError : ErrorType {
    case FoundNil(String)
    case UnexpectedValue(String)
}

public enum TransformationError : ErrorType {
    case UnexpectedInputType(String)
}

public enum RawConversionError : ErrorType {
    case UnableToConvertToJSON
    case UnableToConvertFromJSON(raw: Any, ofType: String, expected: String)
}

public enum Lazy : ErrorType {
    case Error(String)
}
