mkdir -p target &&
./icmc-cc -i $1 > target/out.asm &&
cat std/io.asm >> target/out.asm &&
cat std/string.asm >> target/out.asm &&
bin/mnt target/out.asm target/out.mif && bin/sim target/out.mif bin/charmap.mif
