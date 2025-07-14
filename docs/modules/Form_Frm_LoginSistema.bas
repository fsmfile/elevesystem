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
B
a
t
 
A
s
 
B
o
o
l
e
a
n



D
i
m
 
V
a
r
C
o
n
t
 
A
s
 
I
n
t
e
g
e
r



D
i
m
 
V
a
r
I
n
a
t
i
v
i
d
a
d
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






'
I
f
 
V
a
r
B
a
t
 
=
 
-
1
 
T
h
e
n






'
M
s
g
B
o
x
 
"
U
M
A
 
C
O
N
F
I
G
U
R
A
Ç
Ã
O
 
P
R
E
C
I
S
A
 
S
E
R
 
R
E
A
L
I
Z
A
D
A
 
E
M
 
S
E
U
 
C
O
M
P
U
T
A
D
O
R
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
C
l
i
q
u
e
 
e
m
 
S
I
M
 
n
a
 
m
e
n
s
a
g
e
m
 
q
u
e
 
s
e
r
á
 
e
x
i
b
i
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
!
!
"



'
M
s
g
B
o
x
 
"
U
M
A
 
C
O
N
F
I
G
U
R
A
Ç
Ã
O
 
P
R
E
C
I
S
A
 
S
E
R
 
R
E
A
L
I
Z
A
D
A
 
E
M
 
S
E
U
 
C
O
M
P
U
T
A
D
O
R
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
C
l
i
q
u
e
 
e
m
 
S
I
M
 
n
a
 
m
e
n
s
a
g
e
m
 
q
u
e
 
s
e
r
á
 
e
x
i
b
i
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
A
T
E
N
Ç
Ã
O
!
!
"






'
S
h
e
l
l
 
"
c
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






'
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
m
s
g
b
o
x
"






'
E
l
s
e






 
 
 
 
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



 
 
 
 



 
 
 
 



 
 
 
 
 
 
 
 
I
f
 
M
e
.
t
x
t
A
t
u
a
l
i
z
a
c
a
o
C
r
i
t
i
c
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
H
á
 
u
m
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
 
C
r
í
t
i
c
a
 
p
e
n
d
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
t
u
a
l
i
z
e
 
s
e
u
 
S
i
s
t
e
m
a
 
p
a
r
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
 
E
n
v
i
r
o
n
(
"
C
o
m
p
u
t
e
r
N
a
m
e
"
)
 
&
 
"
;
L
o
g
i
n
 
n
o
 
S
i
s
t
e
m
a
:
"
 
&
 
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



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
d
a
t
a
l
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
m
e
n
u
p
r
i
n
c
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
P
e
r
f
i
l
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
C
x
C
o
n
f
M
a
t
 
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
V
e
r
s
a
o
S
i
s
t
e
m
a
 
=
 
M
e
.
t
x
t
V
e
r
s
a
o
S
i
s
t
e
m
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
A
p
e
l
i
d
o
F
u
n
c
 
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
m
e
n
u
p
r
i
n
c
.
R
e
c
a
l
c



 
 
 
 
 
 
 
 
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
F
r
m
_
L
o
g
i
n
S
i
s
t
e
m
a
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



 
 
 
 



'
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
8
 
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
m
e
n
u
p
r
i
n
c
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
P
e
r
f
i
l
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
C
x
C
o
n
f
M
a
t
 
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
3
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
F
r
m
_
L
o
g
i
n
S
i
s
t
e
m
a
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
Q
u
i
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
E
n
t
r
a
d
a
A
l
m
o
c
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
_
r
e
g
p
o
n
t
o
"
,
 
"
c
s
_
v
e
r
i
f
i
c
a
r
e
g
p
o
n
t
o
"
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
_
r
e
g
p
o
n
t
o
=
"
 
&
 
M
a
t
F
u
n
c
 
&
 
"
 
a
n
d
 
t
i
p
o
_
r
e
g
p
o
n
t
o
=
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
 
r
e
g
i
s
t
r
a
r
 
a
 
s
u
a
 
e
n
t
r
a
d
a
 
n
o
 
A
l
m
o
ç
o
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
e
g
p
o
n
t
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
r
e
g
p
o
n
t
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
d
t
h
r
_
r
e
g
p
o
n
t
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
t
i
p
o
_
r
e
g
p
o
n
t
o
"
)
 
=
 
2



 
 
 
 
 
 
 
 
 
 
 
 
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
R
e
g
i
s
t
r
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
I
S
T
E
M
A
S
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
O
 
r
e
g
i
s
t
r
o
 
d
e
s
t
e
 
f
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
 
n
e
s
t
e
 
c
a
m
p
o
,
 
j
á
 
f
o
i
 
r
e
a
l
i
z
a
d
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
8
 
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
M
ó
d
u
l
o
 
n
ã
o
 
i
n
s
t
a
l
a
d
o
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
 
b
t
n
E
n
t
r
a
d
a
P
o
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
_
r
e
g
p
o
n
t
o
"
,
 
"
c
s
_
v
e
r
i
f
i
c
a
r
e
g
p
o
n
t
o
"
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
_
r
e
g
p
o
n
t
o
=
"
 
&
 
M
a
t
F
u
n
c
 
&
 
"
 
a
n
d
 
t
i
p
o
_
r
e
g
p
o
n
t
o
=
1
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
 
r
e
g
i
s
t
r
a
r
 
a
 
s
u
a
 
e
n
t
r
a
d
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
e
g
p
o
n
t
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
r
e
g
p
o
n
t
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
d
t
h
r
_
r
e
g
p
o
n
t
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
t
i
p
o
_
r
e
g
p
o
n
t
o
"
)
 
=
 
1



 
 
 
 
 
 
 
 
 
 
 
 
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
R
e
g
i
s
t
r
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
I
S
T
E
M
A
S
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
O
 
r
e
g
i
s
t
r
o
 
d
e
s
t
e
 
f
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
 
n
e
s
t
e
 
c
a
m
p
o
,
 
j
á
 
f
o
i
 
r
e
a
l
i
z
a
d
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
8
 
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
M
ó
d
u
l
o
 
n
ã
o
 
i
n
s
t
a
l
a
d
o
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
 
b
t
n
S
a
i
d
a
A
l
m
o
c
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
_
r
e
g
p
o
n
t
o
"
,
 
"
c
s
_
v
e
r
i
f
i
c
a
r
e
g
p
o
n
t
o
"
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
_
r
e
g
p
o
n
t
o
=
"
 
&
 
M
a
t
F
u
n
c
 
&
 
"
 
a
n
d
 
t
i
p
o
_
r
e
g
p
o
n
t
o
=
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
 
r
e
g
i
s
t
r
a
r
 
o
 
s
e
u
 
R
e
t
o
r
n
o
 
d
o
 
a
l
m
o
ç
o
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
e
g
p
o
n
t
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
r
e
g
p
o
n
t
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
d
t
h
r
_
r
e
g
p
o
n
t
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
t
i
p
o
_
r
e
g
p
o
n
t
o
"
)
 
=
 
3



 
 
 
 
 
 
 
 
 
 
 
 
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
R
e
g
i
s
t
r
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
I
S
T
E
M
A
S
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
O
 
r
e
g
i
s
t
r
o
 
d
e
s
t
e
 
f
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
 
n
e
s
t
e
 
c
a
m
p
o
,
 
j
á
 
f
o
i
 
r
e
a
l
i
z
a
d
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
8
 
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
M
ó
d
u
l
o
 
n
ã
o
 
i
n
s
t
a
l
a
d
o
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
 
b
t
n
S
a
i
d
a
p
o
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
_
r
e
g
p
o
n
t
o
"
,
 
"
c
s
_
v
e
r
i
f
i
c
a
r
e
g
p
o
n
t
o
"
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
_
r
e
g
p
o
n
t
o
=
"
 
&
 
M
a
t
F
u
n
c
 
&
 
"
 
a
n
d
 
t
i
p
o
_
r
e
g
p
o
n
t
o
=
4
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
 
r
e
g
i
s
t
r
a
r
 
a
 
s
u
a
 
S
A
Í
D
A
 
e
 
e
n
c
e
r
r
a
r
 
a
 
s
u
a
 
j
o
r
n
a
d
a
 
d
e
 
t
r
a
b
a
l
h
o
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
e
g
p
o
n
t
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
r
e
g
p
o
n
t
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
d
t
h
r
_
r
e
g
p
o
n
t
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
t
i
p
o
_
r
e
g
p
o
n
t
o
"
)
 
=
 
4



 
 
 
 
 
 
 
 
 
 
 
 
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
R
e
g
i
s
t
r
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
I
S
T
E
M
A
S
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
O
 
r
e
g
i
s
t
r
o
 
d
e
s
t
e
 
f
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
 
n
e
s
t
e
 
c
a
m
p
o
,
 
j
á
 
f
o
i
 
r
e
a
l
i
z
a
d
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
8
 
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
M
ó
d
u
l
o
 
n
ã
o
 
i
n
s
t
a
l
a
d
o
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



'
D
i
m
 
s
t
r
P
a
t
h
 
A
s
 
V
a
r
i
a
n
t



D
i
m
 
V
e
r
s
a
o
S
i
s
t
e
m
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






C
l
i
e
n
t
e
F
L
M
 
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
N
o
m
e
F
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



V
e
r
s
a
o
S
i
s
t
e
m
a
 
=
 
D
L
a
s
t
(
"
[
v
e
r
s
a
o
b
a
c
k
e
n
d
]
"
,
 
"
t
b
l
_
v
e
r
s
a
o
B
a
c
k
E
n
d
"
)
 
&
 
"
.
"
 
&
 
D
L
a
s
t
(
"
[
v
e
r
s
a
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
v
e
r
s
a
o
s
i
s
t
e
m
a
"
)






M
e
.
t
x
t
C
l
i
e
n
t
e
F
L
M
 
=
 
C
l
i
e
n
t
e
F
L
M



M
e
.
t
x
t
V
e
r
s
a
o
S
i
s
t
e
m
a
 
=
 
V
e
r
s
a
o
S
i
s
t
e
m
a



V
a
r
I
n
a
t
i
v
i
d
a
d
e
 
=
 
1



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
 
5
2
 
T
h
e
n



'
M
e
.
t
x
t
_
n
o
v
a
v
e
r
s
a
o
 
=
 
"
N
ã
o
 
f
o
i
 
p
o
s
s
í
v
e
l
 
v
e
r
i
f
i
c
a
r
 
a
 
v
e
r
s
ã
o
.
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






M
e
.
T
i
m
e
r
I
n
t
e
r
v
a
l
 
=
 
1
0
0
0






'
I
f
 
D
i
r
(
"
c
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
A
r
c
h
i
v
e
)
 
<
>
 
"
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
 
A
n
d
 
D
i
r
(
"
c
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
h
a
b
i
l
i
t
a
n
a
v
e
l
e
v
e
.
r
e
g
"
,
 
v
b
A
r
c
h
i
v
e
)
 
=
 
"
h
a
b
i
l
i
t
a
n
a
v
e
l
e
v
e
.
r
e
g
"
 
T
h
e
n






'
v
P
a
t
h
 
=
 
"
c
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
"



'
v
F
i
l
e
 
=
 
"
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
 
'
n
o
m
e
 
d
o
 
a
r
q
u
i
v
o
 
a
 
s
e
r
 
b
a
i
x
a
d
o



'
v
F
T
P
S
e
r
v
 
=
 
"
f
t
p
.
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
.
c
o
m
.
b
r
"
 
'
S
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






'
M
o
n
t
a
n
d
o
 
o
 
c
o
m
a
n
d
o
 
f
t
p
.
e
x
e



'
f
N
u
m
 
=
 
F
r
e
e
F
i
l
e
(
)



'
O
p
e
n
 
"
C
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
F
t
p
C
o
m
m
.
t
x
t
"
 
F
o
r
 
O
u
t
p
u
t
 
A
s
 
#
f
N
u
m



'
P
r
i
n
t
 
#
1
,
 
"
u
s
e
r
 
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
"
 
'
U
s
u
á
r
i
o



'
P
r
i
n
t
 
#
1
,
 
"
f
4
8
6
5
7
5
3
"
 
'
S
e
n
h
a



'
P
r
i
n
t
 
#
1
,
 
"
c
d
 
w
w
w
"



'
P
r
i
n
t
 
#
1
,
 
"
c
d
 
n
o
v
a
v
e
r
s
a
o
s
i
s
t
e
m
a
"



'
P
r
i
n
t
 
#
1
,
 
"
g
e
t
 
"
 
&
 
"
"
"
"
 
&
 
v
F
i
l
e
 
&
 
"
"
"
"
 
&
 
"
 
"
 
&
 
v
P
a
t
h
 
&
 
v
F
i
l
e
 
'
D
o
n
w
l
o
a
d
 
d
o
 
F
T
P



'
P
r
i
n
t
 
#
1
,
 
"
c
l
o
s
e
"
 
'
F
e
c
h
a
 
c
o
n
e
x
ã
o



'
P
r
i
n
t
 
#
1
,
 
"
q
u
i
t
"
 
'
F
e
c
h
a
 
p
r
o
g
r
a
m
a
 
F
T
P



'
C
l
o
s
e






'
V
a
r
B
a
t
 
=
 
-
1






'
I
f
 
V
a
r
B
a
t
 
=
 
-
1
 
T
h
e
n






'
S
h
e
l
l
 
"
f
t
p
 
-
n
 
-
i
 
-
g
 
-
s
:
"
 
&
 
"
C
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
F
t
p
C
o
m
m
.
t
x
t
 
f
t
p
.
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
.
c
o
m
.
b
r
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
N
o
F
o
c
u
s



'
C
o
n
t
 
=
 
1



'
E
n
d
 
I
f






'
E
n
d
 
I
f



'
C
a
l
l
 
V
e
r
i
f
i
c
a
r
V
E
R
S
A
O



M
e
.
t
x
t
N
o
v
a
V
e
r
s
a
o
 
=
 
V
a
r
V
e
r
s
a
o
A
t
u
a
l



M
e
.
t
x
t
A
t
u
a
l
i
z
a
c
a
o
C
r
i
t
i
c
a
 
=
 
v
a
r
V
e
r
s
a
o
O
b
r
i
g
a
t
o
r
i
a



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
T
i
m
e
r
(
)






M
e
.
b
t
n
_
E
n
t
r
a
r
.
C
a
p
t
i
o
n
 
=
 
"
"



M
e
.
b
t
n
_
E
n
t
r
a
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
 
-
1






'
M
e
.
T
i
m
e
r
I
n
t
e
r
v
a
l
 
=
 
5
0
0
0



'
M
s
g
B
o
x
 
"
t
e
s
t
e
"



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






V
a
r
I
n
a
t
i
v
i
d
a
d
e
 
=
 
V
a
r
I
n
a
t
i
v
i
d
a
d
e
 
+
 
1






I
f
 
V
a
r
I
n
a
t
i
v
i
d
a
d
e
 
=
 
3
6
0
0
0
0
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
Q
u
i
t






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






I
f
 
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
e
 
u
s
u
á
r
i
o
 
e
s
t
á
 
b
l
o
q
u
e
a
d
o
 
p
a
r
a
 
r
e
a
l
i
z
a
r
 
L
o
g
i
n
"
 
+
 
v
b
C
r
L
f
 
+
 
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
 
c
o
m
 
s
e
u
 
G
e
s
t
o
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
"



M
e
.
t
x
t
S
e
n
h
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
l
s
e






M
e
.
t
x
t
S
e
n
h
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



M
a
t
F
u
n
c
 
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
3
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
 
I
f






E
n
d
 
S
u
b


