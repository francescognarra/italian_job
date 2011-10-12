require 'spec_helper'

describe ItalianJob::Region do

  it_should_behave_like "ActiveModel"
  it { should respond_to :code}
  it { should respond_to :name}

  context ".find_by_code" do
    subject { described_class }

    it { should respond_to :find_by_code }

    it "returns the right region" do
      described_class.find_by_code("001").name.should be == "Piemonte"
    end

  end

end
