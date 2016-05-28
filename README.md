# Docker Clean

Docker tends to leave quite a bit of resedue in the hard disk. I started noticing this while creating Docker images in my Raspberry Pi. I guess when your disk is an 8GB micro SD card, space becomes a valuable resource. After confirming that my suspicions were valid, I found a few useful commands to clean up after Docker.  This shell script compiles them into one.

## Running the script

`wget https://raw.githubusercontent.com/tyrell/docker-utils/master/docker-clean.sh`

`sh docker-clean.sh`

You will see container IDs when the script is cleaning up. 

If the commands do not find anything to clean, they will display an error. Essentially, this error will indicate that the command needs more parameters. Don't worry, this means your disk doesn't need cleaning.

## License
Copyright (c) 2016 Tyrell Perera <tyrell.perera@gmail.com>
Licensed under the MIT license.
