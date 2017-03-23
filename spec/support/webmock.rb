require "webmock/rspec"
WebMock.disable_net_connect!(allow_localhost: true)

RSpec.configure do |config|
  config.before(:each) do
    stub_request(:get, "https://sandbox.public.api.bunq.com/v1/user/1913")
      .to_return(status: 200, body: {
        "Response" => [
{
"UserCompany" => {
"id" => 1913,
"created" => "2017-03-15 01:11:12.838718",
"updated" => "2017-03-18 10:55:15.347224",
"alias" => [
{
"type" => "PHONE_NUMBER",
"value" => "+31682890601",
"name" => "+31682890601"
},
{
"type" => "EMAIL",
"value" => "bell-vof@bunq.nl",
"name" => "bell-vof@bunq.nl"
}
],
"avatar" => {
"uuid" => "646d3802-881e-415c-96f9-35397ce7cc9a",
"image" => [
{
"attachment_public_uuid" => "0d10b1c4-b249-4c49-a442-5379bae0a030",
"height" => 640,
"width" => 640,
"content_type" => "image/png"
}
],
"anchor_uuid" => "4d505093-2270-4638-b9b6-ac1389195e6b"
},
"status" => "ACTIVE",
"sub_status" => "NONE",
"public_uuid" => "4d505093-2270-4638-b9b6-ac1389195e6b",
"display_name" => "Stevens B.V.",
"public_nick_name" => "Stevens B.V.",
"language" => "nl_NL",
"region" => "nl_NL",
"session_timeout" => 604800,
"daily_limit_without_confirmation_login" => {
"currency" => "EUR",
"value" => "25"
},
"notification_filters" => [
{
"notification_delivery_method" => "PUSH",
"category" => "BILLING"
},
{
"notification_delivery_method" => "PUSH",
"category" => "CARD_TRANSACTION_FAILED"
},
{
"notification_delivery_method" => "PUSH",
"category" => "CARD_TRANSACTION_SUCCESSFUL"
},
{
"notification_delivery_method" => "PUSH",
"category" => "CHAT"
},
{
"notification_delivery_method" => "PUSH",
"category" => "DRAFT_PAYMENT"
},
{
"notification_delivery_method" => "PUSH",
"category" => "FRIEND_SIGN_UP"
},
{
"notification_delivery_method" => "PUSH",
"category" => "IDEAL"
},
{
"notification_delivery_method" => "PUSH",
"category" => "SOFORT"
},
{
"notification_delivery_method" => "PUSH",
"category" => "MONETARY_ACCOUNT_PROFILE"
},
{
"notification_delivery_method" => "PUSH",
"category" => "PAYMENT"
},
{
"notification_delivery_method" => "PUSH",
"category" => "PROMOTION"
},
{
"notification_delivery_method" => "PUSH",
"category" => "REQUEST"
},
{
"notification_delivery_method" => "PUSH",
"category" => "SCHEDULE_RESULT"
},
{
"notification_delivery_method" => "PUSH",
"category" => "SCHEDULE_STATUS"
},
{
"notification_delivery_method" => "PUSH",
"category" => "SHARE"
},
{
"notification_delivery_method" => "PUSH",
"category" => "SUPPORT"
},
{
"notification_delivery_method" => "PUSH",
"category" => "TAB_RESULT"
},
{
"notification_delivery_method" => "PUSH",
"category" => "USE_RESPONSE"
},
{
"notification_delivery_method" => "PUSH",
"category" => "USER_APPROVAL"
},
{
"notification_delivery_method" => "PUSH",
"category" => "WHITELIST"
},
{
"notification_delivery_method" => "PUSH",
"category" => "WHITELIST_RESULT"
},
{
"notification_delivery_method" => "PUSH",
"category" => "SLICE_CHAT"
},
{
"notification_delivery_method" => "PUSH",
"category" => "SLICE_REGISTRY_ENTRY"
},
{
"notification_delivery_method" => "PUSH",
"category" => "SLICE_REGISTRY_MEMBERSHIP"
},
{
"notification_delivery_method" => "PUSH",
"category" => "SLICE_REGISTRY_SETTLEMENT"
}
],
"address_main" => {
"street" => "Mason Cul de Sac",
"house_number" => "24",
"postal_code" => "3652 DD",
"city" => "'s-Hertogenbosch",
"country" => "NL",
"province" => nil
},
"address_postal" => {
"street" => "Mason Cul de Sac",
"house_number" => "24",
"postal_code" => "3652 DD",
"city" => "'s-Hertogenbosch",
"country" => "NL",
"province" => nil
},
"counter_bank_iban" => "NL91ABNA0417164300",
"name" => "Stevens B.V.",
"chamber_of_commerce_number" => "55209548",
"director_alias" => {
"uuid" => "28c29d6a-2300-4d9c-bccf-612ee5e40581",
"display_name" => "Niels (nickname)",
"country" => "000",
"avatar" => {
"uuid" => "6d945e1a-a7a0-4720-9c7a-1aaa1faa8737",
"image" => [
{
"attachment_public_uuid" => "be8fc1b0-d35a-42c1-bb24-5c6c488ab8d4",
"height" => 480,
"width" => 480,
"content_type" => "image/jpeg"
}
],
"anchor_uuid" => "28c29d6a-2300-4d9c-bccf-612ee5e40581"
},
"public_nick_name" => "Niels (nickname)"
},
"ubo" => [
{
"name" => "Anne Olsen",
"date_of_birth" => "1947-11-23",
"nationality" => "NL"
}
],
"version_terms_of_service" => "1.0",
"country" => "NL"
}
}
]
      }.to_json, headers: {})
    stub_request(:get, "https://sandbox.public.api.bunq.com/v1/user").
      to_return(status: 200, body: {
        "Response" => [
          {
          "UserCompany" => {
          "id" => 1913,
          "created" => "2017-03-15 01:11:12.838718",
          "updated" => "2017-03-18 10:55:15.347224",
          "alias" => [
          {
          "type" => "PHONE_NUMBER",
          "value" => "+31682890601",
          "name" => "+31682890601"
          },
          {
          "type" => "EMAIL",
          "value" => "bell-vof@bunq.nl",
          "name" => "bell-vof@bunq.nl"
          }
          ],
          "avatar" => {
          "uuid" => "646d3802-881e-415c-96f9-35397ce7cc9a",
          "image" => [
          {
          "attachment_public_uuid" => "0d10b1c4-b249-4c49-a442-5379bae0a030",
          "height" => 640,
          "width" => 640,
          "content_type" => "image/png"
          }
          ],
          "anchor_uuid" => "4d505093-2270-4638-b9b6-ac1389195e6b"
          },
          "status" => "ACTIVE",
          "sub_status" => "NONE",
          "public_uuid" => "4d505093-2270-4638-b9b6-ac1389195e6b",
          "display_name" => "Stevens B.V.",
          "public_nick_name" => "Stevens B.V.",
          "language" => "nl_NL",
          "region" => "nl_NL",
          "session_timeout" => 604800,
          "daily_limit_without_confirmation_login" => {
          "currency" => "EUR",
          "value" => "25"
          },
          "notification_filters" => [
          {
          "notification_delivery_method" => "PUSH",
          "category" => "BILLING"
          },
          {
          "notification_delivery_method" => "PUSH",
          "category" => "CARD_TRANSACTION_FAILED"
          },
          {
          "notification_delivery_method" => "PUSH",
          "category" => "CARD_TRANSACTION_SUCCESSFUL"
          },
          {
          "notification_delivery_method" => "PUSH",
          "category" => "CHAT"
          },
          {
          "notification_delivery_method" => "PUSH",
          "category" => "DRAFT_PAYMENT"
          },
          {
          "notification_delivery_method" => "PUSH",
          "category" => "FRIEND_SIGN_UP"
          },
          {
          "notification_delivery_method" => "PUSH",
          "category" => "IDEAL"
          },
          {
          "notification_delivery_method" => "PUSH",
          "category" => "SOFORT"
          },
          {
          "notification_delivery_method" => "PUSH",
          "category" => "MONETARY_ACCOUNT_PROFILE"
          },
          {
          "notification_delivery_method" => "PUSH",
          "category" => "PAYMENT"
          },
          {
          "notification_delivery_method" => "PUSH",
          "category" => "PROMOTION"
          },
          {
          "notification_delivery_method" => "PUSH",
          "category" => "REQUEST"
          },
          {
          "notification_delivery_method" => "PUSH",
          "category" => "SCHEDULE_RESULT"
          },
          {
          "notification_delivery_method" => "PUSH",
          "category" => "SCHEDULE_STATUS"
          },
          {
          "notification_delivery_method" => "PUSH",
          "category" => "SHARE"
          },
          {
          "notification_delivery_method" => "PUSH",
          "category" => "SUPPORT"
          },
          {
          "notification_delivery_method" => "PUSH",
          "category" => "TAB_RESULT"
          },
          {
          "notification_delivery_method" => "PUSH",
          "category" => "USE_RESPONSE"
          },
          {
          "notification_delivery_method" => "PUSH",
          "category" => "USER_APPROVAL"
          },
          {
          "notification_delivery_method" => "PUSH",
          "category" => "WHITELIST"
          },
          {
          "notification_delivery_method" => "PUSH",
          "category" => "WHITELIST_RESULT"
          },
          {
          "notification_delivery_method" => "PUSH",
          "category" => "SLICE_CHAT"
          },
          {
          "notification_delivery_method" => "PUSH",
          "category" => "SLICE_REGISTRY_ENTRY"
          },
          {
          "notification_delivery_method" => "PUSH",
          "category" => "SLICE_REGISTRY_MEMBERSHIP"
          },
          {
          "notification_delivery_method" => "PUSH",
          "category" => "SLICE_REGISTRY_SETTLEMENT"
          }
          ],
          "address_main" => {
          "street" => "Mason Cul de Sac",
          "house_number" => "24",
          "postal_code" => "3652 DD",
          "city" => "'s-Hertogenbosch",
          "country" => "NL",
          "province" => nil
          },
          "address_postal" => {
          "street" => "Mason Cul de Sac",
          "house_number" => "24",
          "postal_code" => "3652 DD",
          "city" => "'s-Hertogenbosch",
          "country" => "NL",
          "province" => nil
          },
          "counter_bank_iban" => "NL91ABNA0417164300",
          "name" => "Stevens B.V.",
          "chamber_of_commerce_number" => "55209548",
          "director_alias" => {
          "uuid" => "28c29d6a-2300-4d9c-bccf-612ee5e40581",
          "display_name" => "Niels (nickname)",
          "country" => "000",
          "avatar" => {
          "uuid" => "6d945e1a-a7a0-4720-9c7a-1aaa1faa8737",
          "image" => [
          {
          "attachment_public_uuid" => "be8fc1b0-d35a-42c1-bb24-5c6c488ab8d4",
          "height" => 480,
          "width" => 480,
          "content_type" => "image/jpeg"
          }
          ],
          "anchor_uuid" => "28c29d6a-2300-4d9c-bccf-612ee5e40581"
          },
          "public_nick_name" => "Niels (nickname)"
          },
          "ubo" => [
          {
          "name" => "Anne Olsen",
          "date_of_birth" => "1947-11-23",
          "nationality" => "NL"
          }
          ],
          "version_terms_of_service" => "1.0",
          "country" => "NL"
          }
          }
          ],
          "Pagination" => {
          "future_url" => "/v1/user?newer_id=1913",
          "newer_url" => nil,
          "older_url" => nil
          }
      }.to_json, headers: {})

    stub_request(:get, /https:\/\/sandbox.public.api.bunq.com\/v1\/device\/.*/).
      to_return(status: 200, body: {
        "Response" => [
          {
            "DeviceServer" => {
              "id" => 2348,
              "created" => "2017-03-15 01:11:16.865607",
              "updated" => "2017-03-15 01:11:16.865607",
              "ip" => "10.8.0.51",
              "description" => "Generated device",
              "status" => "ACTIVE"
            }
          }
        ]
      }.to_json, headers: {})
    stub_request(:get, "https://sandbox.public.api.bunq.com/v1/device").
      to_return(status: 200, body: {
        "Response" => [
          {
            "DeviceServer" => {
              "id" => 2348,
              "created" => "2017-03-15 01:11:16.865607",
              "updated" => "2017-03-15 01:11:16.865607",
              "ip" => "10.8.0.51",
              "description" => "Generated device",
              "status" => "ACTIVE"
            }
          }
        ],
        "Pagination" => {
          "future_url" => "/v1/device?newer_id=2348",
          "newer_url" => nil,
          "older_url" => nil
        }
      }.to_json, headers: {})
    stub_request(:get, "https://sandbox.public.api.bunq.com/v1/user/1913/credential-password-ip/3088/ip").
      to_return(status: 200, body: {
        "Response" => [
          {
            "PermittedIp" => {
              "id" => 927,
              "created" => "2017-03-18 12:56:56.046564",
              "updated" => "2017-03-18 12:56:56.046564",
              "ip" => "82.68.23.42",
              "status" => "ACTIVE"
            }
          }
        ]
      }.to_json, headers: {})

    stub_request(:put, /https:\/\/sandbox.public.api.bunq.com\/v1\/user\/.*\/credential-password-ip\/.*\/ip\/.*/).
      to_return(status: 200, body: {
        "Response" => [
          {
            "Id" => {
              "id" => 927
            }
          }
        ]
      }.to_json, headers: {})
    # PermittedIp GET
    stub_request(:get, /https:\/\/sandbox.public.api.bunq.com\/v1\/user\/.*\/credential-password-ip\/.*\/ip\/.*/).
      to_return(status: 200, body: {
        "Response" => [
          {
            "PermittedIp" => {
              "id" => 927,
              "created" => "2017-03-18 12:56:56.046564",
              "updated" => "2017-03-18 12:56:56.046564",
              "ip" => "82.68.23.42",
              "status" => "ACTIVE"
            }
          }
        ]
      }.to_json, headers: {})

    # PermittedIp POST
    stub_request(:post, /https:\/\/sandbox.public.api.bunq.com\/v1\/user\/.*\/credential-password-ip\/.*\/ip/).
      to_return(status: 200, body: {
        "Response" => [
          {
            "Id" => {
              "id" => 927
            }
          }
        ]
      }.to_json, headers: {})
    # Installation GET
    stub_request(:get, /https:\/\/sandbox.public.api.bunq.com\/v1\/installation\/.*/).
      to_return(status: 200, body: {
        "Response" => [
          {
            "Id" => {
              "id" => 12
            }
          }
        ]
      }.to_json, headers: {})
    # Installation LIST
    stub_request(:get, "https://sandbox.public.api.bunq.com/v1/installation").
      to_return(status: 200, body: {
        "Response" => [
          {
            "Id" => {
              "id" => 12
            }
          }
        ]
      }.to_json, headers: {})
    stub_request(:post, "https://sandbox.public.api.bunq.com/v1/installation")
      .to_return(status: 200, body: {
        "Response" => [
          {
            "Id" => {
              "id" => 61
            }
          },
          {
            "Token" => {
              "id" => 134,
              "created" => "2015-06-13 23:19:16.215235",
              "updated" => "2015-06-30 09:12:31.981573",
              "token" => "a4f9d888eea84f52722b9baf2f17c289d549edf6e0eccdbf868eb922be306fb6"
            }
          },
          {
            "ServerPublicKey" => {
              "server_public_key" => "-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA2cKx+z2NbEapmQWvvov2\nn0k699ZJmWn1yZulOfVeSfHKdGAVj4TlWwAJuvFmThgtHTp+PiJUxKsNUrHHcp+A\nCY0mVH+6f19roBH/B4IS7H5fnXMnpf39IfPDw+hv17bKE+dnuhPuEcloG+LgEOgo\ncjwEb18h5IR3dfbxBHXUce2i4wqfGakAzHumJbPb5XgMMYxng+fqV7uH34CpRpS0\n4bzjuvkwMlRWQsIMUuOvcAjRoCMf1aViFd2+4sEm7RFlyux5PKkq72F\/GITirzlA\nT7T22qrApKnZNPR9y0pGC13FFdx5lVszBNnsKyXDwqrzOsUONSFU+F6JRg6xqUoC\niQIDAQAB\n-----END PUBLIC KEY-----\n"
            }
          }
        ]
      }.to_json)

    stub_request(:get, /\Ahttps:\/\/sandbox.public.api.bunq.com\/v1\/installation\/.*\/server-public-key\z/).
      to_return(status: 200, body: {
        "Response" => [
          {
            "ServerPublicKey" => {
              "server_public_key" => "-----BEGIN PUBLIC KEY-----\nMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA2cKx+z2NbEapmQWvvov2\nn0k699ZJmWn1yZulOfVeSfHKdGAVj4TlWwAJuvFmThgtHTp+PiJUxKsNUrHHcp+A\nCY0mVH+6f19roBH/B4IS7H5fnXMnpf39IfPDw+hv17bKE+dnuhPuEcloG+LgEOgo\ncjwEb18h5IR3dfbxBHXUce2i4wqfGakAzHumJbPb5XgMMYxng+fqV7uH34CpRpS0\n4bzjuvkwMlRWQsIMUuOvcAjRoCMf1aViFd2+4sEm7RFlyux5PKkq72F\/GITirzlA\nT7T22qrApKnZNPR9y0pGC13FFdx5lVszBNnsKyXDwqrzOsUONSFU+F6JRg6xqUoC\niQIDAQAB\n-----END PUBLIC KEY-----\n"
            }
          }
        ]
      }.to_json, headers: {})

    stub_request(:post, "https://sandbox.public.api.bunq.com/v1/session-server").
      to_return(status: 200, body: {
"Response" => [
{
"Id" => {
"id" => 16
}
},
{
"Token" => {
"id" => 839,
"token" => "b165cce82bbd229b55962f90b4efedd706b3f616f0de831547ff62262f2924e3"
}
},
{
"UserCompany" => {
"id" => 42,
"created" => "2015-06-13 23:19:16.215235",
"updated" => "2015-06-30 09:12:31.981573",
"public_uuid" => "252e-fb1e-04b74214-b9e9467c3-c6d2fbf",
"name" => "bunq",
"display_name" => "bunq",
"public_nick_name" => "bunq",
"alias" => [
{
"type" => "EMAIL",
"value" => "bravo@bunq.com",
"name" => ""
}
],
"chamber_of_commerce_number" => "NL040492904",
"type_of_business_entity" => "One man business",
"sector_of_industry" => "Education",
"counter_bank_iban" => "NL12BUNQ1234567890",
"avatar" => {
"uuid" => "5a442bed-3d43-4a85-b532-dbb251052f4a",
"anchor_uuid" => "f0de919f-8c36-46ee-acb7-ea9c35c1b231",
"image" => [
{
"attachment_public_uuid" => "d93e07e3-d420-45e5-8684-fc0c09a63686",
"content_type" => "image/jpeg",
"height" => 380,
"width" => 520
}
]
},
"address_main" => {
"street" => "Example Boulevard",
"house_number" => "123a",
"po_box" => "09392",
"postal_code" => "1234AA",
"city" => "Amsterdam",
"country" => "NL"
},
"address_postal" => {
"street" => "Example Boulevard",
"house_number" => "123a",
"po_box" => "09392",
"postal_code" => "1234AA",
"city" => "Amsterdam",
        "country" => "NL"
        },
        "version_terms_of_service" => "1.2",
        "director_alias" => {
        "uuid" => "252e-fb1e-04b74214-b9e9467c3-c6d2fbf",
        "avatar" => {
        "uuid" => "5a442bed-3d43-4a85-b532-dbb251052f4a",
        "anchor_uuid" => "f0de919f-8c36-46ee-acb7-ea9c35c1b231",
        "image" => [
        {
        "attachment_public_uuid" => "d93e07e3-d420-45e5-8684-fc0c09a63686",
        "content_type" => "image/jpeg",
        "height" => 380,
        "width" => 520
        }
        ]
        },
        "public_nick_name" => "Mary",
        "display_name" => "Mary",
        "country" => "NL"
        },
        "language" => "en_US",
        "region" => "en_US",
        "ubo" => [
        {
        "name" => "A. Person",
        "date_of_birth" => "1990-03-27",
        "nationality" => "NL"
        }
              ],
              "status" => "ACTIVE",
              "sub_status" => "APPROVAL",
              "session_timeout" => 1,
              "daily_limit_without_confirmation_login" => {
              "value" => "12.50",
              "currency" => "EUR"
            },
            "notification_filters" => [
              {
                "notification_delivery_method" => "URL",
                "notification_target" => "https://my.company.com/callback-url",
                "category" => "PAYMENT"
              }
            ]
          }
        }
      ]
    }.to_json, headers: {})
  end
end
