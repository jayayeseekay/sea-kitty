============================================
  SEA KITTY - how to play
============================================

WHAT IT IS
----------
A swimming game for your niece. A black cat with a glass dome
helmet swims through a big underwater world looking for cat-food
treats. There's a minimap in the top-right showing where the cat
is. No way to lose, no time limit, no enemies - just exploring
and eating treats.


THE EASIEST WAY: PLAY ON THIS PC FIRST
--------------------------------------
Before bothering with hosting, just double-click index.html and
it'll open in your default browser. Works fine with mouse - click
and hold to swim. Good way to test that everything works.

NOTE: When opened directly (file:// URL) audio MIGHT not play in
some browsers. To get audio reliably, use the server method below.


PLAYING ON THE iPAD (LAN HOSTING)
---------------------------------
1. Make sure the iPad is on the SAME Wi-Fi network as this PC.

2. Double-click "start-server.bat" in this folder.
   - A black command-prompt window will open.
   - It will print one or more URLs that look like:
       http://192.168.1.42:8000/
     Pick the first one that starts with 192.168, 10., or 172.

3. The first time, Windows may pop up a firewall prompt:
       "Windows Defender Firewall has blocked some features
        of Python..."
   Tick "Private networks" and click "Allow access". This is
   safe - it only allows other devices on YOUR home Wi-Fi to
   reach the game.

4. On the iPad, open Safari, type the URL into the address bar,
   and tap Go.

5. Tap the splash screen to start. Then touch and hold anywhere
   on the screen and the cat swims toward your finger. Lift your
   finger and the cat slows to a stop.

6. When done playing, click into the black command-prompt window
   on the PC and press Ctrl+C to stop the server. (Or just close
   the window.)


CONTROLS
--------
- Touch and hold (or click and hold on PC): cat swims toward
  the touch point.
- Lift / release: cat slows to a stop.
- Camera follows the cat automatically.
- Top-left counter shows treats eaten.
- Top-right minimap shows where the cat is in the whole world.


THE WORLD
---------
- ~15 screens wide, 10 tall.
- Coral, kelp, rocks, starfish, shells - all in fixed positions
  (same every time you play, so she can recognise spots).
- Schools of small fish, big slow fish, and jellyfish swim around
  - they're decorative friends, never harmful.
- 100 cat-food treats scattered across the world.
- When all 100 are eaten, there's a small confetti celebration.
- Each new visit, the world resets (treats respawn).


TROUBLESHOOTING
---------------
"Python is not installed"
  -> The .bat file will tell you how to install it. Install
     Python from the Microsoft Store (search "Python 3"), then
     run start-server.bat again.

"Can't reach the URL on the iPad"
  -> Check both devices are on the same Wi-Fi network (NOT a
     guest network or wired vs wireless that are isolated).
  -> Try a different IP from the list (some PCs have multiple
     network adapters - VPN, virtual machines, etc.).
  -> Make sure you allowed Python through the firewall.
  -> Try turning off the iPad's Wi-Fi for 5 seconds, then back on.

"PC's IP keeps changing"
  -> Routers can re-assign IPs after reboots. Just re-run
     start-server.bat - it prints the current IP each time.
  -> If you want a permanent fix, set up a "DHCP reservation"
     in the router admin page.

"PC goes to sleep mid-game"
  -> Settings > System > Power: set the screen to sleep after
     never (or longer) while she's playing.

"Cat moves too fast / slow on the iPad"
  -> Tell me and I'll tune the speed values.


CREDITS
-------
Made for Jack's niece. Cat art and sea life all drawn with code
(no images), so the file is one tiny self-contained HTML file.
Sound effects are synthesized in real-time by the browser.
