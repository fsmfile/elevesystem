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
 
M
s
g
B
o
x
(
"
S
a
l
v
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
?
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
"
 
&
 
M
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
l
s
e






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
o
t
_
e
x
c
l
u
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
 
"
g
e
s
t
o
r
e
s
"
 
O
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
 
"
A
d
m
i
n
i
s
t
r
a
d
o
r
"
 
T
h
e
n



M
e
.
b
o
t
_
e
x
c
l
u
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
 
-
1



E
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
e
x
c
l
u
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
 
0



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
A
b
r
i
r
A
u
t
o
r
i
z
a
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
!
n
o
m
e
F
o
r
m
 
=
 
n
o
m
e
F
o
r
m



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
A
t
u
a
l
i
z
a
L
s
t
L
a
n
c
C
a
i
x
a
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
L
s
t
L
a
n
c
C
a
i
x
a
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
C
r
i
a
r
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
R
e
t
E
s
t
o
q
u
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
a
n
c
C
a
i
x
a
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
 
A
s
 
I
n
t
e
g
e
r






I
f
 
M
e
.
t
x
t
S
a
l
d
o
D
i
f
C
a
i
x
a
 
>
 
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
 
L
a
n
ç
a
r
 
e
s
t
a
 
D
i
f
e
r
e
n
ç
a
 
d
e
 
V
a
l
o
r
 
c
o
m
o
 
D
e
v
o
l
u
ç
ã
o
 
e
m
 
D
I
N
H
E
I
R
O
,
 
n
o
 
c
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
E
 
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
D
é
b
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
:
"
 
&
 
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
 
&
 
"
 
C
o
d
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
S
a
l
d
o
D
i
f
C
a
i
x
a



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
 
M
e
.
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
"
)
 
=
 
M
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
e
.
L
s
t
L
a
n
c
C
a
i
x
a
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
t
x
t
S
a
l
d
o
D
i
f
C
a
i
x
a
 
<
 
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
 
L
a
n
ç
a
r
 
e
s
t
a
 
D
i
f
e
r
e
n
ç
a
 
d
e
 
V
a
l
o
r
,
 
n
o
 
c
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
a
n
c
c
a
i
x
a
_
d
i
f
c
a
i
x
a
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
N
ã
o
 
h
á
 
u
m
a
 
d
i
f
e
r
e
n
ç
a
 
n
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
 
s
e
r
e
m
 
l
a
n
ç
a
d
o
s
 
n
o
 
C
a
i
x
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
_
M
o
v
D
a
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



M
e
.
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
 
=
 
N
u
l
l






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
P
r
o
d
u
t
o
s
!
C
o
d
P
r
o
d
M
o
v
E
s
t
)
 
T
h
e
n



'
s
e
m
 
a
ç
ã
o



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
 
t
o
d
o
s
 
a
s
 
m
o
v
i
m
e
n
t
a
ç
õ
e
s
 
d
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
]
!
[
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
]
)
)
;
"



 
 
 
 
M
e
.
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






I
f
 
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
 
2
 
O
r
 
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
 
5
 
O
r
 
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
 
6
 
T
h
e
n



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



b
t
n
_
C
r
i
a
r
V
e
n
d
a
.
V
i
s
i
b
l
e
 
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



b
t
n
_
C
r
i
a
r
V
e
n
d
a
.
V
i
s
i
b
l
e
 
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






I
f
 
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
 
6
 
T
h
e
n



l
s
t
P
r
o
d
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



l
s
t
P
r
o
d
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






I
f
 
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
 
3
 
T
h
e
n



D
t
P
r
e
v
E
n
t
r
e
g
a
_
r
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



D
t
P
r
e
v
E
n
t
r
e
g
a
_
r
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
_
M
o
v
D
a
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



l
s
t
_
P
r
o
d
N
a
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



M
e
.
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



M
e
.
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
 
C
x
F
i
n
d
_
l
s
t
P
r
o
d
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
u
r
r
e
n
t
(
)



l
s
t
_
M
o
v
D
a
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



l
s
t
_
P
r
o
d
N
a
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



L
s
t
L
a
n
c
C
a
i
x
a
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
L
o
a
d
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
 
l
s
t
_
M
o
v
D
a
V
e
n
d
a
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






I
f
 
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
 
2
 
O
r
 
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
 
5
 
O
r
 
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
 
6
 
T
h
e
n



M
e
.
P
r
o
d
u
t
o
s
!
C
o
d
P
r
o
d
_
I
N
 
=
 
l
s
t
_
M
o
v
D
a
V
e
n
d
a
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



 
 
 
 
I
f
 
l
s
t
_
M
o
v
D
a
V
e
n
d
a
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
 
=
 
"
N
/
D
"
 
T
h
e
n



 
 
 
 
M
e
.
P
r
o
d
u
t
o
s
!
N
S
_
P
r
o
d
_
P
M
E
_
E
N
T
R
A
D
A
 
=
 
N
u
l
l



 
 
 
 
E
l
s
e



 
 
 
 
M
e
.
P
r
o
d
u
t
o
s
!
N
S
_
P
r
o
d
_
P
M
E
_
E
N
T
R
A
D
A
 
=
 
l
s
t
_
M
o
v
D
a
V
e
n
d
a
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
 
l
s
t
_
P
r
o
d
N
a
V
e
n
d
a
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
 
2
 
O
r
 
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
 
5
 
O
r
 
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
 
6
 
T
h
e
n



M
e
.
P
r
o
d
u
t
o
s
!
C
o
d
P
r
o
d
_
I
N
 
=
 
l
s
t
_
P
r
o
d
N
a
V
e
n
d
a
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



M
e
.
P
r
o
d
u
t
o
s
!
V
a
l
o
r
P
r
o
d
E
n
t
r
a
d
a
_
M
o
v
E
s
t
 
=
 
l
s
t
_
P
r
o
d
N
a
V
e
n
d
a
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






I
f
 
l
s
t
_
P
r
o
d
N
a
V
e
n
d
a
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
 
=
 
"
N
/
D
"
 
T
h
e
n



M
e
.
P
r
o
d
u
t
o
s
!
N
S
_
P
r
o
d
_
P
M
E
_
E
N
T
R
A
D
A
 
=
 
N
u
l
l



E
l
s
e



M
e
.
P
r
o
d
u
t
o
s
!
N
S
_
P
r
o
d
_
P
M
E
_
E
N
T
R
A
D
A
 
=
 
l
s
t
_
P
r
o
d
N
a
V
e
n
d
a
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
 
l
s
t
P
r
o
d
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
 
2
 
O
r
 
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
 
5
 
T
h
e
n



M
e
.
P
r
o
d
u
t
o
s
!
C
o
d
P
r
o
d
_
O
U
T
 
=
 
l
s
t
P
r
o
d
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



M
e
.
P
r
o
d
u
t
o
s
!
V
a
l
o
r
P
r
o
d
S
a
i
d
a
_
M
o
v
E
s
t
 
=
 
l
s
t
P
r
o
d
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



 
 
 
 
I
f
 
l
s
t
P
r
o
d
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
 
=
 
"
N
/
D
"
 
T
h
e
n



 
 
 
 
M
e
.
P
r
o
d
u
t
o
s
!
N
S
_
P
r
o
d
_
P
M
E
_
S
A
I
D
A
 
=
 
N
u
l
l



 
 
 
 
E
l
s
e



 
 
 
 
M
e
.
P
r
o
d
u
t
o
s
!
N
S
_
P
r
o
d
_
P
M
E
_
S
A
I
D
A
 
=
 
l
s
t
P
r
o
d
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
 
P
r
o
d
u
t
o
s
_
E
n
t
e
r
(
)



M
e
.
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
 
t
x
t
_
f
i
n
d
_
l
s
t
m
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
_
M
o
v
D
a
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
_
f
i
n
d
_
l
s
t
P
r
o
d
n
a
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



l
s
t
_
P
r
o
d
N
a
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



E
n
d
 
S
u
b


