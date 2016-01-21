class CellValidator < ActiveModel::EachValidator
  def validate_each(record, cell, value)
    unless value =~ /[0-9]{10}/
      record.errors[cell] << (options[:message] ||
        " - Please enter a valid phone number without spaces or hyphens.")
    end
  end
end
