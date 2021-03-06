workspace "Utils"
    configurations {"Debug","Release"}
    architecture "x86_64"

IncludeDir = {} 
IncludeDir["utils"] = "%{wks.location}/Utils/src"
IncludeDir["spdlog"] = "%{wks.location}/Utils/vendor/spdlog/include"
IncludeDir["effolkronium"] = "%{wks.location}/Utils/vendor/effolkronium/include"

flags
	{
		"MultiProcessorCompile"
	}

include "Utils"
include "Sandbox"