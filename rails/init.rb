require File.join(File.dirname(__FILE__), '..', 'lib', 'comeback')

ActionController::Base.class_eval do
  include Comeback
end
