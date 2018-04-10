require 'spec_helper'
require_relative '../src/steps'



RSpec.describe Steps do
  describe 'positive integers' do
    it "should print things" do
      Steps.print_steps(1)
      Steps.print_steps(2)
      Steps.print_steps(3)
      Steps.print_steps(10)

    end
  end
end