D
i
m
 
V
a
r
S
a
l
v
a
r
 
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
d
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
D
t
E
m
i
s
s
a
o
_
c
o
m
p
r
a
s
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
 
D
a
t
a
 
d
e
 
E
m
i
s
s
ã
o
 
é
 
o
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






E
l
s
e






 
 
 
 
I
f
 
V
a
r
S
a
l
v
a
r
 
=
 
0
 
A
n
d
 
M
e
.
L
i
s
t
a
C
o
m
p
r
a
r
_
c
o
m
p
r
a
s
 
=
 
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
a
 
E
N
T
R
A
D
A
 
n
o
 
e
s
t
o
q
u
e
 
j
á
 
f
o
i
 
c
o
n
c
l
u
í
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



 
 
 
 
M
e
.
D
t
E
m
i
s
s
a
o
_
c
o
m
p
r
a
s
.
S
e
t
F
o
c
u
s



 
 
 
 
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
l
s
e



 
 
 
 
 
 
 
 



 
 
 
 
 
 
 
 
F
o
r
m
A
b
e
r
t
o
 
=
 
1



 
 
 
 
 
 
 
 



 
 
 
 
 
 
 
 
F
o
r
 
F
o
r
m
A
b
e
r
t
o
 
=
 
1
 
T
o
 
0



 
 
 
 
 
 
 
 
N
e
x
t



 
 
 
 
 
 
 
 



 
 
 
 
 
 
 
 
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
e
 
c
a
d
a
s
t
r
o
 
é
 
p
a
r
a
 
E
N
T
R
A
D
A
 
n
o
 
E
s
t
o
q
u
e
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
C
a
s
o
 
s
e
j
a
 
a
p
e
n
a
s
 
u
m
a
 
l
i
s
t
a
 
d
e
 
C
o
m
p
r
a
s
,
 
c
l
i
q
u
e
 
e
m
 
N
Ã
O
.
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
M
U
I
T
A
 
A
T
E
N
Ç
Ã
O
!
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



 
 
 
 
 
 
 
 
V
a
r
S
a
l
v
a
r
 
=
 
-
1



 
 
 
 
 
 
 
 
M
e
.
L
i
s
t
a
C
o
m
p
r
a
r
_
c
o
m
p
r
a
s
 
=
 
0



 
 
 
 
 
 
 
 
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



 
 
 
 
 
 
 
 
M
e
.
C
o
m
p
r
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



 
 
 
 
 
 
 
 
M
e
.
D
t
E
m
i
s
s
a
o
_
c
o
m
p
r
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



 
 
 
 
 
 
 
 
M
e
.
N
u
m
e
r
o
P
e
d
i
d
o
_
c
o
m
p
r
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



 
 
 
 
 
 
 
 
M
e
.
C
o
d
_
F
o
r
n
e
c
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



 
 
 
 
 
 
 
 
M
e
.
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
c
o
m
p
r
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



 
 
 
 
 
 
 
 
M
e
.
L
a
n
c
a
r
E
m
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
_
c
o
m
p
r
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



 
 
 
 
 
 
 
 
M
e
.
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
 
F
a
l
s
e



 
 
 
 
 
 
 
 



 
 
 
 
 
 
 
 
I
f
 
M
e
.
L
a
n
c
a
r
E
m
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
_
c
o
m
p
r
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
c
o
n
t
a
s
a
p
a
g
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
p
a
g
a
r
!
D
t
1
V
e
n
c
i
m
e
n
t
o
_
c
o
n
t
a
a
P
a
g
a
r
 
=
 
M
e
.
D
t
E
m
i
s
s
a
o
_
c
o
m
p
r
a
s



 
 
 
 
 
 
 
 
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
c
o
n
t
a
s
a
p
a
g
a
r
!
V
a
l
o
r
_
c
o
n
t
a
a
P
a
g
a
r
 
=
 
M
e
.
t
x
t
V
a
l
o
r
T
o
t
a
l
C
o
m
p
r
a
s



 
 
 
 
 
 
 
 
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
c
o
n
t
a
s
a
p
a
g
a
r
!
t
x
t
_
i
n
t
e
r
v
a
l
o
 
=
 
"
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
p
a
g
a
r
!
t
x
t
_
q
t
d
I
n
t
e
r
v
a
l
o
 
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
p
a
g
a
r
!
Q
t
d
P
a
r
c
e
l
a
_
c
o
n
t
a
a
P
a
g
a
r
 
=
 
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
p
a
g
a
r
!
P
l
a
n
o
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
c
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
C
l
i
e
n
t
e
_
F
L
M
]
=
1
2
"
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
c
o
n
t
a
s
a
p
a
g
a
r
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
_
c
o
n
t
a
a
P
a
g
a
r
 
=
 
M
e
.
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
c
o
m
p
r
a
s



 
 
 
 
 
 
 
 
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
c
o
n
t
a
s
a
p
a
g
a
r
!
t
x
t
_
q
t
d
I
n
t
e
r
v
a
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
f
r
m
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
p
a
g
a
r
!
t
x
t
_
i
n
t
e
r
v
a
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
f
r
m
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
p
a
g
a
r
!
V
a
l
o
r
_
c
o
n
t
a
a
P
a
g
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
f
r
m
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
p
a
g
a
r
!
D
t
1
V
e
n
c
i
m
e
n
t
o
_
c
o
n
t
a
a
P
a
g
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
 
i
m
p
r
i
m
i
r
 
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
c
o
m
p
r
a
s
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
c
o
m
p
r
a
s
 
=
"
 
&
 
c
o
d
_
c
o
m
p
r
a
s
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
r
o
t
_
c
o
m
p
r
a
s
"



 
 
 
 
 
 
 
 
 
 
 
 
E
n
d
 
I
f



 
 
 
 
 
 
 
 



 
 
 
 
 
 
 
 
V
a
r
S
a
l
v
a
r
 
=
 
0



 
 
 
 



 
 
 
 
 
 
 
 
E
l
s
e






 
 
 
 
 
 
 
 
M
e
.
L
i
s
t
a
C
o
m
p
r
a
r
_
c
o
m
p
r
a
s
 
=
 
-
1



 
 
 
 
 
 
 
 
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



 
 
 
 
 
 
 
 
M
s
g
B
o
x
 
"
L
i
s
t
a
 
d
e
 
C
o
m
p
r
a
s
 
s
a
l
v
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
e
.
C
x
L
i
s
t
a
C
o
m
p
r
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
 
2
1
0
5
 
T
h
e
n



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
d
d
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
m
p
r
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



 
 
 
 
 
 
 
 
M
e
.
D
t
E
m
i
s
s
a
o
_
c
o
m
p
r
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



 
 
 
 
 
 
 
 
M
e
.
N
u
m
e
r
o
P
e
d
i
d
o
_
c
o
m
p
r
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



 
 
 
 
 
 
 
 
M
e
.
C
o
d
_
F
o
r
n
e
c
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



 
 
 
 
 
 
 
 
M
e
.
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
c
o
m
p
r
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



 
 
 
 
 
 
 
 
M
e
.
L
a
n
c
a
r
E
m
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
_
c
o
m
p
r
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



 
 
 
 
 
 
 
 
M
e
.
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
 
T
r
u
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
L
i
s
t
a
C
o
m
p
r
a
r
_
c
o
m
p
r
a
s
 
=
 
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
 
E
n
t
r
a
d
a
 
n
o
 
E
s
t
o
q
u
e
 
j
á
 
c
o
n
c
l
u
í
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
M
e
.
D
t
E
m
i
s
s
a
o
_
c
o
m
p
r
a
s
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
 
c
a
m
p
o
 
D
a
t
a
 
d
e
 
E
m
i
s
s
ã
o
 
n
ã
o
 
p
o
d
e
 
f
i
c
a
r
 
v
a
z
i
o
.
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
p
r
o
d
u
t
o
s
_
c
o
m
p
r
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
i
s
t
a
C
o
m
p
r
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
3
1
4
 
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
 
V
a
r
S
a
l
v
a
r
 
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
r
o
t
_
c
o
m
p
r
a
s
!
L
i
s
t
a
C
o
m
p
r
a
r
_
c
o
m
p
r
a
s
 
=
 
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
 
E
n
t
r
a
d
a
 
n
o
 
E
s
t
o
q
u
e
 
j
á
 
c
o
n
c
l
u
í
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



 
 
 
 
'
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
 
L
a
n
c
a
r
E
m
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
_
c
o
m
p
r
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
 
M
e
.
L
i
s
t
a
C
o
m
p
r
a
r
_
c
o
m
p
r
a
s
 
=
 
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






 
 
 
 
I
f
 
M
e
.
L
a
n
c
a
r
E
m
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
_
c
o
m
p
r
a
s
 
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
n
v
i
a
r
 
e
s
t
a
 
N
o
t
a
 
p
a
r
a
 
o
 
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
N
ã
o
 
e
s
q
u
e
ç
a
 
d
e
 
I
n
f
o
r
m
a
r
 
o
 
p
a
g
a
m
e
n
t
o
 
d
a
 
m
e
s
m
a
 
a
p
ó
s
 
o
 
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
.
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
N
o
 
T
h
e
n



 
 
 
 
 
 
 
 
M
e
.
L
a
n
c
a
r
E
m
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
_
c
o
m
p
r
a
s
 
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
 
L
a
n
c
a
r
E
m
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
_
c
o
m
p
r
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
L
a
n
c
a
r
E
m
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
_
c
o
m
p
r
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
 
m
a
r
c
a
d
a
,
 
a
s
 
c
o
m
p
r
a
s
 
l
i
s
t
a
d
a
s
 
n
e
s
t
a
 
l
i
s
t
a
 
v
ã
o
 
p
a
r
a
 
o
 
F
l
u
x
o
 
d
e
 
C
a
i
x
a
 
d
a
 
e
m
p
r
e
s
a
 
n
o
 
m
ê
s
 
d
a
 
D
a
t
a
 
d
e
 
E
m
i
s
s
ã
o
 
d
a
 
n
o
t
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
 
D
e
s
m
a
r
c
a
d
a
,
 
e
s
t
e
 
c
a
d
a
s
t
r
o
 
n
ã
o
 
s
e
r
á
 
l
a
n
ç
a
d
o
 
n
o
 
F
l
u
x
o
 
d
e
 
C
a
i
x
a
 
d
a
 
e
m
p
r
e
s
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
 
L
i
s
t
a
C
o
m
p
r
a
r
_
c
o
m
p
r
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
 
L
i
s
t
a
C
o
m
p
r
a
r
_
c
o
m
p
r
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
 
D
E
S
M
A
R
C
A
D
A
,
 
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
 
l
i
s
t
a
d
o
s
 
n
e
s
t
a
 
c
o
m
p
r
a
 
s
e
r
ã
o
 
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
 
e
s
t
o
q
u
e
 
e
 
e
s
t
a
 
a
ç
ã
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
a
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



 
 
 
 
L
i
s
t
a
C
o
m
p
r
a
r
_
c
o
m
p
r
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












'
F
u
n
c
t
i
o
n
 
L
a
n
c
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






'
 
 
 
 
 
 
 
 
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



'
 
 
 
 
 
 
 
 
 
 
 
 
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
c
o
n
t
a
A
p
a
g
a
r
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



'



'
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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



'
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
V
a
r
C
o
d
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
c
o
n
t
a
a
P
a
g
a
r
"
)



'
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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



'
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
c
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
C
l
i
e
n
t
e
_
F
L
M
]
=
1
2
"
)



'
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
T
i
p
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
T
i
p
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



'
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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



'
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
N
u
m
D
o
c
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
N
u
m
D
o
c
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



'
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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



'
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
 
M
e
.
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



 
'
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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



'
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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



'
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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



'



'
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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



'



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
'
r
s
t
.
C
l
o
s
e



 
'
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
d
 
F
u
n
c
t
i
o
n