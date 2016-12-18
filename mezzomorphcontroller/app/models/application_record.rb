class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def parse_request
    @json = JSON.parse(request.body.read)
  end
end
