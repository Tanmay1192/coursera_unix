#/**    \
 * ──────────────────────────────────────────────────────────────────────────────────────       \
 *  @ Peer-graded Assignment: Bash, Make, Git, and GitHub [Coursera]                      │     \
 *  @ Makefile to create README.md                                                        │     \
 *      README.md contains :                                                              │     \
 *      o)The title of the project.                                                       │     \
 *      o)The date and time at which make was run.                                        │     \
 *      o)The number of lines of code contained in guessinggame.sh                        │     \
 *                                                                                        │     \
 *  Author      : Tanmay Prakash <tanmayp1192@gmail.com>                                  │     \
 *  Date        : 17th December 2017                                                      │     \
 *                                                                                        │     \
 * ──────────────────────────────────────────────────────────────────────────────────────       \
*/

#file:= README.md
#ch='n'
#ch=y

all:  clean Build_readme

clean:
        @if [[ -f ./README.md ]]; then \
                rm -f README.md; \
                echo "README.md file has been removed !!"; \
                read -p "Do you wish to delete guessinggame.sh ? [y/n] :" ch; \
                case $$ch in \
                        y|Y) rm -f ./guessinggame.sh ;; \
                        n|N) echo "Ok guessinggame.sh is not deleted." ;; \
                esac; \
        else \
                echo "README.md does not exist !!"; \
        fi

Build_readme:
        @touch README.md
        @echo '# Guess the total files in a directory' > README.md
        @echo '## Unix workbench Coursera assignment' >>README.md
        @echo '* Last make ran at: [$(shell date +%Y-%m-%d:%H:%M:%S)]' >>README.md
        @echo '* Total number of lines in guessinggame.sh is : [$(shell wc -l < ./guessinggame.sh)]' >>README.md
        @echo 'README.md created !!'

