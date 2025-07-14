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
A
l
t
e
r
a
S
t
a
t
u
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
a
l
t
e
r
a
s
t
a
t
u
s
o
s
2
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
C
h
a
m
a
r
C
l
i
e
n
t
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
H
r
_
A
b
e
r
t
u
r
a
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
E
s
t
e
 
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
 
t
e
m
 
u
m
 
A
g
e
n
d
a
m
e
n
t
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
 
C
h
a
m
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
P
a
i
n
e
l
C
h
a
m
a
C
l
i
e
n
t
e
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
P
C
C
"
)
 
=
 
M
e
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



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
D
t
H
r
C
h
a
m
a
d
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
C
h
a
m
a
d
o
 
E
n
v
i
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
P
a
i
n
e
l
C
h
a
m
a
C
l
i
e
n
t
e
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
P
C
C
"
)
 
=
 
M
e
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



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
D
t
H
r
C
h
a
m
a
d
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
C
h
a
m
a
d
o
 
E
n
v
i
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
2
2
 
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
h
a
m
a
d
o
 
j
á
 
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
r
á
 
r
e
a
l
i
z
a
d
a
 
u
m
a
 
n
o
v
a
 
C
h
a
m
a
d
a
 
n
o
 
P
a
i
n
e
l
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
P
a
i
n
e
l
C
h
a
m
a
C
l
i
e
n
t
e
.
*
,
 
t
b
l
_
P
a
i
n
e
l
C
h
a
m
a
C
l
i
e
n
t
e
.
C
o
d
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
P
C
C
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
P
a
i
n
e
l
C
h
a
m
a
C
l
i
e
n
t
e
 
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
P
a
i
n
e
l
C
h
a
m
a
C
l
i
e
n
t
e
.
C
o
d
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
P
C
C
)
"
 
_



&
 
"
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
C
o
n
t
r
o
l
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
P
o
r
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
]
!
[
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
P
a
i
n
e
l
C
h
a
m
a
C
l
i
e
n
t
e
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
P
C
C
"
)
 
=
 
M
e
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



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
D
t
H
r
C
h
a
m
a
d
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
C
o
n
s
u
l
t
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
 
E
r
r






I
f
 
M
e
.
S
t
a
t
u
s
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
2
6
"
)
)
 
T
h
e
n






 
 
 
 
I
f
 
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
F
L
M
]
=
"
 
&
 
2
9
)
,
 
0
)
 
=
 
"
f
r
m
_
d
a
d
o
s
c
o
n
s
u
l
t
a
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
O
p
e
n
F
o
r
m
 
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
F
L
M
]
=
"
 
&
 
2
9
)
,
 
0
)
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
C
o
d
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
 
M
e
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
d
a
d
o
s
c
o
n
s
u
l
t
a
!
C
o
d
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
c
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
F
L
M
]
=
"
 
&
 
2
9
)
,
 
0
)
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
]
=
"
 
&
 
M
e
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
P
a
r
a
 
A
b
r
i
r
 
o
s
 
D
a
d
o
s
 
d
o
 
A
t
e
n
d
i
m
e
n
t
o
,
 
p
r
i
m
e
i
r
o
 
a
l
t
e
r
e
 
o
 
S
t
a
t
u
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






E
r
r
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
1
0
2



 
 
 
 
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
 
c
o
n
f
i
g
u
r
a
d
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
 
c
o
m
 
s
e
u
 
a
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
 
d
o
 
S
i
s
t
e
m
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
 
C
o
m
a
n
d
o
8
8
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
r
e
s
u
m
o
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
c
o
n
t
r
o
l
o
r
d
e
m
s
e
r
v
i
c
o
!
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
 
2
0
0
0
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
T
i
m
e
r
(
)



'
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
 
S
t
a
t
u
s
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
 
S
t
a
t
u
s
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
 
"
5
"
 
T
h
e
n



D
t
H
r
_
F
i
n
a
l
i
z
a
c
a
o
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
 
N
o
w
(
)



 
 
 
 
E
l
s
e



 
 
 
 
 
 
 
 
I
f
 
S
t
a
t
u
s
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
 
"
8
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



 
 
 
 
 
 
 
 
S
t
a
t
u
s
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
 
"
3
"



 
 
 
 
 
 
 
 
 
 
 
 
E
l
s
e



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
I
f
 
S
t
a
t
u
s
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
 
"
6
"
 
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
 
f
i
n
a
l
i
z
a
r
 
e
s
t
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
t
H
r
_
F
i
n
a
l
i
z
a
c
a
o
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
 
N
o
w
(
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
e
s
t
e
 
c
a
s
o
,
 
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
 
s
e
r
á
 
c
o
l
o
c
a
d
a
 
n
o
 
S
t
a
t
u
s
 
E
M
 
A
N
D
A
M
E
N
T
O
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



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
S
t
a
t
u
s
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
 
"
3
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



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
'
S
e
m
 
a
ç
ã
o
.



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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