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
i
m
p
r
i
m
i
r
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






I
f
 
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
3
"
)
 
=
 
0
 
T
h
e
n






 
 
 
 
I
f
 
V
a
r
A
u
t
o
r
i
z
a
 
=
 
2
 
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
 
h
á
 
u
m
 
o
r
ç
a
m
e
n
t
o
 
a
t
i
v
o
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
E
s
t
a
 
V
e
n
d
a
 
j
á
 
f
o
i
 
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
O
r
ç
a
m
e
n
t
o
"



 
 
 
 
 
 
 
 
 
 
 
 
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
n
d
 
I
f



 
 
 
 
 
 
 
 
V
a
r
A
u
t
o
r
i
z
a
 
=
 
0



 
 
 
 



 
 
 
 
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
1
1
"



 
 
 
 
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
1
1
!
t
x
t
C
o
m
a
n
d
o
 
=
 
"
I
m
p
r
i
m
i
r
 
O
r
ç
a
m
e
n
t
o
"



 
 
 
 
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
1
1
!
t
x
t
C
o
d
C
o
m
a
n
d
o
 
=
 
2



 
 
 
 



 
 
 
 
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
 
I
s
N
u
l
l
(
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
 
h
á
 
u
m
 
o
r
ç
a
m
e
n
t
o
 
a
t
i
v
o
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
E
s
t
a
 
V
e
n
d
a
 
j
á
 
f
o
i
 
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
O
r
ç
a
m
e
n
t
o
"



 
 
 
 
 
 
 
 
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
_
a
b
r
i
r
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
v
e
n
d
a
s
!
V
e
n
d
a
s
!
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
O
 
C
a
m
p
o
 
N
O
M
E
 
D
O
 
C
L
I
E
N
T
E
 
n
ã
o
 
p
o
d
e
 
e
s
t
a
r
 
e
m
 
b
r
a
n
c
o
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



 
 
 
 
I
f
 
I
s
N
u
l
l
(
C
o
d
_
V
e
n
d
a
s
D
e
t
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
A
n
t
e
s
 
d
e
 
A
b
r
i
r
 
u
m
a
 
O
r
d
e
m
 
d
e
 
S
e
r
v
i
ç
o
,
 
p
o
r
 
f
a
v
o
r
 
i
n
s
i
r
a
 
u
m
 
S
e
r
v
i
ç
o
 
e
m
 
s
u
a
 
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
F
r
m
_
r
o
t
_
A
b
r
i
r
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
_
E
m
V
e
n
d
a
s
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
[
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
]
=
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
!
V
e
n
d
a
s
!
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
F
r
m
_
r
o
t
_
A
b
r
i
r
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
_
E
m
V
e
n
d
a
s
!
N
o
m
e
C
l
i
e
n
t
e
_
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
v
e
n
d
a
s
!
V
e
n
d
a
s
!
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
0
)



 
 
 
 
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
1
6
3
 
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
F
r
m
_
r
o
t
_
A
b
r
i
r
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
_
E
m
V
e
n
d
a
s
!
N
o
m
e
C
l
i
e
n
t
e
_
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
 
=
 
L
e
f
t
(
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
v
e
n
d
a
s
!
V
e
n
d
a
s
!
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
5
)
,
 
2
0
)



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
 
b
t
n
_
R
e
g
E
n
t
r
e
g
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
v
e
n
d
a
s
!
V
e
n
d
a
s
!
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
A
n
t
e
s
 
d
e
 
R
e
g
i
s
t
r
a
r
 
u
m
a
 
e
n
t
r
e
g
a
,
 
p
o
r
 
f
a
v
o
r
 
i
n
i
c
i
e
 
u
m
a
 
v
e
n
d
a
 
e
 
i
n
s
i
r
a
 
o
s
 
p
r
o
d
u
t
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
e
n
t
r
e
g
a
s
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
v
e
n
d
a
 
=
 
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
!
V
e
n
d
a
s
!
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
r
o
t
_
e
n
t
r
e
g
a
s
!
E
m
a
i
l
_
c
o
n
t
a
t
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
!
V
e
n
d
a
s
!
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
4
)



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
e
n
t
r
e
g
a
s
!
N
o
m
e
C
o
n
t
a
t
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
!
V
e
n
d
a
s
!
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
5
)



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
e
n
t
r
e
g
a
s
!
T
e
l
e
f
o
n
e
_
c
o
n
t
a
t
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
!
V
e
n
d
a
s
!
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
6
)



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
e
n
t
r
e
g
a
s
!
c
e
p
_
E
n
t
r
e
g
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
!
V
e
n
d
a
s
!
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
7
)



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
e
n
t
r
e
g
a
s
!
L
o
g
r
a
d
o
u
r
o
_
E
n
t
r
e
g
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
!
V
e
n
d
a
s
!
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
8
)



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
e
n
t
r
e
g
a
s
!
N
u
m
e
r
o
_
E
n
t
r
e
g
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
!
V
e
n
d
a
s
!
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
9
)



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
e
n
t
r
e
g
a
s
!
C
o
m
p
l
e
m
e
n
t
o
_
E
n
t
r
e
g
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
!
V
e
n
d
a
s
!
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
0
)



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
e
n
t
r
e
g
a
s
!
B
a
i
r
r
o
_
E
n
t
r
e
g
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
!
V
e
n
d
a
s
!
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
1
)



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
e
n
t
r
e
g
a
s
!
U
F
_
E
n
t
r
e
g
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
!
V
e
n
d
a
s
!
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
2
)



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
e
n
t
r
e
g
a
s
!
M
u
n
i
c
i
p
i
o
_
E
n
t
r
e
g
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
!
V
e
n
d
a
s
!
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
3
)



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
e
n
t
r
e
g
a
s
!
C
o
d
V
e
n
d
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
!
V
e
n
d
a
s
!
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
r
o
t
_
e
n
t
r
e
g
a
s
!
C
o
d
V
e
n
d
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
1
6
3
 
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
r
o
t
_
e
n
t
r
e
g
a
s
!
N
o
m
e
C
o
n
t
a
t
o
 
=
 
L
e
f
t
(
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
v
e
n
d
a
s
!
V
e
n
d
a
s
!
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
5
)
,
 
2
0
)



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



I
f
 
I
s
N
u
l
l
(
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
v
e
n
d
a
s
!
V
e
n
d
a
s
!
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
e
r
i
f
i
q
u
e
 
s
e
 
h
á
 
u
m
a
 
v
e
n
d
a
 
a
t
i
v
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
 
C
o
d
_
v
e
n
d
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
u
b
l
i
c
 
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
 
O
r
 
M
e
.
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
 
=
 
0
 
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
 
c
o
n
t
i
n
u
a
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



 
 
 
 
 
 
 
 
I
f
 
M
e
.
V
a
l
i
d
a
E
s
t
o
q
u
e
 
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
 
s
e
r
á
 
p
o
s
s
í
v
e
l
 
F
I
N
A
L
I
Z
A
R
 
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
 
p
o
s
s
u
e
m
 
P
r
o
d
u
t
o
s
 
n
o
 
s
e
u
 
O
r
ç
a
m
e
n
t
o
 
q
u
e
 
n
ã
o
 
c
o
n
t
é
m
 
n
o
 
e
s
t
o
q
u
e
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
!
C
x
B
o
x
E
x
e
c
u
t
a
r
A
c
a
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



 
 
 
 
 
 
 
 
E
n
d
 
I
f



 
 
 
 
 
 
 
 
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






S
e
l
e
c
t
 
C
a
s
e
 
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






C
a
s
e
 
2
4
9
1



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






C
a
s
e
 
9
4



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






C
a
s
e
 
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
 
S
e
l
e
c
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
_
c
a
d
C
l
i
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
.
M
o
d
a
l
 
=
 
-
1



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
!
T
i
t
u
l
a
r
_
C
l
i
e
n
t
e
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
 
0



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
!
b
t
n
V
i
n
c
u
l
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
!
V
i
n
c
u
l
o
_
c
l
i
e
n
t
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
 
0



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
!
A
t
i
v
o
_
C
l
i
e
n
t
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
 
0



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
!
b
t
n
P
l
a
n
o
M
e
n
s
a
l
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
!
b
t
n
V
i
n
c
u
l
a
r
G
r
u
p
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
!
C
x
C
l
i
e
n
t
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
 
0



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
!
t
x
t
L
o
c
a
l
i
z
a
C
l
i
e
n
t
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
 
0






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
e
x
c
l
u
i
r
R
e
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
V
o
c
ê
 
n
ã
o
 
p
o
d
e
 
e
x
c
l
u
i
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
9
 
=
 
0
 
T
h
e
n



 
 
 
 
 
 
 
 
I
f
 
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
 
=
 
M
e
.
N
o
m
e
_
v
e
n
d
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
1
)
 
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
 
e
x
c
l
u
i
r
 
e
s
t
e
 
r
e
g
i
s
t
r
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
.
*
,
 
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
.
*
,
 
t
b
l
_
r
o
t
_
c
o
n
t
a
s
a
r
e
c
e
b
e
r
.
*
,
 
t
b
l
_
r
o
t
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
_
d
e
t
.
*
,
 
t
b
l
_
c
a
d
_
f
o
r
m
a
s
P
a
g
a
m
e
n
t
o
V
E
N
D
A
S
D
E
T
.
*
,
 
t
b
l
_
r
o
t
_
P
a
g
C
l
i
_
c
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
*
,
 
t
b
l
_
r
o
t
_
e
n
t
r
e
g
a
s
.
*
,
 
t
b
l
_
r
o
t
_
e
n
t
r
e
g
a
s
D
E
T
.
*
,
 
t
b
l
_
r
o
t
_
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
.
*
,
 
t
b
l
_
C
o
m
i
s
s
i
o
n
i
s
t
a
D
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
.
*
,
 
t
b
l
_
d
e
t
a
l
h
e
s
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
.
*
,
 
t
b
l
_
R
e
a
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
.
*
,
 
t
b
l
_
C
o
m
i
s
s
i
o
n
i
s
t
a
D
a
R
e
a
b
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
.
*
,
 
t
b
l
_
r
o
t
_
M
o
v
E
s
t
o
q
u
e
.
*
,
 
t
b
l
_
r
o
t
_
M
o
v
E
s
t
o
q
u
e
_
P
r
o
d
.
*
,
 
t
b
l
_
V
e
n
d
a
s
D
E
T
_
N
R
S
e
r
i
e
.
*
,
 
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
.
C
o
d
_
V
e
n
d
a
s
D
e
t
"
 
_



 
 
 
 
 
 
 
 
 
 
 
 
&
 
"
F
R
O
M
 
(
(
(
(
(
(
(
(
(
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
v
e
n
d
a
s
 
L
E
F
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
v
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
v
e
n
d
a
s
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
 
=
 
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
 
L
E
F
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
c
o
n
t
a
s
a
r
e
c
e
b
e
r
 
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
v
e
n
d
a
s
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
 
=
 
t
b
l
_
r
o
t
_
c
o
n
t
a
s
a
r
e
c
e
b
e
r
.
C
o
d
V
e
n
d
a
_
c
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
)
 
L
E
F
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
_
d
e
t
 
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
c
o
n
t
a
s
a
r
e
c
e
b
e
r
.
C
o
d
_
c
o
n
t
a
s
A
r
e
c
e
b
e
r
 
=
 
t
b
l
_
r
o
t
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
_
d
e
t
.
C
o
d
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
)
 
L
E
F
T
 
J
O
I
N
 
t
b
l
_
c
a
d
_
f
o
r
m
a
s
P
a
g
a
m
e
n
t
o
V
E
N
D
A
S
D
E
T
 
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
v
e
n
d
a
s
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
 
=
 
t
b
l
_
c
a
d
_
f
o
r
m
a
s
P
a
g
a
m
e
n
t
o
V
E
N
D
A
S
D
E
T
.
C
o
d
_
V
e
n
d
a
)
 
L
E
F
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
P
a
g
C
l
i
_
c
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
 
_



 
 
 
 
 
 
 
 
 
 
 
 
&
 
"
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
_
d
e
t
.
c
o
d
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
D
E
T
 
=
 
t
b
l
_
r
o
t
_
P
a
g
C
l
i
_
c
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
c
o
d
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
D
E
T
)
 
L
E
F
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
e
n
t
r
e
g
a
s
 
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
v
e
n
d
a
s
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
 
=
 
t
b
l
_
r
o
t
_
e
n
t
r
e
g
a
s
.
C
o
d
V
e
n
d
a
)
 
L
E
F
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
e
n
t
r
e
g
a
s
D
E
T
 
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
e
n
t
r
e
g
a
s
.
C
o
d
E
n
t
r
e
g
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
e
n
t
r
e
g
a
s
D
E
T
.
C
o
d
E
n
t
r
e
g
a
_
E
n
t
r
e
g
a
D
E
T
)
 
L
E
F
T
 
J
O
I
N
 
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
 
L
E
F
T
 
J
O
I
N
 
t
b
l
_
C
o
m
i
s
s
i
o
n
i
s
t
a
D
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
.
C
o
d
_
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
 
=
 
t
b
l
_
C
o
m
i
s
s
i
o
n
i
s
t
a
D
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
.
c
o
d
_
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
)
 
L
E
F
T
 
J
O
I
N
 
t
b
l
_
d
e
t
a
l
h
e
s
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
 
O
N
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
.
C
o
d
_
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
 
=
 
t
b
l
_
d
e
t
a
l
h
e
s
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
.
C
o
d
_
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
)
 
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
v
e
n
d
a
s
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
 
=
 
t
b
l
_
r
o
t
_
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
.
C
o
d
_
V
e
n
d
a
s
)
 
L
E
F
T
 
J
O
I
N
 
t
b
l
_
R
e
a
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
.
C
o
d
_
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
 
=
 
t
b
l
_
R
e
a
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
.
C
o
d
_
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
)
 
L
E
F
T
 
J
O
I
N
 
t
b
l
_
C
o
m
i
s
s
i
o
n
i
s
t
a
D
a
R
e
a
b
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
 
O
N
 
t
b
l
_
R
e
a
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
.
c
o
d
_
r
e
a
b
e
r
t
u
r
a
O
S
 
=
 
t
b
l
_
C
o
m
i
s
s
i
o
n
i
s
t
a
D
a
R
e
a
b
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
.
c
o
d
_
R
e
a
b
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
)
 
L
E
F
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
M
o
v
E
s
t
o
q
u
e
 
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
v
e
n
d
a
s
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
 
=
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
M
o
v
E
s
t
o
q
u
e
.
C
o
d
V
e
n
d
a
_
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
)
 
L
E
F
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
M
o
v
E
s
t
o
q
u
e
_
P
r
o
d
 
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
M
o
v
E
s
t
o
q
u
e
.
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
 
=
 
t
b
l
_
r
o
t
_
M
o
v
E
s
t
o
q
u
e
_
P
r
o
d
.
C
o
d
M
o
v
E
s
t
o
q
u
e
)
 
L
E
F
T
 
J
O
I
N
 
t
b
l
_
V
e
n
d
a
s
D
E
T
_
N
R
S
e
r
i
e
 
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
v
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
.
C
o
d
_
V
e
n
d
a
s
D
e
t
 
=
 
t
b
l
_
V
e
n
d
a
s
D
E
T
_
N
R
S
e
r
i
e
.
C
o
d
V
e
n
d
a
s
D
E
T
_
C
V
N
S
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
v
e
n
d
a
s
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
F
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
]
!
[
V
e
n
d
a
s
]
!
[
c
o
d
_
v
e
n
d
a
_
n
a
m
e
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
o
c
ê
 
n
ã
o
 
t
e
m
 
p
e
r
m
i
s
s
ã
o
 
p
a
r
a
 
e
x
c
l
u
i
r
 
e
s
t
e
 
r
e
g
i
s
t
r
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
.
*
,
 
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
.
*
,
 
t
b
l
_
r
o
t
_
c
o
n
t
a
s
a
r
e
c
e
b
e
r
.
*
,
 
t
b
l
_
r
o
t
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
_
d
e
t
.
*
,
 
t
b
l
_
c
a
d
_
f
o
r
m
a
s
P
a
g
a
m
e
n
t
o
V
E
N
D
A
S
D
E
T
.
*
,
 
t
b
l
_
r
o
t
_
P
a
g
C
l
i
_
c
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
*
,
 
t
b
l
_
r
o
t
_
e
n
t
r
e
g
a
s
.
*
,
 
t
b
l
_
r
o
t
_
e
n
t
r
e
g
a
s
D
E
T
.
*
,
 
t
b
l
_
r
o
t
_
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
.
*
,
 
t
b
l
_
C
o
m
i
s
s
i
o
n
i
s
t
a
D
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
.
*
,
 
t
b
l
_
d
e
t
a
l
h
e
s
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
.
*
,
 
t
b
l
_
R
e
a
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
.
*
,
 
t
b
l
_
C
o
m
i
s
s
i
o
n
i
s
t
a
D
a
R
e
a
b
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
.
*
,
 
t
b
l
_
r
o
t
_
M
o
v
E
s
t
o
q
u
e
.
*
,
 
t
b
l
_
r
o
t
_
M
o
v
E
s
t
o
q
u
e
_
P
r
o
d
.
*
,
 
t
b
l
_
V
e
n
d
a
s
D
E
T
_
N
R
S
e
r
i
e
.
*
,
 
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
.
C
o
d
_
V
e
n
d
a
s
D
e
t
"
 
_



 
 
 
 
&
 
"
 
F
R
O
M
 
(
(
(
(
(
(
(
(
(
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
v
e
n
d
a
s
 
L
E
F
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
v
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
v
e
n
d
a
s
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
 
=
 
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
 
L
E
F
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
c
o
n
t
a
s
a
r
e
c
e
b
e
r
 
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
v
e
n
d
a
s
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
 
=
 
t
b
l
_
r
o
t
_
c
o
n
t
a
s
a
r
e
c
e
b
e
r
.
C
o
d
V
e
n
d
a
_
c
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
)
 
L
E
F
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
_
d
e
t
 
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
c
o
n
t
a
s
a
r
e
c
e
b
e
r
.
C
o
d
_
c
o
n
t
a
s
A
r
e
c
e
b
e
r
 
=
 
t
b
l
_
r
o
t
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
_
d
e
t
.
C
o
d
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
)
 
L
E
F
T
 
J
O
I
N
 
t
b
l
_
c
a
d
_
f
o
r
m
a
s
P
a
g
a
m
e
n
t
o
V
E
N
D
A
S
D
E
T
 
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
v
e
n
d
a
s
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
 
=
 
t
b
l
_
c
a
d
_
f
o
r
m
a
s
P
a
g
a
m
e
n
t
o
V
E
N
D
A
S
D
E
T
.
C
o
d
_
V
e
n
d
a
)
 
L
E
F
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
P
a
g
C
l
i
_
c
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
 
_



 
 
 
 
&
 
"
 
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
_
d
e
t
.
c
o
d
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
D
E
T
 
=
 
t
b
l
_
r
o
t
_
P
a
g
C
l
i
_
c
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
c
o
d
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
D
E
T
)
 
L
E
F
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
e
n
t
r
e
g
a
s
 
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
v
e
n
d
a
s
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
 
=
 
t
b
l
_
r
o
t
_
e
n
t
r
e
g
a
s
.
C
o
d
V
e
n
d
a
)
 
L
E
F
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
e
n
t
r
e
g
a
s
D
E
T
 
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
e
n
t
r
e
g
a
s
.
C
o
d
E
n
t
r
e
g
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
e
n
t
r
e
g
a
s
D
E
T
.
C
o
d
E
n
t
r
e
g
a
_
E
n
t
r
e
g
a
D
E
T
)
 
L
E
F
T
 
J
O
I
N
 
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
 
L
E
F
T
 
J
O
I
N
 
t
b
l
_
C
o
m
i
s
s
i
o
n
i
s
t
a
D
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
.
C
o
d
_
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
 
=
 
t
b
l
_
C
o
m
i
s
s
i
o
n
i
s
t
a
D
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
.
c
o
d
_
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
)
 
L
E
F
T
 
J
O
I
N
 
t
b
l
_
d
e
t
a
l
h
e
s
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
 
O
N
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
.
C
o
d
_
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
 
=
 
t
b
l
_
d
e
t
a
l
h
e
s
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
.
C
o
d
_
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
)
 
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
v
e
n
d
a
s
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
 
=
 
t
b
l
_
r
o
t
_
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
.
C
o
d
_
V
e
n
d
a
s
)
 
L
E
F
T
 
J
O
I
N
 
t
b
l
_
R
e
a
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
.
C
o
d
_
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
 
=
 
t
b
l
_
R
e
a
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
.
C
o
d
_
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
)
 
L
E
F
T
 
J
O
I
N
 
t
b
l
_
C
o
m
i
s
s
i
o
n
i
s
t
a
D
a
R
e
a
b
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
 
O
N
 
t
b
l
_
R
e
a
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
.
c
o
d
_
r
e
a
b
e
r
t
u
r
a
O
S
 
=
 
t
b
l
_
C
o
m
i
s
s
i
o
n
i
s
t
a
D
a
R
e
a
b
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
.
c
o
d
_
R
e
a
b
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
)
 
L
E
F
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
M
o
v
E
s
t
o
q
u
e
 
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
v
e
n
d
a
s
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
 
=
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
M
o
v
E
s
t
o
q
u
e
.
C
o
d
V
e
n
d
a
_
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
)
 
L
E
F
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
M
o
v
E
s
t
o
q
u
e
_
P
r
o
d
 
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
M
o
v
E
s
t
o
q
u
e
.
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
 
=
 
t
b
l
_
r
o
t
_
M
o
v
E
s
t
o
q
u
e
_
P
r
o
d
.
C
o
d
M
o
v
E
s
t
o
q
u
e
)
 
L
E
F
T
 
J
O
I
N
 
t
b
l
_
V
e
n
d
a
s
D
E
T
_
N
R
S
e
r
i
e
 
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
v
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
.
C
o
d
_
V
e
n
d
a
s
D
e
t
 
=
 
t
b
l
_
V
e
n
d
a
s
D
E
T
_
N
R
S
e
r
i
e
.
C
o
d
V
e
n
d
a
s
D
E
T
_
C
V
N
S
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
v
e
n
d
a
s
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
F
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
]
!
[
V
e
n
d
a
s
]
!
[
c
o
d
_
v
e
n
d
a
_
n
a
m
e
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
i
n
s
e
r
i
r
P
r
o
d
u
t
o
s
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
D
a
t
a
E
s
t
 
=
 
D
a
t
e






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
c
l
i
e
n
t
e
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
S
e
l
e
c
i
o
n
e
 
o
 
c
l
i
e
n
t
e
 
a
n
t
e
s
 
d
e
 
i
n
i
c
i
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
 
i
n
s
e
r
i
r
 
p
r
o
d
u
t
o
s
 
e
m
 
u
m
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
o
c
a
l
i
z
a
r
P
r
o
d
u
t
o
s
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
 
,
 
a
c
D
i
a
l
o
g






 
 
 
 
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
N
o
v
o
R
e
g
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
G
o
T
o
R
e
c
o
r
d
 
,
 
,
 
a
c
N
e
w
R
e
c



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
 
E
m
i
t
i
r
 
u
m
a
 
N
f
-
e
,
 
p
o
i
s
 
e
s
t
a
 
V
e
n
d
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
 
B
t
n
E
s
t
o
r
n
o
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
l
o
c
a
l
i
z
a
r
e
s
t
o
r
n
o
s
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
I
n
s
e
r
i
r
P
r
o
d
F
i
l
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
D
a
t
a
E
s
t
 
=
 
D
a
t
e






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
c
l
i
e
n
t
e
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
S
e
l
e
c
i
o
n
e
 
o
 
c
l
i
e
n
t
e
 
a
n
t
e
s
 
d
e
 
i
n
i
c
i
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
 
i
n
s
e
r
i
r
 
p
r
o
d
u
t
o
s
 
e
m
 
u
m
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
o
c
a
l
i
z
a
r
P
r
o
d
u
t
o
s
_
f
i
l
t
r
a
d
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
l
o
c
a
l
i
z
a
r
p
r
o
d
u
t
o
s
_
f
i
l
t
r
a
d
o
!
t
x
t
C
o
d
P
r
o
m
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
!
V
e
n
d
a
s
!
C
x
P
l
a
n
o
s
C
l
i
e
n
t
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
l
o
c
a
l
i
z
a
r
p
r
o
d
u
t
o
s
_
f
i
l
t
r
a
d
o
!
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
L
o
c
a
l
i
z
a
r
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
C
l
i
c
k
(
)



I
f
 
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
2
"
)
 
=
 
0
 
T
h
e
n



 
 
 
 



 
 
 
 
I
f
 
V
a
r
A
u
t
o
r
i
z
a
 
=
 
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
o
c
a
l
i
z
a
r
o
r
c
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
1
1
"



 
 
 
 
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
1
1
!
t
x
t
C
o
m
a
n
d
o
 
=
 
"
A
b
r
i
r
 
L
i
s
t
a
 
d
e
 
O
r
ç
a
m
e
n
t
o
"



 
 
 
 
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
1
1
!
t
x
t
C
o
d
C
o
m
a
n
d
o
 
=
 
1



 
 
 
 
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
o
c
a
l
i
z
a
r
o
r
c
a
m
e
n
t
o
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
P
r
e
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



I
f
 
C
o
n
f
i
g
1
1
 
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
b
t
n
P
r
e
V
e
n
d
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






 
 
 
 
I
f
 
M
e
.
b
t
n
P
r
e
V
e
n
d
a
 
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
C
o
m
 
e
s
t
a
 
o
p
ç
ã
o
 
A
t
i
v
a
,
 
a
 
D
a
t
a
 
d
e
 
V
e
n
d
a
 
s
e
r
á
 
a
 
d
a
t
a
 
i
n
i
c
i
a
l
 
d
o
 
O
r
ç
a
m
e
n
t
o
 
(
"
 
&
 
M
e
.
D
t
_
v
e
n
d
a
 
&
 
"
)
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



 
 
 
 
P
r
e
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
P
r
e
V
e
n
d
a
 
=
 
0



 
 
 
 
P
r
e
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
e
.
b
t
n
P
r
e
V
e
n
d
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
N
P
J
_
l
o
j
a
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
e
.
C
N
P
J
_
l
o
j
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
 
=
 
1
 
T
h
e
n






M
e
.
B
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
v
e
n
d
a
s
!
V
e
n
d
a
s
!
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
b
t
n
_
a
b
r
i
r
O
S
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
o
t
_
i
m
p
r
i
m
i
r
_
r
e
g
i
s
t
r
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






E
l
s
e






M
e
.
B
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
a
b
r
i
r
O
S
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
o
t
_
i
m
p
r
i
m
i
r
_
r
e
g
i
s
t
r
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
6
 
=
 
-
1
 
O
r
 
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
 
0
 
T
h
e
n






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
 
T
r
u
e






E
l
s
e






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
 
C
x
G
r
u
p
o
E
x
i
b
i
d
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



C
x
L
o
c
V
e
n
d
a
.
R
e
q
u
e
r
y



'
C
x
L
o
c
N
o
m
e
C
l
i
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
G
r
u
p
o
E
x
i
b
i
d
o
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
0
 
=
 
0
 
T
h
e
n



M
e
.
C
x
G
r
u
p
o
E
x
i
b
i
d
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



E
l
s
e



M
e
.
C
x
G
r
u
p
o
E
x
i
b
i
d
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
L
o
c
N
o
m
e
C
l
i
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
x
L
o
c
V
e
n
d
a
 
=
 
C
x
L
o
c
N
o
m
e
C
l
i



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
 
C
x
L
o
c
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
 
-
 
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
 
D
e
l
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
 
e
x
c
l
u
i
r
 
e
s
t
e
 
o
r
ç
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






 
 
 
 
f
n
c
E
x
c
l
u
i
r
O
r
c
a
m
e
n
t
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
C
u
r
r
e
n
t
(
)



M
e
.
b
t
n
P
r
e
V
e
n
d
a
 
=
 
0



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



D
o
C
m
d
.
G
o
T
o
R
e
c
o
r
d
 
,
 
"
"
,
 
a
c
N
e
w
R
e
c



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



M
e
.
b
t
n
P
r
e
V
e
n
d
a
 
=
 
0



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
 
G
r
u
p
o
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
v
e
n
d
a
s
!
V
e
n
d
a
s
!
G
r
u
p
o
_
v
e
n
d
a
s
 
<
>
 
1
 
T
h
e
n



M
e
.
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
 
G
r
u
p
o
_
v
e
n
d
a
s
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



I
f
 
M
e
.
V
a
l
i
d
a
E
s
t
o
q
u
e
 
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
O
 
E
s
t
o
q
u
e
 
d
o
 
s
e
u
 
o
r
ç
a
m
e
n
t
o
 
n
ã
o
 
f
o
i
 
v
a
l
i
d
a
d
o
 
p
o
r
 
c
o
n
t
a
 
d
e
 
a
l
g
u
m
 
p
r
o
d
u
t
o
 
d
a
 
s
u
a
 
l
i
s
t
a
 
n
ã
o
 
h
a
v
e
r
 
q
u
a
n
t
i
d
a
d
e
 
s
u
f
i
c
i
e
n
t
e
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
I
S
T
E
M
A
S
"



C
a
n
c
e
l
 
=
 
T
r
u
e



S
e
n
d
K
e
y
s
 
"
{
E
S
C
}
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
 
C
o
n
f
i
g
4
 
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
N
o
m
e
_
v
e
n
d
e
d
o
r
 
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
.
C
o
l
u
m
n
(
3
)



E
n
d
 
I
f






M
e
.
C
x
P
l
a
n
o
s
C
l
i
e
n
t
e
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
!
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
 
A
n
d
 
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
C
L
I
E
N
T
E
 
N
Ã
O
 
C
A
D
A
S
T
R
A
D
O
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
S
e
l
e
c
i
o
n
e
 
u
m
 
C
L
I
E
N
T
E
 
o
u
 
c
l
i
q
u
e
 
n
o
 
b
o
t
ã
o
 
d
e
 
C
a
d
a
s
t
r
o
 
d
e
 
u
m
 
N
o
v
o
 
c
l
i
e
n
t
e
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






S
e
n
d
K
e
y
s
 
"
{
E
S
C
}
"



S
e
n
d
K
e
y
s
 
"
{
E
S
C
}
"



S
e
n
d
K
e
y
s
 
"
{
E
S
C
}
"






E
l
s
e









 
 
 
 
I
f
 
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
v
e
n
d
a
s
!
V
e
n
d
a
s
!
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
 
o
 
C
l
i
e
n
t
e
 
d
e
 
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



 
 
 
 
C
a
n
c
e
l
 
=
 
T
r
u
e



 
 
 
 
S
e
n
d
K
e
y
s
 
"
{
E
S
C
}
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
E
s
t
a
 
a
l
t
e
r
a
ç
ã
o
 
i
r
á
 
e
x
c
l
u
i
r
 
q
u
a
l
q
u
e
r
 
C
o
n
t
a
s
 
a
 
R
e
c
e
b
e
r
 
e
 
O
r
d
e
m
 
d
e
 
S
e
r
v
i
ç
o
 
v
i
n
c
u
l
a
d
a
 
a
 
e
s
t
a
 
V
e
n
d
a
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
)
 
=
 
v
b
N
o
 
T
h
e
n






 
 
 
 
 
 
 
 
C
a
n
c
e
l
 
=
 
T
r
u
e



 
 
 
 
 
 
 
 
S
e
n
d
K
e
y
s
 
"
{
E
S
C
}
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
 
t
b
l
_
r
o
t
_
c
o
n
t
a
s
a
r
e
c
e
b
e
r
.
*
,
 
t
b
l
_
r
o
t
_
c
o
n
t
a
s
a
r
e
c
e
b
e
r
.
C
o
d
V
e
n
d
a
_
c
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
 
F
R
O
M
 
t
b
l
_
r
o
t
_
c
o
n
t
a
s
a
r
e
c
e
b
e
r
 
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
c
o
n
t
a
s
a
r
e
c
e
b
e
r
.
C
o
d
V
e
n
d
a
_
c
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
)
=
[
f
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
]
!
[
v
e
n
d
a
s
]
!
[
C
o
d
_
v
e
n
d
a
]
)
)
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
D
E
L
E
T
E
 
t
b
l
_
c
a
d
_
f
o
r
m
a
s
P
a
g
a
m
e
n
t
o
V
E
N
D
A
S
D
E
T
.
*
,
 
t
b
l
_
c
a
d
_
f
o
r
m
a
s
P
a
g
a
m
e
n
t
o
V
E
N
D
A
S
D
E
T
.
C
o
d
_
V
e
n
d
a
,
 
t
b
l
_
c
a
d
_
f
o
r
m
a
s
P
a
g
a
m
e
n
t
o
V
E
N
D
A
S
D
E
T
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
s
P
a
g
a
m
e
n
t
o
 
F
R
O
M
 
t
b
l
_
c
a
d
_
f
o
r
m
a
s
P
a
g
a
m
e
n
t
o
V
E
N
D
A
S
D
E
T
 
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
c
a
d
_
f
o
r
m
a
s
P
a
g
a
m
e
n
t
o
V
E
N
D
A
S
D
E
T
.
C
o
d
_
V
e
n
d
a
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
F
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
]
!
[
V
e
n
d
a
s
]
!
[
c
o
d
_
v
e
n
d
a
_
n
a
m
e
]
)
 
A
N
D
 
(
(
t
b
l
_
c
a
d
_
f
o
r
m
a
s
P
a
g
a
m
e
n
t
o
V
E
N
D
A
S
D
E
T
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
s
P
a
g
a
m
e
n
t
o
)
=
1
)
)
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
D
E
L
E
T
E
 
t
b
l
_
r
o
t
_
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
.
*
,
 
t
b
l
_
r
o
t
_
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
.
C
o
d
_
V
e
n
d
a
s
 
F
R
O
M
 
t
b
l
_
r
o
t
_
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
.
C
o
d
_
V
e
n
d
a
s
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
F
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
]
!
[
V
e
n
d
a
s
]
!
[
C
o
d
_
v
e
n
d
a
_
n
a
m
e
]
)
)
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
D
E
L
E
T
E
 
t
b
l
_
r
o
t
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
_
d
e
t
.
*
,
 
t
b
l
_
r
o
t
_
c
o
n
t
a
s
a
r
e
c
e
b
e
r
.
C
o
d
V
e
n
d
a
_
c
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
 
_



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
&
 
"
 
F
R
O
M
 
t
b
l
_
r
o
t
_
c
o
n
t
a
s
a
r
e
c
e
b
e
r
 
L
E
F
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
_
d
e
t
 
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
c
o
n
t
a
s
a
r
e
c
e
b
e
r
.
C
o
d
_
c
o
n
t
a
s
A
r
e
c
e
b
e
r
 
=
 
t
b
l
_
r
o
t
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
_
d
e
t
.
C
o
d
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
c
o
n
t
a
s
a
r
e
c
e
b
e
r
.
C
o
d
V
e
n
d
a
_
c
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
)
=
[
f
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
]
!
[
v
e
n
d
a
s
]
!
[
C
o
d
_
v
e
n
d
a
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
R
e
q
u
e
r
y






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
1
1
8
 
T
h
e
n






S
e
n
d
K
e
y
s
 
"
{
E
S
C
}
"



M
s
g
B
o
x
 
"
S
e
l
e
c
i
o
n
e
 
u
m
 
C
L
I
E
N
T
E
 
o
u
 
p
r
e
s
s
i
o
n
e
 
E
S
C
 
n
o
 
s
e
u
 
t
e
c
l
a
d
o
 
e
 
c
l
i
q
u
e
 
n
o
 
b
o
t
ã
o
 
d
e
 
C
a
d
a
s
t
r
o
 
d
e
 
u
m
 
N
o
v
o
 
c
l
i
e
n
t
e
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
_
N
o
t
I
n
L
i
s
t
(
N
e
w
D
a
t
a
 
A
s
 
S
t
r
i
n
g
,
 
R
e
s
p
o
n
s
e
 
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
 
I
s
N
u
l
l
(
M
e
!
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
 
A
n
d
 
R
e
s
p
o
n
s
e
 
=
 
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
C
L
I
E
N
T
E
 
N
Ã
O
 
C
A
D
A
S
T
R
A
D
O
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
S
e
l
e
c
i
o
n
e
 
u
m
 
C
L
I
E
N
T
E
 
o
u
 
c
l
i
q
u
e
 
n
o
 
b
o
t
ã
o
 
d
e
 
C
a
d
a
s
t
r
o
 
d
e
 
u
m
 
N
o
v
o
 
c
l
i
e
n
t
e
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






S
e
n
d
K
e
y
s
 
"
{
E
S
C
}
"



S
e
n
d
K
e
y
s
 
"
{
E
S
C
}
"



S
e
n
d
K
e
y
s
 
"
{
E
S
C
}
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
 
N
o
m
e
_
v
e
n
d
e
d
o
r
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



M
e
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
 
N
o
m
e
_
v
e
n
d
e
d
o
r
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
4
 
=
 
0
 
T
h
e
n



N
o
m
e
_
v
e
n
d
e
d
o
r
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



N
o
m
e
_
v
e
n
d
e
d
o
r
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
 
O
b
s
e
r
v
a
c
a
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
 
f
n
c
E
x
c
l
u
i
r
O
r
c
a
m
e
n
t
o
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
D
E
L
E
T
E
 
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
.
*
,
 
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
,
 
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
"
 
_



&
 
"
 
F
R
O
M
 
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
v
e
n
d
a
s
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
F
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
]
!
[
V
e
n
d
a
s
]
!
"
 
_



&
 
"
[
C
o
d
_
v
e
n
d
a
_
n
a
m
e
]
)
 
A
N
D
 
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
v
e
n
d
a
s
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
)
=
N
o
)
)
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
D
E
L
E
T
E
 
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
.
*
,
 
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
"
 
_



&
 
"
 
F
R
O
M
 
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
v
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
"
 
_



&
 
"
[
F
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
]
!
[
V
e
n
d
a
s
]
!
[
C
o
d
_
v
e
n
d
a
_
n
a
m
e
]
)
)
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
D
E
L
E
T
E
 
t
b
l
_
c
a
d
_
f
o
r
m
a
s
P
a
g
a
m
e
n
t
o
V
E
N
D
A
S
D
E
T
.
*
,
"
 
_



&
 
"
 
t
b
l
_
c
a
d
_
f
o
r
m
a
s
P
a
g
a
m
e
n
t
o
V
E
N
D
A
S
D
E
T
.
C
o
d
_
V
e
n
d
a
"
 
_



&
 
"
 
F
R
O
M
 
t
b
l
_
c
a
d
_
f
o
r
m
a
s
P
a
g
a
m
e
n
t
o
V
E
N
D
A
S
D
E
T
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
c
a
d
_
f
o
r
m
a
s
P
a
g
a
m
e
n
t
o
V
E
N
D
A
S
D
E
T
.
C
o
d
_
V
e
n
d
a
)
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
]
!
[
V
e
n
d
a
s
]
!
[
C
o
d
_
v
e
n
d
a
_
n
a
m
e
]
)
)
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
D
E
L
E
T
E
 
t
b
l
_
r
o
t
_
c
o
n
t
a
s
a
r
e
c
e
b
e
r
.
*
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
c
o
n
t
a
s
a
r
e
c
e
b
e
r
.
C
o
d
V
e
n
d
a
_
c
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
 
_



&
 
"
 
F
R
O
M
 
t
b
l
_
r
o
t
_
c
o
n
t
a
s
a
r
e
c
e
b
e
r
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
c
o
n
t
a
s
a
r
e
c
e
b
e
r
.
C
o
d
V
e
n
d
a
_
c
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
"
 
_



&
 
"
[
F
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
]
!
[
V
e
n
d
a
s
]
!
[
C
o
d
_
v
e
n
d
a
_
n
a
m
e
]
)
)
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
D
E
L
E
T
E
 
t
b
l
_
r
o
t
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
_
d
e
t
.
*
,
 
t
b
l
_
r
o
t
_
c
o
n
t
a
s
a
r
e
c
e
b
e
r
.
C
o
d
V
e
n
d
a
_
c
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
 
_



&
 
"
 
F
R
O
M
 
t
b
l
_
r
o
t
_
c
o
n
t
a
s
a
r
e
c
e
b
e
r
 
I
N
N
E
R
 
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
_
d
e
t
 
O
N
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
c
o
n
t
a
s
a
r
e
c
e
b
e
r
.
C
o
d
_
c
o
n
t
a
s
A
r
e
c
e
b
e
r
 
=
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
_
d
e
t
.
C
o
d
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
c
o
n
t
a
s
a
r
e
c
e
b
e
r
.
C
o
d
V
e
n
d
a
_
c
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
"
 
_



&
 
"
[
F
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
]
!
[
V
e
n
d
a
s
]
!
[
C
o
d
_
v
e
n
d
a
_
n
a
m
e
]
)
)
;
"






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
s
g
B
o
x
 
"
O
r
ç
a
m
e
n
t
o
 
e
x
c
l
u
í
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
 
F
u
n
c
t
i
o
n






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