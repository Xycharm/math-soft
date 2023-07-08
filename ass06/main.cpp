/**
 * @file main.cpp
 * @author Xu Yang 
 * @brief generating a chicken object and calling the sing function
 * @version 0.1
 * @date 2023-07-08
 * 
 * @copyright Copyright (c) 2023
 * 
 */
#include "Chicken.h"
/**
 * @brief generating a chicken object and calling the sing function
 * 
 * @return int 
 */
int main()
{
    Chicken chicken(114, 5, 14);
    chicken.sing();
    return 0;
};
