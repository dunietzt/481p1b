sh ./configure CFLAGS="--coverage -static"

make clean ; make 

for png_file in *.png; do
    # Run pngtest on the current PNG file
    ./pngtest "$png_file"
done

gcov *.c

rm *.gcda pngout.png


