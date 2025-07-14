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
e
n
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
U
s
u
a
r
i
o
.
V
a
l
u
e
 
=
 
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
T
a
b
.
V
a
l
u
e
 
A
n
d
 
t
x
t
S
e
n
h
a
.
V
a
l
u
e
 
=
 
t
x
t
S
e
n
h
a
T
a
b
.
V
a
l
u
e
 
T
h
e
n



M
e
.
c
o
d
_
c
o
n
t
a
s
a
P
a
g
a
r
 
=
 
L
e
f
t
(
G
e
t
D
r
i
v
e
S
e
r
i
a
l
N
u
m
b
e
r
(
"
C
"
)
,
 
9
)



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



D
o
C
m
d
.
C
l
o
s
e
 
a
c
F
o
r
m
,
 
"
f
r
m
_
l
o
g
i
n
s
e
n
h
a
a
u
t
o
r
i
z
a
r
4
"






M
s
g
B
o
x
 
"
C
o
m
p
u
t
a
d
o
r
 
c
a
d
a
s
t
r
a
d
o
 
c
o
m
 
s
u
c
e
s
s
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
 
-
 
L
i
c
e
n
ç
a
 
l
o
c
a
l
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
U
s
u
á
r
i
o
 
o
u
 
s
e
n
h
a
 
i
n
v
á
l
i
d
o
s
.
"
,
 
v
b
O
K
O
n
l
y
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
 
=
 
"
"



t
x
t
S
e
n
h
a
 
=
 
"
"



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
.
S
e
t
F
o
c
u
s






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
s
a
i
r
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
C
l
o
s
e
 
a
c
F
o
r
m
,
 
"
f
r
m
_
l
o
g
i
n
s
e
n
h
a
a
u
t
o
r
i
z
a
r
4
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
T
a
b
 
=
 
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



t
x
t
S
e
n
h
a
T
a
b
 
=
 
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



t
x
t
S
e
n
h
a
 
=
 
"
"






E
n
d
 
S
u
b