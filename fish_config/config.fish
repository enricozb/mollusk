# mollusk
function mollusk_relay --on-event fish_preexec
    if test -n "$MOLLUSK"
        switch $argv
          case ".." clear ls cd mv "ls *" "mv *" "cd *"
          case "*"
            mollusk --relay $argv "$MOLLUSK"
            exit
        end
    end
end

