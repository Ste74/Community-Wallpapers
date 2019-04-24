## Community Wallpapers
Wallpapers donated by the community (HD Photo or Digital Artwork)
For simplicity the artworks can be submitted via PR at https://github.com/Ste74/Community-Wallpapers

---

To minimize size of the manjaro package and to provide the best experience for our users, we follow these optmization steps for each image:

- You'll need these packages for the tools used here:  
`imagemagick`, `jhead` and [mozjpeg](https://mozjpeg.codelove.de/binaries.html)

- Convert image to JPG if in another format if is a photo, we can accept PNG format if the size is not huge:  
`mogrify -format jpg <imagefile>`

- Scale down image to match 4K (3840x2400) size:  
`mogrify -resize 3840x <image.jpg>`

- If image is still huge in size (above 4MB), check it's quality level:  
`identify -verbose <image.jpg> | grep 'Image:\|Quality'`  
If higher than _92_, reduce it down:  
`mogrify -quality 92 <image.jpg>`

- Remove all metadata except XMP and comments:  
`jhead -autorot -de -di -du -c <image.jpg>`

- Losslessly optimize images with _mozjpeg_:  
`/opt/mozjpeg/bin/jpegtran -optimize -progressive -outfile 'Output.jpg' 'Input.jpg'`

After renaming the resulting image to `Image_Title_by_Artist` format, it is ready for inclusion.
