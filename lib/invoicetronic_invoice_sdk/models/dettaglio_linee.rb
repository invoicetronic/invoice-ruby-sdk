=begin
#Italian eInvoice API

#The Italian eInvoice API is a RESTful API that allows you to send and receive invoices through the Italian [Servizio di Interscambio (SDI)][1], or Interchange Service. The API is designed by Invoicetronic to be simple and easy to use, abstracting away SDI complexity while still providing complete control over the invoice send/receive process. The API also provides advanced features and a rich toolchain, such as invoice validation, multiple upload methods, webhooks, event logs, CORS support, client SDKs for commonly used languages, and CLI tools.  For more information, see  [Invoicetronic website][2]  [1]: https://www.fatturapa.gov.it/it/sistemainterscambio/cose-il-sdi/ [2]: https://invoicetronic.com/

The version of the OpenAPI document: 1.0.0
Contact: support@invoicetronic.com
Generated by: https://openapi-generator.tech
Generator version: 7.10.0

=end

require 'date'
require 'time'

module Invoice_Sdk
  class DettaglioLinee
    attr_accessor :numero_linea

    attr_accessor :tipo_cessione_prestazione

    attr_accessor :codice_articolo

    attr_accessor :descrizione

    attr_accessor :quantita

    attr_accessor :unita_misura

    attr_accessor :data_inizio_periodo

    attr_accessor :data_fine_periodo

    attr_accessor :prezzo_unitario

    attr_accessor :sconto_maggiorazione

    attr_accessor :prezzo_totale

    attr_accessor :aliquota_iva

    attr_accessor :ritenuta

    attr_accessor :natura

    attr_accessor :riferimento_amministrazione

    attr_accessor :altri_dati_gestionali

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'numero_linea' => :'numero_linea',
        :'tipo_cessione_prestazione' => :'tipo_cessione_prestazione',
        :'codice_articolo' => :'codice_articolo',
        :'descrizione' => :'descrizione',
        :'quantita' => :'quantita',
        :'unita_misura' => :'unita_misura',
        :'data_inizio_periodo' => :'data_inizio_periodo',
        :'data_fine_periodo' => :'data_fine_periodo',
        :'prezzo_unitario' => :'prezzo_unitario',
        :'sconto_maggiorazione' => :'sconto_maggiorazione',
        :'prezzo_totale' => :'prezzo_totale',
        :'aliquota_iva' => :'aliquota_iva',
        :'ritenuta' => :'ritenuta',
        :'natura' => :'natura',
        :'riferimento_amministrazione' => :'riferimento_amministrazione',
        :'altri_dati_gestionali' => :'altri_dati_gestionali'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'numero_linea' => :'Integer',
        :'tipo_cessione_prestazione' => :'String',
        :'codice_articolo' => :'Array<CodiceArticolo>',
        :'descrizione' => :'String',
        :'quantita' => :'Float',
        :'unita_misura' => :'String',
        :'data_inizio_periodo' => :'Time',
        :'data_fine_periodo' => :'Time',
        :'prezzo_unitario' => :'Float',
        :'sconto_maggiorazione' => :'Array<ScontoMaggiorazione>',
        :'prezzo_totale' => :'Float',
        :'aliquota_iva' => :'Float',
        :'ritenuta' => :'String',
        :'natura' => :'String',
        :'riferimento_amministrazione' => :'String',
        :'altri_dati_gestionali' => :'Array<AltriDatiGestionali>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'tipo_cessione_prestazione',
        :'codice_articolo',
        :'descrizione',
        :'quantita',
        :'unita_misura',
        :'data_inizio_periodo',
        :'data_fine_periodo',
        :'sconto_maggiorazione',
        :'ritenuta',
        :'natura',
        :'riferimento_amministrazione',
        :'altri_dati_gestionali'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Invoice_Sdk::DettaglioLinee` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Invoice_Sdk::DettaglioLinee`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'numero_linea')
        self.numero_linea = attributes[:'numero_linea']
      end

      if attributes.key?(:'tipo_cessione_prestazione')
        self.tipo_cessione_prestazione = attributes[:'tipo_cessione_prestazione']
      end

      if attributes.key?(:'codice_articolo')
        if (value = attributes[:'codice_articolo']).is_a?(Array)
          self.codice_articolo = value
        end
      end

      if attributes.key?(:'descrizione')
        self.descrizione = attributes[:'descrizione']
      end

      if attributes.key?(:'quantita')
        self.quantita = attributes[:'quantita']
      end

      if attributes.key?(:'unita_misura')
        self.unita_misura = attributes[:'unita_misura']
      end

      if attributes.key?(:'data_inizio_periodo')
        self.data_inizio_periodo = attributes[:'data_inizio_periodo']
      end

      if attributes.key?(:'data_fine_periodo')
        self.data_fine_periodo = attributes[:'data_fine_periodo']
      end

      if attributes.key?(:'prezzo_unitario')
        self.prezzo_unitario = attributes[:'prezzo_unitario']
      end

      if attributes.key?(:'sconto_maggiorazione')
        if (value = attributes[:'sconto_maggiorazione']).is_a?(Array)
          self.sconto_maggiorazione = value
        end
      end

      if attributes.key?(:'prezzo_totale')
        self.prezzo_totale = attributes[:'prezzo_totale']
      end

      if attributes.key?(:'aliquota_iva')
        self.aliquota_iva = attributes[:'aliquota_iva']
      end

      if attributes.key?(:'ritenuta')
        self.ritenuta = attributes[:'ritenuta']
      end

      if attributes.key?(:'natura')
        self.natura = attributes[:'natura']
      end

      if attributes.key?(:'riferimento_amministrazione')
        self.riferimento_amministrazione = attributes[:'riferimento_amministrazione']
      end

      if attributes.key?(:'altri_dati_gestionali')
        if (value = attributes[:'altri_dati_gestionali']).is_a?(Array)
          self.altri_dati_gestionali = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          numero_linea == o.numero_linea &&
          tipo_cessione_prestazione == o.tipo_cessione_prestazione &&
          codice_articolo == o.codice_articolo &&
          descrizione == o.descrizione &&
          quantita == o.quantita &&
          unita_misura == o.unita_misura &&
          data_inizio_periodo == o.data_inizio_periodo &&
          data_fine_periodo == o.data_fine_periodo &&
          prezzo_unitario == o.prezzo_unitario &&
          sconto_maggiorazione == o.sconto_maggiorazione &&
          prezzo_totale == o.prezzo_totale &&
          aliquota_iva == o.aliquota_iva &&
          ritenuta == o.ritenuta &&
          natura == o.natura &&
          riferimento_amministrazione == o.riferimento_amministrazione &&
          altri_dati_gestionali == o.altri_dati_gestionali
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [numero_linea, tipo_cessione_prestazione, codice_articolo, descrizione, quantita, unita_misura, data_inizio_periodo, data_fine_periodo, prezzo_unitario, sconto_maggiorazione, prezzo_totale, aliquota_iva, ritenuta, natura, riferimento_amministrazione, altri_dati_gestionali].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = Invoice_Sdk.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
