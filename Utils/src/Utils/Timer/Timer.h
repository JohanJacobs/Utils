#pragma once
#include "Utils\Base.h"
#include "Utils\Log\Log.h"
#include <chrono>

/*
	Simple timer class, that is scope based. 

	{
		Timer timer(timername);
	}

	requires the logger class to be up and running.
	
*/
namespace UTILS 
{ 
	class Timer
	{
	public:
		Timer(const std::string& name);
		~Timer();

	private:
		std::string m_Name;
		std::chrono::time_point<std::chrono::steady_clock> m_StartTime;
		bool m_LoggerUp{false};
	};
}

#define TIMER() ::UTILS::Timer timer(__FUNCTION__)
