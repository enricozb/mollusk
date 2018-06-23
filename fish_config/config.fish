if test -n "$MOLLUSK"
  function mollusk
    switch (commandline)
      case ".." clear ls cd mv "ls *" "mv *" "cd *"
        commandline -f execute
      case "*"
        mollusk-relay (commandline) "$MOLLUSK"
        exit
    end
  end
end

