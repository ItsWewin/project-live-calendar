class MyRedis
  class << self
    def get(key)
      Rails.cache.read(key)
    end

    def set(key, value)
      Rails.cache.write(key, value)
    end
  end
end