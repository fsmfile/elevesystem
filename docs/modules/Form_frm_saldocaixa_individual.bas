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
_
A
b
r
i
r
R
e
l
a
t
o
r
i
o
_
C
l
i
c
k
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
 
T
r
a
t
a
E
r
r
o









I
f
 
M
e
.
t
x
t
_
D
a
t
a
 
=
 
D
a
t
e
 
T
h
e
n






 
 
 
 
I
f
 
I
s
N
u
l
l
(
d
t
c
a
i
x
a
)
 
T
h
e
n






 
 
 
 
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
 
e
x
t
r
a
i
r
 
u
m
 
r
e
l
a
t
ó
r
i
o
 
F
I
N
A
L
 
c
o
m
 
o
 
c
a
i
x
a
 
a
i
n
d
a
 
a
b
e
r
t
o
.
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
T
e
n
t
e
 
o
 
R
e
l
a
t
ó
r
i
o
 
P
a
r
c
i
a
l
.
"
,
 
v
b
E
x
c
l
a
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






 
 
 
 
E
l
s
e






 
 
 
 
'
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
R
e
p
o
r
t
 
"
r
l
t
_
C
a
i
x
a
_
l
o
t
e
r
i
c
a
_
N
a
o
F
i
s
c
a
l
"
,
 
a
c
V
i
e
w
P
r
e
v
i
e
w
,
 
,
 
,
 
a
c
W
i
n
d
o
w
N
o
r
m
a
l



 
 
 
 
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
s
t
e
 
é
 
o
 
R
e
l
a
t
ó
r
i
o
 
F
I
N
A
L
 
d
o
 
s
e
u
 
C
A
I
X
A
.
 
"
 
&
 
M
e
.
t
x
t
I
n
f
C
a
i
x
a



 
 
 
 
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
R
e
p
o
r
t
 
"
r
l
t
_
C
a
i
x
a
"
,
 
a
c
V
i
e
w
P
r
e
v
i
e
w
,
 
,
 
,
 
a
c
W
i
n
d
o
w
N
o
r
m
a
l






 
 
 
 
E
n
d
 
I
f






E
l
s
e






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
2
ª
 
v
i
a
 
-
 
R
e
l
a
t
ó
r
i
o
 
r
e
f
.
 
a
 
d
a
t
a
:
 
"
 
&
 
M
e
.
t
x
t
_
D
a
t
a



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
R
e
p
o
r
t
 
"
r
l
t
_
C
a
i
x
a
"
,
 
a
c
V
i
e
w
P
r
e
v
i
e
w
,
 
,
 
,
 
a
c
W
i
n
d
o
w
N
o
r
m
a
l



 
 
 
 



'
I
f
 
D
a
t
e
S
e
r
i
a
l
(
y
e
a
r
(
d
t
c
a
i
x
a
)
,
 
m
o
n
t
h
(
d
t
c
a
i
x
a
)
,
 
D
a
y
(
d
t
c
a
i
x
a
)
)
 
=
 
D
a
t
e
 
T
h
e
n



'
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
R
e
p
o
r
t
 
"
r
l
t
_
C
a
i
x
a
_
l
o
t
e
r
i
c
a
_
N
a
o
F
i
s
c
a
l
"
,
 
a
c
V
i
e
w
P
r
e
v
i
e
w
,
 
,
 
,
 
a
c
W
i
n
d
o
w
N
o
r
m
a
l



'
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
R
e
p
o
r
t
 
"
r
l
t
_
C
a
i
x
a
_
i
n
d
i
v
i
d
u
a
l
"
,
 
a
c
V
i
e
w
P
r
e
v
i
e
w
,
 
,
 
,
 
a
c
W
i
n
d
o
w
N
o
r
m
a
l






E
n
d
 
I
f









E
x
i
t
 
S
u
b






T
r
a
t
a
E
r
r
o
:



M
s
g
B
o
x
 
"
V
e
r
i
f
i
q
u
e
 
o
s
 
D
a
d
o
s
 
"
 
&
 
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
 
v
b
C
r
L
f
 
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
,
 
v
b
C
r
i
t
i
c
a
l
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
_
A
t
u
a
l
i
z
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






C
a
l
l
 
U
p
d
a
t
e
T
b
l
T
e
m
p
L
a
n
c
C
a
i
x
a



C
a
l
l
 
U
p
d
a
t
e
T
b
l
T
e
m
p
C
o
n
t
a
s
R
e
c
e
b
e
r






C
s
_
T
o
d
o
s
L
a
n
c
C
a
i
x
a
_
s
u
b
f
o
r
m
u
l
á
r
i
o
.
R
e
q
u
e
r
y






C
s
_
T
o
t
a
l
P
o
r
F
o
r
m
a
P
a
g
_
s
u
b
f
o
r
m
u
l
á
r
i
o
.
R
e
q
u
e
r
y






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
c
a
l
c






I
f
 
t
x
t
_
D
a
t
a
 
<
 
D
a
t
e
 
O
r
 
I
s
N
u
l
l
(
t
x
t
_
D
a
t
a
)
 
T
h
e
n



M
e
.
b
t
n
_
f
e
c
h
a
r
C
a
i
x
a
.
E
n
a
b
l
e
d
 
=
 
F
a
l
s
e



E
l
s
e



M
e
.
b
t
n
_
f
e
c
h
a
r
C
a
i
x
a
.
E
n
a
b
l
e
d
 
=
 
T
r
u
e



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
_
C
a
l
c
_
C
l
i
c
k
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
 
E
r
r
_
C
l
i
c
k



 
 
 
 
 
S
h
e
l
l
 
"
C
a
l
c
"
,
 
v
b
N
o
r
m
a
l
F
o
c
u
s



E
r
r
_
E
x
i
t
:



 
 
 
 
 
E
x
i
t
 
S
u
b



E
r
r
_
C
l
i
c
k
:



 
 
 
 
 
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
 
f
o
i
 
p
o
s
s
i
v
e
l
 
e
x
e
c
u
t
a
r
 
a
 
C
a
l
c
u
l
a
d
o
r
a
.
"



 
 
 
 
 
E
x
i
t
 
S
u
b



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
_
f
e
c
h
a
r
C
a
i
x
a
_
C
l
i
c
k
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
 
T
r
a
t
a
E
r
r
o






D
i
m
 
F
o
r
m
N
a
m
e
 
A
s
 
S
t
r
i
n
g






M
e
.
d
t
c
a
i
x
a
 
=
 
D
L
a
s
t
(
"
[
d
a
t
a
c
a
i
x
a
]
"
,
 
"
C
s
_
T
b
l
C
a
i
x
a
_
I
n
d
i
v
i
d
u
a
l
"
,
 
"
[
M
a
t
F
u
n
c
]
=
"
 
&
 
M
e
.
C
x
U
s
u
a
r
i
o
.
C
o
l
u
m
n
(
1
)
)






I
f
 
I
s
N
u
l
l
(
d
t
c
a
i
x
a
)
 
T
h
e
n






 
 
 
 
I
f
 
C
o
n
f
i
g
2
1
 
=
 
0
 
T
h
e
n



 
 
 
 



 
 
 
 
 
 
 
 
I
f
 
M
e
.
t
o
t
a
l
V
e
n
d
a
s
 
=
 
0
 
O
r
 
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
o
t
a
l
V
e
n
d
a
s
)
 
T
h
e
n



 
 
 
 



 
 
 
 
 
 
 
 
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
 
F
e
c
h
a
r
 
o
 
C
a
i
x
a
 
s
e
m
 
r
e
a
l
i
z
a
r
 
o
s
 
L
a
ç
a
m
e
n
t
o
s
 
n
o
 
M
ó
d
u
l
o
 
d
e
 
V
e
n
d
a
s
.
"
,
 
v
b
E
x
c
l
a
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



 
 
 
 
 
 
 
 



 
 
 
 
 
 
 
 
E
l
s
e



 
 
 
 
 
 
 
 



 
 
 
 
 
 
 
 
'
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






 
 
 
 
 
 
 
 
F
o
r
m
N
a
m
e
 
=
 
M
e
.
N
a
m
e



 
 
 
 
 
 
 
 
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
s
a
l
d
o
_
c
a
i
x
a
"
,
 
a
c
N
o
r
m
a
l



 
 
 
 
 
 
 
 
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
s
a
l
d
o
_
c
a
i
x
a
!
F
o
r
m
O
r
i
g
e
m
 
=
 
F
o
r
m
N
a
m
e



 
 
 
 
 
 
 
 
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
s
a
l
d
o
_
c
a
i
x
a
!
t
x
t
V
a
l
o
r
C
a
i
x
a
D
i
n
h
e
i
r
o
 
=
 
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
s
a
l
d
o
c
a
i
x
a
_
i
n
d
i
v
i
d
u
a
l
!
t
x
t
_
s
a
l
d
o
D
i
n
h
e
i
r
o



 
 
 
 
 
 
 
 
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
s
a
l
d
o
_
c
a
i
x
a
!
t
x
t
V
a
l
o
r
C
a
i
x
a
O
u
t
r
a
s
F
P
 
=
 
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
s
a
l
d
o
c
a
i
x
a
_
i
n
d
i
v
i
d
u
a
l
!
t
x
t
S
a
l
d
o
O
u
t
r
a
s
F
P



 
 
 
 
 
 
 
 
'
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
s
a
l
d
o
_
c
a
i
x
a
!
t
x
t
S
a
l
d
o
O
p
O
u
t
r
a
s
F
P
 
=
 
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
s
a
l
d
o
c
a
i
x
a
_
i
n
d
i
v
i
d
u
a
l
!
t
x
t
S
a
l
d
o
O
u
t
r
a
s
F
P






 
 
 
 
 
 
 
 
E
n
d
 
I
f



 
 
 
 
 
 
 
 



 
 
 
 
E
l
s
e



 
 
 
 



 
 
 
 
 
 
 
 
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
 
f
e
c
h
a
r
 
o
 
C
a
i
x
a
?
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
 
+
 
v
b
Y
e
s
N
o
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



 
 
 
 
 
 
 
 



 
 
 
 
 
 
 
 
F
o
r
m
N
a
m
e
 
=
 
M
e
.
N
a
m
e



 
 
 
 
 
 
 
 
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
s
a
l
d
o
_
c
a
i
x
a
"
,
 
a
c
N
o
r
m
a
l



 
 
 
 
 
 
 
 
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
s
a
l
d
o
_
c
a
i
x
a
!
F
o
r
m
O
r
i
g
e
m
 
=
 
F
o
r
m
N
a
m
e
 
'
I
n
f
o
r
m
a
 
a
 
t
e
l
a
 
d
e
 
f
e
c
h
a
m
e
n
t
o
 
d
e
 
C
a
i
x
a
 
q
u
a
l
 
o
 
f
o
r
m
u
l
á
r
i
o
 
q
u
e
 
e
s
t
á
 
a
b
r
i
n
d
o



 
 
 
 
 
 
 
 
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
s
a
l
d
o
_
c
a
i
x
a
!
t
x
t
V
a
l
o
r
C
a
i
x
a
D
i
n
h
e
i
r
o
 
=
 
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
s
a
l
d
o
c
a
i
x
a
_
i
n
d
i
v
i
d
u
a
l
!
t
x
t
_
s
a
l
d
o
D
i
n
h
e
i
r
o



 
 
 
 
 
 
 
 
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
s
a
l
d
o
_
c
a
i
x
a
!
t
x
t
V
a
l
o
r
C
a
i
x
a
O
u
t
r
a
s
F
P
 
=
 
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
s
a
l
d
o
c
a
i
x
a
_
i
n
d
i
v
i
d
u
a
l
!
t
x
t
S
a
l
d
o
O
u
t
r
a
s
F
P



 
 
 
 
 
 
 
 
'
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
s
a
l
d
o
_
c
a
i
x
a
!
t
x
t
S
a
l
d
o
O
p
O
u
t
r
a
s
F
P
 
=
 
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
s
a
l
d
o
c
a
i
x
a
_
i
n
d
i
v
i
d
u
a
l
!
t
x
t
S
a
l
d
o
O
u
t
r
a
s
F
P



 
 
 
 
 
 
 
 



 
 
 
 
 
 
 
 
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
l
s
e






 
 
 
 
I
f
 
C
o
n
f
i
g
2
1
 
=
 
0
 
T
h
e
n






 
 
 
 
 
 
 
 
I
f
 
M
e
.
t
o
t
a
l
V
e
n
d
a
s
 
=
 
0
 
O
r
 
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
o
t
a
l
V
e
n
d
a
s
)
 
T
h
e
n



 
 
 
 



 
 
 
 
 
 
 
 
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
 
F
e
c
h
a
r
 
o
 
C
a
i
x
a
 
s
e
m
 
r
e
a
l
i
z
a
r
 
o
s
 
L
a
ç
a
m
e
n
t
o
s
 
n
o
 
M
ó
d
u
l
o
 
d
e
 
V
e
n
d
a
s
.
"
,
 
v
b
E
x
c
l
a
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






 
 
 
 
 
 
 
 
E
n
d
 
I
f






 
 
 
 
E
l
s
e



 
 
 
 



 
 
 
 
 
 
 
 
I
f
 
D
a
t
e
S
e
r
i
a
l
(
y
e
a
r
(
d
t
c
a
i
x
a
)
,
 
m
o
n
t
h
(
d
t
c
a
i
x
a
)
,
 
D
a
y
(
d
t
c
a
i
x
a
)
)
 
=
 
D
a
t
e
 
T
h
e
n



 
 
 
 
 
 
 
 
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
 
F
e
c
h
a
r
 
e
s
t
e
 
C
a
i
x
a
,
 
p
o
i
s
 
e
l
e
 
j
á
 
e
s
t
á
 
f
e
c
h
a
d
o
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






 
 
 
 
 
 
 
 
E
l
s
e






 
 
 
 
 
 
 
 
 
 
 
 
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
 
f
e
c
h
a
r
 
o
 
C
a
i
x
a
?
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
 
+
 
v
b
Y
e
s
N
o
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






 
 
 
 
 
 
 
 
 
 
 
 
F
o
r
m
N
a
m
e
 
=
 
M
e
.
N
a
m
e



 
 
 
 
 
 
 
 
 
 
 
 
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
s
a
l
d
o
_
c
a
i
x
a
"
,
 
a
c
N
o
r
m
a
l



 
 
 
 
 
 
 
 
 
 
 
 
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
s
a
l
d
o
_
c
a
i
x
a
!
F
o
r
m
O
r
i
g
e
m
 
=
 
F
o
r
m
N
a
m
e
 
'
I
n
f
o
r
m
a
 
a
 
t
e
l
a
 
d
e
 
f
e
c
h
a
m
e
n
t
o
 
d
e
 
C
a
i
x
a
 
q
u
a
l
 
o
 
f
o
r
m
u
l
á
r
i
o
 
q
u
e
 
e
s
t
á
 
a
b
r
i
n
d
o



 
 
 
 
 
 
 
 
 
 
 
 
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
s
a
l
d
o
_
c
a
i
x
a
!
v
a
l
o
r
_
c
a
i
x
a
 
=
 
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
s
a
l
d
o
c
a
i
x
a
_
i
n
d
i
v
i
d
u
a
l
!
t
x
t
_
s
a
l
d
o
D
i
n
h
e
i
r
o



 
 
 
 
 
 
 
 
 
 
 
 



 
 
 
 
 
 
 
 
 
 
 
 
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
 
I
f



E
n
d
 
I
f






E
x
i
t
 
S
u
b






T
r
a
t
a
E
r
r
o
:



M
s
g
B
o
x
 
"
V
e
r
i
f
i
q
u
e
 
o
s
 
d
a
d
o
s
 
"
 
&
 
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
 
v
b
C
r
L
f
 
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
,
 
v
b
C
r
i
t
i
c
a
l
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
_
L
a
n
c
C
a
i
x
a
_
C
l
i
c
k
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
 
T
r
a
t
a
E
r
r
o






I
f
 
I
s
N
u
l
l
(
d
t
c
a
i
x
a
)
 
T
h
e
n






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
r
o
t
_
l
a
n
c
C
a
i
x
a
"
,
 
a
c
N
o
r
m
a
l
,
 
,
 
,
 
a
c
F
o
r
m
A
d
d






E
l
s
e



 
 
 
 
I
f
 
D
a
t
e
S
e
r
i
a
l
(
y
e
a
r
(
d
t
c
a
i
x
a
)
,
 
m
o
n
t
h
(
d
t
c
a
i
x
a
)
,
 
D
a
y
(
d
t
c
a
i
x
a
)
)
 
=
 
D
a
t
e
 
T
h
e
n



 
 
 
 
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
 
L
a
n
ç
a
r
 
a
 
T
F
L
 
n
e
s
t
e
 
C
a
i
x
a
,
 
p
o
i
s
 
e
l
e
 
j
á
 
e
s
t
á
 
f
e
c
h
a
d
o
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
x
i
t
 
S
u
b






T
r
a
t
a
E
r
r
o
:



M
s
g
B
o
x
 
"
V
e
r
i
f
i
q
u
e
 
o
s
 
D
a
d
o
s
 
"
 
&
 
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
 
v
b
C
r
L
f
 
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
,
 
v
b
C
r
i
t
i
c
a
l
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
A
b
r
i
r
C
a
i
x
a
_
C
l
i
c
k
(
)






I
f
 
M
e
.
t
x
t
I
n
f
C
a
i
x
a
 
=
 
"
s
e
u
 
c
a
i
x
a
 
e
s
t
á
:
 
a
b
e
r
t
o
"
 
T
h
e
n



 
 
 
 
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
S
e
u
 
C
a
i
x
a
 
e
s
t
á
 
a
b
e
r
t
o
 
a
u
t
o
m
a
t
i
c
a
m
e
n
t
e
,
 
d
e
s
e
j
a
 
l
a
n
ç
a
r
 
u
m
 
V
a
l
o
r
 
d
o
 
s
a
l
d
o
 
a
n
t
e
r
i
o
r
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
l
a
n
c
c
a
i
x
a
_
A
b
r
i
r
C
a
i
x
a
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
l
a
n
c
c
a
i
x
a
_
A
b
r
i
r
C
a
i
x
a
"






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
C
o
f
r
e
_
C
l
i
c
k
(
)






I
f
 
I
s
N
u
l
l
(
d
t
c
a
i
x
a
)
 
T
h
e
n






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
l
a
n
c
c
a
i
x
a
_
C
o
f
r
e
"






E
l
s
e



 
 
 
 
I
f
 
D
a
t
e
S
e
r
i
a
l
(
y
e
a
r
(
d
t
c
a
i
x
a
)
,
 
m
o
n
t
h
(
d
t
c
a
i
x
a
)
,
 
D
a
y
(
d
t
c
a
i
x
a
)
)
 
=
 
D
a
t
e
 
T
h
e
n



 
 
 
 
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
 
L
a
n
ç
a
r
 
a
 
T
F
L
 
n
e
s
t
e
 
C
a
i
x
a
,
 
p
o
i
s
 
e
l
e
 
j
á
 
e
s
t
á
 
f
e
c
h
a
d
o
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
L
a
n
c
T
F
L
_
C
l
i
c
k
(
)






I
f
 
I
s
N
u
l
l
(
d
t
c
a
i
x
a
)
 
T
h
e
n






 
 
 
 
I
f
 
C
o
n
f
i
g
2
1
 
=
 
0
 
T
h
e
n



 
 
 
 
 
 
 
 



 
 
 
 
 
 
 
 
I
f
 
M
e
.
t
o
t
a
l
V
e
n
d
a
s
 
>
 
0
 
T
h
e
n



 
 
 
 
 
 
 
 
M
s
g
B
o
x
 
"
V
o
c
ê
 
j
á
 
f
i
n
a
l
i
z
o
u
 
o
 
s
e
u
 
T
F
L
.
 
C
a
s
o
 
o
 
v
a
l
o
r
 
e
s
t
e
j
a
 
d
i
v
e
r
g
e
n
t
e
,
 
e
n
t
r
e
 
e
m
 
c
o
n
t
a
t
o
 
c
o
m
 
o
 
s
u
p
o
r
t
e
 
p
a
r
a
 
e
s
t
o
r
n
a
r
.
"
,
 
v
b
E
x
c
l
a
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



 
 
 
 
 
 
 
 



 
 
 
 
 
 
 
 
E
l
s
e



 
 
 
 
 
 
 
 



 
 
 
 
 
 
 
 
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






 
 
 
 
I
f
 
D
a
t
e
S
e
r
i
a
l
(
y
e
a
r
(
d
t
c
a
i
x
a
)
,
 
m
o
n
t
h
(
d
t
c
a
i
x
a
)
,
 
D
a
y
(
d
t
c
a
i
x
a
)
)
 
=
 
D
a
t
e
 
T
h
e
n



 
 
 
 
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
 
L
a
n
ç
a
r
 
n
e
s
t
e
 
C
a
i
x
a
,
 
p
o
i
s
 
e
l
e
 
j
á
 
e
s
t
á
 
f
e
c
h
a
d
o
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
 
B
t
n
R
e
l
P
a
r
c
i
a
l
_
C
l
i
c
k
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
 
T
r
a
t
a
E
r
r
o



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
s
t
e
 
é
 
u
m
 
R
e
l
a
t
ó
r
i
o
 
P
a
r
c
i
a
l
.
 
"
 
&
 
M
e
.
t
x
t
I
n
f
C
a
i
x
a






 
 
 
 
I
f
 
M
e
.
t
x
t
_
D
a
t
a
 
=
 
D
a
t
e
 
T
h
e
n



 
 
 
 
'
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
R
e
p
o
r
t
 
"
r
l
t
_
C
a
i
x
a
_
l
o
t
e
r
i
c
a
_
N
a
o
F
i
s
c
a
l
"
,
 
a
c
V
i
e
w
P
r
e
v
i
e
w
,
 
,
 
,
 
a
c
W
i
n
d
o
w
N
o
r
m
a
l



 
 
 
 
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
R
e
p
o
r
t
 
"
r
l
t
_
C
a
i
x
a
"
,
 
a
c
V
i
e
w
P
r
e
v
i
e
w
,
 
,
 
,
 
a
c
W
i
n
d
o
w
N
o
r
m
a
l



 
 
 
 



 
 
 
 
E
l
s
e



 
 
 
 



 
 
 
 
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
 
e
x
t
r
a
i
r
 
u
m
 
r
e
l
a
t
ó
r
i
o
 
P
a
r
c
i
a
l
 
d
e
 
d
a
t
a
s
 
a
n
t
e
r
i
o
r
e
s
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
 
-
 
F
L
M
 
S
i
s
t
e
m
a
s
"



 
 
 
 



 
 
 
 
E
n
d
 
I
f






E
x
i
t
 
S
u
b






T
r
a
t
a
E
r
r
o
:



M
s
g
B
o
x
 
"
V
e
r
i
f
i
q
u
e
 
o
s
 
D
a
d
o
s
 
"
 
&
 
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
 
v
b
C
r
L
f
 
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
,
 
v
b
C
r
i
t
i
c
a
l
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
 
C
x
U
s
u
a
r
i
o
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
 
T
r
a
t
a
E
r
r
o






I
f
 
M
e
.
C
x
U
s
u
a
r
i
o
 
=
 
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
 
T
h
e
n



'
M
e
.
b
t
n
_
A
b
r
i
r
R
e
l
a
t
o
r
i
o
.
E
n
a
b
l
e
d
 
=
 
T
r
u
e



M
e
.
b
t
n
_
f
e
c
h
a
r
C
a
i
x
a
.
E
n
a
b
l
e
d
 
=
 
T
r
u
e



M
e
.
b
t
n
_
L
a
n
c
C
a
i
x
a
.
E
n
a
b
l
e
d
 
=
 
T
r
u
e



M
e
.
b
t
n
C
o
f
r
e
.
E
n
a
b
l
e
d
 
=
 
T
r
u
e



M
e
.
b
t
n
L
a
n
c
T
F
L
.
E
n
a
b
l
e
d
 
=
 
T
r
u
e



M
e
.
b
t
n
A
b
r
i
r
C
a
i
x
a
.
E
n
a
b
l
e
d
 
=
 
T
r
u
e



E
l
s
e



'
M
e
.
b
t
n
_
A
b
r
i
r
R
e
l
a
t
o
r
i
o
.
E
n
a
b
l
e
d
 
=
 
F
a
l
s
e



M
e
.
b
t
n
_
f
e
c
h
a
r
C
a
i
x
a
.
E
n
a
b
l
e
d
 
=
 
F
a
l
s
e



M
e
.
b
t
n
_
L
a
n
c
C
a
i
x
a
.
E
n
a
b
l
e
d
 
=
 
F
a
l
s
e



M
e
.
b
t
n
C
o
f
r
e
.
E
n
a
b
l
e
d
 
=
 
F
a
l
s
e



M
e
.
b
t
n
L
a
n
c
T
F
L
.
E
n
a
b
l
e
d
 
=
 
F
a
l
s
e



M
e
.
b
t
n
A
b
r
i
r
C
a
i
x
a
.
E
n
a
b
l
e
d
 
=
 
F
a
l
s
e



E
n
d
 
I
f









M
e
.
M
a
t
F
u
n
c
 
=
 
M
e
.
C
x
U
s
u
a
r
i
o
.
C
o
l
u
m
n
(
1
)



M
e
.
d
t
c
a
i
x
a
 
=
 
D
L
a
s
t
(
"
[
d
a
t
a
c
a
i
x
a
]
"
,
 
"
C
s
_
T
b
l
C
a
i
x
a
_
I
n
d
i
v
i
d
u
a
l
"
,
 
"
[
M
a
t
F
u
n
c
]
=
"
 
&
 
M
e
.
C
x
U
s
u
a
r
i
o
.
C
o
l
u
m
n
(
1
)
)






M
e
.
C
s
_
T
o
d
o
s
L
a
n
c
C
a
i
x
a
_
s
u
b
f
o
r
m
u
l
á
r
i
o
.
R
e
q
u
e
r
y



M
e
.
C
s
_
T
o
t
a
l
P
o
r
F
o
r
m
a
P
a
g
_
s
u
b
f
o
r
m
u
l
á
r
i
o
.
R
e
q
u
e
r
y



'
M
e
.
F
i
l
h
o
4
8
.
R
e
q
u
e
r
y



M
e
.
S
u
b
f
o
r
m
u
l
a
r
i
o
_
C
o
n
t
a
s
R
e
c
e
b
e
r
.
R
e
q
u
e
r
y



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
c
a
l
c






E
x
i
t
 
S
u
b



T
r
a
t
a
E
r
r
o
:






I
f
 
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
 
=
 
3
0
7
5
 
T
h
e
n



M
e
.
d
t
c
a
i
x
a
 
=
 
D
L
a
s
t
(
"
[
d
a
t
a
c
a
i
x
a
]
"
,
 
"
C
s
_
T
b
l
C
a
i
x
a
_
I
n
d
i
v
i
d
u
a
l
"
)



R
e
s
u
m
e
 
N
e
x
t



E
l
s
e



M
s
g
B
o
x
 
"
V
e
r
i
f
i
q
u
e
 
o
s
 
d
a
d
o
s
 
"
 
&
 
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
 
v
b
C
r
L
f
 
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
,
 
v
b
C
r
i
t
i
c
a
l
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
 
F
o
r
m
_
L
o
a
d
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
 
T
r
a
t
a
E
r
r
o






I
f
 
t
x
t
_
D
a
t
a
 
<
 
D
a
t
e
 
O
r
 
I
s
N
u
l
l
(
t
x
t
_
D
a
t
a
)
 
T
h
e
n



M
e
.
b
t
n
_
f
e
c
h
a
r
C
a
i
x
a
.
E
n
a
b
l
e
d
 
=
 
F
a
l
s
e



E
l
s
e



M
e
.
b
t
n
_
f
e
c
h
a
r
C
a
i
x
a
.
E
n
a
b
l
e
d
 
=
 
T
r
u
e



E
n
d
 
I
f






I
f
 
C
o
n
f
i
g
1
9
 
=
 
-
1
 
T
h
e
n



M
e
.
C
x
U
s
u
a
r
i
o
.
E
n
a
b
l
e
d
 
=
 
-
1



E
l
s
e



M
e
.
C
x
U
s
u
a
r
i
o
.
E
n
a
b
l
e
d
 
=
 
0



E
n
d
 
I
f









'
a
t
u
a
l
i
z
a
ç
ã
o
 
d
a
 
t
a
b
e
l
a
 
t
e
m
p
o
r
á
r
i
a



C
a
l
l
 
U
p
d
a
t
e
T
b
l
T
e
m
p
L
a
n
c
C
a
i
x
a



C
a
l
l
 
U
p
d
a
t
e
T
b
l
T
e
m
p
C
o
n
t
a
s
R
e
c
e
b
e
r






C
s
_
T
o
d
o
s
L
a
n
c
C
a
i
x
a
_
s
u
b
f
o
r
m
u
l
á
r
i
o
.
R
e
q
u
e
r
y






C
s
_
T
o
t
a
l
P
o
r
F
o
r
m
a
P
a
g
_
s
u
b
f
o
r
m
u
l
á
r
i
o
.
R
e
q
u
e
r
y






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
c
a
l
c






M
e
.
M
a
t
F
u
n
c
 
=
 
M
e
.
C
x
U
s
u
a
r
i
o
.
C
o
l
u
m
n
(
1
)



M
e
.
d
t
c
a
i
x
a
 
=
 
D
L
a
s
t
(
"
[
d
a
t
a
c
a
i
x
a
]
"
,
 
"
C
s
_
T
b
l
C
a
i
x
a
_
I
n
d
i
v
i
d
u
a
l
"
,
 
"
[
M
a
t
F
u
n
c
]
=
"
 
&
 
M
e
.
C
x
U
s
u
a
r
i
o
.
C
o
l
u
m
n
(
1
)
)






'
T
r
a
n
s
p
a
r
e
n
c
i
a
 
M
e
.
h
W
n
d
,
 
R
G
B
(
6
4
,
 
0
,
 
0
)



E
x
i
t
 
S
u
b






T
r
a
t
a
E
r
r
o
:






I
f
 
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
 
=
 
2
4
7
1
 
T
h
e
n



M
s
g
B
o
x
 
"
P
o
r
 
f
a
v
o
r
,
 
a
t
u
a
l
i
z
e
 
o
 
B
a
c
k
E
n
d
.
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
V
e
r
i
f
i
q
u
e
 
c
o
m
 
o
 
S
u
p
o
r
t
e
.
 
C
ó
d
i
g
o
:
"
 
&
 
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
,
 
v
b
C
r
i
t
i
c
a
l
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



E
l
s
e



M
s
g
B
o
x
 
"
V
e
r
i
f
i
q
u
e
 
o
s
 
d
a
d
o
s
 
"
 
&
 
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
 
v
b
C
r
L
f
 
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
,
 
v
b
C
r
i
t
i
c
a
l
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
 
t
x
t
D
i
f
C
a
i
x
a
_
E
n
t
e
r
(
)



'
I
f
 
D
a
t
e
 
=
 
M
e
.
t
x
t
_
D
a
t
a
 
T
h
e
n



'
M
e
.
t
x
t
D
i
f
C
a
i
x
a
.
V
i
s
i
b
l
e
 
=
 
T
r
u
e



'
E
l
s
e



'
M
e
.
t
x
t
D
i
f
C
a
i
x
a
.
V
i
s
i
b
l
e
 
=
 
F
a
l
s
e



'
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
 
s
e
l
C
a
i
x
a
I
n
d
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
 
s
e
l
C
a
i
x
a
I
n
d
 
=
 
-
1
 
T
h
e
n



M
e
.
C
x
U
s
u
a
r
i
o
.
E
n
a
b
l
e
d
 
=
 
-
1



E
l
s
e



M
e
.
C
x
U
s
u
a
r
i
o
.
E
n
a
b
l
e
d
 
=
 
0



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
 
s
e
l
C
a
i
x
a
I
n
d
_
G
o
t
F
o
c
u
s
(
)



I
f
 
C
o
n
f
i
g
1
9
 
=
 
-
1
 
T
h
e
n



M
e
.
s
e
l
C
a
i
x
a
I
n
d
.
E
n
a
b
l
e
d
 
=
 
-
1



E
l
s
e



M
e
.
s
e
l
C
a
i
x
a
I
n
d
.
E
n
a
b
l
e
d
 
=
 
0



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
 
t
x
t
_
D
a
t
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









C
a
l
l
 
U
p
d
a
t
e
T
b
l
T
e
m
p
L
a
n
c
C
a
i
x
a



C
a
l
l
 
U
p
d
a
t
e
T
b
l
T
e
m
p
C
o
n
t
a
s
R
e
c
e
b
e
r






C
s
_
T
o
d
o
s
L
a
n
c
C
a
i
x
a
_
s
u
b
f
o
r
m
u
l
á
r
i
o
.
R
e
q
u
e
r
y






C
s
_
T
o
t
a
l
P
o
r
F
o
r
m
a
P
a
g
_
s
u
b
f
o
r
m
u
l
á
r
i
o
.
R
e
q
u
e
r
y






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
c
a
l
c






I
f
 
t
x
t
_
D
a
t
a
 
<
 
D
a
t
e
 
O
r
 
I
s
N
u
l
l
(
t
x
t
_
D
a
t
a
)
 
T
h
e
n



M
e
.
b
t
n
_
f
e
c
h
a
r
C
a
i
x
a
.
E
n
a
b
l
e
d
 
=
 
F
a
l
s
e



E
l
s
e



M
e
.
b
t
n
_
f
e
c
h
a
r
C
a
i
x
a
.
E
n
a
b
l
e
d
 
=
 
T
r
u
e



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






P
u
b
l
i
c
 
F
u
n
c
t
i
o
n
 
U
p
d
a
t
e
T
b
l
T
e
m
p
L
a
n
c
C
a
i
x
a
(
)






D
o
C
m
d
.
S
e
t
W
a
r
n
i
n
g
s
 
F
a
l
s
e



D
o
C
m
d
.
R
u
n
S
Q
L
 
"
D
E
L
E
T
E
 
T
M
P
_
S
a
l
d
o
L
a
n
c
C
a
i
x
a
.
*
 
F
R
O
M
 
T
M
P
_
S
a
l
d
o
L
a
n
c
C
a
i
x
a
;
"



D
o
C
m
d
.
R
u
n
S
Q
L
 
"
I
N
S
E
R
T
 
I
N
T
O
 
T
M
P
_
S
a
l
d
o
L
a
n
c
C
a
i
x
a
 
(
 
C
o
d
_
L
a
n
c
C
a
i
x
a
,
 
V
a
l
o
r
C
r
e
d
i
t
o
,
 
V
a
l
o
r
D
e
b
i
t
o
,
 
D
e
s
c
r
i
c
a
o
_
L
a
n
c
C
a
i
x
a
,
 
P
l
a
n
o
C
o
n
t
a
_
L
a
n
c
C
a
i
x
a
,
"
 
_



&
 
"
 
u
s
u
a
r
i
o
l
o
g
a
d
o
_
l
a
n
c
c
a
i
x
a
,
 
D
t
M
o
v
i
m
e
n
t
o
_
L
a
n
c
C
a
i
x
a
,
 
A
t
i
v
o
_
L
a
n
c
C
a
i
x
a
,
 
C
o
d
F
o
r
m
a
P
a
g
_
L
a
n
c
C
a
i
x
a
 
)
"
 
_



&
 
"
 
S
E
L
E
C
T
 
t
b
l
_
r
o
t
_
L
a
n
c
C
a
i
x
a
.
C
o
d
_
L
a
n
c
C
a
i
x
a
,
 
c
s
t
_
L
a
n
c
C
a
i
x
a
_
C
r
e
d
i
t
o
.
V
a
l
o
r
c
r
e
d
i
t
o
 
A
S
 
V
a
l
o
r
C
r
e
d
i
t
o
,
 
c
s
t
_
L
a
n
c
C
a
i
x
a
_
D
e
b
i
t
o
.
V
a
l
o
r
d
e
b
i
t
o
 
A
S
 
V
a
l
o
r
D
e
b
i
t
o
,
"
 
_



&
 
"
 
t
b
l
_
r
o
t
_
L
a
n
c
C
a
i
x
a
.
D
e
s
c
r
i
c
a
o
_
L
a
n
c
C
a
i
x
a
,
 
t
b
l
_
r
o
t
_
L
a
n
c
C
a
i
x
a
.
P
l
a
n
o
C
o
n
t
a
_
L
a
n
c
C
a
i
x
a
,
 
t
b
l
_
r
o
t
_
L
a
n
c
C
a
i
x
a
.
u
s
u
a
r
i
o
l
o
g
a
d
o
_
l
a
n
c
c
a
i
x
a
,
"
 
_



&
 
"
 
t
b
l
_
r
o
t
_
L
a
n
c
C
a
i
x
a
.
D
t
M
o
v
i
m
e
n
t
o
_
L
a
n
c
C
a
i
x
a
,
 
t
b
l
_
r
o
t
_
L
a
n
c
C
a
i
x
a
.
A
t
i
v
o
_
L
a
n
c
C
a
i
x
a
,
 
t
b
l
_
r
o
t
_
L
a
n
c
C
a
i
x
a
.
C
o
d
F
o
r
m
a
P
a
g
_
L
a
n
c
C
a
i
x
a
"
 
_



&
 
"
 
F
R
O
M
 
(
c
s
t
_
L
a
n
c
C
a
i
x
a
_
C
r
e
d
i
t
o
 
R
I
G
H
T
 
J
O
I
N
 
t
b
l
_
r
o
t
_
L
a
n
c
C
a
i
x
a
 
O
N
 
c
s
t
_
L
a
n
c
C
a
i
x
a
_
C
r
e
d
i
t
o
.
C
o
d
_
L
a
n
c
C
a
i
x
a
 
=
 
t
b
l
_
r
o
t
_
L
a
n
c
C
a
i
x
a
.
C
o
d
_
L
a
n
c
C
a
i
x
a
)
 
L
E
F
T
"
 
_



&
 
"
 
J
O
I
N
 
c
s
t
_
L
a
n
c
C
a
i
x
a
_
D
e
b
i
t
o
 
O
N
 
t
b
l
_
r
o
t
_
L
a
n
c
C
a
i
x
a
.
C
o
d
_
L
a
n
c
C
a
i
x
a
 
=
 
c
s
t
_
L
a
n
c
C
a
i
x
a
_
D
e
b
i
t
o
.
C
o
d
_
L
a
n
c
C
a
i
x
a
"
 
_



&
 
"
 
W
H
E
R
E
 
(
(
(
t
b
l
_
r
o
t
_
L
a
n
c
C
a
i
x
a
.
D
t
M
o
v
i
m
e
n
t
o
_
L
a
n
c
C
a
i
x
a
)
=
[
F
o
r
m
s
]
!
[
f
r
m
_
s
a
l
d
o
c
a
i
x
a
_
i
n
d
i
v
i
d
u
a
l
]
!
[
t
x
t
_
d
a
t
a
]
)
)
;
"









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






F
u
n
c
t
i
o
n
 
U
p
d
a
t
e
T
b
l
T
e
m
p
C
o
n
t
a
s
R
e
c
e
b
e
r
(
)






D
o
C
m
d
.
S
e
t
W
a
r
n
i
n
g
s
 
F
a
l
s
e



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
Q
u
e
r
y
 
"
C
s
_
D
e
l
e
t
e
_
T
M
P
_
C
o
n
t
a
s
R
e
c
e
b
e
r
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
Q
u
e
r
y
 
"
C
s
_
U
p
d
a
t
e
_
T
M
P
_
C
o
n
t
a
s
R
e
c
e
b
e
r
"



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


