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
F
e
c
h
a
r
F
o
r
m
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
S
a
l
v
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






D
i
m
 
V
a
r
C
o
d
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
M
e
.
t
x
t
V
a
l
o
r
)
 
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
x
t
D
e
s
c
r
i
c
a
o
)
 
O
r
 
M
e
.
t
x
t
V
a
l
o
r
 
<
=
 
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
N
e
n
h
u
m
 
c
a
m
p
o
 
p
o
d
e
 
f
i
c
a
r
 
V
a
z
i
o
 
e
 
o
 
c
a
m
p
o
 
V
a
l
o
r
 
n
ã
o
 
p
o
d
e
 
s
e
r
 
i
g
u
a
l
 
a
 
0
 
(
z
e
r
o
)
.
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
 
L
a
n
ç
a
r
 
e
s
t
e
 
v
a
l
o
r
 
n
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
Q
u
e
s
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
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-



'
I
N
S
E
R
I
R
 
D
I
F
E
R
E
N
Ç
A
 
D
O
 
C
A
I
X
A
 
N
A
 
T
A
B
E
L
A
 
D
E
 
L
A
N
Ç
A
M
E
N
T
O
 
D
E
 
C
A
I
X
A



'
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-
-



 
 
 
 
 
 
 
 
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



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
V
a
r
C
o
d
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
 
r
s
t
(
"
c
o
d
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
)



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
t
i
p
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
"
)
 
=
 
"
C
r
é
d
i
t
o
"



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
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
"
)
 
=
 
D
a
t
e



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
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
"
)
 
=
 
M
e
.
t
x
t
D
e
s
c
r
i
c
a
o



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
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
"
)
 
=
 
C
I
n
t
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
D
_
c
l
i
e
n
t
e
s
f
l
m
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
8
"
)
)



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
V
a
l
o
r
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
)
 
=
 
M
e
.
t
x
t
V
a
l
o
r



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
d
t
h
r
C
a
d
a
s
t
r
o
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
)
 
=
 
N
o
w



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
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
"
)
 
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
r
o
t
_
m
o
v
e
s
t
o
q
u
e
_
e
s
t
o
q
u
e
!
A
u
t
o
r
i
z
a
d
o
P
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
2
)



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
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
"
)
 
=
 
-
1



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
m
o
v
e
s
t
o
q
u
e
"
)
 
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
r
o
t
_
m
o
v
e
s
t
o
q
u
e
_
e
s
t
o
q
u
e
!
C
o
d
R
e
t
i
r
a
d
a
E
s
t



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
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
)
 
=
 
M
e
.
C
x
F
o
r
m
a
P
a
g






 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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






 
 
 
 
 
 
 
 
M
s
g
B
o
x
 
"
L
a
n
ç
a
m
e
n
t
o
 
r
e
a
l
i
z
a
d
o
 
c
o
m
 
S
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



 
 
 
 
 
 
 
 
M
e
.
t
x
t
D
e
s
c
r
i
c
a
o
 
=
 
"
"



 
 
 
 
 
 
 
 
M
e
.
t
x
t
V
a
l
o
r
 
=
 
"
"






 
 
 
 
 
 
 
 
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