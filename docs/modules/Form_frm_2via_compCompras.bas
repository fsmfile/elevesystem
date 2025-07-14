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
b
u
s
c
a
r
V
e
n
d
a
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
v
e
n
d
a
s
_
c
o
n
s
u
l
t
a
C
A
I
X
A
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
R
e
a
d
O
n
l
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
 
b
t
n
_
C
o
m
p
O
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
 
I
s
N
u
l
l
(
l
s
t
_
c
o
d
_
C
o
m
p
r
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
P
o
r
 
f
a
v
o
r
,
 
d
i
g
i
t
e
 
o
 
C
ó
d
i
g
o
 
d
e
 
V
e
n
d
a
.
"
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
A
b
e
r
t
u
r
a
O
r
d
e
m
S
e
r
v
i
c
o
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
 
"
c
o
d
_
v
e
n
d
a
s
 
=
"
 
&
 
l
s
t
_
c
o
d
_
C
o
m
p
r
a
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
g
e
r
a
r
C
o
m
p
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
l
s
t
_
c
o
d
_
C
o
m
p
r
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
P
o
r
 
f
a
v
o
r
,
 
d
i
g
i
t
e
 
o
 
C
ó
d
i
g
o
 
d
e
 
C
o
m
p
r
a
.
"
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
c
o
m
p
r
a
s
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
 
"
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
 
=
"
 
&
 
M
e
.
l
s
t
_
c
o
d
_
C
o
m
p
r
a
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
 
l
s
t
_
c
o
d
_
C
o
m
p
r
a



 
 
 
 
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
C
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
e
 
V
e
n
d
a
"



 
 
 
 
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
C
l
i
 
=
 
M
e
.
l
s
t
_
c
o
d
_
C
o
m
p
r
a
.
C
o
l
u
m
n
(
2
)



 
 
 
 
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
N
f
e
_
C
l
i
c
k
(
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
 
b
t
n
E
m
i
t
i
r
N
f
e
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
3
 
=
 
0
 
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
E
m
i
t
i
r
N
f
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
E
m
i
t
i
r
N
f
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
E
m
i
t
i
r
N
f
e
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
l
s
t
_
c
o
d
_
C
o
m
p
r
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
F
o
r
m
 
"
f
r
m
_
e
m
i
t
i
r
n
f
e
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
F
L
M
 
S
I
S
T
E
M
A
S
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
D
t
F
i
n
a
l
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
_
c
o
d
_
C
o
m
p
r
a
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
 
C
x
D
t
I
n
i
c
i
a
l
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
_
c
o
d
_
C
o
m
p
r
a
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
 
t
x
t
_
L
o
c
a
l
i
z
a
V
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



l
s
t
_
c
o
d
_
C
o
m
p
r
a
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