def merge_hash(hash)
  new_hash = {}
  hash.each_pair do |key, value|
    new_hash = {"#{key}".to_sym => merge_hash(except(hash, key.to_sym))}
  end
  new_hash
end

def except(hash, key)
  dup_hash = hash.dup
  dup_hash.delete(key)
  dup_hash
end
