Build FFmpeg executable file for Android

## About

* FFmpeg 2.2.4
* x264 (24 Mar 2014, stable d7e689680023e327de7e052e01e7faee30135799)

## Requirement

* Ubuntu Precise (12.04 LTS)

### with vagrant

```bash
vagrant init hashicorp/precise32
vagrant up
vagrant ssh
```

## How to build

### Install required software

```bash
apt-get install -y git yasm bash patch make gawk automake autotools-dev libtool
# install Android NDK
wget http://dl.google.com/android/ndk/android-ndk-r9d-linux-x86.tar.bz2
tar xvf android-ndk-r9d-linux-x86.tar.bz2
# export NDK path
export NDK=/path/to/ndk
```

### Build
```bash
git clone https://github.com/fly1tkg/android-ffmpeg-executable
git submodule update --init
cd android-ffmpeg-executable
./build.sh
```

## Reference

* FFmpeg ( https://www.ffmpeg.org/ )
* x264 ( http://www.videolan.org/developers/x264.html )
* guardianproject/android-ffmpeg ( https://github.com/guardianproject/android-ffmpeg )
* How to Build ffmpeg with NDK r9 / roman10 ( http://www.roman10.net/how-to-build-ffmpeg-with-ndk-r9/ )
* Android用のffmpeg実行ファイルの作り方 / gabu ( http://qiita.com/gabu/items/8d91f7a126c903d0028a )

## License

The MIT License (MIT)

Copyright (c) 2014 Warld Limited

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
