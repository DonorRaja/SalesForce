//
//  Constant.swift
//  ProServices
//
//  Created by Rajesh Kannan M on 7/6/17.
//  Copyright © 2017 Rajesh Kannan. All rights reserved.
//

import Foundation
import UIKit

struct proServices {
    
    struct URLs {
        static let baseUrl:String = "https://login.salesforce.com/"
        static let serviceBaseUrl = "https://na50.salesforce.com/services/"
    }
    
    struct subURLs {
        static let loginURL = "services/oauth2/token"
        static let serviceSubUrl = "apexrest/GetService?CustId="
        static let workOrderUrl = "data/v39.0/query/?q=select id,status, subject, casenumber from case where accountid ="
        static let phone = "\'(212) 842-5500\'"
        static let customerFetchUrl = "data/v39.0/query/?q=select id,name,billingaddress,accountnumber,phone from account where phone = \'(212) 842-5500\'"
        static let caseUrl = "data/v39.0/sobjects/case"
    }
    
   }
