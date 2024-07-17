# frozen_string_literal: true

def ftoc(c_temp)
  (c_temp - 32).to_f * 5 / 9
end

def ctof(f_temp)
  f_temp.to_f * 9 / 5 + 32
end
