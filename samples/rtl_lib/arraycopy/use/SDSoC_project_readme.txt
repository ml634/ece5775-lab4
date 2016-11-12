================================================================================
To use the library in the SDSoC IDE, 
1. In Project Explorer, right-click on project and select 
      C/C++ Build Settings->SDS++ Linker->Libraries
2. Add 'rtl_arraycopy' to the -l Libraries list
3. Add project directory src folder to the -L Library search path
4. Click 'Apply' and 'OK'.
5. Build project
================================================================================
To build the librtl_arraycopy.a library and test from the command line
1. Open an SDSoC terminal 
2. cp -r <sds_install_root>/samples/rtl_lib/arraycopy .
3. cd arraycopy/build
4. make
5. cd ../use
6. make
================================================================================
