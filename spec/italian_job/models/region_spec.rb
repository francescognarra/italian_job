require 'spec_helper'

describe ItalianJob::Region do

  it_should_behave_like "ActiveModel"
  it { should respond_to :code}
  it { should respond_to :name}

  context ".find_by_code" do
    subject { described_class }

    it { should respond_to :find_by_code }

    context "when passed an existent code" do
      it "returns the region with the given code" do
        @code = "001"
        described_class.find_by_code(@code).code.should == @code
      end
    end

    context "when passed a non-existent region" do
      it "raise an error" do
        lambda { described_class.find_by_code("200") }.should raise_exception
      end
    end

  end

end
