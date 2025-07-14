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
 
C
o
m
a
n
d
o
0
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
u
t
p
u
t
T
o
 
a
c
O
u
t
p
u
t
Q
u
e
r
y
,
 
"
c
s
_
p
r
o
d
u
t
o
s
c
o
m
p
r
a
s
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
a
r
i
o
"
,
 
a
c
F
o
r
m
a
t
X
L
S
X
,
 
"
c
:
\
i
n
e
t
p
u
b
\
w
w
w
r
o
o
t
\
t
e
s
t
e
.
x
l
s
x
"
,
 
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
 
C
o
m
a
n
d
o
3
_
C
l
i
c
k
(
)



'
D
o
C
m
d
.
Q
u
i
t






S
h
e
l
l
 
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
g
r
a
v
a
r
e
g
n
a
v
.
b
a
t
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
4
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
 
s
t
r
T
a
b
e
l
a
 
A
s
 
S
t
r
i
n
g



D
i
m
 
s
t
r
S
q
l
 
A
s
 
S
t
r
i
n
g



D
i
m
 
b
d
E
x
c
e
l
 
A
s
 
D
A
O
.
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
 
r
s
 
A
s
 
D
A
O
.
R
e
c
o
r
d
s
e
t



D
i
m
 
r
s
T
b
l
 
A
s
 
D
A
O
.
R
e
c
o
r
d
s
e
t



s
t
r
A
r
q
u
i
v
o
 
=
 
C
u
r
r
e
n
t
P
r
o
j
e
c
t
.
P
a
t
h
 
&
 
"
\
P
l
a
n
i
l
h
a
T
e
s
t
e
.
x
l
s
m
"



S
e
t
 
b
d
E
x
c
e
l
 
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
s
t
r
A
r
q
u
i
v
o
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
E
x
c
e
l
 
1
2
.
0
;
H
D
R
=
Y
e
s
;
I
M
E
X
=
0
;
"
)



s
t
r
S
q
l
 
=
 
"
S
E
L
E
C
T
 
*
 
F
R
O
M
 
[
P
l
a
n
i
l
h
a
1
$
]
"



S
e
t
 
r
s
 
=
 
b
d
E
x
c
e
l
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
s
t
r
S
q
l
)



S
e
t
 
r
s
T
b
l
 
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
V
e
n
d
a
s
"
)



D
o
 
W
h
i
l
e
 
N
o
t
 
r
s
T
b
l
.
E
O
F



r
s
.
A
d
d
N
e
w



r
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
 
=
 
r
s
T
b
l
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



r
s
!
C
o
d
_
c
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
_
G
1
 
=
 
r
s
T
b
l
!
C
o
d
_
c
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
_
G
1



r
s
!
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
 
r
s
T
b
l
!
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



r
s
!
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
 
=
 
r
s
T
b
l
!
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



r
s
!
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
 
r
s
T
b
l
!
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



r
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
 
=
 
r
s
T
b
l
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



r
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
 
=
 
r
s
T
b
l
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



r
s
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
 
=
 
r
s
T
b
l
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



r
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
 
r
s
T
b
l
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



r
s
!
O
p
e
r
a
d
o
r
C
a
i
x
a
_
v
e
n
d
a
s
 
=
 
r
s
T
b
l
!
O
p
e
r
a
d
o
r
C
a
i
x
a
_
v
e
n
d
a
s



r
s
!
C
N
P
J
_
l
o
j
a
 
=
 
r
s
T
b
l
!
C
N
P
J
_
l
o
j
a



r
s
!
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
 
=
 
r
s
T
b
l
!
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



r
s
!
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
 
r
s
T
b
l
!
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



r
s
!
R
e
f
e
r
e
n
c
i
a
C
o
d
V
e
n
d
a
 
=
 
r
s
T
b
l
!
R
e
f
e
r
e
n
c
i
a
C
o
d
V
e
n
d
a



r
s
!
u
l
t
i
m
a
a
l
t
e
r
a
c
a
o
 
=
 
r
s
T
b
l
!
u
l
t
i
m
a
a
l
t
e
r
a
c
a
o



r
s
!
U
S
U
A
R
I
O
L
O
G
A
D
O
V
E
N
D
A
 
=
 
r
s
T
b
l
!
U
S
U
A
R
I
O
L
O
G
A
D
O
V
E
N
D
A



r
s
!
U
S
U
A
R
I
O
L
O
G
A
D
O
F
E
C
H
A
M
E
N
T
O
 
=
 
r
s
T
b
l
!
U
S
U
A
R
I
O
L
O
G
A
D
O
F
E
C
H
A
M
E
N
T
O



r
s
!
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
 
r
s
T
b
l
!
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



r
s
!
D
t
H
r
E
s
t
o
r
n
o
V
e
n
d
a
 
=
 
r
s
T
b
l
!
D
t
H
r
E
s
t
o
r
n
o
V
e
n
d
a



r
s
!
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
 
r
s
T
b
l
!
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



r
s
.
U
p
d
a
t
e



r
s
.
M
o
v
e
N
e
x
t



L
o
o
p



r
s
T
b
l
.
C
l
o
s
e



S
e
t
 
r
s
T
b
l
 
=
 
N
o
t
h
i
n
g



r
s
.
C
l
o
s
e



S
e
t
 
r
s
 
=
 
N
o
t
h
i
n
g



b
d
E
x
c
e
l
.
C
l
o
s
e



S
e
t
 
b
d
E
x
c
e
l
 
=
 
N
o
t
h
i
n
g



M
s
g
B
o
x
 
"
A
 
p
l
a
n
i
l
h
a
 
f
o
i
 
a
t
u
a
l
i
z
a
d
a
.
.
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
A
v
i
s
o
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
m
a
n
d
o
5
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
 
"
N
o
m
e
 
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
"
 
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
A
s
s
u
n
t
o
 
T
e
s
t
e
"
 
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
T
e
x
t
o
 
p
a
r
a
 
t
e
s
t
e
"
 
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
"






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






M
s
g
B
o
x
 
"
M
e
n
s
s
a
g
e
m
 
e
n
v
i
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
"






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
 
C
o
m
a
n
d
o
9
_
C
l
i
c
k
(
)






 
'
D
i
m
 
m
y
I
t
e
m
 
A
s
 
O
b
j
e
c
t



 
'
D
i
m
 
m
y
R
e
q
u
i
r
e
d
A
t
t
e
n
d
e
e
,
 
m
y
O
p
t
i
o
n
a
l
A
t
t
e
n
d
e
e
,
 
m
y
R
e
s
o
u
r
c
e
A
t
t
e
n
d
e
e
 
A
s
 
O
u
t
l
o
o
k
.
R
e
c
i
p
i
e
n
t



 



 
'
S
e
t
 
m
y
I
t
e
m
 
=
 
A
p
p
l
i
c
a
t
i
o
n
.
C
r
e
a
t
e
I
t
e
m
(
o
l
A
p
p
o
i
n
t
m
e
n
t
I
t
e
m
)



 
'
m
y
I
t
e
m
.
M
e
e
t
i
n
g
S
t
a
t
u
s
 
=
 
o
l
M
e
e
t
i
n
g



 
'
m
y
I
t
e
m
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
S
t
r
a
t
e
g
y
 
M
e
e
t
i
n
g
"



 
'
m
y
I
t
e
m
.
L
o
c
a
t
i
o
n
 
=
 
"
C
o
n
f
 
R
m
 
A
l
l
 
S
t
a
r
s
"



 
'
m
y
I
t
e
m
.
s
t
a
r
t
 
=
 
#
2
/
7
/
2
0
1
9
 
1
:
3
0
:
0
0
 
P
M
#



 
'
m
y
I
t
e
m
.
D
u
r
a
t
i
o
n
 
=
 
9
0



 



 
'
S
e
t
 
m
y
R
e
q
u
i
r
e
d
A
t
t
e
n
d
e
e
 
=
 
m
y
I
t
e
m
.
R
e
c
i
p
i
e
n
t
s
.
A
d
d
(
"
N
a
t
e
 
S
u
n
"
)



 



 
'
m
y
R
e
q
u
i
r
e
d
A
t
t
e
n
d
e
e
.
T
y
p
e
 
=
 
o
l
R
e
q
u
i
r
e
d



 



 
'
S
e
t
 
m
y
O
p
t
i
o
n
a
l
A
t
t
e
n
d
e
e
 
=
 
m
y
I
t
e
m
.
R
e
c
i
p
i
e
n
t
s
.
A
d
d
(
"
K
e
v
i
n
 
K
e
n
n
e
d
y
"
)



 



 
'
m
y
O
p
t
i
o
n
a
l
A
t
t
e
n
d
e
e
.
T
y
p
e
 
=
 
o
l
O
p
t
i
o
n
a
l



 



 
'
S
e
t
 
m
y
R
e
s
o
u
r
c
e
A
t
t
e
n
d
e
e
 
=
 
m
y
I
t
e
m
.
R
e
c
i
p
i
e
n
t
s
.
A
d
d
(
"
C
o
n
f
 
R
m
 
A
l
l
 
S
t
a
r
s
"
)



 



 
'
m
y
R
e
s
o
u
r
c
e
A
t
t
e
n
d
e
e
.
T
y
p
e
 
=
 
o
l
R
e
s
o
u
r
c
e



 
'
m
y
I
t
e
m
.
D
i
s
p
l
a
y



 
'
m
y
I
t
e
m
.
s
e
n
d






E
n
d
 
S
u
b