project "glfw"
  kind "StaticLib"
  language "C"

  targetdir ("build/bin/" .. outputdir .. "/%{prj.name}")
  objdir ("build/obj/" .. outputdir .. "/%{prj.name}")

  files 
  {
    "include/GLFW/glfw3.h",
    "include/GLFW/glfw3native.h",
    "src/*.c"
  }

  filter "system:windows"
    systemversion "latest"
    staticruntime "On"

    defines 
    {
      "_GLFW_WIN32",
      "_CRT_SECURE_NO_WARNINGS"
    }

  filter "configurations:Debug"
    runtime "Debug"
    symbols "on"
    
  filter "configurations:Release"
    runtime "Release"
    optimize "on"
