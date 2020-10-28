require 'spec_helper'

describe Hash do
  context 'select_keys' do
    it 'debería tomar los values de las keys indicadas' do
      hash = Hash[1, 2, 3, 4]
      hash.select_keys(1).should == {1 => 2}
      hash.select_keys(1, 3).should == {1 => 2, 3 => 4}
      hash.select_keys(5).should == {}
      hash.select_keys(5, 3).should == {3 => 4}
    end
  end
end
