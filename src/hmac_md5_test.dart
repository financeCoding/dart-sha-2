// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// Library tag to allow the test to run on Dartium.
library hmac_md5_test;

import "../lib/expect.dart";
import '../dart-src/crypto.dart';

// Data from http://tools.ietf.org/html/rfc2202.
var hmac_md5_inputs =
    const [
      const [ 0x48, 0x69, 0x20, 0x54, 0x68, 0x65, 0x72, 0x65 ],
      const [ 0x77, 0x68, 0x61, 0x74, 0x20, 0x64, 0x6f, 0x20, 0x79, 0x61,
              0x20, 0x77, 0x61, 0x6e, 0x74, 0x20, 0x66, 0x6f, 0x72, 0x20,
              0x6e, 0x6f, 0x74, 0x68, 0x69, 0x6e, 0x67, 0x3f ],
      const [ 0xdd, 0xdd, 0xdd, 0xdd, 0xdd, 0xdd, 0xdd, 0xdd, 0xdd, 0xdd,
              0xdd, 0xdd, 0xdd, 0xdd, 0xdd, 0xdd, 0xdd, 0xdd, 0xdd, 0xdd,
              0xdd, 0xdd, 0xdd, 0xdd, 0xdd, 0xdd, 0xdd, 0xdd, 0xdd, 0xdd,
              0xdd, 0xdd, 0xdd, 0xdd, 0xdd, 0xdd, 0xdd, 0xdd, 0xdd, 0xdd,
              0xdd, 0xdd, 0xdd, 0xdd, 0xdd, 0xdd, 0xdd, 0xdd, 0xdd, 0xdd ],
      const [ 0xcd, 0xcd, 0xcd, 0xcd, 0xcd, 0xcd, 0xcd, 0xcd, 0xcd, 0xcd,
              0xcd, 0xcd, 0xcd, 0xcd, 0xcd, 0xcd, 0xcd, 0xcd, 0xcd, 0xcd,
              0xcd, 0xcd, 0xcd, 0xcd, 0xcd, 0xcd, 0xcd, 0xcd, 0xcd, 0xcd,
              0xcd, 0xcd, 0xcd, 0xcd, 0xcd, 0xcd, 0xcd, 0xcd, 0xcd, 0xcd,
              0xcd, 0xcd, 0xcd, 0xcd, 0xcd, 0xcd, 0xcd, 0xcd, 0xcd, 0xcd ],
      const [ 0x54, 0x65, 0x73, 0x74, 0x20, 0x57, 0x69, 0x74, 0x68, 0x20,
              0x54, 0x72, 0x75, 0x6e, 0x63, 0x61, 0x74, 0x69, 0x6f, 0x6e ],
      const [ 0x54, 0x65, 0x73, 0x74, 0x20, 0x55, 0x73, 0x69, 0x6e, 0x67,
              0x20, 0x4c, 0x61, 0x72, 0x67, 0x65, 0x72, 0x20, 0x54, 0x68,
              0x61, 0x6e, 0x20, 0x42, 0x6c, 0x6f, 0x63, 0x6b, 0x2d, 0x53,
              0x69, 0x7a, 0x65, 0x20, 0x4b, 0x65, 0x79, 0x20, 0x2d, 0x20,
              0x48, 0x61, 0x73, 0x68, 0x20, 0x4b, 0x65, 0x79, 0x20, 0x46,
              0x69, 0x72, 0x73, 0x74 ],
      const [ 0x54, 0x65, 0x73, 0x74, 0x20, 0x55, 0x73, 0x69, 0x6e, 0x67,
              0x20, 0x4c, 0x61, 0x72, 0x67, 0x65, 0x72, 0x20, 0x54, 0x68,
              0x61, 0x6e, 0x20, 0x42, 0x6c, 0x6f, 0x63, 0x6b, 0x2d, 0x53,
              0x69, 0x7a, 0x65, 0x20, 0x4b, 0x65, 0x79, 0x20, 0x61, 0x6e,
              0x64, 0x20, 0x4c, 0x61, 0x72, 0x67, 0x65, 0x72, 0x20, 0x54,
              0x68, 0x61, 0x6e, 0x20, 0x4f, 0x6e, 0x65, 0x20, 0x42, 0x6c,
              0x6f, 0x63, 0x6b, 0x2d, 0x53, 0x69, 0x7a, 0x65, 0x20, 0x44,
              0x61, 0x74, 0x61 ] ];

var hmac_md5_keys =
    const [ const [0x0b, 0x0b, 0x0b, 0x0b, 0x0b, 0x0b, 0x0b, 0x0b, 0x0b,
                   0x0b, 0x0b, 0x0b, 0x0b, 0x0b, 0x0b, 0x0b],
            const [ 0x4a, 0x65, 0x66, 0x65 ],
            const [0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa,
                   0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa],
            const [ 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07, 0x08, 0x09, 0x0a,
                    0x0b, 0x0c, 0x0d, 0x0e, 0x0f, 0x10, 0x11, 0x12, 0x13, 0x14,
                    0x15, 0x16, 0x17, 0x18, 0x19 ],
            const [ 0x0c, 0x0c, 0x0c, 0x0c, 0x0c, 0x0c, 0x0c, 0x0c, 0x0c, 0x0c,
                    0x0c, 0x0c, 0x0c, 0x0c, 0x0c, 0x0c ],
            const [ 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa,
                    0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa,
                    0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa,
                    0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa,
                    0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa,
                    0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa,
                    0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa,
                    0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa,
                    0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa ],
            const [ 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa,
                    0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa,
                    0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa,
                    0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa,
                    0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa,
                    0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa,
                    0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa,
                    0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa,
                    0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa, 0xaa ] ];

var hmac_md5_string_macs =
    const [ '9294727a3638bb1c13f48ef8158bfc9d',
            '750c783e6ab0b503eaa86e310a5db738',
            '56be34521d144c88dbb8c733f0e8b3f6',
            '697eaf0aca3a3aea3a75164746ffaa79',
            '56461ef2342edc00f9bab995690efd4c',
            '6b1ab7fe4bd7bf8f0b62e6ce61b9d0cd',
            '6f630fad67cda0ee1fb1f562db3aa53e' ];

var hmac_md5_macs =
    const [ const [0x92, 0x94, 0x72, 0x7a, 0x36, 0x38, 0xbb, 0x1c, 0x13, 0xf4,
                   0x8e, 0xf8, 0x15, 0x8b, 0xfc, 0x9d],
            const [0x75, 0x0c, 0x78, 0x3e, 0x6a, 0xb0, 0xb5, 0x03, 0xea, 0xa8,
                   0x6e, 0x31, 0x0a, 0x5d, 0xb7, 0x38],
            const [0x56, 0xbe, 0x34, 0x52, 0x1d, 0x14, 0x4c, 0x88, 0xdb, 0xb8,
                   0xc7, 0x33, 0xf0, 0xe8, 0xb3, 0xf6],
            const [0x69, 0x7e, 0xaf, 0x0a, 0xca, 0x3a, 0x3a, 0xea, 0x3a, 0x75,
                   0x16, 0x47, 0x46, 0xff, 0xaa, 0x79],
            const [0x56, 0x46, 0x1e, 0xf2, 0x34, 0x2e, 0xdc, 0x00, 0xf9, 0xba,
                   0xb9, 0x95, 0x69, 0x0e, 0xfd, 0x4c],
            const [0x6b, 0x1a, 0xb7, 0xfe, 0x4b, 0xd7, 0xbf, 0x8f, 0x0b, 0x62,
                   0xe6, 0xce, 0x61, 0xb9, 0xd0, 0xcd],
            const [0x6f, 0x63, 0x0f, 0xad, 0x67, 0xcd, 0xa0, 0xee, 0x1f, 0xb1,
                   0xf5, 0x62, 0xdb, 0x3a, 0xa5, 0x3e]];

void testStandardVectors(inputs, keys, string_macs, macs) {
  for (var i = 0; i < inputs.length; i++) {
    var h = new HMAC(new MD5(), keys[i]);
    h.add(inputs[i]);
    var d = h.close();
    Expect.isTrue(CryptoUtils.bytesToHex(d).startsWith(string_macs[i]), '$i');
    Expect.isTrue(h.verify(macs[i]));
    Expect.isFalse(h.verify(macs[(i+1)%macs.length]));
    Expect.throws(() => h.verify([]));
  }
}

void main() {
  testStandardVectors(hmac_md5_inputs, hmac_md5_keys,
                      hmac_md5_string_macs, hmac_md5_macs);
}
