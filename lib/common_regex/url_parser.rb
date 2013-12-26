require "common_regex/version"

#TODO
module CommonRegex
  class URLParser

    URL_REGEX  = /((([A-Za-z]{3,9}:(?:\/\/)?)(?:[-;:&=\+\$,\w]+@)?[A-Za-z0-9.-]+|(?:www.|[-;:&=\+\$,\w]+@)[A-Za-z0-9.-]+)((?:\/[\+~%\/.\w-_]*)?\??(?:[-\+=&;%@.\w_]*)#?(?:[\w]*))?)/

    def self.parse(text)
      text.scan(URL_REGEX).flatten
    end
  end
end
