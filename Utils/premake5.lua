
project "Utils"
    kind "StaticLib"
    language "C++"
    cppdialect "C++17"
    staticruntime "on"

    targetdir ("%{wks.location}/bin/%{cfg.buildcfg}-%{prj.name}")
    objdir    ("%{wks.location}/bin-int/%{cfg.buildcfg}-%{prj.name}")
    
    files 
    {
        "src/**.h",
        "src/**.cpp"
    }

    includedirs
    {
        "src",
        IncludeDir["spdlog"],
        IncludeDir["effolkronium"]
    }

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"
        
    filter "configurations:Release"    
        runtime "Release"
        optimize "on"