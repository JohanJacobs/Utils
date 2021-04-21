#include "Utils.h"
#include <iostream>

void test_log()
{
	TIMER();
	ULOG_TRACE("Hello Utils, ULOG_TRACE log!\n");
	ULOG_INFO("ULOG_INFO log!\n");
	ULOG_WARN("ULOG_WARN log!\n");
	ULOG_ERROR("ULOG_ERROR log!\n");
}

void test_random()
{
	TIMER();
	std::cout << " Random float " << UTILS::Random::get<float>(1.0f, 5.0f) << "\n";
	std::cout << " Random int " << UTILS::Random::get<int>(-10, 10) << "\n";
	std::cout << " Random uint32_t " << UTILS::Random::get<uint32_t>(std::numeric_limits<uint32_t>::min(),std::numeric_limits<uint32_t>::max()) << "\n";
	std::cout << " Random bool " << UTILS::Random::get<bool>(0.5) << "\n";
}
int main()
{
	//UTILS::Log::Init();

	test_log();
	test_random();

	return 0;
}