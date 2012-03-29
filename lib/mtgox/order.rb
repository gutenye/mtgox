module MtGox
  class Order < Base
    attr_accessor :oid, :currency, :item, :type, :amount, :price, :status, :date, :priority

    def oid=(raw)
      @oid = raw.to_i
    end

    def amount=(raw)
      @amount = raw["value"].to_f
    end

    def price=(raw)
      @price = raw["value"].to_f
    end

    def date=(raw)
      @date = Time.at(raw)
    end

    def priority=(raw)
      @priority = raw.to_i
    end
  end
end
