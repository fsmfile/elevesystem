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
H
o
r
a
 
A
s
 
D
a
t
e



D
i
m
 
V
a
r
H
o
r
a
F
i
n
a
l
 
A
s
 
D
a
t
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
G
e
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
 
M
e
.
t
x
t
D
a
t
a
 
<
 
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
 
e
d
i
t
a
r
 
u
m
a
 
d
a
t
a
 
p
a
s
s
a
d
a
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
 
C
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
 
a
l
t
e
r
a
r
 
e
s
t
a
 
a
g
e
n
d
a
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
A
g
e
n
d
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



 
 
 
 



 
 
 
 
 
 
 
 
V
a
r
H
o
r
a
 
=
 
C
D
a
t
e
(
M
e
.
C
x
H
o
r
a
)
 
-
 
C
D
a
t
e
(
M
e
.
t
x
t
I
n
t
e
r
v
a
l
o
)
 
'
(
C
D
a
t
e
(
M
e
.
C
x
H
o
r
a
)
 
+
 
C
D
a
t
e
(
M
e
.
t
x
t
I
n
t
e
r
v
a
l
o
)
)



 
 
 
 
 
 
 
 
V
a
r
H
o
r
a
F
i
n
a
l
 
=
 
C
D
a
t
e
(
M
e
.
C
x
H
o
r
a
)
 
'
(
C
D
a
t
e
(
M
e
.
C
x
H
o
r
a
)
 
+
 
(
C
D
a
t
e
(
M
e
.
t
x
t
I
n
t
e
r
v
a
l
o
)
 
*
 
2
)
)



 
 
 
 



 
 
 
 
 
 
 
 
D
o
 
W
h
i
l
e
 
V
a
r
H
o
r
a
 
<
 
C
D
a
t
e
(
M
e
.
c
x
H
o
r
a
F
i
n
a
l
)
 
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



 
 
 
 



 
 
 
 
 
 
 
 
 
 
 
 
V
a
r
H
o
r
a
 
=
 
V
a
r
H
o
r
a
 
+
 
C
D
a
t
e
(
M
e
.
t
x
t
I
n
t
e
r
v
a
l
o
)



 
 
 
 
 
 
 
 
 
 
 
 
V
a
r
H
o
r
a
F
i
n
a
l
 
=
 
V
a
r
H
o
r
a
F
i
n
a
l
 
+
 
C
D
a
t
e
(
M
e
.
t
x
t
I
n
t
e
r
v
a
l
o
)



 
 
 
 
 
 
 
 



 
 
 
 
 
 
 
 
 
 
 
 
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
F
u
n
c
i
o
n
a
r
i
o
_
A
g
e
n
d
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
u
n
c
i
o
n
a
r
i
o



 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
C
h
a
v
e
_
A
g
e
n
d
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
u
n
c
i
o
n
a
r
i
o
 
&
 
M
e
.
t
x
t
D
a
t
a
 
&
 
V
a
r
H
o
r
a
 
&
 
V
a
r
H
o
r
a
F
i
n
a
l
 
&
 
0
 
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
M
a
t
F
u
n
c



 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
D
t
A
g
e
n
d
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
a
t
a



 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
H
r
I
n
i
c
i
a
l
_
A
g
e
n
d
a
"
)
 
=
 
V
a
r
H
o
r
a



 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
H
r
F
i
n
a
l
_
A
g
e
n
d
a
"
)
 
=
 
V
a
r
H
o
r
a
F
i
n
a
l



 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
C
a
n
c
e
l
a
r
_
A
g
e
n
d
a
"
)
 
=
 
0



 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
F
u
n
c
C
a
d
a
s
t
r
o
u
_
A
g
e
n
d
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
M
a
t
F
u
n
c



 
 
 
 
 
 
 
 
 
 
 
 
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






 
 
 
 
 
 
 
 
L
o
o
p






 
 
 
 
 
 
 
 
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
A
g
e
n
d
a
 
c
r
i
a
d
a
 
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



 
 
 
 
 
 
 
 
M
e
.
L
s
t
A
g
e
n
d
a
m
e
n
t
o
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
2
2
 
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
H
á
 
u
m
a
 
a
g
e
n
d
a
 
j
á
 
c
r
i
a
d
a
 
e
m
 
s
u
a
 
l
i
s
t
a
.
 
V
e
r
i
f
i
q
u
e
 
a
 
q
u
e
 
j
á
 
f
o
i
 
c
r
i
a
d
a
 
p
a
r
a
 
c
a
n
c
e
l
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
 
D
a
d
o
s
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
 
C
x
F
u
n
c
i
o
n
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



M
e
.
L
s
t
A
g
e
n
d
a
m
e
n
t
o
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
 
L
s
t
A
g
e
n
d
a
m
e
n
t
o
_
D
b
l
C
l
i
c
k
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






I
f
 
M
e
.
L
s
t
A
g
e
n
d
a
m
e
n
t
o
.
C
o
l
u
m
n
(
4
)
 
=
 
"
A
g
e
n
d
a
d
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
 
C
a
n
c
e
l
a
r
 
e
s
t
e
 
A
g
e
n
d
a
m
e
n
t
o
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
U
P
D
A
T
E
 
t
b
l
_
A
g
e
n
d
a
m
e
n
t
o
 
S
E
T
 
t
b
l
_
A
g
e
n
d
a
m
e
n
t
o
.
C
a
n
c
e
l
a
r
A
g
e
n
d
a
m
e
n
t
o
 
=
 
-
1
,
 
t
b
l
_
A
g
e
n
d
a
m
e
n
t
o
.
A
u
t
o
r
i
z
a
r
C
a
n
c
e
l
a
m
e
n
t
o
_
A
g
e
n
d
a
m
e
n
t
o
 
=
"
 
_



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
&
 
"
 
[
F
o
r
m
u
l
á
r
i
o
s
]
!
[
F
r
m
_
M
e
n
u
P
r
i
n
c
]
!
[
M
a
t
F
u
n
c
]
,
 
t
b
l
_
A
g
e
n
d
a
m
e
n
t
o
.
C
o
d
H
i
s
t
o
r
i
c
o
A
g
e
n
d
a
 
=
 
"
 
&
 
M
e
.
L
s
t
A
g
e
n
d
a
m
e
n
t
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
 
&
 
"
,
 
t
b
l
_
A
g
e
n
d
a
m
e
n
t
o
.
C
o
d
A
g
e
n
d
a
_
a
g
e
n
d
a
m
e
n
t
o
 
=
 
N
u
l
l
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
A
g
e
n
d
a
m
e
n
t
o
.
I
D
)
=
[
F
o
r
m
u
l
á
r
i
o
s
]
!
[
f
r
m
_
L
i
b
e
r
a
r
A
g
e
n
d
a
]
!
[
L
s
t
A
g
e
n
d
a
m
e
n
t
o
]
)
)
;
"



 
 
 
 
E
n
d
 
I
f



 
 
 
 
M
e
.
L
s
t
A
g
e
n
d
a
m
e
n
t
o
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



M
e
.
L
s
t
A
g
e
n
d
a
m
e
n
t
o
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