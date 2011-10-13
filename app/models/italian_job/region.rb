module ItalianJob
  class Region

    include ItalianJob::Istatable

    def persisted?
      false
    end

    store :name =>"Piemonte", :code=>"001"

  end
end
