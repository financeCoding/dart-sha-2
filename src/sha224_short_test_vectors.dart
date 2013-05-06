// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

part of sha224_test;

// Standard test vectors from:
//   http://csrc.nist.gov/groups/STM/cavp/documents/shs/shabytetestvectors.zip

const sha224_short_inputs = const [
const [ ],
const [ 0xd3 ],
const [ 0x11, 0xaf ],
const [ 0xb4, 0x19, 0x0e ],
const [ 0x74, 0xba, 0x25, 0x21 ],
const [ 0xc2, 0x99, 0x20, 0x96, 0x82 ],
const [ 0xe1, 0xdc, 0x72, 0x4d, 0x56, 0x21 ],
const [ 0x06, 0xe0, 0x76, 0xf5, 0xa4, 0x42, 0xd5 ],
const [ 0x57, 0x38, 0xc9, 0x29, 0xc4, 0xf4, 0xcc, 0xb6 ],
const [ 0x33, 0x34, 0xc5, 0x80, 0x75, 0xd3, 0xf4, 0x13, 0x9e ],
const [ 0x74, 0xcb, 0x93, 0x81, 0xd8, 0x9f, 0x5a, 0xa7, 0x33, 0x68 ],
const [ 0x76, 0xed, 0x24, 0xa0, 0xf4, 0x0a, 0x41, 0x22, 0x1e, 0xbf, 0xcf ],
const [ 0x9b, 0xaf, 0x69, 0xcb, 0xa3, 0x17, 0xf4, 0x22, 0xfe, 0x26, 0xa9, 0xa0 ],
const [ 0x68, 0x51, 0x1c, 0xdb, 0x2d, 0xbb, 0xf3, 0x53, 0x0d, 0x7f, 0xb6, 0x1c, 0xbc ],
const [ 0xaf, 0x39, 0x7a, 0x8b, 0x8d, 0xd7, 0x3a, 0xb7, 0x02, 0xce, 0x8e, 0x53, 0xaa, 0x9f ],
const [ 0x29, 0x4a, 0xf4, 0x80, 0x2e, 0x5e, 0x92, 0x5e, 0xb1, 0xc6, 0xcc, 0x9c, 0x72, 0x4f, 0x09 ],
const [ 0x0a, 0x27, 0x84, 0x7c, 0xdc, 0x98, 0xbd, 0x6f, 0x62, 0x22, 0x0b, 0x04, 0x6e, 0xdd, 0x76, 0x2b ],
const [ 0x1b, 0x50, 0x3f, 0xb9, 0xa7, 0x3b, 0x16, 0xad, 0xa3, 0xfc, 0xf1, 0x04, 0x26, 0x23, 0xae, 0x76, 0x10 ],
const [ 0x59, 0xeb, 0x45, 0xbb, 0xbe, 0xb0, 0x54, 0xb0, 0xb9, 0x73, 0x34, 0xd5, 0x35, 0x80, 0xce, 0x03, 0xf6, 0x99 ],
const [ 0x58, 0xe5, 0xa3, 0x25, 0x9c, 0xb0, 0xb6, 0xd1, 0x2c, 0x83, 0xf7, 0x23, 0x37, 0x9e, 0x35, 0xfd, 0x29, 0x8b, 0x60 ],
const [ 0xc1, 0xef, 0x39, 0xce, 0xe5, 0x8e, 0x78, 0xf6, 0xfc, 0xdc, 0x12, 0xe0, 0x58, 0xb7, 0xf9, 0x02, 0xac, 0xd1, 0xa9, 0x3b ],
const [ 0x9c, 0xab, 0x7d, 0x7d, 0xca, 0xec, 0x98, 0xcb, 0x3a, 0xc6, 0xc6, 0x4d, 0xd5, 0xd4, 0x47, 0x0d, 0x0b, 0x10, 0x3a, 0x81, 0x0c ],
const [ 0xea, 0x15, 0x7c, 0x02, 0xeb, 0xaf, 0x1b, 0x22, 0xde, 0x22, 0x1b, 0x53, 0xf2, 0x35, 0x39, 0x36, 0xd2, 0x35, 0x9d, 0x1e, 0x1c, 0x97 ],
const [ 0xda, 0x99, 0x9b, 0xc1, 0xf9, 0xc7, 0xac, 0xff, 0x32, 0x82, 0x8a, 0x73, 0xe6, 0x72, 0xd0, 0xa4, 0x92, 0xf6, 0xee, 0x89, 0x5c, 0x68, 0x67 ],
const [ 0x47, 0x99, 0x13, 0x01, 0x15, 0x6d, 0x1d, 0x97, 0x7c, 0x03, 0x38, 0xef, 0xbc, 0xad, 0x41, 0x00, 0x41, 0x33, 0xae, 0xfb, 0xca, 0x6b, 0xcf, 0x7e ],
const [ 0x2e, 0x7e, 0xa8, 0x4d, 0xa4, 0xbc, 0x4d, 0x7c, 0xfb, 0x46, 0x3e, 0x3f, 0x2c, 0x86, 0x47, 0x05, 0x7a, 0xff, 0xf3, 0xfb, 0xec, 0xec, 0xa1, 0xd2, 0x00 ],
const [ 0x47, 0xc7, 0x70, 0xeb, 0x45, 0x49, 0xb6, 0xef, 0xf6, 0x38, 0x1d, 0x62, 0xe9, 0xbe, 0xb4, 0x64, 0xcd, 0x98, 0xd3, 0x41, 0xcc, 0x1c, 0x09, 0x98, 0x1a, 0x7a ],
const [ 0xac, 0x4c, 0x26, 0xd8, 0xb4, 0x3b, 0x85, 0x79, 0xd8, 0xf6, 0x1c, 0x98, 0x07, 0x02, 0x6e, 0x83, 0xe9, 0xb5, 0x86, 0xe1, 0x15, 0x9b, 0xd4, 0x3b, 0x85, 0x19, 0x37 ],
const [ 0x07, 0x77, 0xfc, 0x1e, 0x1c, 0xa4, 0x73, 0x04, 0xc2, 0xe2, 0x65, 0x69, 0x28, 0x38, 0x10, 0x9e, 0x26, 0xaa, 0xb9, 0xe5, 0xc4, 0xae, 0x4e, 0x86, 0x00, 0xdf, 0x4b, 0x1f ],
const [ 0x1a, 0x57, 0x25, 0x1c, 0x43, 0x1d, 0x4e, 0x6c, 0x2e, 0x06, 0xd6, 0x52, 0x46, 0xa2, 0x96, 0x91, 0x50, 0x71, 0xa5, 0x31, 0x42, 0x5e, 0xcf, 0x25, 0x59, 0x89, 0x42, 0x2a, 0x66 ],
const [ 0x9b, 0x24, 0x5f, 0xda, 0xd9, 0xba, 0xeb, 0x89, 0x0d, 0x9c, 0x0d, 0x0e, 0xff, 0x81, 0x6e, 0xfb, 0x4c, 0xa1, 0x38, 0x61, 0x0b, 0xc7, 0xd7, 0x8c, 0xb1, 0xa8, 0x01, 0xed, 0x32, 0x73 ],
const [ 0x95, 0xa7, 0x65, 0x80, 0x9c, 0xaf, 0x30, 0xad, 0xa9, 0x0a, 0xd6, 0xd6, 0x1c, 0x2b, 0x4b, 0x30, 0x25, 0x0d, 0xf0, 0xa7, 0xce, 0x23, 0xb7, 0x75, 0x3c, 0x91, 0x87, 0xf4, 0x31, 0x9c, 0xe2 ],
const [ 0x09, 0xfc, 0x1a, 0xcc, 0xc2, 0x30, 0xa2, 0x05, 0xe4, 0xa2, 0x08, 0xe6, 0x4a, 0x8f, 0x20, 0x42, 0x91, 0xf5, 0x81, 0xa1, 0x27, 0x56, 0x39, 0x2d, 0xa4, 0xb8, 0xc0, 0xcf, 0x5e, 0xf0, 0x2b, 0x95 ],
const [ 0x05, 0x46, 0xf7, 0xb8, 0x68, 0x2b, 0x5b, 0x95, 0xfd, 0x32, 0x38, 0x5f, 0xaf, 0x25, 0x85, 0x4c, 0xb3, 0xf7, 0xb4, 0x0c, 0xc8, 0xfa, 0x22, 0x9f, 0xbd, 0x52, 0xb1, 0x69, 0x34, 0xaa, 0xb3, 0x88, 0xa7 ],
const [ 0xb1, 0x2d, 0xb4, 0xa1, 0x02, 0x55, 0x29, 0xb3, 0xb7, 0xb1, 0xe4, 0x5c, 0x6d, 0xbc, 0x7b, 0xaa, 0x88, 0x97, 0xa0, 0x57, 0x6e, 0x66, 0xf6, 0x4b, 0xf3, 0xf8, 0x23, 0x61, 0x13, 0xa6, 0x27, 0x6e, 0xe7, 0x7d ],
const [ 0xe6, 0x8c, 0xb6, 0xd8, 0xc1, 0x86, 0x6c, 0x0a, 0x71, 0xe7, 0x31, 0x3f, 0x83, 0xdc, 0x11, 0xa5, 0x80, 0x9c, 0xf5, 0xcf, 0xbe, 0xed, 0x1a, 0x58, 0x7c, 0xe9, 0xc2, 0xc9, 0x2e, 0x02, 0x2a, 0xbc, 0x16, 0x44, 0xbb ],
const [ 0x4e, 0x3d, 0x8a, 0xc3, 0x6d, 0x61, 0xd9, 0xe5, 0x14, 0x80, 0x83, 0x11, 0x55, 0xb2, 0x53, 0xb3, 0x79, 0x69, 0xfe, 0x7e, 0xf4, 0x9d, 0xb3, 0xb3, 0x99, 0x26, 0xf3, 0xa0, 0x0b, 0x69, 0xa3, 0x67, 0x74, 0x36, 0x60, 0x00 ],
const [ 0x03, 0xb2, 0x64, 0xbe, 0x51, 0xe4, 0xb9, 0x41, 0x86, 0x4f, 0x9b, 0x70, 0xb4, 0xc9, 0x58, 0xf5, 0x35, 0x5a, 0xac, 0x29, 0x4b, 0x4b, 0x87, 0xcb, 0x03, 0x7f, 0x11, 0xf8, 0x5f, 0x07, 0xeb, 0x57, 0xb3, 0xf0, 0xb8, 0x95, 0x50 ],
const [ 0xd0, 0xfe, 0xfd, 0x96, 0x78, 0x7c, 0x65, 0xff, 0xa7, 0xf9, 0x10, 0xd6, 0xd0, 0xad, 0xa6, 0x3d, 0x64, 0xd5, 0xc4, 0x67, 0x99, 0x60, 0xe7, 0xf0, 0x6a, 0xeb, 0x8c, 0x70, 0xdf, 0xef, 0x95, 0x4f, 0x8e, 0x39, 0xef, 0xdb, 0x62, 0x9b ],
const [ 0xb7, 0xc7, 0x9d, 0x7e, 0x5f, 0x1e, 0xec, 0xcd, 0xfe, 0xdf, 0x0e, 0x7b, 0xf4, 0x3e, 0x73, 0x0d, 0x44, 0x7e, 0x60, 0x7d, 0x8d, 0x14, 0x89, 0x82, 0x3d, 0x09, 0xe1, 0x12, 0x01, 0xa0, 0xb1, 0x25, 0x80, 0x39, 0xe7, 0xbd, 0x48, 0x75, 0xb1 ],
const [ 0x64, 0xcd, 0x36, 0x3e, 0xcc, 0xe0, 0x5f, 0xdf, 0xda, 0x24, 0x86, 0xd0, 0x11, 0xa3, 0xdb, 0x95, 0xb5, 0x20, 0x6a, 0x19, 0xd3, 0x05, 0x40, 0x46, 0x81, 0x9d, 0xd0, 0xd3, 0x67, 0x83, 0x95, 0x5d, 0x7e, 0x5b, 0xf8, 0xba, 0x18, 0xbf, 0x73, 0x8a ],
const [ 0x6a, 0xc6, 0xc6, 0x3d, 0x61, 0x8e, 0xaf, 0x00, 0xd9, 0x1c, 0x5e, 0x28, 0x07, 0xe8, 0x3c, 0x09, 0x39, 0x12, 0xb8, 0xe2, 0x02, 0xf7, 0x8e, 0x13, 0x97, 0x03, 0x49, 0x8a, 0x79, 0xc6, 0x06, 0x7f, 0x54, 0x49, 0x7c, 0x61, 0x27, 0xa2, 0x39, 0x10, 0xa6 ],
const [ 0xd2, 0x68, 0x26, 0xdb, 0x9b, 0xae, 0xaa, 0x89, 0x26, 0x91, 0xb6, 0x89, 0x00, 0xb9, 0x61, 0x63, 0x20, 0x8e, 0x80, 0x6a, 0x1d, 0xa0, 0x77, 0x42, 0x9e, 0x45, 0x4f, 0xa0, 0x11, 0x84, 0x09, 0x51, 0xa0, 0x31, 0x32, 0x7e, 0x60, 0x5a, 0xb8, 0x2e, 0xcc, 0xe2 ],
const [ 0x3f, 0x7a, 0x05, 0x9b, 0x65, 0xd6, 0xcb, 0x02, 0x49, 0x20, 0x4a, 0xac, 0x10, 0xb9, 0xf1, 0xa4, 0xac, 0x9e, 0x58, 0x68, 0xad, 0xeb, 0xbe, 0x93, 0x5a, 0x9e, 0xb5, 0xb9, 0x01, 0x9e, 0x1c, 0x93, 0x8b, 0xfc, 0x4e, 0x5c, 0x53, 0x78, 0x99, 0x7a, 0x39, 0x47, 0xf2 ],
const [ 0x60, 0xff, 0xcb, 0x23, 0xd6, 0xb8, 0x8e, 0x48, 0x5b, 0x92, 0x0a, 0xf8, 0x1d, 0x10, 0x83, 0xf6, 0x29, 0x1d, 0x06, 0xac, 0x8c, 0xa3, 0xa9, 0x65, 0xb8, 0x59, 0x14, 0xbc, 0x2a, 0xdd, 0x40, 0x54, 0x4a, 0x02, 0x7f, 0xca, 0x93, 0x6b, 0xbd, 0xe8, 0xf3, 0x59, 0x05, 0x1c ],
const [ 0x9e, 0xcd, 0x07, 0xb6, 0x84, 0xbb, 0x9e, 0x0e, 0x66, 0x92, 0xe3, 0x20, 0xce, 0xc4, 0x51, 0x0c, 0xa7, 0x9f, 0xcd, 0xb3, 0xa2, 0x21, 0x2c, 0x26, 0xd9, 0x0d, 0xf6, 0x5d, 0xb3, 0x3e, 0x69, 0x2d, 0x07, 0x3c, 0xc1, 0x74, 0x84, 0x0d, 0xb7, 0x97, 0x50, 0x4e, 0x48, 0x2e, 0xef ],
const [ 0x9d, 0x64, 0xde, 0x71, 0x61, 0x89, 0x58, 0x84, 0xe7, 0xfa, 0x3d, 0x6e, 0x9e, 0xb9, 0x96, 0xe7, 0xeb, 0xe5, 0x11, 0xb0, 0x1f, 0xe1, 0x9c, 0xd4, 0xa6, 0xb3, 0x32, 0x2e, 0x80, 0xaa, 0xf5, 0x2b, 0xf6, 0x44, 0x7e, 0xd1, 0x85, 0x4e, 0x71, 0x00, 0x1f, 0x4d, 0x54, 0xf8, 0x93, 0x1d ],
const [ 0xc4, 0xad, 0x3c, 0x5e, 0x78, 0xd9, 0x17, 0xec, 0xb0, 0xcb, 0xbc, 0xd1, 0xc4, 0x81, 0xfc, 0x2a, 0xaf, 0x23, 0x2f, 0x7e, 0x28, 0x97, 0x79, 0xf4, 0x0e, 0x50, 0x4c, 0xc3, 0x09, 0x66, 0x2e, 0xe9, 0x6f, 0xec, 0xbd, 0x20, 0x64, 0x7e, 0xf0, 0x0e, 0x46, 0x19, 0x9f, 0xbc, 0x48, 0x2f, 0x46 ],
const [ 0x4e, 0xef, 0x51, 0x07, 0x45, 0x9b, 0xdd, 0xf8, 0xf2, 0x4f, 0xc7, 0x65, 0x6f, 0xd4, 0x89, 0x6d, 0xa8, 0x71, 0x1d, 0xb5, 0x04, 0x00, 0xc0, 0x16, 0x48, 0x47, 0xf6, 0x92, 0xb8, 0x86, 0xce, 0x8d, 0x7f, 0x4d, 0x67, 0x39, 0x50, 0x90, 0xb3, 0x53, 0x4e, 0xfd, 0x7b, 0x0d, 0x29, 0x8d, 0xa3, 0x4b ],
const [ 0x04, 0x7d, 0x27, 0x58, 0xe7, 0xc2, 0xc9, 0x62, 0x3f, 0x9b, 0xdb, 0x93, 0xb6, 0x59, 0x7c, 0x5e, 0x84, 0xa0, 0xcd, 0x34, 0xe6, 0x10, 0x01, 0x4b, 0xcb, 0x25, 0xb4, 0x9e, 0xd0, 0x5c, 0x7e, 0x35, 0x6e, 0x98, 0xc7, 0xa6, 0x72, 0xc3, 0xdd, 0xdc, 0xae, 0xb8, 0x43, 0x17, 0xef, 0x61, 0x4d, 0x34, 0x2f ],
const [ 0x3d, 0x83, 0xdf, 0x37, 0x17, 0x2c, 0x81, 0xaf, 0xd0, 0xde, 0x11, 0x51, 0x39, 0xfb, 0xf4, 0x39, 0x0c, 0x22, 0xe0, 0x98, 0xc5, 0xaf, 0x4c, 0x5a, 0xb4, 0x85, 0x24, 0x06, 0x51, 0x0b, 0xc0, 0xe6, 0xcf, 0x74, 0x17, 0x69, 0xf4, 0x44, 0x30, 0xc5, 0x27, 0x0f, 0xda, 0xe0, 0xcb, 0x84, 0x9d, 0x71, 0xcb, 0xab ],
const [ 0x33, 0xfd, 0x9b, 0xc1, 0x7e, 0x2b, 0x27, 0x1f, 0xa0, 0x4c, 0x6b, 0x93, 0xc0, 0xbd, 0xea, 0xe9, 0x86, 0x54, 0xa7, 0x68, 0x2d, 0x31, 0xd9, 0xb4, 0xda, 0xb7, 0xe6, 0xf3, 0x2c, 0xd5, 0x8f, 0x2f, 0x14, 0x8a, 0x68, 0xfb, 0xe7, 0xa8, 0x8c, 0x5a, 0xb1, 0xd8, 0x8e, 0xdc, 0xcd, 0xde, 0xb3, 0x0a, 0xb2, 0x1e, 0x5e ],
const [ 0x77, 0xa8, 0x79, 0xcf, 0xa1, 0x1d, 0x7f, 0xca, 0xc7, 0xa8, 0x28, 0x2c, 0xc3, 0x8a, 0x43, 0xdc, 0xf3, 0x76, 0x43, 0xcc, 0x90, 0x98, 0x37, 0x21, 0x3b, 0xd6, 0xfd, 0x95, 0xd9, 0x56, 0xb2, 0x19, 0xa1, 0x40, 0x6c, 0xbe, 0x73, 0xc5, 0x2c, 0xd5, 0x6c, 0x60, 0x0e, 0x55, 0xb7, 0x5b, 0xc3, 0x7e, 0xa6, 0x96, 0x41, 0xbc ],
const [ 0x45, 0xa3, 0xe6, 0xb8, 0x65, 0x27, 0xf2, 0x0b, 0x45, 0x37, 0xf5, 0xaf, 0x96, 0xcf, 0xc5, 0xad, 0x87, 0x77, 0xa2, 0xdd, 0xe6, 0xcf, 0x75, 0x11, 0x88, 0x6c, 0x55, 0x90, 0xec, 0xe2, 0x4f, 0xc6, 0x1b, 0x22, 0x67, 0x39, 0xd2, 0x07, 0xda, 0xbf, 0xe3, 0x2b, 0xa6, 0xef, 0xd9, 0xff, 0x4c, 0xd5, 0xdb, 0x1b, 0xd5, 0xea, 0xd3 ],
const [ 0x25, 0x36, 0x2a, 0x4b, 0x9d, 0x74, 0xbd, 0xe6, 0x12, 0x8c, 0x4f, 0xdc, 0x67, 0x23, 0x05, 0x90, 0x09, 0x47, 0xbc, 0x3a, 0xda, 0x9d, 0x9d, 0x31, 0x6e, 0xbc, 0xf1, 0x66, 0x7a, 0xd4, 0x36, 0x31, 0x89, 0x93, 0x72, 0x51, 0xf1, 0x49, 0xc7, 0x2e, 0x06, 0x4a, 0x48, 0x60, 0x8d, 0x94, 0x0b, 0x75, 0x74, 0xb1, 0x7f, 0xef, 0xc0, 0xdf ],
const [ 0x3e, 0xbf, 0xb0, 0x6d, 0xb8, 0xc3, 0x8d, 0x5b, 0xa0, 0x37, 0xf1, 0x36, 0x3e, 0x11, 0x85, 0x50, 0xaa, 0xd9, 0x46, 0x06, 0xe2, 0x68, 0x35, 0xa0, 0x1a, 0xf0, 0x50, 0x78, 0x53, 0x3c, 0xc2, 0x5f, 0x2f, 0x39, 0x57, 0x3c, 0x04, 0xb6, 0x32, 0xf6, 0x2f, 0x68, 0xc2, 0x94, 0xab, 0x31, 0xf2, 0xa3, 0xe2, 0xa1, 0xa0, 0xd8, 0xc2, 0xbe, 0x51 ],
const [ 0x2d, 0x52, 0x44, 0x7d, 0x12, 0x44, 0xd2, 0xeb, 0xc2, 0x86, 0x50, 0xe7, 0xb0, 0x56, 0x54, 0xba, 0xd3, 0x5b, 0x3a, 0x68, 0xee, 0xdc, 0x7f, 0x85, 0x15, 0x30, 0x6b, 0x49, 0x6d, 0x75, 0xf3, 0xe7, 0x33, 0x85, 0xdd, 0x1b, 0x00, 0x26, 0x25, 0x02, 0x4b, 0x81, 0xa0, 0x2f, 0x2f, 0xd6, 0xdf, 0xfb, 0x6e, 0x6d, 0x56, 0x1c, 0xb7, 0xd0, 0xbd, 0x7a ],
const [ 0x4c, 0xac, 0xe4, 0x22, 0xe4, 0xa0, 0x15, 0xa7, 0x54, 0x92, 0xb3, 0xb3, 0xbb, 0xfb, 0xdf, 0x37, 0x58, 0xea, 0xff, 0x4f, 0xe5, 0x04, 0xb4, 0x6a, 0x26, 0xc9, 0x0d, 0xac, 0xc1, 0x19, 0xfa, 0x90, 0x50, 0xf6, 0x03, 0xd2, 0xb5, 0x8b, 0x39, 0x8c, 0xad, 0x6d, 0x6d, 0x9f, 0xa9, 0x22, 0xa1, 0x54, 0xd9, 0xe0, 0xbc, 0x43, 0x89, 0x96, 0x82, 0x74, 0xb0 ],
const [ 0x86, 0x20, 0xb8, 0x6f, 0xbc, 0xaa, 0xce, 0x4f, 0xf3, 0xc2, 0x92, 0x1b, 0x84, 0x66, 0xdd, 0xd7, 0xba, 0xca, 0xe0, 0x7e, 0xef, 0xef, 0x69, 0x3c, 0xf1, 0x77, 0x62, 0xdc, 0xab, 0xb8, 0x9a, 0x84, 0x01, 0x0f, 0xc9, 0xa0, 0xfb, 0x76, 0xce, 0x1c, 0x26, 0x59, 0x3a, 0xd6, 0x37, 0xa6, 0x12, 0x53, 0xf2, 0x24, 0xd1, 0xb1, 0x4a, 0x05, 0xad, 0xdc, 0xca, 0xbe ],
const [ 0xd1, 0xbe, 0x3f, 0x13, 0xfe, 0xba, 0xfe, 0xfc, 0x14, 0x41, 0x4d, 0x9f, 0xb7, 0xf6, 0x93, 0xdb, 0x16, 0xdc, 0x1a, 0xe2, 0x70, 0xc5, 0xb6, 0x47, 0xd8, 0x0d, 0xa8, 0x58, 0x35, 0x87, 0xc1, 0xad, 0x8c, 0xb8, 0xcb, 0x01, 0x82, 0x43, 0x24, 0x41, 0x1c, 0xa5, 0xac, 0xe3, 0xca, 0x22, 0xe1, 0x79, 0xa4, 0xff, 0x49, 0x86, 0xf3, 0xf2, 0x11, 0x90, 0xf3, 0xd7, 0xf3 ],
const [ 0xf4, 0x99, 0xcc, 0x3f, 0x6e, 0x3c, 0xf7, 0xc3, 0x12, 0xff, 0xdf, 0xba, 0x61, 0xb1, 0x26, 0x0c, 0x37, 0x12, 0x9c, 0x1a, 0xfb, 0x39, 0x10, 0x47, 0x19, 0x33, 0x67, 0xb7, 0xb2, 0xed, 0xeb, 0x57, 0x92, 0x53, 0xe5, 0x1d, 0x62, 0xba, 0x6d, 0x91, 0x1e, 0x7b, 0x81, 0x8c, 0xca, 0xe1, 0x55, 0x3f, 0x61, 0x46, 0xea, 0x78, 0x0f, 0x78, 0xe2, 0x21, 0x9f, 0x62, 0x93, 0x09 ],
const [ 0x6d, 0xd6, 0xef, 0xd6, 0xf6, 0xca, 0xa6, 0x3b, 0x72, 0x9a, 0xa8, 0x18, 0x6e, 0x30, 0x8b, 0xc1, 0xbd, 0xa0, 0x63, 0x07, 0xc0, 0x5a, 0x2c, 0x0a, 0xe5, 0xa3, 0x68, 0x4e, 0x6e, 0x46, 0x08, 0x11, 0x74, 0x86, 0x90, 0xdc, 0x2b, 0x58, 0x77, 0x59, 0x67, 0xcf, 0xcc, 0x64, 0x5f, 0xd8, 0x20, 0x64, 0xb1, 0x27, 0x9f, 0xdc, 0xa7, 0x71, 0x80, 0x3d, 0xb9, 0xdc, 0xa0, 0xff, 0x53 ],
const [ 0x65, 0x11, 0xa2, 0x24, 0x2d, 0xdb, 0x27, 0x31, 0x78, 0xe1, 0x9a, 0x82, 0xc5, 0x7c, 0x85, 0xcb, 0x05, 0xa6, 0x88, 0x7f, 0xf2, 0x01, 0x4c, 0xf1, 0xa3, 0x1c, 0xb9, 0xba, 0x5d, 0xf1, 0x69, 0x5a, 0xad, 0xb2, 0x5c, 0x22, 0xb3, 0xc5, 0xed, 0x51, 0xc1, 0x0d, 0x04, 0x7d, 0x25, 0x6b, 0x8e, 0x34, 0x42, 0x84, 0x2a, 0xe4, 0xe6, 0xc5, 0x25, 0xf8, 0xd7, 0xa5, 0xa9, 0x44, 0xaf, 0x2a ],
const [ 0xe2, 0xf7, 0x6e, 0x97, 0x60, 0x6a, 0x87, 0x2e, 0x31, 0x74, 0x39, 0xf1, 0xa0, 0x3f, 0xcd, 0x92, 0xe6, 0x32, 0xe5, 0xbd, 0x4e, 0x7c, 0xbc, 0x4e, 0x97, 0xf1, 0xaf, 0xc1, 0x9a, 0x16, 0xfd, 0xe9, 0x2d, 0x77, 0xcb, 0xe5, 0x46, 0x41, 0x6b, 0x51, 0x64, 0x0c, 0xdd, 0xb9, 0x2a, 0xf9, 0x96, 0x53, 0x4d, 0xfd, 0x81, 0xed, 0xb1, 0x7c, 0x44, 0x24, 0xcf, 0x1a, 0xc4, 0xd7, 0x5a, 0xce, 0xeb ],
const [ 0x5a, 0x86, 0xb7, 0x37, 0xea, 0xea, 0x8e, 0xe9, 0x76, 0xa0, 0xa2, 0x4d, 0xa6, 0x3e, 0x7e, 0xd7, 0xee, 0xfa, 0xd1, 0x8a, 0x10, 0x1c, 0x12, 0x11, 0xe2, 0xb3, 0x65, 0x0c, 0x51, 0x87, 0xc2, 0xa8, 0xa6, 0x50, 0x54, 0x72, 0x08, 0x25, 0x1f, 0x6d, 0x42, 0x37, 0xe6, 0x61, 0xc7, 0xbf, 0x4c, 0x77, 0xf3, 0x35, 0x39, 0x03, 0x94, 0xc3, 0x7f, 0xa1, 0xa9, 0xf9, 0xbe, 0x83, 0x6a, 0xc2, 0x85, 0x09 ],
];

const sha224_short_mds = const [
'd14a028c2a3a2bc9476102bb288234c415a2b01f828ea62ac5b3e42f',
'244eeeb91219c6e02a6fd45f19e21fe4d7a4696e32e7e4f292ecf177',
'e35cfb635c524ebb2bc494ea26773e7b359118bc4a0866f390377e0c',
'babc27de531c0a27e94686281f540d7ad66101b92675b01b352d4492',
'4d692cabcefaead680adfff19f1418f1e78bc70a152b64543775166c',
'50daabcb6e012f33f204b40ba34a0f1ab1af462b8c41b1d9a1bd52f0',
'0a5004ea5b0ebcef5774567710bbdc248acc3fc7af7520d204217ed1',
'15f241d06023f716a6632ddb949bda64655c1024ecaeca475735a96a',
'32a7350c6e9948eb65a62e1e58ef23fed777c79e769eab02d2252f83',
'b4f6ebaf57cf2bf715c4b5337a81315123c80a1e0372fa51cdd525e4',
'8acbcf2ded082846d8325f675f5e5ef69a72faeb40d1c2ab39530356',
'6801c466bb853e44c93f99d06cf9223a7468b75ff3c41248ff8cf483',
'f0e4f821749e95769d74a806e2d8b8079010188aa50a4ea899e60c75',
'e9c31b577901ef4386f4ee8fcdbc7bb992c99527a7c83deb9834cc50',
'd57a59278d3a7e79e05f55a3315653dd3f8abeebe7aa0b4cef216c45',
'853ab1e6e0e6e32ac15246a0cdfab0b47827b572918948fbea3f2ae6',
'd00be63800c32f5c924356b7807fead13eebbaf5a1282767a55966f2',
'f0f72189b30a1b5eae29d0b4d2cac18369257b56c82f79dd888e163b',
'324cac92b4c06eaa6f0f952c54cc349d23a3cf253890b3b3619136c6',
'4715d962c9bcb105123c02fac870635a3de71be582adc9dec2d915c3',
'9ac7dadc4eb5e6ce523969bcc32e08dbcd7eeff4604f89b8a8eb41d6',
'53d3c09cec490b1144cc6a96ed9392fa9c6f13f545a52c57c791924f',
'9dbba6bd68537efeb59d4ccf11397fb0d360dacf4fec9ca6c13b82f0',
'b2045f7f27e4d402a458e8d9722811217282addb345309b705614b5e',
'79b4ccde0ce58c92a1a03f5ccd1e257c8ac2ab4b685696b51890c9ef',
'b73ce9ed9c6e2f4575be55d2fa7225a43926e05af31a201f2eac4272',
'e5fc0eb0210ee235248e32b5d0a6b26a498246fc665f66ed99619be6',
'112173dae44dd80dac2c8b4cc2fdc06f32534a27398757969e7e88c6',
'4e882cb2a88f1226577ed3ae988baea1d8627c14a2be6477c3861818',
'1134b6008b13233cb33add55a1fac83bbdeb0f95c0b8dbfff0d80339',
'ad34c16236e847e9da799b34bf52ded7277e82461741c915fcec46dd',
'6de781e673f8e438775f1ce90e53afa848c4da2915f9843fe0c68cf2',
'5fd27fc7034f07fada7fe36a03c50f7790dccb8b1a0fe1532306cd8e',
'3d9207d80297a00b82deda291eb170dadf610650f76d92117a81e3a9',
'1b6cc19bd4dcbc3b0e258efcf6b291251eb3a3f6cebaaa06afa0317b',
'c7428e13243bab33d1e8407139120255cc7c4264c51cdca322ddc71f',
'831c664957d42058fced7850120f7bda9fb67a1bd1971903c9504854',
'aaf869f10c9c2699bed6eb61842af6b92457d60bad1b47bacf96ca42',
'48ca1e3bf7a824ce2153abd49dfb83d6be92f26b5217f0471767ee63',
'1b98f6ee37151e06202435c8f1d70aff380334f8b6f92cc863e1c1c5',
'0a4e9cf7e17fb3ef49fa6238d785233e23d33d3e44c9ecc28ac57ef9',
'5acf359dc5efbfd5b28529c4fbff4d0509a410e84ea9d5335fddbe60',
'249503861dbfd8f4f454f5fed9358541d2016fa16e1487503477488e',
'7acdbc66b82144be0179f03cfdbd72fc805a696a2fad12021ca7accd',
'f2d9d14d6ccbfa0ab9984c08834734f396a8f28f7a7600c5ca2bf5bf',
'7b8c136aba7dfa2826c20d22e0a31b50a3ee1294f5fa7cd82ee5a9e9',
'dd0ad99b081bdda27856095c5d643b668e9f27ed7362c99ef2301c38',
'ab92a517efd12f169ec2e18ddebab71dfa6471b74e175078ba56d19d',
'd7f35ff630d206bc62ec319bf8afde9f0d59be4e04e12b0113861df8',
'378432709ce4cb228ac80692f7db4c166538b43ff9f4c6a8c57fb748',
'ab8248f3a0c63703b58778722c6303b7fe81fb5f751ec5cb20f0ea42',
'a159c52962ae4ab0621a7ea5c51f740436d91ff1ff838bfc978997a1',
'74b46307348459c456822a45e48c5cc0cb83e23570f195175653c9b7',
'f194a5d4c3e18a6aecc25940778363f809c5a3644879db9e34bec46a',
'88daf7f7400ad7f8b854043b7d687bd34821f9c30941f78b2aa0c7b9',
'9acb0ec0187f9ace3758212dbb180e4e7f49de7eb89c0230970d02c5',
'c9c38fe96b39fbd5bde2c73658630eb2677ac50157ae4a97217aa9d0',
'8c70da3e19838550ead06da503fe56a05c3c6dae404c4bf5fef64611',
'280300cf76276bdb36aef35796eb6823a40ef186556a4ff3e142211a',
'a9c3a22fca79909761a6cbf28bdc1ff7355d8fd32e8462ada844ced4',
'b3fbce360b60e4b0771577525266512a3daa71cb0642cf16592a05db',
'cab26fee9cb1b3bbc4b0d8d5db042134e97afdb81e57cda7bbc415b4',
'306d9c06cbf1e3da71b8bef9d5c0aa3a7c5200e5f8ec6cae7626253d',
'a14ebec7d3cbc3590ce2c4de19071f39d6857b49c315e32f6ed92a5b',
'43de3651c979b69a9a8ed50220dada7389db879ae0e571f1474bb1d6'
];