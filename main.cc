#include <iostream>

#include "lib/LibCore.hh"

int main()
{
    LibCore lib;
    lib.print_hello_world();
    lib.print_openssl_version(); // Call the new function

    return 0;
}
