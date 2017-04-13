This repository holds open source SymbolSource projects.

## SymbolSource.Server.Basic

Forked the dariuszzamorski fork and updated 'stable' branch.  Uploaded to Nuget Gallery as [Vusion.SymbolSource.Server.Basic](https://www.nuget.org/packages/Vusion.SymbolSource.Server.Basic), ready to install into an empty MVC 3 project.

The Gateway and Server.Basic projects hold the implementation of a symbol and source server equivalent to NuGet.Server. A simple, zeroconf solution for everyone to use. 

### Installing

You can read more about Server.Basic in these blog posts, which also include instructions on how to set it up:
 
 * [Setting up your own SymbolSource Server: step-by-step](http://xavierdecoster.azurewebsites.net/setting-up-your-own-symbolsource-server-step-by-step) by [Xavier Decoster](http://twitter.com/xavierdecoster),
 * [Releasing the community edition of SymbolSource](http://www.symbolsource.org/Public/Blog/View/2012-03-13/Releasing_the_community_edition_of_SymbolSource) by [Marcin Mikołajczak](http://twitter.com/tripleemcoder).
 
I found these resources critical to get everything working:

 * [Serve up debug symbols for your nuget packages heck yeah](http://netitude.bc3tech.net/2015/01/12/serve-up-debug-symbols-for-your-nuget-packages-heck-yeah/)
 * [Debugging Tools for Windows 10 (WinDbg)](https://go.microsoft.com/fwlink/p/?LinkId=845298)
 * [Enabling Web Deploy from Visual Studio to an Azure virtual machine](http://azureblogger.com/2016/02/enabling-web-deploy-from-visual-studio-to-an-azure-virtual-machine/)
 * [Troubleshooting Web Deploy problems with Visual Studio](https://www.iis.net/learn/publish/troubleshooting-web-deploy/troubleshooting-web-deploy-problems-with-visual-studio)
 * [Could not load file or assembly System.WebPages](http://stackoverflow.com/questions/11246861/could-not-load-file-or-assembly-system-web-webpages)
 
### Building

If you wish to build and debug Server.Basic, the general procedure is to:
 1. Fork and clone the repository.
 2. Build SymbolSource.Community.sln.
 3. Run SymbolSOurce.Server.Basic.Host or nuget pack SymbolSource.Server.Basic.nuspec and install as exaplained above.
 
## SymbolSource.Integration.NuGet.PackageExplorer
This is the NuGet Package Explorer plugin for validating symbol packages

## SymbolSource.Integration.NuGet.CommandLine
This could one day integrate symbol package validation into nuget.exe, but is only a stub at the moment.

## SymbolSource.Processing.Uninternalizer
This is a fun C# source code converter that uses NRefactory to change all protected and internal members into public ones. We use it to publish SymbolSource.Microsoft.Cci.Metadata.