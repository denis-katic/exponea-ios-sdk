//
//  GIFTest.swift
//  ExponeaSDKTests
//
//  Created by Michal Severín on 20.08.2024.
//  Copyright © 2024 Exponea. All rights reserved.
//

import Nimble
import Quick

@testable import ExponeaSDK

final class GIFTest: QuickSpec {

    private let gifImage =  """
            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
            """

    override func spec() {
        it("gif test") {
            let gifData = Data(base64Encoded: self.gifImage) ?? .init()
            let isGif = UIImage.isGif(data: gifData)
            expect(isGif).to(beTrue())
        }
    }
}