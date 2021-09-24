//
//  DemoUIPreviewCatalogTests.swift
//  DemoUIPreviewCatalogTests
//
//  Created by Higashihara Yoki on 2021/09/19.
//

import XCTest
import UIPreviewCatalog
@testable import DemoUIPreviewCatalog

class DemoUIPreviewCatalogTests: XCTestCase {
    
    func testOutputUIPreviewCatalog() {
        let catalog = UIPreviewCatalog(config: .defaultConfig)
        do {
            try catalog.createCatalog(previewItems: previewItems)
        } catch {
            print(error.localizedDescription)
            XCTFail()
        }
    }
}
