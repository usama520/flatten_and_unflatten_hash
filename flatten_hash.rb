@flat_hash = {}
def flatten_hash(hash)
  return unless hash.is_a? Hash
  hash.each_pair do |key, value|
    if value.is_a? Hash
      @flat_hash.merge!({"#{key}".to_sym => "#{value.keys.first}"})
    else
      @flat_hash.merge!("#{key}".to_sym => value)
    end
    flatten_hash(value)
  end
  @flat_hash
end
