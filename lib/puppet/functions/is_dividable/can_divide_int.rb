# frozen_string_literal: true

# https://github.com/puppetlabs/puppet-specifications/blob/master/language/func-api.md#the-4x-api
Puppet::Functions.create_function(:"is_dividable::can_divide_int") do
  dispatch :can_divide_int do
    param 'Numeric', :a
    param 'Numeric', :b
    return_type 'Boolean'
  end
  # the function below is called by puppet and and must match
  # the name of the puppet function above. You can set your
  # required parameters below and puppet will enforce these
  # so change x to suit your needs although only one parameter is required
  # as defined in the dispatch method.
  def can_divide_int(x,y)
    result = x.to_f / y
    if result.to_i == result
      true
    else
      false
    end
    
  end

  # you can define other helper methods in this code block as well
end
