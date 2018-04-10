require 'spec_helper'
require_relative '../src/capitalize'



RSpec.describe Capitalize do

  describe 'positive test cases' do

    it "should return correct results" do
      expect(Capitalize.capitalize("hi there, how is it going?")).to eql("Hi There, How Is It Going?")
      expect(Capitalize.capitalize("i love breakfast at bill miller bbq")).to eql("I Love Breakfast At Bill Miller Bbq")
    end

  end


end