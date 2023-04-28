# frozen_string_literal: true

require 'relaton_ietf'

system("find ./data -name '*.yaml' | xargs rm -f")
RelatonIetf::DataFetcher.fetch("ietf-internet-drafts")