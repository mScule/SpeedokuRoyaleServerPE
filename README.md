# SpeedokuRoyaleServer | Production environment

Run the shell scripts in git bash by writing command
`bash <SCRIPT NAME HERE WITH IT'S FILE EXTENSION>`

## Setup

1. Run the `install.sh` *Make sure that you have the things installed that the
   setup asks for! Don't lie to it. The setup won't work right if you do :(*

2. After the setup has done it's job, you should be able to open the project
   with the VS Code Remote Explorer.

3. From docker container, open path `home/speedoku-royale-server`

4. Write `dotnet ef database update`

5. After that, write `dotnet run`


To build and run the build, use `build.sh`.
To shut down and remove the build, use `shutdown.sh`.

## Uninstall

If you feel that the setup messed up your docker big time, you can uninstall
everything with `uninstall.sh`. Do this only if you don't have anything
important in the de, since every file in it will be removed.
