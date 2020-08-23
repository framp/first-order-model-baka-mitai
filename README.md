Insta Baka Mitai
===

[![DAME DA NE](sample.gif)](https://github.com/framp/insta-baka-mitai/raw/master/sample.mp4)
* includes audio

Create your own Baka Mitai deepfake on your computer with one (kinda) command!

```sh
git clone git@github.com:framp/insta-baka-mitai.git
cd insta-baka-mitai
# Download files from https://www.kapwing.com/resources/baka-mitai-dame-da-ne-meme/#3-add-four-files-to-the-folder
# You'll need vox-cpk.pth.tar and bakamitai_template.mp4
docker build . -t baka-mitai-cpu -f baka-mitai-cpu.Dockerfile
docker run -m 4g -i --rm baka-mitai-cpu < ~/Downloads/me.png > result.mp4
```

This will work on any computer and it will use your CPU - so if you have a Nvidia GPU you may want to look elsewhere to generate results faster.
I'm open to contributions with the necessary changes to support CUDA.

Original repo & paper
---
Go and checkout the original [repo](https://github.com/AliaksandrSiarohin/first-order-model) and paper [First Order Motion Model for Image Animation](https://papers.nips.cc/paper/8935-first-order-motion-model-for-image-animation) by [Aliaksandr Siarohin](https://github.com/AliaksandrSiarohin), [Stéphane Lathuilière](http://stelat.eu), [Sergey Tulyakov](http://stulyakov.com), [Elisa Ricci](http://elisaricci.eu/) and [Nicu Sebe](http://disi.unitn.it/~sebe/).
