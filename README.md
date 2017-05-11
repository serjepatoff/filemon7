# filemon7

Fixed Jonathan Levin's filemon: http://www.newosxbook.com/src.jl?tree=listings&file=3-filemon.c

Builds successfully with Theos build system.
Although executable is thin 32-bit, it works on 32/64–bit.
Also fixed annoying ioctl() error on several iOS versions (found in original Jonathan's precompiled filemon).

Was successfully tested on 32-bit iOS 8.0.2, 8.1.3, 8.2.0, 9.3.2 and 64-bit iOS 9.3.2 and 9.3.3.
