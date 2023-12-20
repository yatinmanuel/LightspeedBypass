
# **Bypassing Lightspeed Systems' Device-Enforced Proxy**

## **Compatibility**

This repository is designed for LCPS-issued devices running Windows 10. Please note that it is ***not compatible with ChromeOS devices***.


## **Requirements**

- *Windows 10*
- *Administrator Permissions*
- *Ability to create & modify users*
- *Access to* ***WinRE*** *(Windows Recovery Environment/Advanced Startup Menu)*

## **Important Notice (Please Read)**

The circumvention method outlined here was identified through exploratory curiosity and a process of trial and error. It is crucial to emphasize that the purpose is ***not*** to encourage or establish an environment without digital monitoring. Rather, it was an exploration conducted as part of cybersecurity studies to test a theoretical circumvention method.

## **Disclaimer (Please Read AGAIN)**

I cannot be held responsible for any irreversible errors that may occur. The intention behind creating this program is to ***prevent*** irreversible mistakes, not to cause them. The detailed steps and explanations provided below aim to enhance understanding.

**I explicitly disclaim responsibility** for any disciplinary actions resulting from the circumvention of school restrictions. This method is shared with the clear understanding that users engage with it ***at their own risk***.

## **Assumed Configuration**

Since this program is created for LCPS-issued devices, this script has assumed the directories of the following files:

- *Lightspeed System Files:* `C:\Program Files\Lightspeed Systems`
- *Lightspeed Driver:* `C:\Windows\System32\drivers\LSSADrv.sys`
- *Misc. Lightspeed Files:* `C:\ProgramData\Lightspeed Systems`

If the files aren't located in the mentioned directories or if you are from another school district, you will have to modify the directories in each script.

## **Files & Information**

This program consists of three `.bat` (batch) files:

- `pre_exec.bat`: Execute as administrator when logged into Windows.
- `post_exec.bat`: Execute in ***WinRE*** under Advanced Startup >> Command Prompt.
- `enable.bat`: Execute as administrator in WinRE or Windows.

## **Getting Started**

1. Download and extract the latest release of the zip from [here](https://github.com/yatinmanuel/LightspeedBypass/releases/latest).
2. Move the `post_exec.bat` script to the directory `C:\Program Files`.
3. Run the `pre_exec.bat` script as ***administrator*** (*Right-click and select "Run as Administrator"*).

The script will disable BitLocker (if enabled) and create a local administrator account with the credentials:

### ***PLEASE NOTE THIS DOWN!***  
- **Username:** admin1
- **Password:** password1

Once the script has created the local administrator account with the given credentials, please restart into Advanced Startup by:

- Pressing Windows + X
- Hovering over "Shutdown or Sign out"
- Holding the ***Shift*** key while clicking "Restart"

Select the `admin1` account created earlier and enter its password: `password1`

Run the script with the command `C:\Program Files\post_exec.bat`.

The script will rename all the files and prompt you to exit and restart. Typing `exit` will return you to the options menu. Press `Continue` to boot into Windows.

**Note:** Your school district may enforce filters via network, a simple **VPN** or **DNS** resolver will bypass this, I recommend using [Cloudflare WARP Client](https://developers.cloudflare.com/cloudflare-one/connections/connect-devices/warp/download-warp/).


## Re-enabling the Proxy

1. Move the `post_exec.bat` script to the directory `C:\Program Files`.
2. Restart into Advanced Startup by:

- Pressing Windows + X
- Hovering over "Shutdown or Sign out"
- Holding the ***Shift*** key while clicking "Restart"

3. Sign into `admin1` account  and enter its password: `password1`

4. Run the script with the command `C:\Program Files\enable.bat`.

The script will rename all the files and prompt you to exit and restart. Typing `exit` will return you to the options menu. Press `Continue` to boot into Windows.

## Errors
If you are experiencing any errors, open a GitHub [issue](https://github.com/yatinmanuel/LightspeedBypass/issues/new/choose).

# Stuff to work on

Making this script easier to use, adding file checks and other checks like BitLocker verification and user account verification.

Not rushing and making the next release at midnight again...
