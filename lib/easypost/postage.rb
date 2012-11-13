module EasyPost
  class Postage
    @@type = "postage"
    @@usps_package_types = %w(
        Card
        Letter
        Flat
        Parcel
        LargeParcel
        IrregularParcel
        FlatRateEnvelope
        FlatRateLegalEnvelope
        FlatRatePaddedEnvelope
        FlatRateGiftCardEnvelope
        FlatRateWindowEnvelope
        FlatRateCardboardEnvelope
        SmallFlatRateEnvelope
        SmallFlatRateBox
        MediumFlatRateBox
        LargeFlatRateBox
        RegionalRateBoxA
        RegionalRateBoxB
        RegionalRateBoxC
        LargeFlatRateBoardGameBox
      )

    def self.usps_package_types
      return @@usps_package_types
    end

    def self.rates(data={})
      @rates = EasyPost.get(EasyPost.api_url(:type => @@type, :action => "rates"), data)
    end

    def self.compare(data={})
      return rates(data)
    end

    def self.buy(data={})
      @rates = EasyPost.post(EasyPost.api_url(:type => @@type, :action => "buy"), data)
    end

    def self.get(filename)
      @rates = EasyPost.get(EasyPost.api_url(:type => @@type, :action => "get"), :label_file_name => filename)
    end

    def self.list()
      @rates = EasyPost.get(EasyPost.api_url(:type => @@type, :action => "list"))
    end

  end
end
