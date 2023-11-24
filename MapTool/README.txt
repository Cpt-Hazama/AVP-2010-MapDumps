Windows 8 + Admin are needed to run this program!

  ### Preparations
   1. Download [QuickBMS](https://aluigi.altervista.org/quickbms.htm)
   2. Then download script [asura.bms](https://github.com/Trololp/AVP2010MapViewer/blob/main/usefull_stuff/asura.bms)
   3. For maps you want to look at you need first unpack **.pc** files. Map Geometry located at **...\Aliens vs Predator\Envs\(Map_name)\**
   this is file called **(Map_name).pc** you need to unpack this into the first folder for continue.*Example: Jungle.pc*.
   Mission files located in same folder with map geometry and have specific prefix like. files like **A01_(Map_name).pc**.
   you need to unpack it in second folder.
   *Note : A - means alien mission M - marine P - predator.*
 
  ### Launching and controls
   **Launch**
   1. Select folder with map geometry. *Note: folder you extracted (Map_name).pc first*
   2. Select folder with mission. *Note: you can not chose any folder then you will be looking only at map geometry*
   3. **Wait**, it can take long to load all files needed.
   
   **Usage**
   use keys W, S, A, D to move camera. press RMB (Right mouse button) to turn camera around. press LMB on specific entity to select this.
   key 'G' - will hide bboxes and information.
   key 'C' - show EMOD information
   key 'P' - show console
   ### Console commands
   'tp x y z' - teleport camera to given x, y, z location.
   'find seq_id' - finds entity by given id.
   'dump_smsg' - dump all SMSG entrys in debug.txt file.
   'dump_emod' - dump EMOD entry in debug.txt file.
   'font_size float' - editing console font size. (0.25 < font_size < 4.0)
   'font_color r g b' - editing console font color.
