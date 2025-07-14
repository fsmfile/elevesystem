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
G
e
r
a
r
N
S
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
s
g
B
o
x
(
"
S
e
r
ã
o
 
g
e
r
a
d
o
s
 
"
 
&
 
M
e
.
s
u
b
f
o
r
m
P
r
o
d
u
t
o
s
!
Q
u
a
n
t
i
d
a
d
e
_
C
o
m
p
r
a
s
D
e
t
 
&
 
"
 
N
ú
m
e
r
o
s
 
d
e
 
S
é
r
i
e
 
p
a
r
a
 
o
 
p
r
o
d
u
t
o
 
c
o
m
 
C
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
s
u
b
f
o
r
m
P
r
o
d
u
t
o
s
!
C
o
d
_
P
r
o
d
S
e
r
v
 
&
 
_



"
 
E
s
t
á
 
d
e
 
a
c
o
r
d
o
?
"
,
 
v
b
O
K
C
a
n
c
e
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
)
 
=
 
v
b
O
K
 
T
h
e
n



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
n
r
s
e
r
i
e
_
p
r
o
d
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



 
 
 
 



 
 
 
 
F
o
r
 
i
 
=
 
1
 
T
o
 
M
e
.
s
u
b
f
o
r
m
P
r
o
d
u
t
o
s
!
Q
u
a
n
t
i
d
a
d
e
_
C
o
m
p
r
a
s
D
e
t
 
'
I
n
s
e
r
e
 
a
 
c
o
n
t
a
g
e
m



 
 
 
 
 
 
 
 
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
c
o
d
c
o
m
p
r
a
s
_
n
r
s
e
r
i
e
"
)
 
=
 
M
e
.
C
o
d
C
o
m
p
r
a
s



 
 
 
 
 
 
 
 
r
s
t
(
"
c
o
n
t
a
g
e
m
_
n
r
s
e
r
i
e
"
)
 
=
 
i



 
 
 
 
 
 
 
 
r
s
t
(
"
c
o
d
p
r
o
d
s
e
r
v
_
n
r
s
e
r
i
e
"
)
 
=
 
M
e
.
s
u
b
f
o
r
m
P
r
o
d
u
t
o
s
!
C
o
d
_
P
r
o
d
S
e
r
v



 
 
 
 
 
 
 
 
r
s
t
(
"
n
u
m
e
r
o
s
e
r
i
e
p
r
o
d
"
)
 
=
 
M
e
.
s
u
b
f
o
r
m
P
r
o
d
u
t
o
s
!
c
o
d
_
c
o
m
p
r
a
s
 
&
 
M
e
.
s
u
b
f
o
r
m
P
r
o
d
u
t
o
s
!
C
o
d
_
P
r
o
d
S
e
r
v
 
&
 
i



 
 
 
 
 
 
 
 
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



 
 
 
 
N
e
x
t



 
 
 
 
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
_
N
S
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
s
u
b
f
o
r
m
P
r
o
d
u
t
o
s
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
 
p
a
r
a
 
q
u
e
 
n
ã
o
 
s
e
j
a
m
 
c
r
i
a
d
o
s
 
N
/
S
 
d
u
p
l
i
c
a
d
o
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
o
d
C
o
m
p
r
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



l
s
t
P
r
o
d
u
t
o
s
.
R
e
q
u
e
r
y



t
x
t
C
o
d
C
o
m
p
r
a
s
 
=
 
F
o
r
n
e
c
e
d
o
r
.
C
o
l
u
m
n
(
0
)



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
L
o
c
a
l
i
z
a
r
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



M
e
.
s
u
b
f
o
r
m
P
r
o
d
u
t
o
s
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