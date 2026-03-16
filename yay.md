# yay install

after config the git ssh keygen, then we can start install yay.

1. install **go**, because we need **go** to compile.

2. get the PKGBUILD

`git clone http://aur.archlinux.org/yay.git`

3. (for user in China-mainland)

add these in the PKGBUILD:

`export GO111MODULE=on
export GOPROXY=https://goproxy.cn
`

after the *export* in *build*.

4. Then run:

`makepkg -si`



