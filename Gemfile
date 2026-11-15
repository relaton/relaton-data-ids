# frozen_string_literal: true

source "https://rubygems.org"

# relaton is the single combined v3 gem. The IETF flavor lives inside it at
# lib/relaton/ietf/ — its DataFetcher handles the "ietf-internet-drafts"
# source this crawler requests, and emits the pubid-structured index-v2
# (the old relaton-ietf split gem only ever wrote index-v1, which the API
# ingest cannot read — relaton-data-ids was missing from api.relaton.org).
gem "relaton",
    git: "https://github.com/relaton/relaton.git",
    branch: "main"

# pubid v2 parses primary docids into structured identifiers for the
# pubid_class-based index-v2.yaml. Track pubid main; flip to the released
# gem when pubid v2 ships (the IALA convention).
gem "pubid",
    git: "https://github.com/metanorma/pubid.git",
    branch: "main"

# relaton main depends on rubyzip ~> 3.7 (relaton#264); match it —
# crawler.rb compresses index*.yaml → index*.zip.
gem "rubyzip", "~> 3.7"

group :development, :test do
  gem "rspec", "~> 3.13"
  gem "webmock"
end
