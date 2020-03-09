class AttachedValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    record.errors.add(attribute, "You are required to upload a file...") unless value.attached?
  end
end
