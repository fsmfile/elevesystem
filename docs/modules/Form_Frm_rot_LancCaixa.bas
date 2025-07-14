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
L
a
n
c
C
a
i
x
a









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
 
e
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
C
o
d
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
)
 
O
r
 
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
 
=
 
"
"
 
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
)
 
O
r
 
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
 
=
 
"
"
 
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
)
 
O
r
 
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
 
=
 
"
"
 
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
)
 
O
r
 
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
 
=
 
"
"
 
O
r
 
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
 
=
 
"
"
 
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
P
o
r
 
f
a
v
o
r
,
 
c
o
m
p
l
e
t
e
 
s
e
u
 
c
a
d
a
s
t
r
o
 
a
n
t
e
s
 
d
e
 
S
a
l
v
a
r
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






E
l
s
e






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



 
 
 
 
C
a
l
l
 
S
a
l
v
a
D
a
d
o
s



 
 
 
 



 
 
 
 
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
 
I
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
 
=
 
"
"



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
'
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
 
=
 
"
"



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
 
=
 
"
"



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
 
=
 
"
"



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
 
=
 
"
"



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
 
=
 
"
"



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
 
=
 
"
"






E
n
d
 
I
f






'
A
t
u
a
l
i
z
a
r
 
L
a
n
c
C
a
i
x
a
 
n
a
 
t
e
l
a
 
4
3






'
C
a
l
l
 
U
p
d
a
t
e
T
b
l
T
e
m
p
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
s
a
l
d
o
c
a
i
x
a
_
i
n
d
i
v
i
d
u
a
l
!
C
s
_
T
o
d
o
s
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
x
i
t
 
S
u
b






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
 
O
r
 
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
s
 
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
V
a
l
o
r
;
 
D
a
t
a
;
 
T
i
p
o
 
d
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
;
 
H
i
s
t
ó
r
i
c
o
;
 
P
l
a
n
o
 
d
e
 
C
o
n
t
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
F
i
l
t
r
a
r
C
a
t
e
g
o
r
i
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
P
a
g
a
r
C
o
n
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
i
s
t
a
c
o
n
t
a
s
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
 
C
o
n
f
i
g
8
 
=
 
0
 
T
h
e
n



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
 
F
o
r
m
_
K
e
y
D
o
w
n
(
K
e
y
C
o
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
,
 
S
h
i
f
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
)



 
 
 
 
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
 
K
e
y
C
o
d
e



 
 
 
 
C
a
s
e
 
v
b
K
e
y
R
e
t
u
r
n



 
 
 
 
K
e
y
C
o
d
e
 
=
 
0



 
 
 
 
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
 
l
o
c
a
l
i
z
a
C
a
t
e
g
o
r
i
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
.
R
e
q
u
e
r
y



I
f
 
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
 
=
 
"
C
r
é
d
i
t
o
"
 
T
h
e
n



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
N
o
m
e
A
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
C
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
"
 
&
 
6
)



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









F
u
n
c
t
i
o
n
 
S
a
l
v
a
D
a
d
o
s
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
G
r
a
v
a
 
d
a
d
o
s
 
n
a
 
t
a
b
e
l
a
 
d
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
 
d
e
 
C
a
i
x
a



 
 
 
 
 
 
 
 
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
C
o
d
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
A
t
u
a
l
i
z
a
 
d
a
d
o
s
 
n
o
 
C
A
I
X
A






I
f
 
I
s
L
o
a
d
e
d
(
f
r
m
_
s
a
l
d
o
c
a
i
x
a
_
i
n
d
i
v
i
d
u
a
l
)
 
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
 
T
M
P
_
S
a
l
d
o
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
*
 
F
R
O
M
 
T
M
P
_
S
a
l
d
o
L
a
n
c
C
a
i
x
a
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
 
T
M
P
_
S
a
l
d
o
L
a
n
c
C
a
i
x
a
 
(
 
C
o
d
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
,
 
V
a
l
o
r
C
r
e
d
i
t
o
,
 
V
a
l
o
r
D
e
b
i
t
o
,
 
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
,
 
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
,
"
 
_



&
 
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
,
 
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
,
 
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
,
 
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
.
C
o
d
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
,
 
c
s
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
_
C
r
e
d
i
t
o
.
V
a
l
o
r
c
r
e
d
i
t
o
 
A
S
 
V
a
l
o
r
C
r
e
d
i
t
o
,
 
c
s
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
_
D
e
b
i
t
o
.
V
a
l
o
r
d
e
b
i
t
o
 
A
S
 
V
a
l
o
r
D
e
b
i
t
o
,
"
 
_



&
 
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
,
 
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
,
 
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
.
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
,
"
 
_



&
 
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
,
 
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
.
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
,
 
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
"
 
_



&
 
"
 
F
R
O
M
 
(
c
s
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
_
C
r
e
d
i
t
o
 
R
I
G
H
T
 
J
O
I
N
 
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
 
O
N
 
c
s
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
_
C
r
e
d
i
t
o
.
C
o
d
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
 
=
 
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
.
C
o
d
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
)
 
L
E
F
T
"
 
_



&
 
"
 
J
O
I
N
 
c
s
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
_
D
e
b
i
t
o
 
O
N
 
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
.
C
o
d
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
 
=
 
c
s
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
_
D
e
b
i
t
o
.
C
o
d
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
 
_



&
 
"
 
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
)
=
[
F
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
s
a
l
d
o
c
a
i
x
a
_
i
n
d
i
v
i
d
u
a
l
]
!
[
t
x
t
_
d
a
t
a
]
)
)
;
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
s
a
l
d
o
c
a
i
x
a
_
i
n
d
i
v
i
d
u
a
l
!
C
s
_
T
o
d
o
s
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
s
a
l
d
o
c
a
i
x
a
_
i
n
d
i
v
i
d
u
a
l
!
C
s
_
T
o
t
a
l
P
o
r
F
o
r
m
a
P
a
g
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
s
a
l
d
o
c
a
i
x
a
_
i
n
d
i
v
i
d
u
a
l
.
R
e
c
a
l
c






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
s
a
l
d
o
c
a
i
x
a
_
i
n
d
i
v
i
d
u
a
l
!
t
x
t
_
D
a
t
a
 
<
 
D
a
t
e
 
O
r
 
I
s
N
u
l
l
(
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
s
a
l
d
o
c
a
i
x
a
_
i
n
d
i
v
i
d
u
a
l
!
t
x
t
_
D
a
t
a
)
 
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
s
a
l
d
o
c
a
i
x
a
_
i
n
d
i
v
i
d
u
a
l
!
b
t
n
_
f
e
c
h
a
r
C
a
i
x
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
s
a
l
d
o
c
a
i
x
a
_
i
n
d
i
v
i
d
u
a
l
!
b
t
n
_
f
e
c
h
a
r
C
a
i
x
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
 
F
u
n
c
t
i
o
n






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
 
s
e
 
h
á
 
a
l
g
u
m
 
C
a
m
p
o
 
q
u
e
 
v
o
c
ê
 
n
ã
o
 
t
e
n
h
a
 
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
o
d
 
d
o
 
E
r
r
o
:
 
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
 
=
 
0
 
T
h
e
n



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