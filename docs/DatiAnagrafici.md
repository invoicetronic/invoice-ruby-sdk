# Invoice_Sdk::DatiAnagrafici

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id_fiscale_iva** | [**IdFiscaleIVA**](IdFiscaleIVA.md) |  | [optional] |
| **codice_fiscale** | **String** |  | [optional] |
| **anagrafica** | [**Anagrafica**](Anagrafica.md) |  | [optional] |

## Example

```ruby
require 'invoicetronic_invoice_sdk'

instance = Invoice_Sdk::DatiAnagrafici.new(
  id_fiscale_iva: null,
  codice_fiscale: null,
  anagrafica: null
)
```

