#include <fstream>
#include <iostream>

#include "custom_one_class_util.h"

std::set<int> filter_strong_footliers(const char* in_train_data)
{
    std::set<int> result;
    std::ifstream in(in_train_data);

    std::string line;
    int index(0);
    while (std::getline(in, line))
    {
        if (line[0] == '1')
        {
            result.insert(index);
        }
        ++index;
    }

    in.close();
    std::cout << "Strong footliers filtered:\n";
    for (std::set<int>::iterator it = result.begin();
         it != result.end();
         ++it)
    {
        std::cout << *it << '\n';
    }
    return result;
}
