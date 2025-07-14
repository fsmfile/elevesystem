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
,
 
a
c
S
a
v
e
N
o



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
n
v
i
a
r
O
r
c
E
m
a
i
l
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
á
 
e
n
v
i
a
d
o
 
p
a
r
a
 
o
 
e
-
m
a
i
l
 
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
 
d
o
 
c
l
i
e
n
t
e
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
D
e
s
e
j
a
 
C
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
R
e
p
o
r
t
,
 
"
r
l
t
_
o
r
c
a
m
e
n
t
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
F
o
r
m
a
t
P
D
F
,
 
"
c
:
\
w
i
n
d
o
w
s
\
t
e
m
p
\
o
r
c
a
m
e
n
t
o
_
t
m
p
.
p
d
f
"
,
 
F
a
l
s
e



f
n
c
A
g
u
a
r
d
a
r
 
(
2
0
0
0
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
N
o
t
a



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
l
o
s
e
(
)



'
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






'
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
R
e
p
o
r
t
,
 
"
r
l
t
_
o
r
c
a
m
e
n
t
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
S
a
v
e
N
o



'
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
R
e
p
o
r
t
,
 
"
r
l
t
_
o
r
c
a
m
e
n
t
o
_
c
a
i
x
a
_
n
a
o
f
i
s
c
a
l
"
,
 
a
c
S
a
v
e
N
o






'
E
x
i
t
 
S
u
b



'
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



'
M
s
g
B
o
x
 
"
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
 
F
e
c
h
a
d
o
.
 
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
 
I
m
p
r
i
m
i
r
N
o
r
m
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






I
f
 
C
o
n
f
i
g
1
8
 
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
o
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
a
i
x
a
"
,
 
,
 
,
 
,
 
a
c
H
i
d
d
e
n






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
o
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
 
I
m
p
r
i
m
i
r
T
e
r
m
i
c
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
 
C
o
n
f
i
g
1
8
 
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
o
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
a
i
x
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
 
,
 
,
 
,
 
a
c
H
i
d
d
e
n






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
o
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
a
i
x
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






E
n
d
 
I
f






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
 
U
s
e
r
F
o
r
m
_
A
c
t
i
v
a
t
e
(
)



 
 
 
 
'
M
e
.
T
o
p
 
=
 
5
0
0



 
 
 
 
'
M
e
.
L
e
f
t
 
=
 
5
0



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
N
o
t
a
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
 
&
 
"
:
 
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
 
&
 
"
 
:
:
 
"
 
&
 
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
f
a
n
t
a
s
i
a
_
l
o
j
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
l
o
j
a
s
"
)
 
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
E
s
t
a
 
m
e
n
s
a
g
e
m
 
r
e
f
e
r
e
-
s
e
 
a
o
 
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
 
&
 
"
 
e
m
i
t
i
d
o
 
p
o
r
:
"
 
&
 
v
b
C
r
L
f
 
_



 
 
 
 
&
 
"
R
a
z
ã
o
 
S
o
c
i
a
l
:
 
"
 
&
 
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
f
a
n
t
a
s
i
a
_
l
o
j
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
l
o
j
a
s
"
)
 
&
 
v
b
C
r
L
f
 
_



 
 
 
 
&
 
"
C
N
P
J
/
C
P
F
:
 
"
 
&
 
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
C
N
P
J
_
l
o
j
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
l
o
j
a
s
"
)
 
&
 
v
b
C
r
L
f
 
&
 
v
b
C
r
L
f
 
_



 
 
 
 
&
 
"
C
ó
d
:
 
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
 
&
 
v
b
C
r
L
f
 
_



 
 
 
 
&
 
"
P
a
r
a
 
v
e
r
i
f
i
c
a
r
 
o
 
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
 
&
 
"
 
a
c
i
m
a
 
m
e
n
c
i
o
n
a
d
o
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
 
o
 
a
n
e
x
o
 
d
e
s
t
e
 
e
-
m
a
i
l
.
"
 
&
 
v
b
C
r
L
f
 
_



 
 
 
 
&
 
v
b
C
r
L
f
 
_



 
 
 
 
&
 
"
A
t
t
.
"
 
&
 
v
b
C
r
L
f
 
_



 
 
 
 
&
 
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
 
&
 
v
b
C
r
L
f
 
_



 
 
 
 
&
 
"
h
t
t
p
:
/
/
w
w
w
.
e
l
e
v
e
s
d
y
s
t
e
m
.
c
o
m
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
E
-
m
a
i
l
_
c
l
i
e
n
t
e
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
"
,
 
"
[
c
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
)
 
'
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
c
:
\
w
i
n
d
o
w
s
\
t
e
m
p
\
o
r
c
a
m
e
n
t
o
_
t
m
p
.
p
d
f
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



 
 
 
 
M
s
g
B
o
x
 
"
E
-
m
a
i
l
 
e
n
v
i
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
"



 
 
 
 
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
 
9
4
 
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
-
m
a
i
l
 
d
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
 
e
s
t
á
 
C
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
r
r
e
t
a
m
e
n
t
e
.
 
A
l
t
e
r
e
 
o
 
c
a
d
a
s
t
r
o
 
d
o
 
m
e
s
m
o
 
p
a
r
a
 
l
h
e
 
e
n
v
i
a
r
 
e
s
t
e
 
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
E
-
m
a
i
l
 
n
ã
o
 
e
n
v
i
a
d
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