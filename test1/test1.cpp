#include "test1.hpp"

#include <iostream>

void kek() { 
  std::cout << "asdf" << std::endl; 
}

char k = 11111111;


int main() {

  if (auto i = 0; i < 100)
    std::cout << "asdf" << std::endl;

  kek();
  return 0;
}
