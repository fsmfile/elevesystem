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






I
f
 
M
e
.
D
i
r
t
y
 
T
h
e
n



'
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
D
e
s
e
j
a
 
S
a
l
v
a
r
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
S
a
l
v
a
r
?
"
)
 
=
 
v
b
C
a
n
c
e
l
 
T
h
e
n



M
e
.
U
n
d
o



'
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
v
e
n
d
a
s
_
a
l
t
e
r
a
c
a
o
.
R
e
q
u
e
r
y



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
v
e
n
d
a
s
_
a
l
t
e
r
a
c
a
o
.
R
e
c
a
l
c






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
v
e
n
d
a
s
_
a
l
t
e
r
a
c
a
o
.
R
e
q
u
e
r
y



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
v
e
n
d
a
s
_
a
l
t
e
r
a
c
a
o
.
R
e
c
a
l
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
O
p
e
n
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
s
!
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
a
l
t
e
r
a
c
a
o
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
 
s
a
l
v
a
r
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
 
L
e
n
(
M
e
.
t
x
t
M
o
t
i
v
o
E
s
t
o
r
n
o
)
 
<
 
5
 
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
M
o
t
i
v
o
E
s
t
o
r
n
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
V
E
N
D
A
 
N
Ã
O
 
E
S
T
O
R
N
A
D
A
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
I
n
f
o
r
m
e
 
o
 
m
í
n
i
m
o
 
d
e
 
5
 
c
a
r
a
c
t
e
r
e
s
 
n
o
 
c
a
m
p
o
 
M
O
T
I
V
O
 
D
O
 
E
S
T
O
R
N
O
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
 
-
 
I
N
F
O
R
M
A
Ç
Ã
O
 
I
M
P
O
R
T
A
N
T
E
"






E
l
s
e






 
 
 
 
'
p
e
d
e
 
c
o
n
f
i
r
m
a
ç
ã
o
 
a
o
 
u
s
u
á
r
i
o



 
 
 
 
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
s
t
o
r
n
a
r
 
a
 
V
e
n
d
a
 
c
o
m
 
c
ó
d
i
g
o
:
 
"
 
&
 
M
e
.
t
x
t
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






 
 
 
 
'
R
e
g
i
s
t
r
a
 
i
n
f
o
r
m
a
ç
ã
o
 
d
o
 
e
s
t
o
r
n
o
 
n
a
 
t
a
b
e
l
a
 
m
o
t
i
v
o
 
d
o
 
e
s
t
o
r
n
o



 
 
 
 
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
c
a
d
_
m
o
t
i
v
o
e
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
c
o
d
v
e
n
d
a
_
m
o
t
i
v
o
"
)
 
=
 
M
e
.
t
x
t
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
M
o
t
i
v
o
E
s
t
o
r
n
o
_
m
o
t
i
v
o
"
)
 
=
 
M
e
.
t
x
t
M
o
t
i
v
o
E
s
t
o
r
n
o



 
 
 
 
 
 
 
 
r
s
t
(
"
d
t
h
r
e
s
t
o
r
n
o
_
m
o
t
i
v
o
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
_
m
o
t
i
v
o
"
)
 
=
 
M
e
.
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
L
o
g
a
d
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






 
 
 
 
'
p
a
s
s
a
 
o
 
r
e
g
i
s
t
r
o
 
p
a
r
a
 
n
ã
o
 
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
v
e
n
d
a
s
_
a
l
t
e
r
a
c
a
o
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
 
0






 
 
 
 
'
p
a
s
s
a
 
o
 
r
e
g
i
s
t
r
o
 
p
a
r
a
 
n
ã
o
 
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
v
e
n
d
a
s
_
a
l
t
e
r
a
c
a
o
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
 
1



 



 
 
 
 
'
M
a
r
c
a
 
o
p
ç
ã
o
 
q
u
e
 
p
r
o
v
a
 
q
u
e
 
e
s
t
a
 
v
e
n
d
a
 
j
á
 
f
o
i
 
e
s
t
o
r
n
a
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
v
e
n
d
a
s
_
a
l
t
e
r
a
c
a
o
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
 
-
1






 
 
 
 
'
R
e
g
i
s
t
r
a
 
n
o
 
l
o
g



 
 
 
 
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
l
o
g
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
r
e
g
l
o
g
"
)
 
=
 
"
E
S
T
O
R
N
O
 
V
E
N
D
A
"
 
&
 
"
=
"
 
&
 
M
e
.
t
x
t
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
;
"
 
&
 
"
U
s
e
r
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
L
o
g
a
d
o
 
&
 
"
;
"



 
 
 
 
 
 
 
 
r
s
t
(
"
d
a
t
a
L
o
g
"
)
 
=
 
N
o
w



 
 
 
 
 
 
 
 
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






 
 
 
 
'
E
n
v
i
a
 
f
e
c
h
a
m
e
n
t
o
 
p
o
r
 
e
-
m
a
i
l



 
 
 
 
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



 
 
 
 
M
s
g
B
o
x
 
"
S
u
a
 
V
e
n
d
a
 
"
 
&
 
M
e
.
t
x
t
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
 
s
e
r
á
 
e
s
t
o
r
n
a
d
a
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
ê
 
O
K
 
e
 
A
g
u
a
r
d
e
 
a
t
é
 
a
 
c
o
n
f
i
r
m
a
ç
ã
o
 
d
o
 
E
s
t
o
r
n
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
S
u
b
j
e
c
t
 
=
 
"
E
s
t
o
r
n
o
 
d
e
 
V
e
n
d
a
 
"
 
&
 
N
o
w
 
&
 
"
 
:
:
 
L
o
j
a
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
U
s
u
á
r
i
o
 
q
u
e
 
e
f
e
u
t
o
u
 
o
 
e
s
t
o
r
n
o
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
L
o
g
a
d
o
 
&
 
v
b
C
r
L
f
 
&
 
_



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
"
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
"
 
&
 
v
b
C
r
L
f
 
&
 
_



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
"
C
ó
d
i
g
o
 
d
a
 
V
e
n
d
a
:
 
"
 
&
 
M
e
.
t
x
t
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
 
&
 
_



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
"
D
t
 
e
 
H
r
 
o
r
i
g
i
n
a
l
 
d
a
 
V
e
n
d
a
:
 
"
 
&
 
N
o
w
 
&
 
v
b
C
r
L
f
 
&
 
_



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
"
M
o
t
i
v
o
 
d
o
 
E
s
t
o
r
n
o
:
 
"
 
&
 
M
e
.
t
x
t
M
o
t
i
v
o
E
s
t
o
r
n
o
 
&
 
_



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
 
&
 
_



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
"
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
 
-
 
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
r
e
s
p
o
n
s
a
v
e
l
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
V
e
n
d
a
 
E
s
t
o
r
n
a
d
a
 
C
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
 
&
 
v
b
C
r
L
f
 
&
 
"
V
o
c
ê
 
p
o
d
e
 
e
n
c
o
n
t
r
á
-
l
a
 
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
,
 
c
l
i
c
a
n
d
o
 
n
o
 
b
o
t
ã
o
 
E
S
T
O
R
N
O
S
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
c
o
n
f
i
r
m
a
e
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



 
 
 
 
M
s
g
B
o
x
 
"
V
E
N
D
A
 
E
S
T
O
R
N
A
D
A
 
C
O
M
 
S
U
C
E
S
S
O
,
 
p
o
r
é
m
,
 
o
 
E
-
m
a
i
l
 
d
e
 
a
v
i
s
o
 
n
ã
o
 
f
o
i
 
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
 
-
 
V
e
n
d
a
 
E
s
t
o
r
n
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



 
 
 
 
R
e
s
u
m
e
 
N
e
x
t



 
 
 
 
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