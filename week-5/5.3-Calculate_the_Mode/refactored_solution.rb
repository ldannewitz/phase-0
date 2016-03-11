def mode(mode)
  mode_return = mode.inject({}) do |accumulator, v|
    accumulator[v] = mode.count(v)
   p accumulator #why do we need this?
  end

  mode_return.select { |k,v| v == mode_return.values.max }.keys
end