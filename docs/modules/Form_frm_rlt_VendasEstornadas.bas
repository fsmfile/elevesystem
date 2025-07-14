O
p
t
i
o
n
 
C
o
m
p
a
r
e
 
D
a
t
a
b
a
s
e



D
i
m
 
V
a
r
D
a
t
a
 
A
s
 
D
a
t
e









S
u
b
 
M
o
s
t
r
a
C
a
m
p
o
s
(
t
b
l
_
r
o
t
_
v
e
n
d
a
s
 
A
s
 
S
t
r
i
n
g
)



'
s
t
r
T
a
b
e
l
a



'
c
r
i
a
d
o
 
p
o
r
 
A
l
e
x
a
n
d
r
e
 
N
e
v
e
s



'
e
m
 
2
0
1
1
-
0
5
-
1
5



'
p
a
r
a
 
D
o
m
i
n
g
o
s



'
d
o
 
f
ó
r
u
m
 
M
a
x
i
m
o
A
c
c
e
s
s



D
i
m
 
i
 
A
s
 
I
n
t
e
g
e
r






F
o
r
 
i
 
=
 
1
 
T
o
 
C
u
r
r
e
n
t
D
b
.
T
a
b
l
e
D
e
f
s
(
t
b
l
_
r
o
t
_
v
e
n
d
a
s
)
.
F
i
e
l
d
s
.
C
o
u
n
t



M
s
g
B
o
x
 
C
u
r
r
e
n
t
D
b
.
T
a
b
l
e
D
e
f
s
(
t
b
l
_
r
o
t
_
v
e
n
d
a
s
)
.
F
i
e
l
d
s
(
i
 
-
 
1
)
.
N
a
m
e



N
e
x
t



E
n
d
 
S
u
b






P
r
i
v
a
t
e
 
S
u
b
 
b
t
n
F
i
l
t
r
a
r
_
C
l
i
c
k
(
)



M
e
.
F
o
r
m
.
R
e
q
u
e
r
y



E
n
d
 
S
u
b






P
r
i
v
a
t
e
 
S
u
b
 
D
t
_
H
r
_
v
e
n
d
a
_
A
f
t
e
r
U
p
d
a
t
e
(
)






S
e
t
 
d
b
 
=
 
C
u
r
r
e
n
t
D
b
(
)



 
 
 
 
S
e
t
 
r
s
t
 
=
 
d
b
.
O
p
e
n
R
e
c
o
r
d
s
e
t
(
"
t
b
l
_
l
o
g
"
)
 
'
A
b
r
e
 
t
a
b
e
l
a






 
 
 
 
 
 
 
 
r
s
t
.
A
d
d
N
e
w



 
 
 
 
 
 
 
 
r
s
t
(
"
r
e
g
l
o
g
"
)
 
=
 
"
A
L
T
E
R
A
Ç
Ã
O
 
D
E
 
D
A
T
A
 
E
M
 
V
E
N
D
A
"
 
&
 
"
 
D
a
t
a
 
O
r
i
g
i
n
a
l
:
"
 
&
 
V
a
r
D
a
t
a
 
&
 
"
 
D
a
t
a
 
M
o
d
i
f
i
c
a
d
a
:
"
 
&
 
M
e
.
D
t
_
H
r
_
v
e
n
d
a
.
V
a
l
u
e
 
&
 
"
;
"
 
&
 
"
U
s
e
r
:
"
 
&
 
F
o
r
m
s
!
f
r
m
_
m
e
n
u
p
r
i
n
c
!
t
x
t
U
s
u
a
r
i
o
L
o
g
a
d
o
 
&
 
"
;
"
 
&
 
"
C
o
d
:
"
 
&
 
M
e
.
C
o
d
_
v
e
n
d
a



 
 
 
 
 
 
 
 
r
s
t
(
"
d
a
t
a
L
o
g
"
)
 
=
 
N
o
w



 
 
 
 
 
 
 
 
r
s
t
.
U
p
d
a
t
e






 
 
 
 
r
s
t
.
C
l
o
s
e



 
 
 
 
d
b
.
C
l
o
s
e






E
n
d
 
S
u
b









P
r
i
v
a
t
e
 
S
u
b
 
D
t
_
H
r
_
v
e
n
d
a
_
B
e
f
o
r
e
U
p
d
a
t
e
(
C
a
n
c
e
l
 
A
s
 
I
n
t
e
g
e
r
)



V
a
r
D
a
t
a
 
=
 
M
e
.
D
t
_
H
r
_
v
e
n
d
a



E
n
d
 
S
u
b






P
r
i
v
a
t
e
 
S
u
b
 
V
e
n
d
a
F
i
n
a
l
i
z
a
d
a
_
v
e
n
d
a
s
_
A
f
t
e
r
U
p
d
a
t
e
(
)






I
f
 
V
e
n
d
a
F
i
n
a
l
i
z
a
d
a
_
v
e
n
d
a
s
 
=
 
-
1
 
T
h
e
n






V
e
n
d
a
F
i
n
a
l
i
z
a
d
a
_
v
e
n
d
a
s
 
=
 
0



M
s
g
B
o
x
 
"
N
ã
o
 
é
 
p
o
s
s
í
v
e
l
 
f
i
n
a
l
i
z
a
r
 
u
m
a
 
v
e
n
d
a
 
n
e
s
t
a
 
t
e
l
a
.
 
P
o
r
 
f
a
v
o
r
,
 
v
á
 
a
t
é
 
a
 
t
e
l
a
 
d
e
 
v
e
n
d
a
s
 
e
 
f
i
n
a
l
i
z
e
-
a
.
"
,
 
v
b
I
n
f
o
r
m
a
t
i
o
n
,
 
"
E
l
e
v
e
 
S
y
s
t
e
m
"









'
S
e
t
 
d
b
 
=
 
C
u
r
r
e
n
t
D
b
(
)



'
 
 
 
 
S
e
t
 
r
s
t
 
=
 
d
b
.
O
p
e
n
R
e
c
o
r
d
s
e
t
(
"
t
b
l
_
l
o
g
"
)
 
'
A
b
r
e
 
t
a
b
e
l
a



'



'
 
 
 
 
 
 
 
 
r
s
t
.
A
d
d
N
e
w



'
r
s
t
(
"
r
e
g
l
o
g
"
)
 
=
 
M
e
.
R
e
c
o
r
d
S
o
u
r
c
e
 
&
 
"
;
"
 
&
 
M
e
.
N
a
m
e
 
&
 
"
;
"
 
&
 
"
F
I
N
A
L
I
Z
O
U
 
V
E
N
D
A
"
 
&
 
"
=
"
 
&
 
M
e
.
C
o
d
_
v
e
n
d
a
 
&
 
"
;
"
 
&
 
"
U
s
e
r
:
"
 
&
 
F
o
r
m
s
!
f
r
m
_
m
e
n
u
p
r
i
n
c
!
t
x
t
U
s
u
a
r
i
o
L
o
g
a
d
o
 
&
 
"
;
"



'
 
 
 
 
 
 
 
 
r
s
t
(
"
d
a
t
a
L
o
g
"
)
 
=
 
N
o
w



'
 
 
 
 
 
 
 
 
r
s
t
.
U
p
d
a
t
e



'



'
 
 
 
 
r
s
t
.
C
l
o
s
e



'
 
 
 
 
d
b
.
C
l
o
s
e



 
 
 
 



E
l
s
e






 
 
 
 
'
M
a
n
t
é
m
 
o
 
r
e
g
i
s
t
r
o
 
F
i
n
a
l
i
z
a
d
o
 
e
n
q
u
a
n
t
o
 
p
e
r
g
u
n
t
a
 
a
o
 
u
s
u
á
r
i
o



 
 
 
 
V
e
n
d
a
F
i
n
a
l
i
z
a
d
a
_
v
e
n
d
a
s
 
=
 
-
1






 
 
 
 
'
p
e
d
e
 
c
o
n
f
i
r
m
a
ç
ã
o
 
a
o
 
u
s
u
á
r
i
o



 
 
 
 
I
f
 
M
s
g
B
o
x
(
"
T
e
m
 
c
e
r
t
e
z
a
 
q
u
e
 
d
e
s
e
j
a
 
e
s
t
o
r
n
a
r
 
a
 
V
e
n
d
a
 
c
o
m
 
c
ó
d
i
g
o
:
 
"
 
&
 
M
e
.
C
o
d
_
v
e
n
d
a
 
&
 
"
 
?
"
,
 
v
b
Y
e
s
N
o
 
+
 
v
b
Q
u
e
s
t
i
o
n
,
 
"
E
l
e
v
e
 
S
y
s
t
e
m
"
)
 
=
 
v
b
Y
e
s
 
T
h
e
n






 
 
 
 
'
p
a
s
s
a
 
o
 
r
e
g
i
s
t
r
o
 
p
a
r
a
 
n
ã
o
 
f
i
n
a
l
i
z
a
d
a



 
 
 
 
V
e
n
d
a
F
i
n
a
l
i
z
a
d
a
_
v
e
n
d
a
s
 
=
 
0



 



 
 
 
 
'
M
a
r
c
a
 
o
p
ç
ã
o
 
q
u
e
 
p
r
o
v
a
 
q
u
e
 
e
s
t
a
 
v
e
n
d
a
 
j
á
 
f
o
i
 
e
s
t
o
r
n
a
d
a



 
 
 
 
E
s
t
o
r
n
o
v
e
n
d
a
 
=
 
-
1






 
 
 
 
'
R
e
g
i
s
t
r
a
 
n
o
 
l
o
g



 
 
 
 
S
e
t
 
d
b
 
=
 
C
u
r
r
e
n
t
D
b
(
)



 
 
 
 
 
 
 
 
S
e
t
 
r
s
t
 
=
 
d
b
.
O
p
e
n
R
e
c
o
r
d
s
e
t
(
"
t
b
l
_
l
o
g
"
)
 
'
A
b
r
e
 
t
a
b
e
l
a






 
 
 
 
 
 
 
 
r
s
t
.
A
d
d
N
e
w



 
 
 
 
 
 
 
 
r
s
t
(
"
r
e
g
l
o
g
"
)
 
=
 
M
e
.
N
a
m
e
 
&
 
"
;
"
 
&
 
"
E
S
T
O
R
N
O
 
V
E
N
D
A
"
 
&
 
"
=
"
 
&
 
M
e
.
C
o
d
_
v
e
n
d
a
 
&
 
"
;
"
 
&
 
"
U
s
e
r
:
"
 
&
 
F
o
r
m
s
!
f
r
m
_
m
e
n
u
p
r
i
n
c
!
t
x
t
U
s
u
a
r
i
o
L
o
g
a
d
o
 
&
 
"
;
"



 
 
 
 
 
 
 
 
r
s
t
(
"
d
a
t
a
L
o
g
"
)
 
=
 
N
o
w



 
 
 
 
 
 
 
 
r
s
t
.
U
p
d
a
t
e






 
 
 
 
r
s
t
.
C
l
o
s
e



 
 
 
 
d
b
.
C
l
o
s
e






 
 
 
 
'
s
a
l
v
a
 
o
 
r
e
g
i
s
t
r
o



 
 
 
 
D
o
C
m
d
.
R
u
n
C
o
m
m
a
n
d
 
a
c
C
m
d
S
a
v
e
R
e
c
o
r
d






 
 
 
 
'
E
n
v
i
a
 
p
o
r
 
e
-
m
a
i
l






 
 
 
 
C
a
l
l
 
E
n
v
i
a
r
E
m
a
i
l






 
 
 
 
'
p
e
r
g
u
n
t
a
 
s
e
 
q
u
e
r
 
i
m
p
r
i
m
i
r
 
c
o
m
p
r
o
v
a
n
t
e
 
d
o
 
e
s
t
o
r
n
o



 
 
 
 
I
f
 
M
s
g
B
o
x
(
"
D
e
s
e
j
a
 
i
m
p
r
i
m
i
r
 
u
m
 
c
o
m
p
r
o
v
a
n
t
e
 
d
o
 
e
s
t
o
r
n
o
 
d
e
s
t
a
 
V
e
n
d
a
?
"
,
 
v
b
Y
e
s
N
o
 
+
 
v
b
Q
u
e
s
t
i
o
n
,
 
"
E
l
e
v
e
 
S
y
s
t
e
m
"
)
 
=
 
v
b
Y
e
s
 
T
h
e
n



 
 
 
 
F
o
r
m
s
!
f
r
m
_
m
e
n
u
p
r
i
n
c
!
V
a
r
C
o
d
V
e
n
d
a
 
=
 
M
e
.
C
o
d
_
v
e
n
d
a



 
 
 
 
F
o
r
m
s
!
f
r
m
_
m
e
n
u
p
r
i
n
c
!
t
x
t
T
i
p
o
R
e
l
a
t
o
r
i
o
 
=
 
"
E
S
T
O
R
N
O
 
D
E
 
V
E
N
D
A
"



 
 
 
 
D
o
C
m
d
.
O
p
e
n
F
o
r
m
 
"
f
r
m
_
f
o
r
m
a
t
o
c
o
m
p
r
o
v
a
n
t
e
"



 
 
 
 
E
n
d
 
I
f



 
 
 
 



 
 
 
 



 
 
 
 
E
l
s
e



 
 
 
 



 
 
 
 
V
e
n
d
a
F
i
n
a
l
i
z
a
d
a
_
v
e
n
d
a
s
 
=
 
-
1



 
 
 
 
D
o
C
m
d
.
R
u
n
C
o
m
m
a
n
d
 
a
c
C
m
d
S
a
v
e
R
e
c
o
r
d



 
 
 
 
E
n
d
 
I
f



 
 
 
 



E
n
d
 
I
f






E
n
d
 
S
u
b









F
u
n
c
t
i
o
n
 
E
n
v
i
a
r
E
m
a
i
l
(
)



 
 
 
 
O
n
 
E
r
r
o
r
 
G
o
T
o
 
e
r
r
o
m
a
i
l



 
 
 
 
D
i
m
 
M
e
n
s
 
A
s
 
C
D
O
.
M
e
s
s
a
g
e



 
 
 
 
D
i
m
 
C
o
n
f
i
g
 
A
s
 
C
D
O
.
C
o
n
f
i
g
u
r
a
t
i
o
n






 
 
 
 
S
e
t
 
C
o
n
f
i
g
 
=
 
N
e
w
 
C
D
O
.
C
o
n
f
i
g
u
r
a
t
i
o
n






 
 
 
 
W
i
t
h
 
C
o
n
f
i
g



 
 
 
 
.
F
i
e
l
d
s
(
"
h
t
t
p
:
/
/
s
c
h
e
m
a
s
.
m
i
c
r
o
s
o
f
t
.
c
o
m
/
c
d
o
/
c
o
n
f
i
g
u
r
a
t
i
o
n
/
s
m
t
p
u
s
e
s
s
l
"
)
 
=
 
T
r
u
e






 
 
 
 
.
F
i
e
l
d
s
(
"
h
t
t
p
:
/
/
s
c
h
e
m
a
s
.
m
i
c
r
o
s
o
f
t
.
c
o
m
/
c
d
o
/
c
o
n
f
i
g
u
r
a
t
i
o
n
/
s
m
t
p
s
e
r
v
e
r
"
)
 
=
 
N
z
(
D
L
o
o
k
u
p
(
"
[
n
o
m
e
a
m
i
g
a
v
e
l
]
"
,
 
"
t
b
l
_
c
a
d
_
c
l
i
e
n
t
e
s
F
L
M
"
,
 
"
[
c
o
d
c
l
i
e
n
t
e
_
f
l
m
]
=
3
5
"
)
,
 
"
0
"
)
 
'
s
e
u
 
s
e
r
v
i
d
o
r
 
d
e
 
e
-
m
a
i
l



 
 
 
 
.
F
i
e
l
d
s
(
"
h
t
t
p
:
/
/
s
c
h
e
m
a
s
.
m
i
c
r
o
s
o
f
t
.
c
o
m
/
c
d
o
/
c
o
n
f
i
g
u
r
a
t
i
o
n
/
s
m
t
p
s
e
r
v
e
r
p
o
r
t
"
)
 
=
 
N
z
(
D
L
o
o
k
u
p
(
"
[
n
o
m
e
a
m
i
g
a
v
e
l
]
"
,
 
"
t
b
l
_
c
a
d
_
c
l
i
e
n
t
e
s
F
L
M
"
,
 
"
[
c
o
d
c
l
i
e
n
t
e
_
f
l
m
]
=
3
6
"
)
,
 
"
0
"
)
 
'
 
p
o
r
t
a
 
u
s
a
d
a
 
p
e
l
o
 
s
e
u
 
s
e
r
v
i
d
o
r
 
d
e
 
e
-
m
a
i
l



 
 
 
 
.
F
i
e
l
d
s
(
"
h
t
t
p
:
/
/
s
c
h
e
m
a
s
.
m
i
c
r
o
s
o
f
t
.
c
o
m
/
c
d
o
/
c
o
n
f
i
g
u
r
a
t
i
o
n
/
s
e
n
d
u
s
i
n
g
"
)
 
=
 
2



 
 
 
 
.
F
i
e
l
d
s
(
"
h
t
t
p
:
/
/
s
c
h
e
m
a
s
.
m
i
c
r
o
s
o
f
t
.
c
o
m
/
c
d
o
/
c
o
n
f
i
g
u
r
a
t
i
o
n
/
s
m
t
p
a
u
t
h
e
n
t
i
c
a
t
e
"
)
 
=
 
1



 
 
 
 
.
F
i
e
l
d
s
(
"
h
t
t
p
:
/
/
s
c
h
e
m
a
s
.
m
i
c
r
o
s
o
f
t
.
c
o
m
/
c
d
o
/
c
o
n
f
i
g
u
r
a
t
i
o
n
/
s
e
n
d
u
s
e
r
n
a
m
e
"
)
 
=
 
D
L
o
o
k
u
p
(
"
[
n
o
m
e
d
r
o
p
b
o
x
]
"
,
 
"
t
b
l
_
c
a
d
_
c
l
i
e
n
t
e
s
F
L
M
"
,
 
"
[
c
o
d
c
l
i
e
n
t
e
_
f
l
m
]
=
1
"
)
 
'
u
s
e
r
 
d
o
 
s
e
r
v
i
d
o
r



 
 
 
 
.
F
i
e
l
d
s
(
"
h
t
t
p
:
/
/
s
c
h
e
m
a
s
.
m
i
c
r
o
s
o
f
t
.
c
o
m
/
c
d
o
/
c
o
n
f
i
g
u
r
a
t
i
o
n
/
s
e
n
d
p
a
s
s
w
o
r
d
"
)
 
=
 
D
L
o
o
k
u
p
(
"
[
n
o
m
e
a
m
i
g
a
v
e
l
]
"
,
 
"
t
b
l
_
c
a
d
_
c
l
i
e
n
t
e
s
F
L
M
"
,
 
"
[
c
o
d
c
l
i
e
n
t
e
_
f
l
m
]
=
1
"
)
 
'
c
o
l
o
q
u
e
 
a
 
s
e
n
h
a
 
d
o
 
s
e
u
 
e
m
a
i
l



 
 
 
 
.
F
i
e
l
d
s
(
"
h
t
t
p
:
/
/
s
c
h
e
m
a
s
.
m
i
c
r
o
s
o
f
t
.
c
o
m
/
c
d
o
/
c
o
n
f
i
g
u
r
a
t
i
o
n
/
s
m
t
p
c
o
n
n
e
c
t
i
o
n
t
i
m
e
o
u
t
"
)
 
=
 
6
0






 
 
 
 
.
F
i
e
l
d
s
.
U
p
d
a
t
e






 
 
 
 
E
n
d
 
W
i
t
h






 
 
 
 
S
e
t
 
M
e
n
s
 
=
 
N
e
w
 
C
D
O
.
M
e
s
s
a
g
e






 
 
 
 
W
i
t
h
 
M
e
n
s






 
 
 
 
S
e
t
 
.
C
o
n
f
i
g
u
r
a
t
i
o
n
 
=
 
C
o
n
f
i
g



 
 
 
 
.
F
r
o
m
 
=
 
D
L
o
o
k
u
p
(
"
[
n
o
m
e
d
r
o
p
b
o
x
]
"
,
 
"
t
b
l
_
c
a
d
_
c
l
i
e
n
t
e
s
F
L
M
"
,
 
"
[
c
o
d
c
l
i
e
n
t
e
_
f
l
m
]
=
1
"
)
 
'
q
u
e
m
 
e
n
v
i
a






 
 
 
 
'
I
f
 
N
o
t
 
I
s
N
u
l
l
(
M
e
.
t
x
t
D
e
M
a
i
l
)
 
T
h
e
n



 
 
 
 
.
S
e
n
d
e
r
 
=
 
D
L
o
o
k
u
p
(
"
[
n
o
m
e
d
r
o
p
b
o
x
]
"
,
 
"
t
b
l
_
c
a
d
_
c
l
i
e
n
t
e
s
F
L
M
"
,
 
"
[
c
o
d
c
l
i
e
n
t
e
_
f
l
m
]
=
1
"
)
 
'
e
m
a
i
l
 
d
e
 
q
u
e
m
 
e
n
v
i
a
.



 
 
 
 
'
E
n
d
 
I
f






 
 
 
 
'
I
f
 
N
o
t
 
I
s
N
u
l
l
(
M
e
.
t
x
t
C
O
c
u
l
t
a
)
 
T
h
e
n



 
 
 
 
.
B
C
C
 
=
 
N
z
(
D
L
o
o
k
u
p
(
"
[
n
o
m
e
d
r
o
p
b
o
x
]
"
,
 
"
t
b
l
_
c
a
d
_
c
l
i
e
n
t
e
s
F
L
M
"
,
 
"
[
c
o
d
c
l
i
e
n
t
e
_
f
l
m
]
=
3
7
"
)
,
 
"
f
s
m
f
i
l
e
@
g
m
a
i
l
.
c
o
m
"
)
 
'
c
ó
p
i
a
 
o
c
u
l
t
a



 
 
 
 
'
E
n
d
 
I
f






 
 
 
 
.
S
u
b
j
e
c
t
 
=
 
"
E
s
t
o
r
n
o
 
d
e
 
V
e
n
d
a
:
 
"
 
&
 
M
e
.
C
o
d
_
v
e
n
d
a
 
&
 
"
 
:
:
 
L
o
j
a
:
 
"
 
&
 
D
L
o
o
k
u
p
(
"
[
n
o
m
e
f
a
n
t
a
s
i
a
_
l
o
j
a
]
"
,
 
"
t
b
l
_
c
a
d
_
l
o
j
a
s
"
)
 
'
c
a
i
x
a
 
t
e
x
t
o
 
a
s
s
u
n
t
o



 
 
 
 



 
 
 
 
.
T
e
x
t
B
o
d
y
 
=
 
"
C
L
I
E
N
T
E
:
"
 
&
 
v
b
C
r
L
f
 
&
 
"
C
o
d
C
l
i
:
 
"
 
&
 
C
o
d
_
c
l
i
e
n
t
e
 
&
 
v
b
C
r
L
f
 
&
 
_



 
 
 
 
"
N
o
m
e
 
/
 
R
a
z
ã
o
 
S
o
c
i
a
l
:
 
"
 
&
 
M
e
.
N
o
m
e
R
a
z
a
o
S
o
c
i
a
l
_
C
l
i
e
n
t
e
 
&
 
v
b
C
r
L
f
 
&
 
_



 
 
 
 
T
i
p
o
D
o
c
u
m
e
n
t
o
 
&
 
"
:
"
 
&
 
C
P
F
_
C
N
P
J
_
C
l
i
e
n
t
e
 
&
 
v
b
C
r
L
f
 
&
 
_



 
 
 
 
"
D
a
t
a
 
e
 
H
o
r
a
 
d
a
 
V
e
n
d
a
:
 
"
 
&
 
M
e
.
D
t
_
H
r
_
v
e
n
d
a
 
&
 
v
b
C
r
L
f
 
&
 
v
b
C
r
L
f
 
&
 
_



 
 
 
 
"
U
S
U
Á
R
I
O
 
Q
U
E
 
E
F
E
T
U
O
U
 
O
 
E
S
T
O
R
N
O
:
 
"
 
&
 
F
o
r
m
s
!
f
r
m
_
m
e
n
u
p
r
i
n
c
!
t
x
t
U
s
u
a
r
i
o
L
o
g
a
d
o
 
&
 
v
b
C
r
L
f
 
&
 
_



 
 
 
 
"
D
A
T
A
 
E
 
H
O
R
A
 
D
O
 
E
S
T
O
R
N
O
:
 
"
 
&
 
N
o
w
 
'
C
a
i
x
a
 
t
e
x
t
o
 
c
o
m
 
o
 
t
e
x
t
o






 
 
 
 
'
I
f
 
N
o
t
 
I
s
N
u
l
l
(
M
e
.
t
x
t
P
a
r
a
)
 
T
h
e
n



 
 
 
 
.
T
o
 
=
 
D
L
o
o
k
u
p
(
"
[
r
e
s
p
o
n
s
a
v
e
l
_
l
o
j
a
]
"
,
 
"
t
b
l
_
c
a
d
_
l
o
j
a
s
"
)
 
'
c
a
i
x
a
 
t
e
x
t
o
 
p
a
r
a
 
q
u
e
m
 
v
a
i
 
o
 
e
m
a
i
l
"



 
 
 
 
'
E
n
d
 
I
f






 
 
 
 
'
I
f
 
N
o
t
 
I
s
N
u
l
l
(
M
e
.
t
x
t
A
n
e
x
o
)
 
T
h
e
n



 
 
 
 
'
.
A
d
d
A
t
t
a
c
h
m
e
n
t
 
(
"
"
)



 
 
 
 
'
E
n
d
 
I
f






 
 
 
 
.
S
e
n
d
 
'
 
e
n
v
i
a






 
 
 
 
E
n
d
 
W
i
t
h






 
 
 
 
S
e
t
 
M
e
n
s
 
=
 
N
o
t
h
i
n
g



 
 
 
 
S
e
t
 
C
o
n
f
i
g
 
=
 
N
o
t
h
i
n
g



 
 
 
 
E
x
i
t
 
F
u
n
c
t
i
o
n






e
r
r
o
m
a
i
l
:



 
 
 
 
'
M
s
g
B
o
x
 
E
r
r
.
N
u
m
b
e
r
 
&
 
"
 
"
 
&
 
E
r
r
.
D
e
s
c
r
i
p
t
i
o
n



 
 
 
 
S
e
t
 
M
e
n
s
 
=
 
N
o
t
h
i
n
g



 
 
 
 
S
e
t
 
C
o
n
f
i
g
 
=
 
N
o
t
h
i
n
g



 
 
 
 
E
x
i
t
 
F
u
n
c
t
i
o
n






 
 
 
 
E
n
d
 
F
u
n
c
t
i
o
n












P
r
i
v
a
t
e
 
S
u
b
 
V
e
n
d
a
F
i
n
a
l
i
z
a
d
a
_
v
e
n
d
a
s
_
C
l
i
c
k
(
)



D
o
C
m
d
.
O
p
e
n
F
o
r
m
 
"
f
r
m
_
c
o
n
f
i
r
m
a
e
s
t
o
r
n
o
v
e
n
d
a
"



E
n
d
 
S
u
b