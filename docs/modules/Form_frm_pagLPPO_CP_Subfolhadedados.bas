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
C
o
d
P
a
g
a
m
e
n
t
o
 
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
S
a
l
v
a
r
R
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






V
a
r
C
o
d
P
a
g
a
m
e
n
t
o
 
=
 
M
e
.
c
o
d
P
a
g
F
o
r
n
_
C
R






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
a
t
a
P
a
g
_
C
o
n
t
a
s
A
p
a
g
a
r
D
E
T
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
V
a
l
o
r
P
a
g
o
P
a
g
F
o
r
n
_
C
P
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
c
o
d
P
a
g
F
o
r
n
_
C
R
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
e
s
c
r
i
c
a
o
P
a
g
F
o
r
n
_
C
P
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
:
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
a
t
a
 
d
o
 
P
a
g
;
 
V
a
l
o
r
;
 
D
e
s
c
r
i
ç
ã
o
 
e
 
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
ã
o
 
O
b
r
i
g
a
t
ó
r
i
o
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
 
L
a
n
ç
a
r
 
e
s
t
e
 
v
a
l
o
r
 
n
o
 
C
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
 
-
 
E
l
e
v
e
 
S
e
u
 
n
e
g
ó
c
i
o
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
l
a
n
c
C
a
i
x
a
]
"
,
 
"
c
s
_
c
o
d
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
,
 
"
[
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
]
=
"
 
&
 
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
)
 
>
 
0
 
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
 
v
a
l
o
r
 
j
á
 
f
o
i
 
l
a
n
ç
a
d
o
 
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



 
 
 
 
 
 
 
 
 
 
 
 



 
 
 
 
 
 
 
 
 
 
 
 
'
s
a
l
v
a
 
r
e
g
i
s
t
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



 
 
 
 
 
 
 
 
 
 
 
 
'
I
N
S
E
R
I
R
 
P
A
G
A
M
E
N
T
O
 
N
A
 
T
A
B
E
L
A
 
D
E
 
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
 
M
e
.
D
a
t
a
P
a
g
_
C
o
n
t
a
s
A
p
a
g
a
r
D
E
T



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
D
e
s
c
r
i
c
a
o
P
a
g
F
o
r
n
_
C
P



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
o
n
t
a
a
p
a
g
a
r
_
l
o
n
g
o
p
r
a
z
o
p
a
g
o
s
c
i
l
a
n
t
e
!
l
s
t
C
o
n
t
a
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
 
(
M
e
.
V
a
l
o
r
P
a
g
o
P
a
g
F
o
r
n
_
C
P
 
+
 
N
z
(
M
e
.
J
u
r
o
s
P
a
g
F
o
r
n
_
C
P
,
 
0
)
)
 
-
 
N
z
(
M
e
.
D
e
s
c
o
n
t
o
P
a
g
F
o
r
n
_
C
P
,
 
0
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
"
)
 
=
 
M
e
.
c
o
d
P
a
g
F
o
r
n
_
C
R



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
 
M
e
.
F
o
r
m
a
P
a
g
P
a
g
F
o
r
n
_
C
P






 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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



 
 
 
 
 
 
 
 



 
 
 
 
 
 
 
 
 
 
 
 
M
e
.
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
_
C
P
 
=
 
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



 
 
 
 
 
 
 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
I
f
 
M
e
.
t
x
t
T
o
t
a
l
P
a
g
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
c
o
n
t
a
a
p
a
g
a
r
_
l
o
n
g
o
p
r
a
z
o
p
a
g
o
s
c
i
l
a
n
t
e
!
P
a
r
c
e
l
a
s
!
V
a
l
o
r
P
a
r
c
_
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
D
E
T
 
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
c
o
n
t
a
a
p
a
g
a
r
_
l
o
n
g
o
p
r
a
z
o
p
a
g
o
s
c
i
l
a
n
t
e
!
q
u
i
t
a
r
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
e
t
 
=
 
-
1



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
C
a
m
p
o
 
e
m
 
B
r
a
n
c
o
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
 
p
o
r
 
f
a
v
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
B
e
f
o
r
e
D
e
l
C
o
n
f
i
r
m
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
 
E
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
 
P
A
G
A
M
E
N
T
O
 
r
e
a
l
i
z
a
d
o
?
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
E
s
t
e
 
p
r
o
c
e
d
i
m
e
n
t
o
 
n
ã
o
 
p
o
d
e
r
á
 
s
e
r
 
d
e
s
f
e
i
t
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
 
"
E
X
C
L
U
S
Ã
O
 
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
 
R
e
a
l
i
z
a
d
o
;
"
 
&
 
M
e
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
A
p
a
g
a
r
D
E
T
 
&
 
"
;
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
 
F
o
r
m
_
B
e
f
o
r
e
I
n
s
e
r
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






I
f
 
M
e
.
t
x
t
T
o
t
a
l
P
a
g
o
 
>
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
c
o
n
t
a
a
p
a
g
a
r
_
l
o
n
g
o
p
r
a
z
o
p
a
g
o
s
c
i
l
a
n
t
e
!
P
a
r
c
e
l
a
s
!
V
a
l
o
r
P
a
r
c
_
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
D
E
T
 
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
 
C
o
n
t
a
 
j
á
 
f
o
i
 
q
u
i
t
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
_
C
P
 
>
 
0
 
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