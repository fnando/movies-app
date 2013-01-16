class FormErrors
  attr_reader :records

  def initialize(records)
    @records = [records].flatten.compact
  end

  def errors
    full_messages if full_messages.any?
  end

  def full_messages
    @full_messages ||= records.reduce([]) do |buffer, record|
      buffer.concat record.errors.full_messages
    end
  end
end
