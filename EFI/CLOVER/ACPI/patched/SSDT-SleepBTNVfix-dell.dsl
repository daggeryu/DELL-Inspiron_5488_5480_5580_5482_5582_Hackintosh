// Overriding BTNV
// In config ACPI, BTNV renamed XTNV
// Find:     42 54 4E 56 02
// Replace:  58 54 4E 56 02
#define LidManagement 0
#define ButtonManagement 1
//
#ifndef NO_DEFINITIONBLOCK
DefinitionBlock("", "SSDT", 2, "hack", "BTNVFix", 0)
{
#endif
    External(XWCF.MYLD, IntObj)
    External(XWCF.MPWS, IntObj)
    External(XWCF.MODE, IntObj)
    External(_SB.SBTN, DeviceObj)
    External(_SB.LID, DeviceObj)
    
    
    Method (_SB.BTNV, 2, NotSerialized)
    {
        If (Arg0 == 2)
        {
            If (\XWCF.MODE==0)
            {
                If (\XWCF.MYLD!=0)
                {
                    \XWCF.MYLD =0
                }
                Else
                {
                    \XWCF.MYLD =1
                }
                Notify (\_SB.LID, 0x80)
            }
            Else
            {
                \XWCF.MPWS =1
                Notify (\_SB.SBTN, 0x80)
            }
        }
        
        If (Arg0 == 3)
        {
            If (\XWCF.MODE==0)
            {
                \XWCF.MYLD =1
                Notify (\_SB.LID, 0x80)
            }
            Else
            {
                \XWCF.MPWS =1
                Notify (\_SB.SBTN, 0x80)
            }
        }
    } 
#ifndef NO_DEFINITIONBLOCK
}
#endif
//EOF