
var BetweenSpace = 5;//Space between docked gadgets in pixels
var TopSpace = 27;//Space between top of screen and first docked gadget

var version = 290;
var Native = null;
var guid = "{0E7BE950-4ACC-47CB-834B-41A8B96BBFF9}";
var typeLibGuid = "{51D5FC6F-AC9C-4FCA-B6A4-2421BD4AC5A6}";
var progId = "Sidebar7.Sidebar7Gadget";
var dllPath = System.Gadget.path+"\\Release\\Sidebar7.";  //"32.dll" or "64.dll" added later

function Load()
{
    ErrorText.innerHTML = Localized["ErrorText"];

    LoadNative();
    Native.CheckVersion(version);
    Native.Localized = LocalizedFunction;
    Native.GadgetPath = System.Gadget.path+"\\";
    Native.Init(BetweenSpace, TopSpace);
}

function Unload()
{
    if(Native != null)
        Native.Dispose();
    Native = null;
}

function LocalizedFunction(name)
{
    return Localized[name];
}

function LoadNative()
{
    var firstError = "WScriptError: ";
    var wshShell = new ActiveXObject("WScript.Shell");
    try
    {
        try
        {
            RegisterNative(wshShell, "HKLM");
        }
        catch(err)
        {
            firstError = err.name + ": " + err.number + ", " + err.message + "<br/>";
            RegisterNative(wshShell, "HKCU");
        }
    }
    catch(err)
    {
        ErrorText.innerHTML = firstError + err.name + ": " + err.number + ", " + err.message;
        document.body.style.width = "400px";
        document.body.style.height = "200px";
        wshShell.RegWrite("HKCU\\Software\\8GadgetPack\\GadgetBugRestart", 1); //this tells 8gadgetpack something bad happened so it can try to restart the process if this happened during the startup of the sidebar process
    }
}

function RegisterNative(wshShell, root)
{
    var dllPost = "";
    if(System.Machine.processorArchitecture.indexOf("64") != -1)
        dllPost = "64.dll";
    else
        dllPost = "32.dll";
    wshShell.RegWrite(root + "\\Software\\Classes\\" + progId + "\\", progId);
    wshShell.RegWrite(root + "\\Software\\Classes\\" + progId + "\\CLSID\\", guid);
    wshShell.RegWrite(root + "\\Software\\Classes\\" + progId + "\\CurVer\\", progId + ".1");

    wshShell.RegWrite(root + "\\Software\\Classes\\CLSID\\" + guid + "\\", progId);
    wshShell.RegWrite(root + "\\Software\\Classes\\CLSID\\" + guid + "\\InprocServer32\\", dllPath+dllPost);
    wshShell.RegWrite(root + "\\Software\\Classes\\CLSID\\" + guid + "\\InprocServer32\\ThreadingModel", "Apartment");
    wshShell.RegWrite(root + "\\Software\\Classes\\CLSID\\" + guid + "\\ProgID\\", progId + ".1");
    wshShell.RegWrite(root + "\\Software\\Classes\\CLSID\\" + guid + "\\TypeLib\\", typeLibGuid);
    wshShell.RegWrite(root + "\\Software\\Classes\\CLSID\\" + guid + "\\VersionIndependentProgID\\", progId);

    wshShell.RegWrite(root + "\\Software\\Classes\\TypeLib\\" + typeLibGuid + "\\1.0\\", progId + " - TypeLib");
    wshShell.RegWrite(root + "\\Software\\Classes\\TypeLib\\" + typeLibGuid + "\\1.0\\0\\win32\\", dllPath+dllPost);
    wshShell.RegWrite(root + "\\Software\\Classes\\TypeLib\\" + typeLibGuid + "\\1.0\\FLAGS\\", "0");
    wshShell.RegWrite(root + "\\Software\\Classes\\TypeLib\\" + typeLibGuid + "\\1.0\\HELPDIR\\", "");

    //ErrorText.innerHTML = "bla";
    //document.body.style.width = "200px";
    //document.body.style.height = "200px";
    for (var i = 0; i < 10000; i++)
    {
        try
        {
            if (wshShell.RegRead("HKCU\\Software\\8GadgetPack\\RaceCond") == "0")
            {
                //ErrorText.innerHTML = "0";
                break;
            }
        }
        catch(err)
        {
            break;
        }
        //ErrorText.innerHTML = "1";
    }
    // sometimes new ActiveXObject returns the wrong object, hopefully this crappy synchronization stops this...
    wshShell.RegWrite("HKCU\\Software\\8GadgetPack\\RaceCond", "1");
    Native = new ActiveXObject(progId); 
    wshShell.RegWrite("HKCU\\Software\\8GadgetPack\\RaceCond", "0");
}
