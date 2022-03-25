class Task < ApplicationRecord

  def self.ransackable_attributes(auth_object = nil)
    %w[name client productno cont deliverydate mt workschedule]
end

def self.ransackable_associations(auth_object = nil)
  []
end
end
