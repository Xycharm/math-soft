#include <iostream>
/**
 * @brief Chicken class
 * 
 */
class Chicken
{
private:
	int age;
	int ID;
	double weight;		
public:
    /**
     * @brief Construct a new Chicken object
     * 
     * @param _a age of the chicken
     * @param _I id of the chicken
     * @param _w weight of the chicken
     */
    Chicken(int _a, int _I, double _w) : age(_a), ID(_I), weight(_w) {};
    ~Chicken() {
	std::cout << "jiiiiiiiiiiiii" << std::endl;
    };
    /**
     * @brief sing function
     * 
     */
    void sing () {
	std::cout << "jinitaimei" << std::endl;
    };
};
