project "Sandbox"
    kind "ConsoleApp"
    language "C++"
    cppdialect "C++17"
    staticruntime "on"
    links {"Utils"}

    targetdir ("%{wks.location}/bin/%{cfg.buildcfg}-%{prj.name}")
    objdir    ("%{wks.location}/bin-int/%{cfg.buildcfg}-%{prj.name}")

    files 
    {
        "src/**.h",
        "src/**.cpp"
    }

    includedirs
    {
        IncludeDir["utils"],
        IncludeDir["spdlog"],
        IncludeDir["effolkronium"]
    }


    filter "configurations:Debug"
    runtime "Debug"
    symbols "On"
        
    filter "configurations:Release"    
        runtime "Release"
        optimize "On"