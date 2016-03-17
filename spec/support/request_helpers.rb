module Request
  module JsonHelpers
    def json_response
      @json_responde ||= JSON.parse(response.body, symbolize_names: true)
    end
  end
end
