[org 0x0100]
jmp start
; coordinates of a circle of radius 24
x24: dw 48,47,44,40,36,30,24,17,12,7,3,0,0,0,3,7,11,17,23,30,36,40,44,47,48
y24: dw 24,30,36,40,44,47,48,47,44,40,36,30,24,17,11,7,3,0,0,0,3,7,11,17,23
; coordinates of a circle of radius 45
x45: dw 90,89,88,86,83,79,75,70,64,58,52,46,40,34,28,22,17,12,8,5,2,0,0,0,0,2,5,8,12,17,22,28,34,40,46,52,58,64,70,75,79,83,86,88,89,90
y45: dw 45,51,57,63,68,73,78,82,85,87,89,89,89,88,86,83,80,76,71,66,60,54,48,41,35,29,23,18,13,9,6,3,1,0,0,0,2,4,7,11,16,21,26,32,38,44
; coordinates of a circle of radius 72
x72: dw 144,143,142,141,139,137,134,130,127,122,118,113,108,102,96,90,84,78,72,65,59,53,47,41,36,30,25,21,16,13,9,6,4,2,1,0,0,0,1,2,4,6,9,13,16,21,25,30,35,41,47,53,59,65,71,78,84,90,96,102,108,113,118,122,127,130,134,137,139,141,142,143,144
y72: dw 72,78,84,90,96,102,108,113,118,122,127,130,134,137,139,141,142,143,144,143,142,141,139,137,134,130,127,122,118,113,108,102,96,90,84,78,72,65,59,53,47,41,35,30,25,21,16,13,9,6,4,2,1,0,0,0,1,2,4,6,9,13,16,21,25,30,35,41,47,53,59,65,71
; coordinates of a circle of radius 120
x120: dw 240,239,239,238,237,235,234,232,229,226,223,220,217,213,209,204,200,195,190,185,180,174,168,163,157,151,144,138,132,126,120,113,107,101,95,88,82,76,71,65,60,54,49,44,39,35,30,26,22,19,16,13,10,7,5,4,2,1,0,0,0,0,0,1,2,4,5,7,10,13,16,19,22,26,30,35,39,44,49,54,59,65,71,76,82,88,95,101,107,113,119,126,132,138,144,151,157,163,168,174,180,185,190,195,200,204,209,213,217,220,223,226,229,232,234,235,237,238,239,239,240
y120: dw 120,126,132,138,144,151,157,163,168,174,180,185,190,195,200,204,209,213,217,220,223,226,229,232,234,235,237,238,239,239,240,239,239,238,237,235,234,232,229,226,223,220,217,213,209,204,200,195,190,185,180,174,168,163,157,151,144,138,132,126,120,113,107,101,95,88,82,76,71,65,59,54,49,44,39,35,30,26,22,19,16,13,10,7,5,4,2,1,0,0,0,0,0,1,2,4,5,7,10,13,16,19,22,26,30,35,39,44,49,54,59,65,71,76,82,88,95,101,107,113,119
; setting up the parameters
counter : db 0;
radius : equ 45 ; choose radius (24, 45, 72, 120)
xoffset: equ 50 ; change to move circle along x axis
yoffset: equ 60 ; change to move circle along y axis

radius1: equ 45
xoffset1: equ 75 ; change to move circle along x axis
yoffset1: equ 30 ; change to move circle along y axis

radius2: equ 45
xoffset2: equ 100 ; change to move circle along x axis
yoffset2: equ 60 ; change to move circle along y axis

radius3: equ 24
xoffset3: equ 470 ; change to move circle along x axis
yoffset3: equ 20 ; change to move circle along y axis

radius4 : equ 45 ; choose radius (24, 45, 72, 120)
xoffset4: equ 20; change to move circle along x axis
yoffset4: equ 245 ; change to move circle along y axis


w equ 640 ; width offset
x equ 0 ; starting x coordinate of line
y equ 175 ; starting y coordinate of line
c equ 63 ; color
c2 equ 59
c3 equ 60

w1 equ 640 ; width offset
x1 equ 0 ; starting x coordinate of line
y1 equ 349 ; starting y coordinate of line

w2 equ 174 ; width offset
x2 equ 0 ; starting x coordinate of line
y2 equ 175 ; starting y coordinate of line

w3 equ 174 ; width offset
x3 equ 639 ; starting x coordinate of line
y3 equ 175 ; starting y coordinate of line

w4 equ 10 ; width offset
x4 equ 295 ; starting x coordinate of line
y4 equ 175 ; starting y coordinate of line

w5 equ 175 ; width offset
x5 equ 345 ; starting x coordinate of line
y5 equ 175 ; starting y coordinate of line

w6 equ 130 ; width offset
x6 equ 255 ; starting x coordinate of line
y6 equ 105 ; starting y coordinate of line

w7 equ 68 ; width offset
x7 equ 255 ; starting x coordinate of line
y7 equ 105 ; starting y coordinate of line

w8 equ 68 ; width offset
x8 equ 385 ; starting x coordinate of line
y8 equ 105 ; starting y coordinate of line

w9 equ 30 ; width offset
x9 equ 313 ; starting x coordinate of line
y9 equ 145 ; starting y coordinate of line

w10 equ 30 ; width offset
x10 equ 328 ; starting x coordinate of line
y10 equ 145 ; starting y coordinate of line

w11 equ 15 ; width offset
x11 equ 313 ; starting x coordinate of line
y11 equ 145 ; starting y coordinate of line

wa equ 15 ; width offset
xa equ 275 ; starting x coordinate of line
ya equ 137 ; starting y coordinate of line
xb equ 350 ; starting x coordinate of line
yb equ 152 ; starting y coordinate of line
xc equ 290 ; starting x coordinate of line
xd equ 365 ; starting x coordinate of line

wt equ 35 ; width offset
wt1 equ 85 ; width offset
wt2 equ 25 ; width offset
wt3 equ 100 ; width offset
xt1 equ 102 ; starting x coordinate of line
yt1 equ 152 ; starting y coordinate of line
xt2 equ 137 ; starting x coordinate of line
yt2 equ 237 ; starting y coordinate of line

xt3 equ 550 ; starting x coordinate of line
yt3 equ 163 ; starting y coordinate of line
xt4 equ 575 ; starting x coordinate of line
yt4 equ 263 ; starting y coordinate of line

wtl equ 70 
xtl equ 527 ; starting x coordinate of line
ytl equ 163 ; starting y coordinate of line
xtll equ 527 ; starting x coordinate of line
ytll equ 148 ; starting y coordinate of line

wtb equ 35 ; width offset
xtb equ 527 ; starting x coordinate of line
ytb equ 163 ; starting y coordinate of line

xtb1 equ 597 ; starting x coordinate of line
ytb1 equ 148 ; starting y coordinate of line

wr equ 170 ; width offset
wr1 equ 85 ; width offset
xr equ 235 ; starting x coordinate of line
yr equ 102 ; starting y coordinate of line
xr1 equ 406 ; starting x coordinate of line


start:
mov ah, 0 ; service 0 – get keystroke
int 0x16 ; bios keyboard services 
mov word[counter], 0
mov si, x45 ; change x array as radius
mov di, y45 ; change y array as radius
mov ax, 0x0010 ; set 640 x 350 graphics mode
int 0x10 ; bios video services
mov ax, 0x0C3F
xor bx, bx ; page number 0
mov cx, [si] ; first x position
add cx, xoffset ; moving point along x axis
mov dx, [di] ; first y position
add dx, yoffset ; moving point along y axis
l1:
int 0x10 ; bios video services
add si, 2 ; next location address
add di, 2 ; next location address
mov cx, [si]
add cx, xoffset
mov dx, [di]
add dx, yoffset
inc byte[counter]
cmp byte[counter], radius ; stopping condition
jle l1 ; jump if less
mov ah, 0 ; service 0 – get keystroke
;int 0x16 ; bios keyboard services 
mov ax, 0x0003 ; 80x25 text mode



mov word[counter], 0
mov si, x45 ; change x array as radius
mov di, y45 ; change y array as radius
mov ax, 0x0010 ; set 640 x 350 graphics mode
mov ax, 0x0C3F
xor bx, bx ; page number 0
mov cx, [si] ; first x position
add cx, xoffset1 ; moving point along x axis
mov dx, [di] ; first y position
add dx, yoffset1 ; moving point along y axis
l2:
int 0x10 ; bios video services
add si, 2 ; next location address
add di, 2 ; next location address
mov cx, [si]
add cx, xoffset1
mov dx, [di]
add dx, yoffset1
inc byte[counter]
cmp byte[counter], radius1 ; stopping condition
jle l2 ; jump if less
mov ah, 0 ; service 0 – get keystroke
;int 0x16 ; bios keyboard services 
mov ax, 0x0003 ; 80x25 text mode



mov word[counter], 0
mov si, x45 ; change x array as radius
mov di, y45 ; change y array as radius
mov ax, 0x0010 ; set 640 x 350 graphics mode
mov ax, 0x0C3F
xor bx, bx ; page number 0
mov cx, [si] ; first x position
add cx, xoffset2 ; moving point along x axis
mov dx, [di] ; first y position
add dx, yoffset2 ; moving point along y axis
l3:
int 0x10 ; bios video services
add si, 2 ; next location address
add di, 2 ; next location address
mov cx, [si]
add cx, xoffset2
mov dx, [di]
add dx, yoffset2
inc byte[counter]
cmp byte[counter], radius2 ; stopping condition
jle l3 ; jump if less
mov ah, 0 ; service 0 – get keystroke
;int 0x16 ; bios keyboard services 
mov ax, 0x0003 ; 80x25 text mode



mov word[counter], 0
mov si, x45 ; change x array as radius
mov di, y45 ; change y array as radius
mov ax, 0x0010 ; set 640 x 350 graphics mode
mov ax, 0x0C3F
xor bx, bx ; page number 0
mov cx, [si] ; first x position
add cx, xoffset4 ; moving point along x axis
mov dx, [di] ; first y position
add dx, yoffset4 ; moving point along y axis
l4:
int 0x10 ; bios video services
add si, 2 ; next location address
add di, 2 ; next location address
mov cx, [si]
add cx, xoffset4
mov dx, [di]
add dx, yoffset4
inc byte[counter]
cmp byte[counter], radius4 ; stopping condition
jle l4 ; jump if less
mov ah, 0 ; service 0 – get keystroke
;int 0x16 ; bios keyboard services 
mov ax, 0x0003 ; 80x25 text mode



mov word[counter], 0
mov si, x24 ; change x array as radius
mov di, y24 ; change y array as radius
mov ax, 0x0010 ; set 640 x 350 graphics mode
mov ax, 0x0C3C
xor bx, bx ; page number 0
mov cx, [si] ; first x position
add cx, xoffset3 ; moving point along x axis
mov dx, [di] ; first y position
add dx, yoffset3 ; moving point along y axis
l5:
int 0x10 ; bios video services
add si, 2 ; next location address
add di, 2 ; next location address
mov cx, [si]
add cx, xoffset3
mov dx, [di]
add dx, yoffset3
inc byte[counter]
cmp byte[counter], radius3 ; stopping condition
jle l5 ; jump if less
mov ah, 0 ; service 0 – get keystroke
;int 0x16 ; bios keyboard services 
mov ax, 0x0003 ; 80x25 text mode


; middle line
mov ah, 0
mov al, 13h
mov cx, x
mov dx, y
mov al, c
u1:
mov ah, 0ch
int 10h
inc cx
cmp cx, x+w
jbe u1



; lower line
mov ah, 0
mov al, 13h
mov cx, x1
mov dx, y1
mov al, c
u2:
mov ah, 0ch
int 10h
inc cx
cmp cx, x+w1
jbe u2



; left
mov ah, 0
mov al, 13h
mov cx, x2
mov dx, y2
mov al, c
u3:
mov ah, 0ch
int 10h
inc dx
cmp dx, y2+w2
jbe u3



; right
mov ah, 0
mov al, 13h
mov cx, x3
mov dx, y3
mov al, c
u4:
mov ah, 0ch
int 10h
inc dx
cmp dx, y3+w3
jbe u4



; road left
mov ah, 0
mov al, 13h
mov cx, x4
mov dx, y4
mov al, c
u5: add dx, 2
mov ah, 0ch
int 10h
dec cx
cmp cx, x4+w4
jbe u5



; road right
mov ah, 0
mov al, 13h
mov cx, x5
mov dx, y5
mov al, c
u6: add dx, 2
mov ah, 0ch
int 10h
inc cx
cmp dx, y5+w5
jbe u6



; house
mov ah, 0
mov al, 13h
mov cx, x6
mov dx, y6
mov al, c
u7:
mov ah, 0ch
int 10h
inc cx
cmp cx, x6+w6
jbe u7



mov ah, 0
mov al, 13h
mov cx, x7
mov dx, y7
mov al, c
u8:
mov ah, 0ch
int 10h
inc dx
cmp dx, y7+w7
jbe u8



mov ah, 0
mov al, 13h
mov cx, x8
mov dx, y8
mov al, c
u9:
mov ah, 0ch
int 10h
inc dx
cmp dx, y8+w8
jbe u9


; door
mov ah, 0
mov al, 13h
mov cx, x9
mov dx, y9
mov al, c
u10:
mov ah, 0ch
int 10h
inc dx
cmp dx, y9+w9
jbe u10



mov ah, 0
mov al, 13h
mov cx, x10
mov dx, y10
mov al, c
u11:
mov ah, 0ch
int 10h
inc dx
cmp dx, y10+w10
jbe u11



mov ah, 0
mov al, 13h
mov cx, x11
mov dx, y11
mov al, c
u12:
mov ah, 0ch
int 10h
inc cx
cmp cx, x11+w11
jbe u12


; windows
mov ah, 0
mov al, 13h
mov cx, xa
mov dx, ya
mov al, c2
ua:
mov ah, 0ch
int 10h
inc cx
cmp cx, xa+wa
jbe ua



mov ah, 0
mov al, 13h
mov cx, xb
mov dx, ya
mov al, c2
ub:
mov ah, 0ch
int 10h
inc cx
cmp cx, xb+wa
jbe ub



mov ah, 0
mov al, 13h
mov cx, xa
mov dx, yb
mov al, c2
uc:
mov ah, 0ch
int 10h
inc cx
cmp cx, xa+wa
jbe uc



mov ah, 0
mov al, 13h
mov cx, xb
mov dx, yb
mov al, c2
ud:
mov ah, 0ch
int 10h
inc cx
cmp cx, xb+wa
jbe ud



mov ah, 0
mov al, 13h
mov cx, xa
mov dx, ya
mov al, c2
ue:
mov ah, 0ch
int 10h
inc dx
cmp dx, ya+wa
jbe ue



mov ah, 0
mov al, 13h
mov cx, xc
mov dx, ya
mov al, c2
uf:
mov ah, 0ch
int 10h
inc dx
cmp dx, ya+wa
jbe uf



mov ah, 0
mov al, 13h
mov cx, xb
mov dx, ya
mov al, c2
ug:
mov ah, 0ch
int 10h
inc dx
cmp dx, ya+wa
jbe ug



mov ah, 0
mov al, 13h
mov cx, xd
mov dx, ya
mov al, c2
uh:
mov ah, 0ch
int 10h
inc dx
cmp dx, ya+wa
jbe uh


; left tree stem
mov ah, 0
mov al, 13h
mov cx, xt1
mov dx, yt1
mov al, c
ui:
mov ah, 0ch
int 10h
inc cx
cmp cx, xt1+wt
jbe ui



mov ah, 0
mov al, 13h
mov cx, xt1
mov dx, yt1
mov al, c
uj:
mov ah, 0ch
int 10h
inc dx
cmp dx, yt1+wt1
jbe uj



mov ah, 0
mov al, 13h
mov cx, xt1
mov dx, yt2
mov al, c
uk:
mov ah, 0ch
int 10h
inc cx
cmp cx, xt1+wt
jbe uk



mov ah, 0
mov al, 13h
mov cx, xt2
mov dx, yt1
mov al, c
ul:
mov ah, 0ch
int 10h
inc dx
cmp dx, yt1+wt1
jbe ul


; right tree stem
mov ah, 0
mov al, 13h
mov cx, xt3
mov dx, yt3
mov al, c
um:
mov ah, 0ch
int 10h
inc cx
cmp cx, xt3+wt2
jbe um



mov ah, 0
mov al, 13h
mov cx, xt3
mov dx, yt3
mov al, c
un:
mov ah, 0ch
int 10h
inc dx
cmp dx, yt3+wt3
jbe un



mov ah, 0
mov al, 13h
mov cx, xt3
mov dx, yt4
mov al, c
uo:
mov ah, 0ch
int 10h
inc cx
cmp cx, xt3+wt2
jbe uo



mov ah, 0
mov al, 13h
mov cx, xt4
mov dx, yt3
mov al, c
up:
mov ah, 0ch
int 10h
inc dx
cmp dx, yt3+wt3
jbe up



; right tree triangles
mov ah, 0
mov al, 13h
mov cx, xtl
mov dx, ytl
mov al, c
uq:
mov ah, 0ch
int 10h
inc cx
cmp cx, xtl+wtl
jbe uq



mov ah, 0
mov al, 13h
mov cx, xtll
mov dx, ytll
mov al, c
ur:
mov ah, 0ch
int 10h
inc cx
cmp cx, xtll+wtl
jbe ur



mov ah, 0
mov al, 13h
mov cx, xtb
mov dx, ytb
mov al, c
us:
mov ah, 0ch
int 10h
inc cx
sub dx, 2
cmp cx, xtb+wtb
jbe us
mov ah, 0
mov al, 13h



mov cx, xtb1
mov dx, ytb
mov al, c
ut:
mov ah, 0ch
int 10h
dec cx
sub dx, 2
cmp cx, xtb1-wtb
jae ut



mov ah, 0
mov al, 13h
mov cx, xtb
mov dx, ytb1
mov al, c
uu:
mov ah, 0ch
int 10h
inc cx
sub dx, 2
cmp cx, xtb+wtb
jbe uu



mov ah, 0
mov al, 13h
mov cx, xtb1
mov dx, ytb1
mov al, c
uv:
mov ah, 0ch
int 10h
dec cx
sub dx, 2
cmp cx, xtb1-wtb
jae uv



; roof
mov ah, 0
mov al, 13h
mov cx, xr
mov dx, yr
mov al, c3
uw:
mov ah, 0ch
int 10h
inc cx
cmp cx, xr+wr
jbe uw



mov ah, 0
mov al, 13h
mov cx, xr
mov dx, yr
mov al, c3
ux:
mov ah, 0ch
int 10h
add cx, 3
dec dx
cmp cx, xr+wr1
jbe ux



mov ah, 0
mov al, 13h
mov cx, xr1
mov dx, yr
mov al, c3
uy:
mov ah, 0ch
int 10h
dec dx
sub cx, 3
cmp cx, xr1-wr1
jae uy

mov ah, 0 ; service 0 – get keystroke
int 0x16 ; bios keyboard services 
end:
mov ax, 0x4c00 ; terminate program int
int 0x21