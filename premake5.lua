project "catch2"
    kind "StaticLib"
    language "C++"
    cppdialect "C++latest"
    warnings "Off" 
    
    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin-int/" .. outputdir .. "/%{prj.name}")
    systemversion "latest"

    files {
        "src/**"
    }
    
    includedirs {
        "src"
    }

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"