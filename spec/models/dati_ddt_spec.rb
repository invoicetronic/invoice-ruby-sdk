=begin
#Italian eInvoice API v1

#The [Italian eInvoice API][2] is a RESTful API that allows you to send and receive invoices through the Italian [Servizio di Interscambio (SDI)][1], or Interchange Service. The API is designed by Invoicetronic to be simple and easy to use, abstracting away SDI complexity while providing complete control over the invoice send/receive process. The API also provides advanced features as encryption at rest, invoice validation, multiple upload formats, webhooks, event logging, client SDKs for commonly used languages, and CLI tools.  For more information, see  [Invoicetronic website][2]  [1]: https://www.fatturapa.gov.it/it/sistemainterscambio/cose-il-sdi/ [2]: https://invoicetronic.com/

The version of the OpenAPI document: 1
Contact: support@invoicetronic.com
Generated by: https://openapi-generator.tech
Generator version: 7.11.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Invoice_Sdk::DatiDDT
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Invoice_Sdk::DatiDDT do
  let(:instance) { Invoice_Sdk::DatiDDT.new }

  describe 'test an instance of DatiDDT' do
    it 'should create an instance of DatiDDT' do
      # uncomment below to test the instance creation
      #expect(instance).to be_instance_of(Invoice_Sdk::DatiDDT)
    end
  end

  describe 'test attribute "numero_ddt"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "data_ddt"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  describe 'test attribute "riferimento_numero_linea"' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end
