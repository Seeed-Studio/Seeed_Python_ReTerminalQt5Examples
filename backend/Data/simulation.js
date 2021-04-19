//simple simulation script for testing a Cluster UI Design


// CPU VARIABLES
var cpuNeedleCount = 0;
var cpuReadoutCount = 0;
var maxNeedlecpu = 1000;
var idleNeedlecpu =0;

//CPU TEMP VARIABLES
var cputempNeedleCount = 0;
var cputempReadoutCount = 0;
var maxNeedlecputemp = 1000;
var idleNeedlecputemp =0;

// RAM VARIABLES
var ramNeedleCount = 0;
var ramReadoutCount = 0;
var maxNeedleram = 1000;
var idleNeedleram =0;

// flash VARIABLES
var flashNeedleCount = 0;
var flashReadoutCount = 0;
var maxNeedleflash = 1000;
var idleNeedleflash =0;

//SETUP
var reversecpu = false;
var reversecputemp = false;
var reverseram = false;
var reverseflash = false;


//FUNCTIONS FOR SETTING THE VALUES IN THE QML FILE - VALUES.QML

// CPU DIAL VARIABLES SET HERE

// controls the needle and arc
function setNeedlecpu() {
    values.cpu = (cpuNeedleCount)
}

// controls the numerical RPM readout
function setDisplaycpu() {
    values.displaycpu = (Math.round(cpuReadoutCount / 10))
}

// CPU TEMP DIAL VARIABLES SET HERE

// controls the needle and arc
function setNeedlecputemp() {
    values.cputemp = (cputempNeedleCount)
}

// controls the numerical RPM readout
function setDisplaycputemp() {
    values.displaycputemp = (Math.round(cputempReadoutCount / 10))
}

// RAM DIAL VARIABLES SET HERE

// controls the needle and arc
function setNeedleram() {
    values.ram = (ramNeedleCount)
}

// controls the numerical RPM readout
function setDisplayram() {
    values.displayram = (Math.round(ramReadoutCount / 10))
}

// flash DIAL VARIABLES SET HERE

// controls the needle and arc
function setNeedleflash() {
    values.flash = (flashNeedleCount)
}

// controls the numerical RPM readout
function setDisplayflash() {
    values.displayflash = (Math.round(flashReadoutCount / 10))
}


// MAIN LOOP


////TIMER FUNCTION FOR THE CPU

function cpuTimer()
{
    if (!reversecpu)
    {
        if (cpuNeedleCount < maxNeedlecpu)

        {
            cpuNeedleCount++
            //console.log ((rpmNeedleCount)+ "needle rpm");
            cpuReadoutCount++
            //console.log ((rpmNeedleCount)+ "readout rpm");

        }

        else {
            reversecpu = true;
        }

    }
    else {
        if (cpuNeedleCount > idleNeedlecpu)
        {
            cpuNeedleCount --
            //console.log ((rpmNeedleCount)+ "needle rpm");
            cpuReadoutCount --
            //console.log ((rpmReadoutCount)+ "readout rpm");

        }

        else {
            reversecpu = false
        }
    }

    setNeedlecpu()
    setDisplaycpu()
}

////TIMER FUNCTION FOR THE CPU TEMP

function cputempTimer()
{
    if (!reversecputemp)
    {
        if (cputempNeedleCount < maxNeedlecputemp)

        {
            cputempNeedleCount++
            //console.log ((rpmNeedleCount)+ "needle rpm");
            cputempReadoutCount++
            //console.log ((rpmNeedleCount)+ "readout rpm");

        }

        else {
            reversecputemp = true;
        }

    }
    else {
        if (cputempNeedleCount > idleNeedlecputemp)
        {
            cputempNeedleCount --
            //console.log ((rpmNeedleCount)+ "needle rpm");
            cputempReadoutCount --
            //console.log ((rpmReadoutCount)+ "readout rpm");

        }

        else {
            reversecputemp = false
        }
    }

    setNeedlecputemp()
    setDisplaycputemp()
}

////TIMER FUNCTION FOR THE RAM

function ramTimer()
{
    if (!reverseram)
    {
        if (ramNeedleCount < maxNeedleram)

        {
            ramNeedleCount++
            //console.log ((rpmNeedleCount)+ "needle rpm");
            ramReadoutCount++
            //console.log ((rpmNeedleCount)+ "readout rpm");

        }

        else {
            reverseram = true;
        }

    }
    else {
        if (ramNeedleCount > idleNeedleram)
        {
            ramNeedleCount --
            //console.log ((rpmNeedleCount)+ "needle rpm");
            ramReadoutCount --
            //console.log ((rpmReadoutCount)+ "readout rpm");

        }

        else {
            reverseram = false
        }
    }

    setNeedleram()
    setDisplayram()
}

////TIMER FUNCTION FOR THE flash

function flashTimer()
{
    if (!reverseflash)
    {
        if (flashNeedleCount < maxNeedleflash)

        {
            flashNeedleCount++
            //console.log ((rpmNeedleCount)+ "needle rpm");
            flashReadoutCount++
            //console.log ((rpmNeedleCount)+ "readout rpm");

        }

        else {
            reverseflash = true;
        }

    }
    else {
        if (flashNeedleCount > idleNeedleflash)
        {
            flashNeedleCount --
            //console.log ((rpmNeedleCount)+ "needle rpm");
            flashReadoutCount --
            //console.log ((rpmReadoutCount)+ "readout rpm");

        }

        else {
            reverseflash = false
        }
    }

    setNeedleflash()
    setDisplayflash()
}
