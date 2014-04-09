require 'spec_helper'
require 'constraints/api_constraint'

describe ApiConstraint do
  let(:request){ double :request }

  describe '#matches?' do
    let(:version){ 1 }

    subject(:constraint){ described_class.new(version: version) }

    def header_for_version(version)
      "version=#{version}"
    end

    it 'matches requests including the versioned vendor mime type' do
      headers = { accept: header_for_version(version) }
      request.stub(headers: headers)

      expect(constraint.matches?(request)).to be_true
    end

    it 'does not match requests for other versions' do
      headers = { accept: header_for_version(version+1) }
      request.stub(headers: headers)

      expect(constraint.matches?(request)).to be_false
    end
  end
end
