# Amazon Linux 2 with PHP Composer & NGINX

Using this for various of my personal projects. Feel free to fork or contribute.

To build and push:

1. Build the container image - `docker build .`

2. Copy the tag hash - Ex. `0d190e377fd8`

3. Test your changes - `docker run -it 0d190e377fd8 /bin/bash`

4. Tag your changes - `docker tag 0d190e377fd8 ogprogrammer/amazonlinux-php-nginx:latest`

5. Push your tagged images - `docker push ogprogrammer/amazonlinux-php-nginx`

Don't forgot to login to docker.io in the CLI first ;)


```
Built & Maintained by @OGProgrammer

Support Your Local User Groups
http://php.ug/

Check out our PHP UG in Las Vegas, NV
http://PHPVegas.com

Support your local tech scene!
#VegasTech

Share your knowledge!
Become a speaker, co-organizer, at your local user groups.
Contribute to your favorite open source packages (even if its a README ;)

If you enjoyed this code, please support me at one of the following:

Thank you! ☺

BTC Wallet
1HNHoUz8ruQGko8vh85Jf4nXx8tpEaxUxr

ETH Wallet
0xb561e6a160c86cd5831c323b0f9ce319b56c6421

Patreon
https://www.patreon.com/ogprogrammer
```