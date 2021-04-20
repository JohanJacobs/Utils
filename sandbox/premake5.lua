project "Sandbox"
    kind "ConsoleApp"
    language "C++"
    cppdialect "C++17"

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
        IncludeDir["spdlog"]
    }


    filter "configurations:Debug"
        symbols "On"
        
    filter "configurations:Release"    
        optimize "On"