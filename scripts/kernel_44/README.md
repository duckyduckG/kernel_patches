# kernel_patches

These flags are needed to compile kernel 4.4.x with clang 16. Otherwise "Error: unknown pseudo-op: `.base64'
"
#### Required
     HOSTCC=clang \
     HOSTCXX=clang++ \
