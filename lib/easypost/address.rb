module EasyPost
  class Address
    @@type = "address"

    def self.test
      puts EasyPost.api_url("verify")
    end

    def self.verify(address={})
      @verified_address = EasyPost.get(EasyPost.api_url(:type => @@type, :action => "verify"), :address => address)
    end

  end
end
