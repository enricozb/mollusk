# mollusk
function mollusk_relay
  if test -n "$MOLLUSK"
    set -l cmd_line (commandline)

    switch "$cmd_line"
      case ls clear cd "ls *" "mv *" "cd *" ".."
        commandline -f execute

      case "*"
        echo ""
        commandline ""
        mollusk --relay "$cmd_line" "$MOLLUSK"
        commandline -f repaint
    end
  else
    commandline -f execute
  end
end

function mollusk_eof
  if test -n "$MOLLUSK"
    mollusk --relay "exit" "$MOLLUSK"
  else
    exit
  end
end

