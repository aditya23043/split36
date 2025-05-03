# 36 Key Split Ergonomic Keyboard

<img src="./imgs/dslr/IMG_3519.JPG">

## Block Diagram

![2025-03-25_09-55](https://github.com/user-attachments/assets/95127583-efe8-49e0-8db1-be4b7e4d2074)

## BOM

| Item                                                           | Qty | Total Price | Ordered From |
| -------------------------------------------------------------- | --- | ----------- | ------------ |
| PCB                                                            | 2   | ₹ 800       | Robu.in      |
| 3D printed Cases (optional but recommended)                    | 2   | ₹ 652       | Robu.in      |
| Akko V3 Creamy Yellow Pro Mechanical Switch                    | 45  | ₹ 999       | StacksKB.com |
| 3.5mm TRRS Jack                                                | 2   | ₹ 28        | Robu.in      |
| Raspberry Pi Pico                                              | 2   | ₹ 700       | Robu.in      |
| Header 1x40 pin                                                | 2   | ₹ 14.6      | Robu.in      |
| High Quality Ultra Flexible 30AWG Silicone Wire - Black        | 5   | ₹ 25.00     | Robu.in      |
| M2 X 6mm Brass Threaded Inserts (Dia. 2mm, Length 6mm)         | 12  | ₹ 26.40     | OnlyScrew.in |
| M2 X 6mm Phillips Pan head SS 304 Screw (Dia. 2mm, Length 6mm) | 12  | ₹ 24.00     | OnlyScrew.in |
| Total                                                          | -   | ₹ 3269      |              |

## Order

<details>
<summary>All the stuff ordered in regards to this project</summary>

> This is not the actual concise BOM\
> All this is just the stuff I ordered related to this project

- StacksKB.com

  - Akko V3 Creamy Yellow Pro Switch (Pack of 45) × 1
  - Order Number: 30456
  - Cost: 899 + 100 (delivery) = ₹ 1000
  - Order Date: 2025-02-08

- Robu.in

| Item              | Qty | Cost  |
| ----------------- | --- | ----- |
| TRRS Jack         | 2   | ₹ 28  |
| Raspberry Pi Pico | 1   | ₹ 349 |
| Header 1x40 pin   | 12  | ₹ 88  |
| Ball Bearing      | 2   | ₹ 38  |
| Handling charges  | -   | ₹ 25  |
| TOTAL             | -   | ₹ 528 |

- Robu.in (2nd)

| Item                                                                | Qty | Cost                          |
| ------------------------------------------------------------------- | --- | ----------------------------- |
| USB 3.1 Female Socket Type C Connector 24 Pins Breakout PCB Board   | 2   | ₹ 98.00                       |
| Wire Stripper Flat Nose Cable Cutter with Practical Punch Down Tool | 1   | ₹ 18.00                       |
| High Quality Ultra Flexible 30AWG Silicone Wire - Black             | 5   | ₹ 25.00                       |
| UL1007 26AWG PVC Electronic Wire - Black                            | 2   | ₹ 14.00                       |
| High Quality Ultra Flexible 22AWG Silicone Wire - Black             | 2   | ₹ 36.00                       |
| Heat Shrink Sleeve 1mm Red Industrial Grade WOER (HST)              | 4   | ₹ 20.00                       |
| Piezo Buzzer 35mm                                                   | 1   | ₹ 16.00                       |
| Subtotal:                                                           | -   | ₹ 227.00                      |
| Shipping:                                                           | -   | ₹ 49.00 via STANDARD SHIPPING |
| Cash Handling Charges:                                              | -   | ₹ 25.00                       |
| Total:                                                              | -   | ₹ 301.00                      |

- OnlyScrew.in

| Item                                                                   | Qty | Cost     |
| ---------------------------------------------------------------------- | --- | -------- |
| M2 X 6mm Brass Threaded Inserts (Dia. 2mm, Length 6mm)                 | 12  | ₹ 26.40  |
| M2 X 4mm Phillips Pan head SS 304 Screw (Dia. 2mm, Length 4mm)         | 12  | ₹ 21.60  |
| M2 X 3mm Brass Threaded Inserts (Dia. 2mm, Length 3mm)                 | 12  | ₹ 19.20  |
| M2 X 6mm Phillips Pan head SS 304 Screw (Dia. 2mm, Length 6mm)         | 12  | ₹ 24.00  |
| M2 Hex Nut SS304 (Dia. 2mm)                                            | 12  | ₹ 19.20  |
| M3 X 12mm Phillips CSK SS 304 Screw (Dia. 3mm, Length 12mm)            | 10  | ₹ 16.00  |
| Allen Key 2mm Chromium Vanadium Steel                                  | 1   | ₹ 6.20   |
| M3 X 12mm Hex (Allen) Button Head SS 304 Screw (Dia. 3mm, Length 12mm) | 8   | ₹ 17.60  |
| Subtotal                                                               | -   | ₹ 150.20 |
| Shipping                                                               | -   | ₹ 99.00  |
| Taxes                                                                  | -   | ₹ 27.04  |
| Total                                                                  | -   | ₹ 276.24 |

</details>

## Case Designing

- I am aiming for a sandwich case which consists of a bottom part, middle part for padding, another plate in which pcb is resting and the top switch mount plate
- The bottom plate will be of 3mm ABS (non metal laser cut) so that the keyboard has a solid base
- The next plate is the middle one but it is a little bit smaller in inner part so that the PCB can rest on top of it
  - this plate's height will be -> 3mm because we need at least (3.3-1.6) = 1.7mm clearance and having another 1.3mm would be nice so that the soldered wires can go through
  - note: 3.3mm is the distance between the bottom-most point of the MX switch and the point which rests on the PCB
  - and the height of the PCB is 1.6mm
- Next is the other bottom plate with the pcb cutout in the middle so that the pcb can be put into it and also provides the gap between the previous middle layer and the switch mount plate
  - This will be of height -> (5-1.5)+(1.6) = 5.1mm
- Lastly, we have the switch mount plate which obviously holds the MX switches and needs to be 1.5mm in height

<img src="./imgs/MXswitches3.svg">

## Materials Used for the case (complex case)

| Plate     | Material              | Cost |
| --------- | --------------------- | ---- |
| Bottom    | Laser cut Acrylic 3mm |
| Middle    | Laser cut Acrylic 3mm |
| Middle v2 | Laser cut Acrylic 5mm |
| Top       | ABS FDM 3d printed    |

> As of now (025-02-19 23:20), I am pausing this sandwich case idea and shifting to just a single case which encloses the PCB from the bottom and sides\
> I would have preferred to have a switch mount plate as well because it adds stability and reduces dust residue in the keyboard but I would like to get started with a simpler case than the sandwich one and also, I would like to use the existing mounting stuff I have bought i.e. the m2x3mm brass inserts and hence I am heading for this approach

## Simple Case

<img src="./imgs/2025-02-20_00-15.png">
<img src="./imgs/2025-02-20_00-15_1.png">
<img src="./imgs/2025-02-20_00-16.png">

- This case was costing me about Rs. 389 on https://robu.in with ABS and 15% infill
- I believe that is a bit high for me since this is just half of the keyboard
- So, I reduced the cost down to about Rs. 300 by putting the PCB a bit lower and instead of the 5mm solid base, we now have a 2mm solid base which makes a little bit less solid but its not a huge problem
- This is the case with the PCB after the cost cut

<img src="./imgs/2025-02-21_11-25.png">
<img src="./imgs/2025-02-21_11-25_1.png">
<img src="./imgs/2025-02-21_11-28.png">
<img src="./imgs/2025-02-21_11-28_1.png">

- Order placed for this case for Rs.335 along with the mount plate for this project -> https://github.com/aditya23043/Tekken_Controller
- Totalling: Rs. 463 (335 + 79 (mount plate) + 49 (delivery))

## 2025-02-26 23:54

- The case has arrived for one of the halves since I wanted to make sure there were no issues with my design
- And guess what? Yes, there is a major issue with the design
- I had not taken printing error in mind and hence did not account for tolerance issues
- The PCB just wont go in flush. It seems like if the case was just 0.5-1mm more larger on the inside, the PCB would have rested perfectly
- I have updated the 3D case files in the repo to include a 0.7mm clearance on the inside
- As for the case, I have taken suggestions from seniors and batchmates from the Electroholics Club of IIITD
- They have suggested to either use the thermal property of ABS in order to mould it into a bit bigger enclosure
- Or sand the edges down a bit to accomodate the PCB perfectly
- I will be taking the latter approach since that seems more fail proof in my mind
- And hence, I have ordered this sand paper set from amazon -> [Sand paper](https://www.amazon.in/Abrasive-Automotive-Woodworking-Furniture-Finishing/dp/B0CCW1BG6J?crid=2EEL0M61VZAA&dib=eyJ2IjoiMSJ9.Zoi8ylSky-5luMBW1yZJDoSybKyFAd-nqliej5kaOOlOpCvAWyQ41mtm_BK3hccGk31BMp2cViJyyWQd6a_diGoK0G64POys9TNYCAbUBpH24bBg0yZ7kc0Ak9Pfc_61XdJiMc7flElSorGCEcOXjIZMTRTRceEs2cXiosr3PirVU5lLTFYQC7vD3jknDQvFn2VQ5Xwbg4kThXJXX_U_AD_CbIjYicfF7zHdDg82PSNY9mOjZS1VNdKjRHVu5uBzZ4lRd1IlxIwzcVhsADxnlQQYXiG4B_37tawKm34SAPIcsIGwqtalY5JfByuImBkNebYDzTPX32AZYsfDKeUq7G12zp3VJ4RzMkF1yfA55NbeXZ8WBsbFUSJUn487lN6kKEX7saYSj2JCtrtfa6v1f31TochDW9mhu5mwZfobleQB-t04E13b-aYj9pGOqL9u.koHrfVWDqWvgJBQTqdjGDcFOiomCGaOogGteUhE_4SI&dib_tag=se&keywords=sandpaper%2Bfor%2Bplastic&qid=1740584809&sprefix=sandpaper%2Bfor%2Bplast%2Caps%2C259&sr=8-2&th=1)

<img src="./imgs/WhatsApp Image 2025-02-27 at 00.00.04.jpeg">
<img src="./imgs/WhatsApp Image 2025-02-27 at 00.00.05.jpeg">
<img src="./imgs/WhatsApp Image 2025-02-27 at 00.00.06.jpeg">

## 2025-03-18 23:48

- Instead of trying to make do with the case without tolerances, I have decided to add 1mm tolerance to the current design and order it again
- For ABS 15% infill 2mm default nozel, it is costing me Rs. 277 + Rs. 49 = Rs. 326

## 2025-03-29 00:23

- Added brass heat inserts in order to mount the pcb to the case using M2 screws
- Finished soldering the mechanical switches, header pins for MCU and the TRRS jack onto the PCB.

<img src="./imgs/dslr/IMG_3499.JPG">
<img src="./imgs/dslr/IMG_3506.JPG">
<img src="./imgs/dslr/IMG_3508.JPG">
<img src="./imgs/dslr/IMG_3510.JPG">
<img src="./imgs/dslr/IMG_3514.JPG">
<img src="./imgs/dslr/IMG_3517.JPG">
<img src="./imgs/dslr/IMG_3518.JPG">
<img src="./imgs/dslr/IMG_3519.JPG">
<img src="./imgs/dslr/IMG_3521.JPG">

## 2025-03-31 23:45

- Deep purple keycaps came in today
- Fixed the skew in keyswitches -> https://www.reddit.com/r/ErgoMechKeyboards/comments/1jmeygr/the_switches_on_my_custom_cornelike_keyboard_do/

<img src="./imgs/dslr/IMG_3542.JPG">
<img src="./imgs/dslr/IMG_3543.JPG">
<img src="./imgs/dslr/IMG_3544.JPG">
<img src="./imgs/dslr/IMG_3545.JPG">
<img src="./imgs/dslr/IMG_3546.JPG">

## 2025-03-05 10:03

- Case for the right half ordered from https://Robu.in
- Firmware for the left half done
  - Also includes the code for "key held down" event
- [x] Right half assembly
- [ ] Right half firmware

## 2025-04-11 23:13

### Major Issue

- The footprint used for the MX switches (from ScottoKeeb's github repo) had label -> MX 1.00u Reversible written on it. However, it means reversible in the sense that we can swap north facing and south facing switches, not for mutli sided switches
- Hence, the assembly of the right half is on hold until the new PCB arrives.
- In the modified kicad project I have used the SW_MX_REVERSIBLE footprint from -> https://github.com/daprice/keyswitches.pretty
- Furthermore, I have added the kicad project in this repo inside the `pcb/` directory
- 2025-04-11 23:26 -> PCB order placed
  - Cost: ₹1935 for 5 PCBs
  - Nearly: ₹400 per PCB

## 2025-05-03 23:13

- Right Half assembly done

## Major Issue 2.0

- The TRRS jack connection on the second half is technically correct but the problem is that since the right half is just the flip of left half PCB, the microcontroller should either be soldered reverse or else the pins are flipped wrt the vertical axis
- Due to this, the connections of the TRRS jack are reversed as well
- Instead of GND, VSYS, GP0, GP1; we have -> GND, GP1, VBUS, VSYS which is very wrong in context of the code logic
- Hence, I had to scratch out all the copper tracks manually connected to the TRRS jack and connect them with the MCU manually using wires with the following connections

```
TRRS
4 3 2
    1

DEFAULT
1 GND
2 GP1
3 VBUS
4 VSYS

WHAT WE WANT
1 GND
2 VSYS
3 GP0 (SDA)
4 GP1 (SCL)
```

- And finally, with testing, I am able to confirm that the right half can now be powered properly with just the left half connected with the system
- So, as of now, this prototype's hardware stuff has been completed
- [ ] TODO: Firmware
