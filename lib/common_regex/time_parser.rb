require "common_regex/version"

module CommonRegex
  class TimeParser

    REGEX1 = /\d{1,2}:\d{2}\s?(?:[ap]\.?m\.?)?|\d[ap]\.?m\.?/
    REGEX2 = /\d{2}\d{2}\s?hrs?/

    def self.parse(text)
      text.scan(REGEX1).flatten + text.scan(REGEX2).flatten
    end
  end
end
