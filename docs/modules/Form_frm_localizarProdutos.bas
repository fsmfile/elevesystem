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
V
a
l
o
r
 
A
s
 
C
u
r
r
e
n
c
y






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
1
4
_
C
l
i
c
k
(
)



M
e
.
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
 
c
x
n
o
m
e
p
r
o
d
u
t
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



M
e
.
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
 
"
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



 
 
 
 
 
 
 
 
D
i
m
 
Q
t
d
P
r
o
d
 
A
s
 
I
n
t
e
g
e
r



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
C
o
l
u
m
n
(
5
)
 
=
 
"
K
I
T
"
 
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



 
 
 
 
M
s
g
B
o
x
 
"
O
 
S
i
s
t
e
m
a
 
i
r
á
 
i
n
s
e
r
i
r
 
T
O
D
O
S
 
o
s
 
i
t
e
n
s
 
d
o
 
K
I
T
 
q
u
e
 
f
o
i
 
m
o
n
t
a
d
o
 
n
o
 
S
i
s
t
e
m
a
,
 
d
e
 
f
o
r
m
a
 
o
c
u
l
t
a
 
n
e
s
t
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



 
 
 
 



 
 
 
 
'
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
I
N
S
E
R
T
 
I
N
T
O
 
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
 
(
 
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
 
C
o
d
_
p
r
o
d
u
t
o
,
 
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
V
e
n
d
a
s
D
e
t
,
 
Q
t
d
I
n
t
_
P
r
o
d
s
e
r
v
,
 
c
o
d
_
g
r
u
p
o
P
r
o
d
S
e
r
v
 
)
 
S
E
L
E
C
T
 
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
c
o
d
_
v
e
n
d
a
]
 
A
S
 
c
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
_
K
i
t
P
r
o
d
.
C
o
d
P
r
o
d
u
t
o
_
K
i
t
P
r
o
d
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
e
t
a
l
h
a
d
a
s
_
K
i
t
P
r
o
d
.
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
K
i
t
P
r
o
d
,
 
Y
e
s
 
A
S
 
Q
t
d
I
N
T
,
 
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
]
!
[
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
]
 
A
S
 
C
o
d
K
I
T
 
F
R
O
M
 
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
e
t
a
l
h
a
d
a
s
_
K
i
t
P
r
o
d
 
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
_
K
i
t
P
r
o
d
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
K
i
t
P
r
o
d
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
]
!
[
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
I
N
S
E
R
T
 
I
N
T
O
 
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
 
(
 
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
 
C
o
d
_
p
r
o
d
u
t
o
,
"
 
_



 
 
 
 
&
 
"
 
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
V
e
n
d
a
s
D
e
t
,
 
Q
t
d
I
n
t
_
P
r
o
d
s
e
r
v
,
 
P
r
o
d
u
t
o
R
e
l
a
c
i
o
n
a
d
o
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
 
)
"
 
_



 
 
 
 
&
 
"
 
S
E
L
E
C
T
 
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
v
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
]
 
A
S
"
 
_



 
 
 
 
&
 
"
 
c
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
_
K
i
t
P
r
o
d
.
C
o
d
P
r
o
d
u
t
o
_
K
i
t
P
r
o
d
,
 
Y
e
s
 
A
S
 
Q
t
d
I
N
T
,
"
 
_



 
 
 
 
&
 
"
 
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
e
t
a
l
h
a
d
a
s
_
K
i
t
P
r
o
d
.
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
K
i
t
P
r
o
d
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
e
t
a
l
h
a
d
a
s
_
K
i
t
P
r
o
d
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
K
i
t
P
r
o
d
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
_
K
i
t
P
r
o
d
 
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
_
K
i
t
P
r
o
d
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
K
i
t
P
r
o
d
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
]
!
[
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






I
f
 
M
e
.
s
e
l
_
P
e
r
g
u
n
t
a
V
a
l
o
r
 
=
 
-
1
 
T
h
e
n









I
f
 
M
e
.
s
e
l
_
P
e
r
g
u
n
t
a
r
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
 
=
 
-
1
 
T
h
e
n









 
 
 
 
I
f
 
M
e
.
s
e
l
_
f
e
c
h
a
r
j
a
n
e
l
a
 
=
 
0
 
T
h
e
n






 
 
 
 
 
 
 
 
V
a
r
V
a
l
o
r
 
=
 
I
n
p
u
t
B
o
x
(
"
I
n
f
o
r
m
e
 
o
 
V
a
l
o
r
 
d
o
 
P
r
o
d
u
t
o
"
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
,
 
M
e
.
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
C
o
l
u
m
n
(
3
)
)



 
 
 
 
 
 
 
 



 
 
 
 
 
 
 
 
I
f
 
V
a
r
V
a
l
o
r
 
<
 
M
e
.
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
C
o
l
u
m
n
(
4
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
V
a
l
o
r
 
n
ã
o
 
P
e
r
m
i
t
i
d
o
.
 
S
e
r
á
 
i
n
s
e
r
i
d
o
 
o
 
v
a
l
o
r
 
n
o
r
m
a
l
 
d
e
 
V
e
n
d
a
.
 
P
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
 
v
a
l
o
r
 
a
b
a
i
x
o
 
d
o
 
V
a
l
o
r
 
m
í
n
i
m
o
,
 
d
e
v
e
 
s
e
r
 
f
e
i
t
o
 
n
a
 
t
e
l
a
 
d
e
 
V
e
n
d
a
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



 
 
 
 
 
 
 
 
V
a
r
V
a
l
o
r
 
=
 
M
e
.
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






 
 
 
 
 
 
 
 
Q
t
d
P
r
o
d
 
=
 
I
n
p
u
t
B
o
x
(
"
D
i
g
i
t
e
 
a
 
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
:
"
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
,
 
1
)



 
 
 
 
 
 
 
 



 
 
 
 
 
 
 
 



 
 
 
 
 
 
 
 
I
f
 
M
e
.
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
C
o
l
u
m
n
(
6
)
 
=
 
0
 
T
h
e
n



 
 
 
 
 
 
 
 
 
 
 
 
I
f
 
Q
t
d
P
r
o
d
 
>
 
C
I
n
t
(
M
e
.
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
C
o
l
u
m
n
(
1
)
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
E
s
t
o
q
u
e
 
I
n
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
 
&
 
v
b
C
r
L
f
 
&
 
"
A
 
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
e
r
á
 
a
l
t
e
r
a
d
a
 
p
a
r
a
 
0
.
 
A
l
t
e
r
e
-
a
 
n
a
 
T
e
l
a
 
d
e
 
V
e
n
d
a
s
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



 
 
 
 
 
 
 
 
 
 
 
 
Q
t
d
P
r
o
d
 
=
 
0



 
 
 
 
 
 
 
 
 
 
 
 
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



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
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



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
C
o
d
_
p
r
o
d
u
t
o
"
)
 
=
 
M
e
.
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
u
n
i
t
a
r
i
o
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
"
)
 
=
 
V
a
r
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
)
 
=
 
Q
t
d
P
r
o
d



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
.
R
e
q
u
e
r
y



 
 
 
 
E
l
s
e



 
 
 
 



 
 
 
 
 
 
 
 
V
a
r
V
a
l
o
r
 
=
 
I
n
p
u
t
B
o
x
(
"
I
n
f
o
r
m
e
 
o
 
V
a
l
o
r
 
d
o
 
P
r
o
d
u
t
o
"
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
,
 
M
e
.
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
C
o
l
u
m
n
(
3
)
)



 
 
 
 
 
 
 
 



 
 
 
 
 
 
 
 
I
f
 
V
a
r
V
a
l
o
r
 
<
 
M
e
.
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
C
o
l
u
m
n
(
4
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
V
a
l
o
r
 
n
ã
o
 
P
e
r
m
i
t
i
d
o
.
 
S
e
r
á
 
i
n
s
e
r
i
d
o
 
o
 
v
a
l
o
r
 
n
o
r
m
a
l
 
d
e
 
V
e
n
d
a
.
 
P
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
 
v
a
l
o
r
 
a
b
a
i
x
o
 
d
o
 
V
a
l
o
r
 
m
í
n
i
m
o
,
 
d
e
v
e
 
s
e
r
 
f
e
i
t
o
 
n
a
 
t
e
l
a
 
d
e
 
V
e
n
d
a
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



 
 
 
 
 
 
 
 
V
a
r
V
a
l
o
r
 
=
 
M
e
.
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






 
 
 
 
 
 
 
 



 
 
 
 
 
 
 
 



 
 
 
 
 
 
 
 
Q
t
d
P
r
o
d
 
=
 
I
n
p
u
t
B
o
x
(
"
D
i
g
i
t
e
 
a
 
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
:
"
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
,
 
1
)






 
 
 
 
 
 
 
 
I
f
 
M
e
.
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
C
o
l
u
m
n
(
6
)
 
=
 
0
 
T
h
e
n



 
 
 
 
 
 
 
 
 
 
 
 
I
f
 
Q
t
d
P
r
o
d
 
>
 
C
I
n
t
(
M
e
.
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
C
o
l
u
m
n
(
1
)
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
E
s
t
o
q
u
e
 
I
n
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
 
&
 
v
b
C
r
L
f
 
&
 
"
A
 
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
e
r
á
 
a
l
t
e
r
a
d
a
 
p
a
r
a
 
0
.
 
A
l
t
e
r
e
-
a
 
n
a
 
T
e
l
a
 
d
e
 
V
e
n
d
a
s
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



 
 
 
 
 
 
 
 
 
 
 
 
Q
t
d
P
r
o
d
 
=
 
0



 
 
 
 
 
 
 
 
 
 
 
 
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



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
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



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
C
o
d
_
p
r
o
d
u
t
o
"
)
 
=
 
M
e
.
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
u
n
i
t
a
r
i
o
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
"
)
 
=
 
V
a
r
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
)
 
=
 
Q
t
d
P
r
o
d



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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






 
 
 
 
I
f
 
M
e
.
s
e
l
_
f
e
c
h
a
r
j
a
n
e
l
a
 
=
 
0
 
T
h
e
n



 
 
 
 



 
 
 
 
 
 
 
 
V
a
r
V
a
l
o
r
 
=
 
I
n
p
u
t
B
o
x
(
"
I
n
f
o
r
m
e
 
o
 
V
a
l
o
r
 
d
o
 
P
r
o
d
u
t
o
"
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
,
 
M
e
.
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
C
o
l
u
m
n
(
3
)
)



 
 
 
 
 
 
 
 
I
f
 
V
a
r
V
a
l
o
r
 
<
 
M
e
.
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
C
o
l
u
m
n
(
4
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
V
a
l
o
r
 
n
ã
o
 
P
e
r
m
i
t
i
d
o
.
 
S
e
r
á
 
i
n
s
e
r
i
d
o
 
o
 
v
a
l
o
r
 
n
o
r
m
a
l
 
d
e
 
V
e
n
d
a
.
 
P
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
 
v
a
l
o
r
 
a
b
a
i
x
o
 
d
o
 
V
a
l
o
r
 
m
í
n
i
m
o
,
 
d
e
v
e
 
s
e
r
 
f
e
i
t
o
 
n
a
 
t
e
l
a
 
d
e
 
V
e
n
d
a
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



 
 
 
 
 
 
 
 
V
a
r
V
a
l
o
r
 
=
 
M
e
.
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



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
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



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
C
o
d
_
p
r
o
d
u
t
o
"
)
 
=
 
M
e
.
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
u
n
i
t
a
r
i
o
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
"
)
 
=
 
V
a
r
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
)
 
=
 
0



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
.
R
e
q
u
e
r
y



 
 
 
 
E
l
s
e



 
 
 
 






 
 
 
 
 
 
 
 
V
a
r
V
a
l
o
r
 
=
 
I
n
p
u
t
B
o
x
(
"
I
n
f
o
r
m
e
 
o
 
V
a
l
o
r
 
d
o
 
P
r
o
d
u
t
o
"
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
,
 
M
e
.
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
C
o
l
u
m
n
(
3
)
)



 
 
 
 
 
 
 
 
I
f
 
V
a
r
V
a
l
o
r
 
<
 
M
e
.
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
C
o
l
u
m
n
(
4
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
V
a
l
o
r
 
n
ã
o
 
P
e
r
m
i
t
i
d
o
.
 
S
e
r
á
 
i
n
s
e
r
i
d
o
 
o
 
v
a
l
o
r
 
n
o
r
m
a
l
 
d
e
 
V
e
n
d
a
.
 
P
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
 
v
a
l
o
r
 
a
b
a
i
x
o
 
d
o
 
V
a
l
o
r
 
m
í
n
i
m
o
,
 
d
e
v
e
 
s
e
r
 
f
e
i
t
o
 
n
a
 
t
e
l
a
 
d
e
 
V
e
n
d
a
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



 
 
 
 
 
 
 
 
V
a
r
V
a
l
o
r
 
=
 
M
e
.
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



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
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



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
C
o
d
_
p
r
o
d
u
t
o
"
)
 
=
 
M
e
.
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
u
n
i
t
a
r
i
o
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
"
)
 
=
 
V
a
r
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
)
 
=
 
0



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
l
s
e


















I
f
 
M
e
.
s
e
l
_
P
e
r
g
u
n
t
a
r
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
 
=
 
-
1
 
T
h
e
n






 
 
 
 
I
f
 
M
e
.
s
e
l
_
f
e
c
h
a
r
j
a
n
e
l
a
 
=
 
0
 
T
h
e
n



 
 
 
 






 
 
 
 



 
 
 
 
 
 
 
 
Q
t
d
P
r
o
d
 
=
 
I
n
p
u
t
B
o
x
(
"
D
i
g
i
t
e
 
a
 
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
:
"
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
,
 
1
)



 
 
 
 
 
 
 
 



 
 
 
 
 
 
 
 
I
f
 
M
e
.
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
C
o
l
u
m
n
(
6
)
 
=
 
0
 
T
h
e
n



 
 
 
 
 
 
 
 
 
 
 
 
I
f
 
Q
t
d
P
r
o
d
 
>
 
C
I
n
t
(
M
e
.
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
C
o
l
u
m
n
(
1
)
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
E
s
t
o
q
u
e
 
I
n
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
 
&
 
v
b
C
r
L
f
 
&
 
"
A
 
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
e
r
á
 
a
l
t
e
r
a
d
a
 
p
a
r
a
 
0
.
 
A
l
t
e
r
e
-
a
 
n
a
 
T
e
l
a
 
d
e
 
V
e
n
d
a
s
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



 
 
 
 
 
 
 
 
 
 
 
 
Q
t
d
P
r
o
d
 
=
 
0



 
 
 
 
 
 
 
 
 
 
 
 
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



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
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



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
C
o
d
_
p
r
o
d
u
t
o
"
)
 
=
 
M
e
.
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
u
n
i
t
a
r
i
o
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
"
)
 
=
 
M
e
.
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
C
o
l
u
m
n
(
3
)



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
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
)
 
=
 
Q
t
d
P
r
o
d



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
.
R
e
q
u
e
r
y



 
 
 
 
E
l
s
e






 
 
 
 
 
 
 
 
Q
t
d
P
r
o
d
 
=
 
I
n
p
u
t
B
o
x
(
"
D
i
g
i
t
e
 
a
 
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
:
"
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
,
 
1
)






 
 
 
 
 
 
 
 
I
f
 
M
e
.
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
C
o
l
u
m
n
(
6
)
 
=
 
0
 
T
h
e
n






 
 
 
 
 
 
 
 
 
 
 
 
I
f
 
Q
t
d
P
r
o
d
 
>
 
C
I
n
t
(
M
e
.
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
C
o
l
u
m
n
(
1
)
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
E
s
t
o
q
u
e
 
I
n
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
 
&
 
v
b
C
r
L
f
 
&
 
"
A
 
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
e
r
á
 
a
l
t
e
r
a
d
a
 
p
a
r
a
 
0
.
 
A
l
t
e
r
e
-
a
 
n
a
 
T
e
l
a
 
d
e
 
V
e
n
d
a
s
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



 
 
 
 
 
 
 
 
 
 
 
 
Q
t
d
P
r
o
d
 
=
 
0



 
 
 
 
 
 
 
 
 
 
 
 
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



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
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



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
C
o
d
_
p
r
o
d
u
t
o
"
)
 
=
 
M
e
.
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
u
n
i
t
a
r
i
o
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
"
)
 
=
 
M
e
.
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
C
o
l
u
m
n
(
3
)



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
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
)
 
=
 
Q
t
d
P
r
o
d



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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






 
 
 
 
I
f
 
M
e
.
s
e
l
_
f
e
c
h
a
r
j
a
n
e
l
a
 
=
 
0
 
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



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
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



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
C
o
d
_
p
r
o
d
u
t
o
"
)
 
=
 
M
e
.
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
u
n
i
t
a
r
i
o
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
"
)
 
=
 
M
e
.
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
C
o
l
u
m
n
(
3
)



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
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
)
 
=
 
0



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
.
R
e
q
u
e
r
y



 
 
 
 
E
l
s
e






 
 
 
 
 
 
 
 
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



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
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



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
C
o
d
_
p
r
o
d
u
t
o
"
)
 
=
 
M
e
.
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
u
n
i
t
a
r
i
o
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
"
)
 
=
 
M
e
.
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
C
o
l
u
m
n
(
3
)



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
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
)
 
=
 
0



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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