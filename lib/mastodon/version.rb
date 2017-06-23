# frozen_string_literal: true

module Mastodon
  Githash = File.read(".git/refs/heads/im-in.space")[0..6]

  module Version
    module_function

    def major
      1
    end

    def minor
      4
    end

    def patch
      5
    end

    def pre
      nil
    end

    def to_a
      [major, minor, patch, pre].compact
    end

    def to_s
      to_a.join('.')
    end
  end
end
