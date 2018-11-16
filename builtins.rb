def execute comm, args
  case comm
  when "cd"
    Dir.chdir(args[0])
  when "echo"
    args.each do | x |
      puts x
    end

  when "ls"
    all = false
    if args[0] == "-a"
      elems = args[1]
      all = true
    else
      elems = args[0]
    end
      elems = elems ? elems : Dir.pwd
    Dir.entries(elems).each do | e |
      if all or (e != "." and e != "..") #This just hides . and .. for now
        puts e
      end
    end

  when "pwd"
    puts Dir.pwd

  else
    puts "#{comm} still needs an implementation"
  end
end
