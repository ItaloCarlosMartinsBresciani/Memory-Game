mkdir -p out
bin/mnt $1 out/out.mif && ./bin/sim out/out.mif bin/charmap.mif
