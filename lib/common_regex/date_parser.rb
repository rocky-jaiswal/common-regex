require "common_regex/version"

#TODO
module CommonRegex
  class DateParser

    MONTH_REGEX = /(?:jan\.?|january|feb\.?|february|mar\.?|march|apr\.?|april|may|jun\.?|june|jul\.?|july|aug\.?|august|sep\.?|september|oct\.?|october|nov\.?|november|dec\.?|december)/
    DAY_REGEX   = /(?<!\:)(?<!\:\d)[0-3]?\d(?:st|nd|rd|th)?/
    YEAR_REGEX  = /\d{4}/
    DATE_REGEX  = /\d{2}(\/|-)\d{2}(\/|-)\d{2,4}/

    def self.parse(text)
      text.scan(DATE_REGEX).flatten
    end
  end
end
