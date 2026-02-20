# frozen_string_literal: true

require 'fileutils'

system("rsync -avcizxL rsync.ietf.org::bibxml-ids ./bibxml-ids")

require "relaton/ietf/data_fetcher"

FileUtils.rm Dir.glob("index*")
FileUtils.rm_rf "data"

Relaton::Ietf::DataFetcher.fetch "ietf-internet-drafts"
