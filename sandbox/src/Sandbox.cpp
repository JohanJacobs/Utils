#include "Utils.h"

int main()
{
	UTILS::Log::Init();

	ULOG_TRACE("Hello Utils, ULOG_TRACE log!\n");
	ULOG_INFO("ULOG_INFO log!\n");
	ULOG_WARN("ULOG_WARN log!\n");
	ULOG_ERROR("ULOG_ERROR log!\n");

	return 0;
}