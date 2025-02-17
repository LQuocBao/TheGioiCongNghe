/**
 * @license Copyright (c) 2003-2025, CKSource Holding sp. z o.o. All rights reserved.
 * For licensing, see LICENSE.md or https://ckeditor.com/legal/ckeditor-licensing-options
 */

( e => {
const { [ 'th' ]: { dictionary, getPluralForm } } = {"th":{"dictionary":{"Words: %0":"คำ: %0","Characters: %0":"ตัวอักษร: %0","Widget toolbar":"แถมเครื่องมือวิดเจ็ต","Insert paragraph before block":"แทรกย่อหน้าก่อนบล็อก","Insert paragraph after block":"แทรกย่อหน้าหลังบล็อก","Press Enter to type after or press Shift + Enter to type before the widget":"กด Enter เพื่อพิมพ์หลังจาก หรือกด Shift + Enter เพื่อพิมพ์ก่อนหน้าวิดเจ็ต","Keystrokes that can be used when a widget is selected (for example: image, table, etc.)":"แป้นพิมพ์ลัดที่สามารถใช้ได้เมื่อเลือกวิดเจ็ต (ยกตัวอย่าง: รูปภาพ, ตาราง, ฯลฯ)","Insert a new paragraph directly after a widget":"แทรกย่อหน้าใหม่หลังวิดเจ็ตโดยตรง","Insert a new paragraph directly before a widget":"แทรกย่อหน้าใหม่หน้าวิดเจ็ตโดยตรง","Move the caret to allow typing directly before a widget":"ย้ายสัญลักษณ์คาเร็ตเพื่อให้สามารถพิมพ์ได้ไปอยู่หน้าวิดเจ็ตโดยตรง","Move the caret to allow typing directly after a widget":"ย้ายสัญลักษณ์คาเร็ตเพื่อให้สามารถพิมพ์ได้ไปอยู่หลังวิดเจ็ตโดยตรง","Move focus from an editable area back to the parent widget":"ย้ายโฟกัสจากบริเวณที่แก้ไขได้กลับไปยังวิดเจ็ตแม่","Upload in progress":"กำลังดำเนินการอัปโหลด","Undo":"ย้อนกลับ","Redo":"ทำซ้ำ","Rich Text Editor":"โปรแกรมแก้ไข Rich Text","Edit block":"แก้ไขบล็อก","Click to edit block":"คลิกเพื่อแก้ไขบล็อก","Drag to move":"ลากเพื่อย้าย","Next":"ถัดไป","Previous":"ก่อนหน้า","Editor toolbar":"แถบเครื่องมือแก้ไข","Dropdown toolbar":"แถบเครื่องมือแบบเลื่อนลง","Dropdown menu":"เมนูแบบเลื่อนลง","Black":"สีดำ","Dim grey":"สีเทาเข้ม","Grey":"สีเทา","Light grey":"สีเทาอ่อน","White":"สีขาว","Red":"สีแดง","Orange":"สีส้ม","Yellow":"สีเหลือง","Light green":"สีเขียวอ่อน","Green":"สีเขียว","Aquamarine":"พลอยสีฟ้า","Turquoise":"สีเขียวขุ่น","Light blue":"สีฟ้า","Blue":"สีน้ำเงิน","Purple":"สีม่วง","Editor block content toolbar":"แถบเครื่องมือแก้ไขบล็อกเนื้อหา","Editor contextual toolbar":"แถบเครื่องมือแก้ไขข้อความ","HEX":"HEX","No results found":"ไม่พบผลลัพธ์","No searchable items":"ไม่มีรายการที่สามารถค้นหาได้","Editor dialog":"การสนทนาของบรรณาธิการ","Close":"ปิด","Help Contents. To close this dialog press ESC.":"เนื้อหาความช่วยเหลือ หากต้องการปิดกล่องโต้ตอบนี้ ให้กดปุ่ม ESC","Below, you can find a list of keyboard shortcuts that can be used in the editor.":"ด้านล่างนี้ คุณจะพบกับรายการแป้นพิมพ์ลัดที่สามารถใช้ในตัวแก้ไขได้","(may require <kbd>Fn</kbd>)":"(อาจจำเป็นต้องมี <kbd>Fn</kbd>)","Accessibility":"การเข้าถึง","Accessibility help":"ความช่วยเหลือการเข้าถึง","Press %0 for help.":"กด %0 เพื่อความช่วยเหลือ","Move focus in and out of an active dialog window":"ย้ายโฟกัสเข้าและออกจากกล่องโต้ตอบที่ใช้งานอยู่","MENU_BAR_MENU_FILE":"ไฟล์","MENU_BAR_MENU_EDIT":"แก้ไข","MENU_BAR_MENU_VIEW":"ดู","MENU_BAR_MENU_INSERT":"แทรก","MENU_BAR_MENU_FORMAT":"รูปแบบ","MENU_BAR_MENU_TOOLS":"เครื่องมือ","MENU_BAR_MENU_HELP":"ช่วยเหลือ","MENU_BAR_MENU_TEXT":"ข้อความ","MENU_BAR_MENU_FONT":"แบบอักษร","Editor menu bar":"แถบเมนูตัวแก้ไข","Please enter a valid color (e.g. \"ff0000\").":"โปรดป้อนสีที่ถูกต้อง (เช่น \"ff0000\")","Insert table":"แทรกตาราง","Header column":"หัวข้อคอลัมน์","Insert column left":"แทรกคอลัมน์ทางซ้าย","Insert column right":"แทรกคอลัมน์ทางขวา","Delete column":"ลบคอลัมน์","Select column":"เลือกคอลัมน์","Column":"คอลัมน์","Header row":"ส่วนหัวแถว","Insert row below":"แทรกส่วนหัวด้านล่าง","Insert row above":"แทรกส่วนหัวด้านบน","Delete row":"ลบแถว","Select row":"เลือกแถว","Row":"แถว","Merge cell up":"ผสานเซลล์ด้านบน","Merge cell right":"ผสานเซลล์ด้านขวา","Merge cell down":"ผสานเซลล์ด้านล่าง","Merge cell left":"ผสานเซลล์ด้านซ้าย","Split cell vertically":"แยกเซลล์แนวตั้ง","Split cell horizontally":"แยกเซลล์แนวนอน","Merge cells":"ผสานเซลล์","Table toolbar":"เครื่องมือตาราง","Table properties":"คุณสมบัติของตาราง","Cell properties":"คุณสมบัติของเซลล์","Border":"เส้นขอบ","Style":"รูปแบบ","Width":"ความกว้าง","Height":"ความสูง","Color":"สี","Background":"พื้นหลัง","Padding":"การเสริมเต็ม","Dimensions":"ขนาด","Table cell text alignment":"การจัดตำแหน่งข้อความของเซลล์ตาราง","Alignment":"การจัดตำแหน่ง","Horizontal text alignment toolbar":"แถบเครื่องมือจัดตำแหน่งข้อความในแนวนอน","Vertical text alignment toolbar":"แถบเครื่องมือจัดตำแหน่งข้อความแนวตั้ง","Table alignment toolbar":"แถบเครื่องมือจัดตำแหน่งตาราง","None":"ไม่มี","Solid":"เส้นทึบ","Dotted":"เส้นไข่ปลา","Dashed":"เส้นประ","Double":"คู่","Groove":"ร่อง","Ridge":"สัน","Inset":"ยุบ","Outset":"นูน","Align cell text to the left":"จัดตำแหน่งข้อความของเซลล์ชิดซ้าย","Align cell text to the center":"จัดตำแหน่งข้อความของเซลล์ไว้กึ่งกลาง","Align cell text to the right":"จัดตำแหน่งข้อความของเซลล์ชิดขวา","Justify cell text":"จัดขอบข้อความของเซลล์ให้กระจายเต็มแนว","Align cell text to the top":"จัดตำแหน่งข้อความของเซลล์ชิดด้านบน","Align cell text to the middle":"จัดตำแหน่งข้อความของเซลล์ไว้กึ่งกลาง","Align cell text to the bottom":"จัดตำแหน่งข้อความของเซลล์ชิดด้านล่าง","Align table to the left":"จัดตำแหน่งตารางชิดด้านซ้าย","Center table":"จัดตำแหน่งตารางไว้ตรงกลาง","Align table to the right":"จัดตำแหน่งตารางชิดด้านขวา","The color is invalid. Try \"#FF0000\" or \"rgb(255,0,0)\" or \"red\".":"สีไม่ถูกต้อง ลอง \"#FF0000\" หรือ \"rgb(255,0,0)\" หรือ \"red\"","The value is invalid. Try \"10px\" or \"2em\" or simply \"2\".":"ค่าไม่ถูกต้อง ลอง \"10px\" หรือ \"2em\" หรือแค่เพียง \"2\"","Enter table caption":"ป้อนคำบรรยายตาราง","Keystrokes that can be used in a table cell":"แป้นพิมพ์ลัดที่สามารถใช้ได้ในเซลล์ตาราง","Move the selection to the next cell":"ย้ายการเลือกไปยังเซลล์ถัดไป","Move the selection to the previous cell":"ย้ายการเลือกไปยังเซลล์ก่อนหน้า","Insert a new table row (when in the last cell of a table)":"แทรกแถวในตารางใหม่ (เมื่ออยู่ในเซลล์สุดท้ายของตาราง)","Navigate through the table":"นำทางผ่านตาราง","Table":"ตาราง","Styles":"รูปแบบ","Multiple styles":"มีหลายรูปแบบ","Block styles":"รูปแบบบล็อก","Text styles":"รูปแบบข้อความ","Special characters":"อักขระพิเศษ","Category":"หมวดหมู่","All":"ทั้งหมด","Arrows":"ลูกศร","Currency":"สกุลเงิน","Latin":"ละติน","Mathematical":"คณิตศาสตร์","Text":"ข้อความ","leftwards simple arrow":"ลูกศรซ้ายธรรมดา","rightwards simple arrow":"ลูกศรขวาธรรมดา","upwards simple arrow":"ลูกศรขึ้นธรรมดา","downwards simple arrow":"ลูกศรลงธรรมดา","leftwards double arrow":"ลูกศรซ้ายคู่","rightwards double arrow":"ลูกศรขวาคู่","upwards double arrow":"ลูกศรขึ้นคู่","downwards double arrow":"ลูกศรลงคู่","leftwards dashed arrow":"ลูกศรซ้ายเส้นประ","rightwards dashed arrow":"ลูกศรขวาเส้นประ","upwards dashed arrow":"ลูกศรขึ้นเส้นประ","downwards dashed arrow":"ลูกศรลงเส้นประ","leftwards arrow to bar":"ลูกศรชี้ซ้ายชนขีด","rightwards arrow to bar":"ลูกศรชี้ขวาชนขีด","upwards arrow to bar":"ลูกศรชี้ขึ้นชนขีด","downwards arrow to bar":"ลูกศรชี้ลงชนขีด","up down arrow with base":"ลูกศรขึ้นลงมีฐาน","back with leftwards arrow above":"ย้อนกลับมีลูกศรซ้ายข้างบน","end with leftwards arrow above":"สิ้นสุดมีลูกศรซ้ายข้างบน","on with exclamation mark with left right arrow above":"เปิดมีอัศเจรีย์มีลูกศรซ้ายขวาข้างบน","soon with rightwards arrow above":"เร็ว ๆ นี้มีลูกศรขวาข้างบน","top with upwards arrow above":"บนสุดมีลูกศรขึ้นข้างบน","Dollar sign":"สัญลักษณ์ดอลลาร์","Euro sign":"สัญลักษณ์ยูโร","Yen sign":"สัญลักษณ์เยน","Pound sign":"สัญลักษณ์ปอนด์","Cent sign":"สัญลักษณ์เซนต์","Euro-currency sign":"สัญลักษณ์สกุลเงินยูโร","Colon sign":"สัญลักษณ์ทวิภาค","Cruzeiro sign":"สัญลักษณ์ครูเซโร","French franc sign":"สัญลักษณ์ฟรังก์ฝรั่งเศส","Lira sign":"สัญลักษณ์ลีรา","Currency sign":"สัญลักษณ์สกุลเงิน","Bitcoin sign":"สัญลักษณ์บิตคอยน์","Mill sign":"สัญลักษณ์มิลล์","Naira sign":"สัญลักษณ์ไนรา","Peseta sign":"สัญลักษณ์ปีเซตา","Rupee sign":"สัญลักษณ์รูปี","Won sign":"สัญลักษณ์วอน","New sheqel sign":"สัญลักษณ์นิวเชเกล","Dong sign":"สัญลักษณ์ดง","Kip sign":"สัญลักษณ์กีบ","Tugrik sign":"สัญลักษณ์ทูกรีก","Drachma sign":"สัญลักษณ์ดรักมา","German penny sign":"สัญลักษณ์เพนนีเยอรมัน","Peso sign":"สัญลักษณ์เปโซ","Guarani sign":"สัญลักษณ์กวารานี","Austral sign":"สัญลักษณ์ออสตรัล","Hryvnia sign":"สัญลักษณ์ฮริฟเนีย","Cedi sign":"สัญลักษณ์เซดี","Livre tournois sign":"สัญลักษณ์ลิฟร์ ทัวร์นัวส์","Spesmilo sign":"สัญลักษณ์สเปสมิโล","Tenge sign":"สัญลักษณ์เทงเจ","Indian rupee sign":"สัญลักษณ์อินเดียรูปี","Turkish lira sign":"สัญลักษณ์ลีราตุรกี","Nordic mark sign":"สัญลักษณ์มาร์กนอร์ดิก","Manat sign":"สัญลักษณ์มานัต","Ruble sign":"สัญลักษณ์รูเบิล","Latin capital letter a with macron":"ตัวอักษรลาตินเอตัวพิมพ์ใหญ่มีมาครอน","Latin small letter a with macron":"ตัวอักษรลาตินเอตัวพิมพ์เล็กมีมาครอน","Latin capital letter a with breve":"ตัวอักษรลาตินเอตัวพิมพ์ใหญ่มีเบรฟ","Latin small letter a with breve":"ตัวอักษรลาตินเอตัวพิมพ์เล็กมีเบรฟ","Latin capital letter a with ogonek":"ตัวอักษรลาตินเอตัวพิมพ์ใหญ่มีโอโกเนก","Latin small letter a with ogonek":"ตัวอักษรลาตินเอตัวพิมพ์เล็กมีโอโกเนก","Latin capital letter c with acute":"ตัวอักษรลาตินซีตัวพิมพ์ใหญ่มีอะคิวต์","Latin small letter c with acute":"ตัวอักษรลาตินซีตัวพิมพ์เล็กมีอะคิวต์","Latin capital letter c with circumflex":"ตัวอักษรลาตินซีตัวพิมพ์ใหญ่มีเซอร์คัมเฟล็กซ์","Latin small letter c with circumflex":"ตัวอักษรลาตินซีตัวพิมพ์เล็กมีเซอร์คัมเฟล็กซ์","Latin capital letter c with dot above":"ตัวอักษรลาตินซีตัวพิมพ์ใหญ่มีจุดข้างบน","Latin small letter c with dot above":"ตัวอักษรลาตินซีตัวพิมพ์เล็กมีจุดข้างบน","Latin capital letter c with caron":"ตัวอักษรลาตินซีตัวพิมพ์ใหญ่มีคารอน","Latin small letter c with caron":"ตัวอักษรลาตินซีตัวพิมพ์เล็กมีคารอน","Latin capital letter d with caron":"ตัวอักษรลาตินดีตัวพิมพ์ใหญ่มีคารอน","Latin small letter d with caron":"ตัวอักษรลาตินดีตัวพิมพ์เล็กมีคารอน","Latin capital letter d with stroke":"ตัวอักษรลาตินดีตัวพิมพ์ใหญ่มีสโตรก","Latin small letter d with stroke":"ตัวอักษรลาตินดีตัวพิมพ์เล็กมีสโตรก","Latin capital letter e with macron":"ตัวอักษรลาตินอีตัวพิมพ์ใหญ่มีมาครอน","Latin small letter e with macron":"ตัวอักษรลาตินอีตัวพิมพ์เล็กมีมาครอน","Latin capital letter e with breve":"ตัวอักษรลาตินอีตัวพิมพ์ใหญ่มีเบรฟ","Latin small letter e with breve":"ตัวอักษรลาตินอีตัวพิมพ์เล็กมีเบรฟ","Latin capital letter e with dot above":"ตัวอักษรลาตินอีตัวพิมพ์ใหญ่มีจุดข้างบน","Latin small letter e with dot above":"ตัวอักษรลาตินอีตัวพิมพ์เล็กมีจุดข้างบน","Latin capital letter e with ogonek":"ตัวอักษรลาตินอีตัวพิมพ์ใหญ่มีโอโกเนก","Latin small letter e with ogonek":"ตัวอักษรลาตินอีตัวพิมพ์ใหญ่มีโอโกเนก","Latin capital letter e with caron":"ตัวอักษรลาตินอีตัวพิมพ์เล็กมีคารอน","Latin small letter e with caron":"ตัวอักษรลาตินอีตัวเล็กใหญ่มีคารอน","Latin capital letter g with circumflex":"ตัวอักษรลาตินจีตัวพิมพ์ใหญ่มีเซอร์คัมเฟล็กซ์","Latin small letter g with circumflex":"ตัวอักษรลาตินจีตัวพิมพ์เล็กมีเซอร์คัมเฟล็กซ์","Latin capital letter g with breve":"ตัวอักษรลาตินจีตัวพิมพ์ใหญ่มีเบรฟ","Latin small letter g with breve":"ตัวอักษรลาตินจีตัวพิมพ์เล็กมีเบรฟ","Latin capital letter g with dot above":"ตัวอักษรลาตินจีตัวพิมพ์ใหญ่มีจุดข้างบน","Latin small letter g with dot above":"ตัวอักษรลาตินจีตัวพิมพ์เล็กมีจุดข้างบน","Latin capital letter g with cedilla":"ตัวอักษรลาตินจีตัวพิมพ์ใหญ่มีเซดีลลา","Latin small letter g with cedilla":"ตัวอักษรลาตินจีตัวพิมพ์เล็กมีเซดีลลา","Latin capital letter h with circumflex":"ตัวอักษรลาตินเอชตัวพิมพ์ใหญ่มีเซอร์คัมเฟล็กซ์","Latin small letter h with circumflex":"ตัวอักษรลาตินเอชตัวพิมพ์เล็กมีเซอร์คัมเฟล็กซ์","Latin capital letter h with stroke":"ตัวอักษรลาตินเอชตัวพิมพ์ใหญ่มีสโตรก","Latin small letter h with stroke":"ตัวอักษรลาตินเอชตัวพิมพ์เล็กมีสโตรก","Latin capital letter i with tilde":"ตัวอักษรลาตินไอตัวพิมพ์ใหญ่มีทิลด์","Latin small letter i with tilde":"ตัวอักษรลาตินไอตัวพิมพ์เล็กมีทิลด์","Latin capital letter i with macron":"ตัวอักษรลาตินไอตัวพิมพ์ใหญ่มีมาครอน","Latin small letter i with macron":"ตัวอักษรลาตินไอตัวพิมพ์เล็กมีมาครอน","Latin capital letter i with breve":"ตัวอักษรลาตินไอตัวพิมพ์ใหญ่มีเบรฟ","Latin small letter i with breve":"ตัวอักษรลาตินไอตัวพิมพ์เล็กมีเบรฟ","Latin capital letter i with ogonek":"ตัวอักษรลาตินไอตัวพิมพ์ใหญ่มีโอโกเนก","Latin small letter i with ogonek":"ตัวอักษรลาตินไอตัวพิมพ์เล็กมีโอโกเนก","Latin capital letter i with dot above":"ตัวอักษรลาตินไอตัวพิมพ์ใหญ่มีจุดข้างบน","Latin small letter dotless i":"ตัวอักษรลาตินไอไม่มีจุดตัวพิมพ์เล็ก","Latin capital ligature ij":"ตัวอักษรลาตินแฝดไอเจตัวพิมพ์ใหญ่","Latin small ligature ij":"ตัวอักษรลาตินแฝดไอเจตัวพิมพ์เล็ก","Latin capital letter j with circumflex":"ตัวอักษรลาตินเจตัวพิมพ์ใหญ่มีเซอร์คัมเฟล็กซ์","Latin small letter j with circumflex":"ตัวอักษรลาตินเจตัวพิมพ์เล็กมีเซอร์คัมเฟล็กซ์","Latin capital letter k with cedilla":"ตัวอักษรลาตินเคตัวพิมพ์ใหญ่มีเซดีลลา","Latin small letter k with cedilla":"ตัวอักษรลาตินเคตัวพิมพ์เล็กมีเซดีลลา","Latin small letter kra":"ตัวอักษรลาตินคราตัวพิมพ์เล็ก","Latin capital letter l with acute":"ตัวอักษรลาตินแอลตัวพิมพ์ใหญ่มีอะคิวต์","Latin small letter l with acute":"ตัวอักษรลาตินแอลตัวพิมพ์เล็กมีอะคิวต์","Latin capital letter l with cedilla":"ตัวอักษรลาตินแอลตัวพิมพ์ใหญ่มีเซดีลลา","Latin small letter l with cedilla":"ตัวอักษรลาตินแอลตัวพิมพ์เล็กมีเซดีลลา","Latin capital letter l with caron":"ตัวอักษรลาตินแอลตัวพิมพ์ใหญ่มีคารอน","Latin small letter l with caron":"ตัวอักษรลาตินแอลตัวพิมพ์เล็กมีคารอน","Latin capital letter l with middle dot":"ตัวอักษรลาตินแอลตัวพิมพ์ใหญ่มีจุดกลาง","Latin small letter l with middle dot":"ตัวอักษรลาตินแอลตัวพิมพ์เล็กมีจุดกลาง","Latin capital letter l with stroke":"ตัวอักษรลาตินแอลตัวพิมพ์ใหญ่มีสโตรก","Latin small letter l with stroke":"ตัวอักษรลาตินแอลตัวพิมพ์เล็กมีสโตรก","Latin capital letter n with acute":"ตัวอักษรลาตินเอ็นตัวพิมพ์ใหญ่มีอะคิวต์","Latin small letter n with acute":"ตัวอักษรลาตินเอ็นตัวพิมพ์เล็กมีอะคิวต์","Latin capital letter n with cedilla":"ตัวอักษรลาตินเอ็นตัวพิมพ์ใหญ่มีเซดีลลา","Latin small letter n with cedilla":"ตัวอักษรลาตินเอ็นตัวพิมพ์เล็กมีเซดีลลา","Latin capital letter n with caron":"ตัวอักษรลาตินเอ็นตัวพิมพ์ใหญ่มีคารอน","Latin small letter n with caron":"ตัวอักษรลาตินเอ็นตัวพิมพ์เล็กมีคารอน","Latin small letter n preceded by apostrophe":"ตัวอักษรลาตินเอ็นตัวพิมพ์เล็กนำหน้าด้วยอะพอสทรอฟี","Latin capital letter eng":"ตัวอักษรลาตินอังตัวพิมพ์ใหญ่","Latin small letter eng":"ตัวอักษรลาตินอังตัวพิมพ์เล็ก","Latin capital letter o with macron":"ตัวอักษรลาตินโอตัวพิมพ์ใหญ่มีมาครอน","Latin small letter o with macron":"ตัวอักษรลาตินโอตัวพิมพ์เล็กมีมาครอน","Latin capital letter o with breve":"ตัวอักษรลาตินโอตัวพิมพ์ใหญ่มีเบรฟ","Latin small letter o with breve":"ตัวอักษรลาตินโอตัวพิมพ์เล็กมีเบรฟ","Latin capital letter o with double acute":"ตัวอักษรลาตินโอตัวพิมพ์ใหญ่มีดับเบิลอะคิวต์","Latin small letter o with double acute":"ตัวอักษรลาตินโอตัวพิมพ์เล็กมีดับเบิลอะคิวต์","Latin capital ligature oe":"ตัวอักษรลาตินแฝดโออีตัวพิมพ์ใหญ่","Latin small ligature oe":"ตัวอักษรลาตินแฝดโออีตัวพิมพ์เล็ก","Latin capital letter r with acute":"ตัวอักษรลาตินอาร์ตัวพิมพ์ใหญ่มีอะคิวต์","Latin small letter r with acute":"ตัวอักษรลาตินอาร์ตัวพิมพ์เล็กมีอะคิวต์","Latin capital letter r with cedilla":"ตัวอักษรลาตินอาร์ตัวพิมพ์ใหญ่มีเซดีลลา","Latin small letter r with cedilla":"ตัวอักษรลาตินอาร์ตัวพิมพ์เล็กมีเซดีลลา","Latin capital letter r with caron":"ตัวอักษรลาตินอาร์ตัวพิมพ์ใหญ่มีคารอน","Latin small letter r with caron":"ตัวอักษรลาตินอาร์ตัวพิมพ์เล็กมีคารอน","Latin capital letter s with acute":"ตัวอักษรลาตินเอสตัวพิมพ์ใหญ่มีอะคิวต์","Latin small letter s with acute":"ตัวอักษรลาตินเอสตัวพิมพ์เล็กมีอะคิวต์","Latin capital letter s with circumflex":"ตัวอักษรลาตินเอสตัวพิมพ์ใหญ่มีเซอร์คัมเฟล็กซ์","Latin small letter s with circumflex":"ตัวอักษรลาตินเอสตัวพิมพ์เล็กมีเซอร์คัมเฟล็กซ์","Latin capital letter s with cedilla":"ตัวอักษรลาตินเอสตัวพิมพ์ใหญ่มีเซดีลลา","Latin small letter s with cedilla":"ตัวอักษรลาตินเอสตัวพิมพ์เล็กมีเซดีลลา","Latin capital letter s with caron":"ตัวอักษรลาตินเอสตัวพิมพ์ใหญ่มีคารอน","Latin small letter s with caron":"ตัวอักษรลาตินเอสตัวพิมพ์เล็กมีคารอน","Latin capital letter t with cedilla":"ตัวอักษรลาตินทีตัวพิมพ์ใหญ่มีเซดีลลา","Latin small letter t with cedilla":"ตัวอักษรลาตินทีตัวพิมพ์เล็กมีเซดีลลา","Latin capital letter t with caron":"ตัวอักษรลาตินทีตัวพิมพ์ใหญ่มีคารอน","Latin small letter t with caron":"ตัวอักษรลาตินทีตัวพิมพ์เล็กมีคารอน","Latin capital letter t with stroke":"ตัวอักษรลาตินทีตัวพิมพ์ใหญ่มีสโตรก","Latin small letter t with stroke":"ตัวอักษรลาตินทีตัวพิมพ์เล็กมีสโตรก","Latin capital letter u with tilde":"ตัวอักษรลาตินยูตัวพิมพ์ใหญ่มีทิลด์","Latin small letter u with tilde":"ตัวอักษรลาตินยูตัวพิมพ์เล็กมีทิลด์","Latin capital letter u with macron":"ตัวอักษรลาตินยูตัวพิมพ์ใหญ่มีมาครอน","Latin small letter u with macron":"ตัวอักษรลาตินยูตัวพิมพ์เล็กมีมาครอน","Latin capital letter u with breve":"ตัวอักษรลาตินยูตัวพิมพ์ใหญ่มีเบรฟ","Latin small letter u with breve":"ตัวอักษรลาตินยูตัวพิมพ์เล็กมีเบรฟ","Latin capital letter u with ring above":"ตัวอักษรลาตินยูตัวพิมพ์ใหญ่มีแหวนข้างบน","Latin small letter u with ring above":"ตัวอักษรลาตินยูตัวพิมพ์เล็กมีแหวนข้างบน","Latin capital letter u with double acute":"ตัวอักษรลาตินยูตัวพิมพ์ใหญ่มีดับเบิลอะคิวต์","Latin small letter u with double acute":"ตัวอักษรลาตินยูตัวพิมพ์เล็กมีดับเบิลอะคิวต์","Latin capital letter u with ogonek":"ตัวอักษรลาตินยูตัวพิมพ์ใหญ่มีโอโกเนก","Latin small letter u with ogonek":"ตัวอักษรลาตินยูตัวพิมพ์เล็กมีโอโกเนก","Latin capital letter w with circumflex":"ตัวอักษรลาตินดับเบิลยูตัวพิมพ์ใหญ่มีเซอร์คัมเฟล็กซ์","Latin small letter w with circumflex":"ตัวอักษรลาตินดับเบิลยูตัวพิมพ์เล็กมีเซอร์คัมเฟล็กซ์","Latin capital letter y with circumflex":"ตัวอักษรลาตินวายตัวพิมพ์ใหญ่มีเซอร์คัมเฟล็กซ์","Latin small letter y with circumflex":"ตัวอักษรลาตินวายตัวพิมพ์เล็กมีเซอร์คัมเฟล็กซ์","Latin capital letter y with diaeresis":"ตัวอักษรลาตินวายตัวพิมพ์ใหญ่มีไดอาเรซิส","Latin capital letter z with acute":"ตัวอักษรลาตินแซดตัวพิมพ์ใหญ่มีอะคิวต์","Latin small letter z with acute":"ตัวอักษรลาตินแซดตัวพิมพ์เล็กมีอะคิวต์","Latin capital letter z with dot above":"ตัวอักษรลาตินแซดตัวพิมพ์ใหญ่มีจุดข้างบน","Latin small letter z with dot above":"ตัวอักษรลาตินแซดตัวพิมพ์เล็กมีจุดข้างบน","Latin capital letter z with caron":"ตัวอักษรลาตินแซดตัวพิมพ์ใหญ่มีคารอน","Latin small letter z with caron":"ตัวอักษรลาตินแซดตัวพิมพ์เล็กมีคารอน","Latin small letter long s":"ตัวอักษรลาตินเล็กเอสยาว","Less-than sign":"สัญลักษณ์น้อยกว่า","Greater-than sign":"สัญลักษณ์มากกว่า","Less-than or equal to":"น้อยกว่าหรือเท่ากับ","Greater-than or equal to":"มากกว่าหรือเท่ากับ","En dash":"ขีด","Em dash":"ขีดยาว","Macron":"มาครอน","Overline":"ขีดบน","Degree sign":"สัญลักษณ์องศา","Minus sign":"สัญลักษณ์ลบ","Plus-minus sign":"สัญลักษณ์บวกลบ","Division sign":"สัญลักษณ์หาร","Fraction slash":"ขีดแบ่ง","Multiplication sign":"สัญลักษณ์คูณ","Latin small letter f with hook":"ตัวอักษรลาตินเอฟเล็กมีตะขอ","Integral":"อินทิกรัล","N-ary summation":"ผลรวมเอ็นเรย์","Infinity":"อนันต์","Square root":"รากที่สอง","Tilde operator":"ตัวปฏิบัติการทิลด์","Approximately equal to":"ประมาณเท่ากับ","Almost equal to":"เกือบเท่ากับ","Not equal to":"ไม่เท่ากับ","Identical to":"เหมือนกับ","Element of":"องค์ประกอบของ","Not an element of":"ไม่ใช่องค์ประกอบของ","Contains as member":"มีเป็นสมาชิก","N-ary product":"ผลคูณเอ็นเรย์","Logical and":"ตรรกะและ","Logical or":"ตรรกะหรือ","Not sign":"สัญลักษณ์ไม่ใช่","Intersection":"อินเตอร์เซกชัน","Union":"ยูเนียน","Partial differential":"อนุพันธ์ย่อย","For all":"สำหรับทั้งหมด","There exists":"มีอยู่","Empty set":"เซตว่าง","Nabla":"นาบลา","Asterisk operator":"ตัวปฏิบัติการดอกจัน","Proportional to":"สัดส่วนกับ","Angle":"มุม","Vulgar fraction one quarter":"เศษหนึ่งส่วนสี่","Vulgar fraction one half":"เศษหนึ่งส่วนสอง","Vulgar fraction three quarters":"เศษหนึ่งส่วนสาม","Single left-pointing angle quotation mark":"อัญประกาศเดี่ยวเอียงซ้าย","Single right-pointing angle quotation mark":"อัญประกาศเดี่ยวเอียงขวา","Left-pointing double angle quotation mark":"อัญประกาศคู่เอียงซ้าย","Right-pointing double angle quotation mark":"อัญประกาศคู่เอียงขวา","Left single quotation mark":"อัญประกาศเดี่ยวด้านซ้าย","Right single quotation mark":"อัญประกาศเดี่ยวด้านขวา","Left double quotation mark":"อัญประกาศคู่ด้านซ้าย","Right double quotation mark":"อัญประกาศคู่ด้านขวา","Single low-9 quotation mark":"อัญประกาศเดี่ยวมีหัวด้านล่าง","Double low-9 quotation mark":"อัญประกาศคู่มีหัวด้านล่าง","Inverted exclamation mark":"อัศเจรีย์กลับหัว","Inverted question mark":"ปรัศนีกลับหัว","Two dot leader":"สองจุดนำ","Horizontal ellipsis":"จุดไข่ปลาแนวนอน","Double dagger":"กริชซ้อน","Per mille sign":"สัญลักษณ์ต่อพัน","Per ten thousand sign":"สัญลักษณ์ต่อหมื่น","Double exclamation mark":"เครื่องหมายอัศเจรีย์คู่","Question exclamation mark":"เครื่องหมายปรัศนีอัศเจรีย์","Exclamation question mark":"เครื่องหมายอัศเจรีย์ปรัศนี","Double question mark":"เครื่องหมายปรัศนีคู่","Copyright sign":"สัญลักษณ์ลิขสิทธิ์","Registered sign":"สัญลักษณ์จดทะเบียน","Trade mark sign":"สัญลักษณ์เครื่องหมายการค้า","Section sign":"สัญลักษณ์มาตรา","Paragraph sign":"สัญลักษณ์ย่อหน้า","Reversed paragraph sign":"สัญลักษณ์ย่อหน้ากลับหัว","Show source":"แสดงที่มา","Show blocks":"แสดงบล็อก","Select all":"เลือกทั้งหมด","Disable editing":"ปิดใช้งานการแก้ไข","Enable editing":"เปิดใช้งานการแก้ไข","Previous editable region":"พื้นที่ซึ่งสามารถแก้ไขได้ก่อนหน้านี้","Next editable region":"พื้นที่ซึ่งสามารถแก้ไขได้ถัดไป","Navigate editable regions":"นำทางไปยังพื้นที่ซึ่งสามารถแก้ไขได้","Remove Format":"ลบรูปแบบ","Page break":"ตัวแบ่งหน้า","media widget":"วิดเจ็ตสื่อ","Media URL":"URL สื่อ","Paste the media URL in the input.":"วาง URL สื่อในอินพุต","Tip: Paste the URL into the content to embed faster.":"เคล็ดลับ: การวาง URL ลงในเนื้อหาจะช่วยให้ฝังได้เร็วขึ้น","The URL must not be empty.":"URL ต้องไม่ว่างเปล่า","This media URL is not supported.":"ไม่รองรับ URL ของสื่อนี้","Insert media":"แทรกสื่อ","Media":"สื่อ","Media toolbar":"แถบเครื่องมือสื่อ","Open media in new tab":"เปิดสื่อในแท็บใหม่","Numbered List":"รายการลำดับเลข","Bulleted List":"รายการสัญลักษณ์แสดงหัวข้อย่อย","To-do List":"รายการสิ่งที่จะทำ","Bulleted list styles toolbar":"แถบเครื่องมือรูปแบบรายการสัญลักษณ์แสดงหัวข้อย่อย","Numbered list styles toolbar":"แถบเครื่องมือรูปแบบรายการแบบตัวเลข","Toggle the disc list style":"สลับรูปแบบรายการดิสก์","Toggle the circle list style":"สลับรูปแบบรายการวงกลม","Toggle the square list style":"สลับรูปแบบรายการสี่เหลี่ยม","Toggle the decimal list style":"สลับรูปแบบรายการทศนิยม","Toggle the decimal with leading zero list style":"สลับทศนิยมด้วยรูปแบบรายการศูนย์นำหน้า","Toggle the lower–roman list style":"สลับรูปแบบรายการอักษรโรมันตัวพิมพ์เล็ก","Toggle the upper–roman list style":"สลับรูปแบบรายการอักษรโรมันตัวพิมพ์ใหญ่","Toggle the lower–latin list style":"สลับรูปแบบรายการอักษรลาตินตัวพิมพ์เล็ก","Toggle the upper–latin list style":"สลับรูปแบบรายการอักษรลาตินตัวพิมพ์ใหญ่","Disc":"ดิสก์","Circle":"วงกลม","Square":"สี่เหลี่ยม","Decimal":"ทศนิยม","Decimal with leading zero":"ทศนิยมที่มีศูนย์นำหน้า","Lower–roman":"อักษรโรมันตัวพิมพ์เล็ก","Upper-roman":"อักษรโรมันตัวพิมพ์ใหญ่","Lower-latin":"อักษรลาตินตัวพิมพ์เล็ก","Upper-latin":"อักษรลาตินตัวพิมพ์ใหญ่","List properties":"คุณสมบัติของรายการ","Start at":"เริ่มต้นที่","Invalid start index value.":"ค่าดัชนีเริ่มต้นไม่ถูกต้อง","Start index must be greater than 0.":"ดัชนีเริ่มต้นต้องมากกว่า 0","Reversed order":"ลำดับที่ย้อนกลับ","Keystrokes that can be used in a list":"แป้นพิมพ์ลัดที่สามารถใช้ได้ในรายการ","Increase list item indent":"เพิ่มการเยื้องวัตถุในรายการ","Decrease list item indent":"ลดการเยื้องวัตถุในรายการ","Entering a to-do list":"เข้าสู่รายการสิ่งที่ต้องทำ","Leaving a to-do list":"ออกจากรายการสิ่งที่ต้องทำ","Unlink":"ยกเลิกการลิงก์","Link":"ลิงก์","Link URL":"ลิงก์ URL","Link URL must not be empty.":"URL ของลิงก์ต้องไม่เว้นว่าง","Link image":"ลิงก์ภาพ","Edit link":"แก้ไขลิงก์","Open link in new tab":"เปิดลิงก์ในแท็บใหม่","This link has no URL":"ลิงก์นี้ไม่มี URL","Open in a new tab":"เปิดในแท็บใหม่","Downloadable":"ที่สามารถดาวน์โหลดได้","Create link":"สร้างลิงก์","Move out of a link":"ย้ายออกจากลิงก์","Scroll to target":"เลื่อนไปยังเป้าหมาย","Language":"ภาษา","Choose language":"เลือกภาษา","Remove language":"ลบภาษา","Increase indent":"เพิ่มการเยื้อง","Decrease indent":"ลดการเยื้อง","image widget":"วิดเจ็ตรูปภาพ","Wrap text":"ตัดคำข้อความ","Break text":"แบ่งข้อความ","In line":"ในบรรทัด","Side image":"รูปด้านข้าง","Full size image":"รูปขนาดเต็ม","Left aligned image":"จัดแนวภาพซ้าย","Centered image":"จัดแนวรูปกึ่งกลาง","Right aligned image":"จัดแนวภาพขวา","Change image text alternative":"เปลี่ยนข้อความเมื่อไม่พบรูป","Text alternative":"ข้อความเมื่อไม่พบรูป","Enter image caption":"ระบุคำอธิบายภาพ","Insert image":"แทรกรูป","Replace image":"แทนที่ภาพ","Upload from computer":"อัปโหลดจากคอมพิวเตอร์","Replace from computer":"แทนที่จากคอมพิวเตอร์","Upload image from computer":"อัปโหลดภาพจากคอมพิวเตอร์","Image from computer":"ภาพจากคอมพิวเตอร์","From computer":"จากคอมพิวเตอร์","Replace image from computer":"แทนที่ภาพจากคอมพิวเตอร์","Upload failed":"อัปโหลดไม่สำเร็จ","You have no image upload permissions.":"คุณไม่มีสิทธิ์อัปโหลดรูปภาพ","Image toolbar":"เครื่องมือรูปภาพ","Resize image":"ปรับขนาดภาพ","Resize image to %0":"ปรับขนาดภาพเป็น %0","Resize image to the original size":"ปรับขนาดภาพเป็นขนาดเดิม","Resize image (in %0)":"ปรับขนาดภาพ (ใน %0)","Original":"ดั้งเดิม","Custom image size":"ขนาดภาพที่กำหนดเอง","Custom":"กำหนดเอง","Image resize list":"รายการปรับขนาดภาพ","Insert image via URL":"แทรกภาพผ่าน URL","Insert via URL":"แทรกทาง URL","Image via URL":"ภาพทาง URL","Via URL":"ทาง URL","Update image URL":"อัปเดต URL ภาพ","Caption for the image":"คำบรรยายภาพ","Caption for image: %0":"คำบรรยายภาพ: %0","The value must not be empty.":"ค่าต้องไม่ว่างเปล่า","The value should be a plain number.":"ค่าควรเป็นตัวเลขธรรมดา","Uploading image":"กำลังอัปโหลดรูปภาพ","Image upload complete":"อัปโหลดรูปภาพเสร็จสิ้น","Error during image upload":"เกิดข้อผิดพลาดระหว่างอัปโหลดรูปภาพ","Image":"ภาพ","HTML object":"วัตถุ HTML","Insert HTML":"แทรก HTML","HTML snippet":"ส่วนย่อยของ HTML","Paste raw HTML here...":"วาง HTML ดิบที่นี่...","Edit source":"แก้ไขซอร์ส","Save changes":"บันทึกการเปลี่ยนแปลง","No preview available":"ไม่มีภาพตัวอย่างให้ใช้งาน","Empty snippet content":"เนื้อหาส่วนย่อยว่างเปล่า","Horizontal line":"เส้นแนวนอน","Yellow marker":"มาร์กเกอร์สีเหลือง","Green marker":"มาร์กเกอร์สีเขียว","Pink marker":"มาร์กเกอร์สีชมพู","Blue marker":"มาร์กเกอร์สีน้ำเงิน","Red pen":"ปากกาสีแดง","Green pen":"ปากกาสีเขียว","Remove highlight":"ลบไฮไลต์ออก","Highlight":"ไฮไลต์","Text highlight toolbar":"แถบเครื่องมือไฮไลต์ข้อความ","Heading":"หัวข้อ","Choose heading":"เลือกขนาดหัวข้อ","Heading 1":"หัวข้อขนาด 1","Heading 2":"หัวข้อ 2","Heading 3":"หัวข้อ 3","Heading 4":"หัวข้อ 4","Heading 5":"หัวข้อ 5","Heading 6":"หัวข้อ 6","Type your title":"พิมพ์ชื่อเรื่องของคุณ","Type or paste your content here.":"พิมพ์หรือวางเนื้อหาของคุณที่นี่","Font Size":"ขนาดข้อความ","Tiny":"เล็กมาก","Small":"เล็ก","Big":"ใหญ่","Huge":"ใหญ่มาก","Font Family":"แบบอักษร","Default":"ค่าเริ่มต้น","Font Color":"สีข้อความ","Font Background Color":"สีพื้นหลังข้อความ","Document colors":"สีเอกสาร","Find and replace":"ค้นหาและแทนที่","Find in text…":"ค้นหาในข้อความ...","Find":"ค้นหา","Previous result":"ผลลัพธ์ก่อนหน้านี้","Next result":"ผลลัพธ์ถัดไป","Replace":"แทนที่","Replace all":"แทนที่ทั้งหมด","Match case":"ตัวใหญ่-เล็ก ตรงกัน","Whole words only":"ตรงกันทุกตัวอักษร","Replace with…":"แทนที่ด้วย...","Text to find must not be empty.":"ข้อความที่จะค้นหาต้องไม่ว่างเปล่า","Tip: Find some text first in order to replace it.":"เคล็ดลับ: ค้นหาข้อความบางอย่างก่อนจึงจะแทนที่ได้","Advanced options":"ตัวเลือกขั้นสูง","Find in the document":"ค้นหาในเอกสาร","Insert a soft break (a <code>&lt;br&gt;</code> element)":"แทรกการขึ้นบรรทัดใหม่แบบ Soft Break  (<code>&lt;br&gt;</code> element)","Insert a hard break (a new paragraph)":"แทรกการขึ้นบรรทัดใหม่แบบ Hard Break (ย่อหน้าใหม่)","Emoji":"อิโมจิ","Show all emoji...":"แสดงอิโมจิทั้งหมด...","Find an emoji (min. 2 characters)":"ค้นหาอิโมจิ (อักขระอย่างน้อย 2 ตัว)","No emojis were found matching \"%0\".":"ไม่พบอิโมจิที่ตรงกับ \"%0\"","Keep on typing to see the emoji.":"พิมพ์ต่อไปเพื่อดูอิโมจิ","The query must contain at least two characters.":"คำค้นหาต้องมีอักขระอย่างน้อยสองตัว","Smileys & Expressions":"รอยยิ้มและสีหน้า","Gestures & People":"ท่าทางและผู้คน","Animals & Nature":"สัตว์และธรรมชาติ","Food & Drinks":"อาหารและเครื่องดื่ม","Travel & Places":"การเดินทางและสถานที่","Activities":"กิจกรรม","Objects":"วัตถุ","Symbols":"สัญลักษณ์","Flags":"ธง","Select skin tone":"เลือกโทนสีผิว","Default skin tone":"สีผิวเริ่มต้น","Light skin tone":"สีผิวอ่อน","Medium Light skin tone":"สีผิวอ่อนปานกลาง","Medium skin tone":"สีผิวปานกลาง","Medium Dark skin tone":"สีผิวเข้มปานกลาง","Dark skin tone":"สีผิวเข้ม","Cancel":"ยกเลิก","Clear":"ล้าง","Remove color":"ลบสี","Restore default":"คืนค่าเริ่มต้น","Save":"บันทึก","Show more items":"แสดงรายการเพิ่มเติม","%0 of %1":"%0 จาก %1","Cannot upload file:":"ไม่สามารถอัปโหลดไฟล์ได้:","Rich Text Editor. Editing area: %0":"ตัวแก้ไข Rich Text พื้นที่แก้ไข: %0","Insert with file manager":"แทรกด้วยตัวจัดการไฟล์","Replace with file manager":"แทนที่ด้วยตัวจัดการไฟล์","Insert image with file manager":"แทรกภาพด้วยตัวจัดการไฟล์","Replace image with file manager":"แทนที่ภาพด้วยตัวจัดการไฟล์","File":"ไฟล์","With file manager":"ด้วยโปรแกรมจัดการไฟล์","Toggle caption off":"ปิดคำอธิบายภาพ","Toggle caption on":"เปิดคำอธิบายภาพ","Content editing keystrokes":"แป้นพิมพ์ลัดเพื่อแก้ไขเนื้อหา","These keyboard shortcuts allow for quick access to content editing features.":"แป้นพิมพ์ลัดเหล่านี้จะทำให้สามารถเข้าถึงฟีเจอร์เพื่อการแก้ไขเนื้อหาได้อย่างรวดเร็ว","User interface and content navigation keystrokes":"แป้นพิมพ์ลัดในอินเตอร์เฟสผู้ใช้และการนำทางเนื้อหา","Use the following keystrokes for more efficient navigation in the CKEditor 5 user interface.":"ใช้แป้นพิมพ์ลัดต่อไปนี้เพื่อการนำทางที่มีประสิทธิภาพยิ่งขึ้นในอินเตอร์เฟสผู้ใช้ CKEditor 5","Close contextual balloons, dropdowns, and dialogs":"ปิดลูกโป่งบริบท, รายการดรอปดาวน์, และกล่องโต้ตอบ","Open the accessibility help dialog":"เปิดกล่องโต้ตอบความช่วยเหลือการเข้าถึง","Move focus between form fields (inputs, buttons, etc.)":"ย้ายโฟกัสระหว่างช่องฟอร์ม (รับข้อมูล, ปุ่ม, ฯลฯ)","Move focus to the menu bar, navigate between menu bars":"ย้ายโฟกัสไปที่แถบเมนู นำทางระหว่างแถบเมนูต่างๆ","Move focus to the toolbar, navigate between toolbars":"ย้ายโฟกัสไปยังแถบเครื่องมือ, นำทางภายในแถบเครื่องมือ","Navigate through the toolbar or menu bar":"นำทางในแถบเครื่องมือหรือแถบเมนู","Execute the currently focused button. Executing buttons that interact with the editor content moves the focus back to the content.":"ปฏิบัติตามปุ่มที่โฟกัสในขณะนี้ การปฏิบัติตามปุ่มที่โต้ตอบกับเนื้อหาของตัวแก้ไขจะย้ายโฟกัสกลับไปยังเนื้อหา","Accept":"ยอมรับ","Paragraph":"ย่อหน้า","Color picker":"เครื่องมือเลือกสี","Please try a different phrase or check the spelling.":"โปรดลองใช้วลีอื่นหรือตรวจสอบตัวสะกด","Source":"ซอร์ส","Insert code block":"เพิ่มโค้ดบล็อก","Plain text":"ข้อความธรรมดา","Leaving %0 code snippet":"รหัสคำสั่งสั้นการออกจาก %0","Entering %0 code snippet":"รหัสคำสั่งสั้นการเข้าสู่ %0","Entering code snippet":"รหัสคำสั่งสั้นการเข้า","Leaving code snippet":"รหัสคำสั่งสั้นการออก","Code block":"บล็อกรหัส","Copy selected content":"คัดลอกเนื้อหาที่เลือกเอาไว้","Paste content":"วางเนื้อหา","Paste content as plain text":"วางเนื้อหาเป็นข้อความธรรมดา","Insert image or file":"แทรกรูปภาพหรือไฟล์","Could not obtain resized image URL.":"ไม่สามารถรับ URL ของภาพที่ปรับขนาด","Selecting resized image failed":"การเลือกภาพที่ปรับขนาดล้มเหลว","Could not insert image at the current position.":"ไม่สามารถแทรกภาพที่ตำแหน่งปัจจุบัน","Inserting image failed":"การแทรกภาพล้มเหลว","Open file manager":"เปิดเครื่องมือจัดการไฟล์","Cannot determine a category for the uploaded file.":"ไม่สามารถกำหนดหมวดหมู่สำหรับไฟล์ที่อัปโหลด","Cannot access default workspace.":"ไม่สามารถเข้าถึงพื้นที่ทำงานเริ่มต้น","You have no image editing permissions.":"คุณไม่มีสิทธิ์ในการแก้ไขภาพ","Edit image":"แก้ไขภาพ","Processing the edited image.":"กำลังประมวลผลภาพที่แก้ไข","Server failed to process the image.":"เซิร์ฟเวอร์ประมวลผลภาพไม่สำเร็จ","Failed to determine category of edited image.":"ระบุหมวดหมู่ของภาพที่แก้ไขไม่สำเร็จ","Bookmark":"บุ๊กมาร์ก","Insert":"แทรก","Update":"อัปเดต","Edit bookmark":"แก้ไขบุ๊กมาร์ก","Remove bookmark":"ลบบุ๊กมาร์ก","Bookmark name":"ชื่อบุ๊กมาร์ก","Enter the bookmark name without spaces.":"ป้อนชื่อบุ๊กมาร์กโดยไม่มีช่องว่าง","Bookmark must not be empty.":"บุ๊กมาร์กต้องไม่เว้นว่างไว้","Bookmark name cannot contain space characters.":"ชื่อบุ๊กมาร์กต้องไม่มีการเว้นวรรคระหว่างอักขระ","Bookmark name already exists.":"มีชื่อบุ๊กมาร์กนี้อยู่เรียบร้อยแล้ว","bookmark widget":"วิดเจ็ตบุ๊กมาร์ก","Block quote":"คำพูดบล็อก","Bold":"ตัวหนา","Italic":"ตัวเอียง","Underline":"ขีดเส้นใต้","Code":"โค้ด","Strikethrough":"ขีดทับ","Subscript":"ตัวห้อย","Superscript":"ตัวยก","Italic text":"ข้อความเอียง","Move out of an inline code style":"ย้ายออกจากสไตล์โค้ดแบบอินไลน์","Bold text":"ทำข้อความเป็นตัวหนา","Underline text":"ขีดเส้นใต้ข้อความ","Strikethrough text":"ขีดทับข้อความ","Saving changes":"บันทึกการเปลี่ยนแปลง<br>","Revert autoformatting action":"ยกเลิกการดำเนินการจัดรูปแบบอัตโนมัติ","Align left":"จัดชิดซ้าย","Align right":"จัดชิดขวา","Align center":"จัดกึ่งกลาง","Justify":"จัด(ขอบ)","Text alignment":"จัดตำแหน่งข้อความ","Text alignment toolbar":"แถบเครื่องมือจัดตำแหน่งข้อความ"},getPluralForm(n){return 0;}}};
e[ 'th' ] ||= { dictionary: {}, getPluralForm: null };
e[ 'th' ].dictionary = Object.assign( e[ 'th' ].dictionary, dictionary );
e[ 'th' ].getPluralForm = getPluralForm;
} )( window.CKEDITOR_TRANSLATIONS ||= {} );
