#include <iostream>
#include <cmath>
#include <iomanip>
#include <limits>

void Newton_Raphson_Method();

int main()
{
        Newton_Raphson_Method();
        return 0;
}

void Newton_Raphson_Method() 
{
        double n, x;
        std::cout << "Enter a Number: ";
        std::cin >> n;
                if (n < 0) {
                std::cerr << "Cannot compute sqrt of negative number\n";
                return;
        }
                if (n == 0){ std::cout << 0.0 << "\n"; return;}

                if (n >= 1.0) x = n / 2.0;
                else x = 1.0;
        double x_new = x;

                for (int i = 0; i < 1000; i++) 
                {
                        double fx = (x * x) - n;
                        double fpx = 2.0 * x;

                                if (std::fabs(fpx) < 1e-14) break;

                        x_new = x - (fx / fpx);

                                if (std::fabs(x_new - x) < 1e-12 * (std::fabs(x_new) + 1.0)) break;

                        x = x_new;
                }

        std::cout << std::setprecision(67) << "The root of "<< n << " is: "<< x_new << std::endl;
}
