require './builtins'

def run comm, args
  args[0] ? system("start #{comm} #{args}") : system("start #{comm}")
end

def parse inp
  exp = inp.split " "
  comm = exp[0]
  args = exp[1...exp.length]
  case comm
  when "cd","echo","ls","pwd"
    execute comm, args
  else
    run comm, args
  end
end

def main
  while true do
    inp = gets
    parse inp
  end
end

main
