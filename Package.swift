// swift-tools-version: 6.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
	name: "spfk-mkvparser",
	products: [
		.library(
			name: "mkvparser",
			targets: [
				"mkvparser",
			]),
	],
	targets: [
		.target(
			name: "mkvparser",
			cxxSettings: [
				.headerSearchPath("."),
			]),
	],
	cxxLanguageStandard: .cxx17
)
