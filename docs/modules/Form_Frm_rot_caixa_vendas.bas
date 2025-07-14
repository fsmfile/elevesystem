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
o
t
_
a
d
d
_
r
e
g
i
s
t
r
o
_
C
l
i
c
k
(
)



M
s
g
B
o
x
 
"
E
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
 
n
o
s
s
o
 
S
u
p
o
r
t
e
.
 
2
1
 
9
9
7
9
1
-
5
4
9
8
 
o
u
 
2
1
 
9
8
9
0
2
-
7
0
9
3
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
 
b
o
t
_
a
d
d
_
r
e
g
i
s
t
r
o
_
E
x
i
t
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
 
b
t
n
_
t
r
a
n
s
f
C
h
a
m
_
C
l
i
c
k
(
)



S
t
a
t
u
s
_
v
e
n
d
a
s
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
 
O
p
t
i
o
n
O
r
c
a
m
e
n
t
o
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






'
O
p
t
i
o
n
V
e
n
d
a
_
v
e
n
d
a
 
=
 
F
a
l
s
e






'
I
f
 
O
p
t
i
o
n
O
r
c
a
m
e
n
t
o
_
v
e
n
d
a
 
=
 
T
r
u
e
 
T
h
e
n



'
D
t
V
a
l
i
d
a
d
e
O
r
c
a
m
e
n
t
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



'
E
l
s
e



'
D
t
V
a
l
i
d
a
d
e
O
r
c
a
m
e
n
t
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



'
D
t
V
a
l
i
d
a
d
e
O
r
c
a
m
e
n
t
o
 
=
 
"
"



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
 
O
p
t
i
o
n
V
e
n
d
a
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






'
O
p
t
i
o
n
O
r
c
a
m
e
n
t
o
_
v
e
n
d
a
 
=
 
F
a
l
s
e






'
I
f
 
O
p
t
i
o
n
O
r
c
a
m
e
n
t
o
_
v
e
n
d
a
 
=
 
T
r
u
e
 
T
h
e
n



'
D
t
V
a
l
i
d
a
d
e
O
r
c
a
m
e
n
t
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



'
E
l
s
e



'
D
t
V
a
l
i
d
a
d
e
O
r
c
a
m
e
n
t
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



'
D
t
V
a
l
i
d
a
d
e
O
r
c
a
m
e
n
t
o
 
=
 
"
"



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
 
b
t
n
_
a
d
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






B
l
o
q
u
e
a
r
C
l
i
e
n
t
e
 
=
 
M
e
.
N
o
m
e
_
c
l
i
e
n
t
e
.
C
o
l
u
m
n
(
1
6
)



S
a
l
d
o
D
e
v
e
d
o
r
 
=
 
M
e
.
N
o
m
e
_
c
l
i
e
n
t
e
.
C
o
l
u
m
n
(
1
5
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
I
n
i
c
i
e
 
u
m
a
 
V
e
n
d
a
 
a
n
t
e
s
 
d
e
 
I
n
s
e
r
i
r
 
u
m
a
 
F
o
r
m
a
 
d
e
 
p
a
g
a
m
e
n
t
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
e
.
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
 
a
l
t
e
r
a
r
 
a
 
f
o
r
m
a
 
d
e
 
p
a
g
a
m
e
n
t
o
,
 
p
o
i
s
 
e
s
t
a
 
v
e
n
d
a
 
e
s
t
á
 
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
 
V
a
r
T
y
p
e
(
V
e
n
d
a
s
D
e
t
a
l
h
a
d
a
s
!
T
x
t
S
u
b
T
o
t
a
l
)
 
=
 
9
 
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
A
 
v
e
n
d
a
 
a
t
u
a
l
 
a
i
n
d
a
 
n
ã
o
 
p
o
s
s
u
i
 
u
m
 
v
a
l
o
r
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
 
o
s
 
v
a
l
o
r
e
s
 
p
a
r
a
 
i
n
s
e
r
i
r
 
u
m
a
 
F
o
r
m
a
 
d
e
 
P
a
g
a
m
e
n
t
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
i
n
s
e
r
i
r
f
o
r
m
a
p
a
g
a
m
e
n
t
o
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
 
"
C
o
d
_
v
e
n
d
a
 
=
"
 
&
 
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
 
N
o
m
e
_
c
l
i
e
n
t
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
n
d
 
I
f






M
e
.
C
o
d
_
f
o
r
m
a
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
o
q
u
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
9
1
 
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
i
n
s
e
r
i
r
f
o
r
m
a
p
a
g
a
m
e
n
t
o
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
 
C
o
m
a
n
d
o
6
4
8
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
F
o
r
m
a
t
o
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
e
s
t
a
 
v
e
n
d
a
,
 
p
o
i
s
 
a
 
m
e
s
m
a
 
n
ã
o
 
e
s
t
á
 
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
 
S
t
a
t
u
s
_
v
e
n
d
a
s
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
 
M
e
.
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
 
a
l
t
e
r
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
 
j
á
 
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



M
e
.
S
t
a
t
u
s
_
v
e
n
d
a
s
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
S
t
a
t
u
s
_
v
e
n
d
a
s
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
 
T
r
u
e
 
T
h
e
n



 
 
 
 
I
f
 
t
x
t
_
t
o
t
a
l
S
e
r
P
a
g
o
 
=
 
T
o
t
a
l
B
r
u
t
o
_
v
e
n
d
a
s
 
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
 
f
i
n
a
l
i
z
a
r
 
a
 
v
e
n
d
a
 
a
t
u
a
l
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



 
 
 
 
 
 
 
 
D
t
_
v
e
n
d
a
 
=
 
N
o
w
(
)



 
 
 
 
 
 
 
 
M
s
g
B
o
x
 
"
V
e
n
d
a
 
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
E
s
t
a
 
v
e
n
d
a
 
n
ã
o
 
s
e
r
á
 
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
,
 
p
o
i
s
 
o
 
V
a
l
o
r
 
a
 
s
e
r
 
p
a
g
o
 
p
e
l
o
 
c
l
i
e
n
t
e
 
n
ã
o
 
c
o
r
r
e
s
p
o
n
d
e
 
a
o
 
v
a
l
o
r
 
T
o
t
a
l
 
d
a
 
v
e
n
d
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
 
f
o
r
m
a
 
d
e
 
p
a
g
a
m
e
n
t
o
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