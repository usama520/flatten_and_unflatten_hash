@a = {}
def flatten_hash(hash)
  return unless hash.is_a? Hash
  hash.each_pair do |key, value|
    if value.is_a? Hash
      @a.merge!({"#{key}".to_sym => "#{value.keys.first}"})
    else
      @a.merge!("#{key}".to_sym => value)
    end
    flatten_hash(value)
  end
  @a
end
