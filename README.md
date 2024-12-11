# Ruby SDK for the Italian eInvoice API

The Italian eInvoice API is a RESTful API that allows you to send and receive invoices through the
Italian [Servizio di Interscambio (SDI)][1], or Interchange Service. The API is designed by Invoicetronic to be simple
and easy to use, abstracting away SDI complexity while still providing complete control over the
invoice send/receive process. The API also provides advanced features and a rich toolchain, such as invoice validation,
multiple upload methods, webhooks, event logs, CORS support, client SDKs for commonly used languages, and CLI tools.

For more information, see  [Invoicetronic website][2]

[1]: https://www.fatturapa.gov.it/it/sistemainterscambio/cose-il-sdi/
[2]: https://invoicetronic.com/

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0.0
- Package version: 1.0.0
- Generator version: 7.10.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen
For more information, please visit [https://invoicetronic.com](https://invoicetronic.com)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build invoicetronic_invoice_sdk.gemspec
```

Then either install the gem locally:

```shell
gem install ./invoicetronic_invoice_sdk-1.0.0.gem
```

(for development, run `gem install --dev ./invoicetronic_invoice_sdk-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'invoicetronic_invoice_sdk', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/invoicetronic/invoice-ruby-sdk, then add the following in the Gemfile:

    gem 'invoicetronic_invoice_sdk', :git => 'https://github.com/invoicetronic/invoice-ruby-sdk.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'invoicetronic_invoice_sdk'

# Setup authorization
Invoice_Sdk.configure do |config|
  # Configure HTTP basic authorization: Basic
  config.username = 'YOUR_USERNAME'
  config.password = 'YOUR_PASSWORD'
end

api_instance = Invoice_Sdk::CompanyApi.new
opts = {
  page: 56, # Integer | Page number.
  page_size: 56 # Integer | Items per page.
}

begin
  #List companies
  result = api_instance.invoice_v1_company_get(opts)
  p result
rescue Invoice_Sdk::ApiError => e
  puts "Exception when calling CompanyApi->invoice_v1_company_get: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *http://localhost*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*Invoice_Sdk::CompanyApi* | [**invoice_v1_company_get**](docs/CompanyApi.md#invoice_v1_company_get) | **GET** /invoice/v1/company | List companies
*Invoice_Sdk::CompanyApi* | [**invoice_v1_company_id_delete**](docs/CompanyApi.md#invoice_v1_company_id_delete) | **DELETE** /invoice/v1/company/{id} | Delete a company
*Invoice_Sdk::CompanyApi* | [**invoice_v1_company_id_get**](docs/CompanyApi.md#invoice_v1_company_id_get) | **GET** /invoice/v1/company/{id} | Get a company by id
*Invoice_Sdk::CompanyApi* | [**invoice_v1_company_post**](docs/CompanyApi.md#invoice_v1_company_post) | **POST** /invoice/v1/company | Add a company
*Invoice_Sdk::CompanyApi* | [**invoice_v1_company_put**](docs/CompanyApi.md#invoice_v1_company_put) | **PUT** /invoice/v1/company | Update a company
*Invoice_Sdk::LogApi* | [**invoice_v1_log_get**](docs/LogApi.md#invoice_v1_log_get) | **GET** /invoice/v1/log | List events
*Invoice_Sdk::LogApi* | [**invoice_v1_log_id_get**](docs/LogApi.md#invoice_v1_log_id_get) | **GET** /invoice/v1/log/{id} | Get an event by id
*Invoice_Sdk::ReceiveApi* | [**invoice_v1_receive_get**](docs/ReceiveApi.md#invoice_v1_receive_get) | **GET** /invoice/v1/receive | List incoming invoices
*Invoice_Sdk::ReceiveApi* | [**invoice_v1_receive_id_delete**](docs/ReceiveApi.md#invoice_v1_receive_id_delete) | **DELETE** /invoice/v1/receive/{id} | Delete an incoming invoice by id
*Invoice_Sdk::ReceiveApi* | [**invoice_v1_receive_id_get**](docs/ReceiveApi.md#invoice_v1_receive_id_get) | **GET** /invoice/v1/receive/{id} | Get an incoming invoice by id
*Invoice_Sdk::SendApi* | [**invoice_v1_send_files_post**](docs/SendApi.md#invoice_v1_send_files_post) | **POST** /invoice/v1/send/files | Add an invoice by file
*Invoice_Sdk::SendApi* | [**invoice_v1_send_get**](docs/SendApi.md#invoice_v1_send_get) | **GET** /invoice/v1/send | List invoices
*Invoice_Sdk::SendApi* | [**invoice_v1_send_id_get**](docs/SendApi.md#invoice_v1_send_id_get) | **GET** /invoice/v1/send/{id} | Get a invoice by id
*Invoice_Sdk::SendApi* | [**invoice_v1_send_json_post**](docs/SendApi.md#invoice_v1_send_json_post) | **POST** /invoice/v1/send/json | Add an invoice by json
*Invoice_Sdk::SendApi* | [**invoice_v1_send_post**](docs/SendApi.md#invoice_v1_send_post) | **POST** /invoice/v1/send | Add an invoice
*Invoice_Sdk::SendApi* | [**invoice_v1_send_validate_files_post**](docs/SendApi.md#invoice_v1_send_validate_files_post) | **POST** /invoice/v1/send/validate/files | Validate an invoice by file
*Invoice_Sdk::SendApi* | [**invoice_v1_send_validate_json_post**](docs/SendApi.md#invoice_v1_send_validate_json_post) | **POST** /invoice/v1/send/validate/json | Validate an invoice by json
*Invoice_Sdk::SendApi* | [**invoice_v1_send_validate_post**](docs/SendApi.md#invoice_v1_send_validate_post) | **POST** /invoice/v1/send/validate | Validate an invoice
*Invoice_Sdk::SendApi* | [**invoice_v1_send_validate_xml_post**](docs/SendApi.md#invoice_v1_send_validate_xml_post) | **POST** /invoice/v1/send/validate/xml | Validate an invoice by xml
*Invoice_Sdk::SendApi* | [**invoice_v1_send_xml_post**](docs/SendApi.md#invoice_v1_send_xml_post) | **POST** /invoice/v1/send/xml | Add an invoice by xml
*Invoice_Sdk::UpdateApi* | [**invoice_v1_update_get**](docs/UpdateApi.md#invoice_v1_update_get) | **GET** /invoice/v1/update | List updates
*Invoice_Sdk::UpdateApi* | [**invoice_v1_update_id_get**](docs/UpdateApi.md#invoice_v1_update_id_get) | **GET** /invoice/v1/update/{id} | Get an update by id
*Invoice_Sdk::WebhookApi* | [**invoice_v1_webhook_get**](docs/WebhookApi.md#invoice_v1_webhook_get) | **GET** /invoice/v1/webhook | List webhooks
*Invoice_Sdk::WebhookApi* | [**invoice_v1_webhook_id_delete**](docs/WebhookApi.md#invoice_v1_webhook_id_delete) | **DELETE** /invoice/v1/webhook/{id} | Delete a webhook by id
*Invoice_Sdk::WebhookApi* | [**invoice_v1_webhook_id_get**](docs/WebhookApi.md#invoice_v1_webhook_id_get) | **GET** /invoice/v1/webhook/{id} | Get a webhook by id
*Invoice_Sdk::WebhookApi* | [**invoice_v1_webhook_post**](docs/WebhookApi.md#invoice_v1_webhook_post) | **POST** /invoice/v1/webhook | Add a webhook
*Invoice_Sdk::WebhookApi* | [**invoice_v1_webhook_put**](docs/WebhookApi.md#invoice_v1_webhook_put) | **PUT** /invoice/v1/webhook | Update a webhook
*Invoice_Sdk::WebhookApi* | [**invoice_v1_webhookhistory_get**](docs/WebhookApi.md#invoice_v1_webhookhistory_get) | **GET** /invoice/v1/webhookhistory | List webhook history items
*Invoice_Sdk::WebhookApi* | [**invoice_v1_webhookhistory_id_get**](docs/WebhookApi.md#invoice_v1_webhookhistory_id_get) | **GET** /invoice/v1/webhookhistory/{id} | Get a webhook history item by id


## Documentation for Models

 - [Invoice_Sdk::Allegati](docs/Allegati.md)
 - [Invoice_Sdk::AltriDatiGestionali](docs/AltriDatiGestionali.md)
 - [Invoice_Sdk::Anagrafica](docs/Anagrafica.md)
 - [Invoice_Sdk::CedentePrestatore](docs/CedentePrestatore.md)
 - [Invoice_Sdk::CessionarioCommittente](docs/CessionarioCommittente.md)
 - [Invoice_Sdk::CodiceArticolo](docs/CodiceArticolo.md)
 - [Invoice_Sdk::Company](docs/Company.md)
 - [Invoice_Sdk::Contatti](docs/Contatti.md)
 - [Invoice_Sdk::ContattiTrasmittente](docs/ContattiTrasmittente.md)
 - [Invoice_Sdk::DatiAnagrafici](docs/DatiAnagrafici.md)
 - [Invoice_Sdk::DatiAnagraficiCedentePrestatore](docs/DatiAnagraficiCedentePrestatore.md)
 - [Invoice_Sdk::DatiAnagraficiCessionarioCommittente](docs/DatiAnagraficiCessionarioCommittente.md)
 - [Invoice_Sdk::DatiAnagraficiVettore](docs/DatiAnagraficiVettore.md)
 - [Invoice_Sdk::DatiBeniServizi](docs/DatiBeniServizi.md)
 - [Invoice_Sdk::DatiBollo](docs/DatiBollo.md)
 - [Invoice_Sdk::DatiCassaPrevidenziale](docs/DatiCassaPrevidenziale.md)
 - [Invoice_Sdk::DatiContratto](docs/DatiContratto.md)
 - [Invoice_Sdk::DatiConvenzione](docs/DatiConvenzione.md)
 - [Invoice_Sdk::DatiDDT](docs/DatiDDT.md)
 - [Invoice_Sdk::DatiFattureCollegate](docs/DatiFattureCollegate.md)
 - [Invoice_Sdk::DatiGenerali](docs/DatiGenerali.md)
 - [Invoice_Sdk::DatiGeneraliDocumento](docs/DatiGeneraliDocumento.md)
 - [Invoice_Sdk::DatiOrdineAcquisto](docs/DatiOrdineAcquisto.md)
 - [Invoice_Sdk::DatiPagamento](docs/DatiPagamento.md)
 - [Invoice_Sdk::DatiRicezione](docs/DatiRicezione.md)
 - [Invoice_Sdk::DatiRiepilogo](docs/DatiRiepilogo.md)
 - [Invoice_Sdk::DatiRitenuta](docs/DatiRitenuta.md)
 - [Invoice_Sdk::DatiSAL](docs/DatiSAL.md)
 - [Invoice_Sdk::DatiTrasmissione](docs/DatiTrasmissione.md)
 - [Invoice_Sdk::DatiTrasporto](docs/DatiTrasporto.md)
 - [Invoice_Sdk::DatiVeicoli](docs/DatiVeicoli.md)
 - [Invoice_Sdk::DettaglioLinee](docs/DettaglioLinee.md)
 - [Invoice_Sdk::DettaglioPagamento](docs/DettaglioPagamento.md)
 - [Invoice_Sdk::DocumentData](docs/DocumentData.md)
 - [Invoice_Sdk::Error](docs/Error.md)
 - [Invoice_Sdk::Event](docs/Event.md)
 - [Invoice_Sdk::FatturaElettronicaBody](docs/FatturaElettronicaBody.md)
 - [Invoice_Sdk::FatturaElettronicaHeader](docs/FatturaElettronicaHeader.md)
 - [Invoice_Sdk::FatturaOrdinaria](docs/FatturaOrdinaria.md)
 - [Invoice_Sdk::FatturaPrincipale](docs/FatturaPrincipale.md)
 - [Invoice_Sdk::IdFiscaleIVA](docs/IdFiscaleIVA.md)
 - [Invoice_Sdk::IdTrasmittente](docs/IdTrasmittente.md)
 - [Invoice_Sdk::IndirizzoResa](docs/IndirizzoResa.md)
 - [Invoice_Sdk::IscrizioneREA](docs/IscrizioneREA.md)
 - [Invoice_Sdk::ModelSend](docs/ModelSend.md)
 - [Invoice_Sdk::ProblemDetails](docs/ProblemDetails.md)
 - [Invoice_Sdk::ProblemHttpResult](docs/ProblemHttpResult.md)
 - [Invoice_Sdk::RappresentanteFiscale](docs/RappresentanteFiscale.md)
 - [Invoice_Sdk::RappresentanteFiscaleCessionarioCommittente](docs/RappresentanteFiscaleCessionarioCommittente.md)
 - [Invoice_Sdk::Receive](docs/Receive.md)
 - [Invoice_Sdk::ScontoMaggiorazione](docs/ScontoMaggiorazione.md)
 - [Invoice_Sdk::SedeCedentePrestatore](docs/SedeCedentePrestatore.md)
 - [Invoice_Sdk::SedeCessionarioCommittente](docs/SedeCessionarioCommittente.md)
 - [Invoice_Sdk::StabileOrganizzazione](docs/StabileOrganizzazione.md)
 - [Invoice_Sdk::TerzoIntermediarioOSoggettoEmittente](docs/TerzoIntermediarioOSoggettoEmittente.md)
 - [Invoice_Sdk::Update](docs/Update.md)
 - [Invoice_Sdk::WebHook](docs/WebHook.md)
 - [Invoice_Sdk::WebHookHistory](docs/WebHookHistory.md)


## Documentation for Authorization


Authentication schemes defined for the API:
### Basic

- **Type**: HTTP basic authentication

