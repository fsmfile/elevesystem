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
 
A
t
i
v
o
_
f
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



I
f
 
A
t
i
v
o
_
f
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
 
=
 
T
r
u
e
 
T
h
e
n



D
t
D
e
m
i
s
s
a
o
_
f
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



D
t
D
e
m
i
s
s
a
o
_
f
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
 
A
t
u
a
l
i
z
a
r
C
o
n
t
a
s
P
a
g
a
r
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
S
Q
L
 
"
D
e
l
e
t
e
 
t
b
l
_
c
a
d
_
f
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
d
e
t
s
a
l
a
r
i
o
.
c
o
d
_
S
a
l
a
r
i
o
F
u
n
c
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
d
e
t
s
a
l
a
r
i
o
.
m
a
t
_
f
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
d
e
t
s
a
l
a
r
i
o
.
N
u
m
e
r
o
S
a
l
a
r
i
o
_
s
a
l
a
r
i
o
f
u
n
c
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
d
e
t
s
a
l
a
r
i
o
.
S
a
l
a
r
i
o
_
f
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
d
e
t
s
a
l
a
r
i
o
.
D
a
t
a
P
a
g
a
m
e
n
t
o
_
f
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
d
e
t
s
a
l
a
r
i
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
c
a
d
_
f
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
d
e
t
s
a
l
a
r
i
o
.
M
a
t
_
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
c
a
d
_
f
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
s
]
!
[
m
a
t
_
f
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
]
)
)
;
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
c
a
d
_
u
s
u
a
r
i
o
s
S
i
s
t
e
m
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
 
D
C
o
u
n
t
(
"
[
c
o
d
_
u
s
u
a
r
i
o
s
i
s
t
e
m
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
u
s
u
a
r
i
o
s
i
s
t
e
m
a
"
,
 
"
[
m
a
t
f
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
]
=
"
 
&
 
M
e
.
M
a
t
_
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
)
 
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
c
a
d
_
u
s
u
a
r
i
o
s
S
i
s
t
e
m
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
 
"
m
a
t
f
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
=
"
 
&
 
M
a
t
_
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
F
r
m
_
c
a
d
_
u
s
u
a
r
i
o
s
S
i
s
t
e
m
a
!
m
a
t
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
c
a
d
_
u
s
u
a
r
i
o
s
S
i
s
t
e
m
a
!
m
a
t
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
 
=
 
M
a
t
_
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
C
a
d
a
s
t
r
o
 
j
á
 
e
x
i
s
t
e
 
n
a
 
b
a
s
e
 
d
e
 
d
a
d
o
s
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
7
5
 
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
 
F
u
n
c
i
o
n
á
r
i
o
 
s
e
l
e
c
i
o
n
a
d
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
3
2
4
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
D
t
D
e
m
i
s
s
a
o
_
f
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
)
 
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
D
i
a
P
a
g
a
m
e
n
t
o
_
f
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
T
e
m
p
o
E
m
M
e
s
e
s
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
D
t
A
d
m
i
s
s
a
o
_
f
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
s
 
c
a
m
p
o
s
 
D
I
A
 
D
O
 
P
A
G
A
M
E
N
T
O
 
e
 
T
E
M
P
O
 
E
M
 
M
E
S
E
S
 
e
 
D
A
T
A
 
D
E
 
A
D
M
I
S
S
Ã
O
 
p
r
e
c
i
s
a
m
 
e
s
t
a
r
 
p
r
e
e
n
c
h
i
d
o
s
 
p
a
r
a
 
A
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
e
 
C
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






t
b
l
_
C
a
d
_
f
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
D
e
t
S
a
l
a
r
i
o
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
S
e
t
F
o
c
u
s






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
e
l
e
t
e
 
t
b
l
_
c
a
d
_
f
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
d
e
t
s
a
l
a
r
i
o
.
c
o
d
_
S
a
l
a
r
i
o
F
u
n
c
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
d
e
t
s
a
l
a
r
i
o
.
m
a
t
_
f
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
d
e
t
s
a
l
a
r
i
o
.
N
u
m
e
r
o
S
a
l
a
r
i
o
_
s
a
l
a
r
i
o
f
u
n
c
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
d
e
t
s
a
l
a
r
i
o
.
S
a
l
a
r
i
o
_
f
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
d
e
t
s
a
l
a
r
i
o
.
D
a
t
a
P
a
g
a
m
e
n
t
o
_
f
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
d
e
t
s
a
l
a
r
i
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
c
a
d
_
f
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
d
e
t
s
a
l
a
r
i
o
.
M
a
t
_
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
c
a
d
_
f
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
s
]
!
[
m
a
t
_
f
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
]
)
)
;
"






S
e
t
 
d
b
 
=
 
O
p
e
n
D
a
t
a
b
a
s
e
(
"
C
:
\
f
l
m
s
i
s
t
e
m
a
s
\
d
b
_
E
x
c
e
l
.
a
c
c
d
b
"
,
 
F
a
l
s
e
,
 
F
a
l
s
e
,
 
"
M
S
 
A
c
c
e
s
s
;
P
W
D
=
4
2
6
8
9
7
0
3
"
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
c
a
d
_
f
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
d
e
t
s
a
l
a
r
i
o
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



 
 
 
 
v
a
l
o
r
_
s
a
l
a
r
i
o
 
=
 
M
e
.
S
a
l
a
r
i
o
_
f
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
 
'
V
a
l
o
r
 
d
o
 
S
a
l
á
r
i
o






 
 
 
 
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
T
e
m
p
o
E
m
M
e
s
e
s
 
'
I
n
s
e
r
e
 
o
 
s
a
l
á
r
i
o



 
 
 
 
 
 
 
 
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
m
a
t
_
f
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
"
)
 
=
 
M
e
.
M
a
t
_
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
n
u
m
e
r
o
S
a
l
a
r
i
o
_
s
a
l
a
r
i
o
f
u
n
c
"
)
 
=
 
i



 
 
 
 
 
 
 
 
r
s
t
(
"
S
a
l
a
r
i
o
_
f
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
"
)
 
=
 
v
a
l
o
r
_
s
a
l
a
r
i
o



 
 
 
 
 
 
 
 
r
s
t
(
"
D
a
t
a
P
a
g
a
m
e
n
t
o
_
f
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
"
)
 
=
 
D
a
t
e
A
d
d
(
"
m
"
,
 
i
,
 
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
M
e
.
D
t
A
d
m
i
s
s
a
o
_
f
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
)
,
 
m
o
n
t
h
(
M
e
.
D
t
A
d
m
i
s
s
a
o
_
f
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
)
,
 
M
e
.
D
i
a
P
a
g
a
m
e
n
t
o
_
f
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
)
)
 
'
C
a
l
c
u
l
a
 
a
s
 
d
a
t
a
s
 
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
t
b
l
_
C
a
d
_
f
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
D
e
t
S
a
l
a
r
i
o
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
c
a
d
_
f
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
d
e
t
s
a
l
a
r
i
o
.
c
o
d
_
S
a
l
a
r
i
o
F
u
n
c
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
d
e
t
s
a
l
a
r
i
o
.
M
a
t
_
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
d
e
t
s
a
l
a
r
i
o
.
N
u
m
e
r
o
S
a
l
a
r
i
o
_
s
a
l
a
r
i
o
f
u
n
c
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
d
e
t
s
a
l
a
r
i
o
.
S
a
l
a
r
i
o
_
f
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
d
e
t
s
a
l
a
r
i
o
.
D
a
t
a
P
a
g
a
m
e
n
t
o
_
f
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
d
e
t
s
a
l
a
r
i
o
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
S
a
l
a
r
i
o
F
u
n
c
 
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
d
e
t
s
a
l
a
r
i
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
c
a
d
_
f
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
d
e
t
s
a
l
a
r
i
o
.
M
a
t
_
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
c
a
d
_
f
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
s
]
!
[
m
a
t
_
f
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
d
e
t
s
a
l
a
r
i
o
.
D
a
t
a
P
a
g
a
m
e
n
t
o
_
f
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
)
>
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
c
a
d
_
f
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
s
]
!
[
D
t
D
e
m
i
s
s
a
o
_
f
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
]
)
)
;
"



M
e
.
t
b
l
_
C
a
d
_
f
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
D
e
t
S
a
l
a
r
i
o
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
 
E
s
t
a
d
o
_
f
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



C
i
d
a
d
e
_
f
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
f
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
a
p
e
l
i
d
o
_
f
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
 
=
 
L
e
f
t
(
M
e
.
N
o
m
e
_
f
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
,
 
2
0
)



E
n
d
 
S
u
b