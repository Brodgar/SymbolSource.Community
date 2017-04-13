@echo off
:Using nuget.exe 3.5 in PATH, pushes latest nupkg in current directory to nuget gallery.
:You need to be registered with nuget and an owner of this package and 
:'nuget setApiKey your-nuget-api-key -Source https://www.nuget.org' before calling.

NuGet push Vusion.SymbolSource.Server.Basic.*.nupkg -Source https://www.nuget.org/api/v2/package