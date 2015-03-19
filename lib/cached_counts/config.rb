module CachedCounts
  class << self
    attr_accessor :configuration
    attr_accessor :config
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield(configuration)
  end


  def self.config
    self.configuration
  end

  class Configuration
    attr_accessor :cache_duration

    def initialize
      @cache_duration = 1800
    end
  end
end