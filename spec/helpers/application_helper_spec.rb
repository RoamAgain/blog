require 'spec_helper'

describe ApplicationHelper do
  
  describe 'full_title' do
    it 'should include the page title' do
      full_title('foo').should =~ /foo/
    end
    
    it 'should include base title' do
      full_title('foo').should =~ /^RubyGate Blog/
    end
    
    it 'should not include a bar on home page' do
      full_title('').should_not =~ /\|/
    end
  end
end
