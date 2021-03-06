require 'spec_helper'

module Popmovies
  include Models

  describe Utils do
    it { expect(Utils).to respond_to(:data_type) }
    it { expect(Utils).to respond_to(:fetch_html_page) }

    describe "#data_type" do
      it "returns class name of first object in array" do
        array = []
        3.times { |i| array << TvShow.new("Dallas", "url_#{i}")}
        expect(Utils.data_type array).to be == "TvShow"
      end

      it "returns nil if array.empty?" do
        array = []
        expect(Utils.data_type array).to be nil
      end
    end

    describe "#fetch_html_page" do
      context "when bad url" do
        # before { allow_any_instance_of(ErrorView).to receive(:show).and_return(true) }
        # before { allow(Kernel).to receive(:abort).and_return(true) }
        before :all do
          @bad_url = "http://www.test.olive"
        end

        it "raises ConnectionError" do
          expect{Utils.fetch_html_page @bad_url}.to raise_error(ConnectionError,"Check your internet connection!")
        end

        # it "render ErrorView" do
        #   Utils.fetch_html_page @bad_url
        #   expect(ErrorView).to receive(:new).with("Check your internet connection!")
        # end
      end

    end
  end
end
