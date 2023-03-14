class Patient < ApplicationRecord
	  include ActiveModel::ForbiddenAttributesProtection

    validates :first_name, :mobile_number, :address, :date_of_birth, :presence => true


end
