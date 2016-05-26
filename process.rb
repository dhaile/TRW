require 'rmagick'

img = Magick::ImageList.new("vw.jpg")

# Thumbnail is designed to shrink a large image to a small
# preview. It is the fastest, especially with small sizes.

  pic1 = img.thumbnail(0.2)      # Reduce to 20%
  pic2 = img.thumbnail(64,48)    # Reduce to 64x48 pixels

# Resize is medium speed, and makes an image fit inside the
# given dimensions without changing aspect ratio. The
# optional 3rd and 4th parameters are the filter and blur,
# defaulting to LanczosFilter and 1.0, respectively.

  pic3 = img.resize(0.40)       # Reduce to 40%
  pic4 = img.resize(320, 240)   # Fit inside 320x240
  pic5 = img.resize(300, 200, Magick::LanczosFilter, 0.92)

# Scale is the slowest, as it scales each dimension of the
# image independently (distorting it if necessary).

  pic8 = img.scale(0.60)         # Reduce to 60%
  pic9 = img.scale(400, 300)     # Reduce to 400x300
