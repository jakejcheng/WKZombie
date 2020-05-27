//
// Error.swift
//
// Copyright (c) 2015 Mathias Koehnke (http://www.mathiaskoehnke.de)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

import Foundation

public protocol ErrorType { }

public enum NoError: ErrorType { }

public enum ActionError: ErrorType {
    case networkRequestFailure
    case notFound
    case parsingFailure
    case transformFailure
    case snapshotFailure
    case redirectFailure
    case submitFailure
    case setAttributeFailure
    case parseResultFailure
    case decodeResultFailure
    
    internal struct Static {
        static let DefaultStatusCodeSuccess : Int = 200
        static let DefaultStatusCodeError : Int = 500
    }
}

extension ActionError: CustomDebugStringConvertible {
    public var debugDescription: String {
        switch self {
        case .networkRequestFailure: return "Network Request Failure"
        case .notFound: return "Element Not Found"
        case .parsingFailure: return "Parsing Failure"
        case .transformFailure: return "Transform Failure"
        case .snapshotFailure: return "Snapshot Failure"
        case .redirectFailure: return "Redirect Failure"
        case .submitFailure: return "Submit Failure"
        case .setAttributeFailure: return "SetAttribute Failure"
        case .parseResultFailure: return "ParseResult Failure"
        case .decodeResultFailure: return "DecodeResult Failure"
        }
    }
}
