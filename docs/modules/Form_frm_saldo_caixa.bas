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
O
p
 
<
 
0
 
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
S
a
l
d
o
O
p
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
 
i
n
f
o
r
m
e
 
o
 
v
a
l
o
r
 
q
u
e
 
t
e
m
 
e
m
 
m
ã
o
s
,
 
I
N
C
L
U
I
N
D
O
 
O
 
T
R
O
C
O
 
e
 
a
s
 
V
e
n
d
a
s
 
q
u
e
 
n
ã
o
 
s
ã
o
 
d
a
 
C
A
I
X
A
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






 
 
 
 
I
f
 
M
e
.
v
a
l
o
r
_
c
a
i
x
a
 
<
>
 
0
 
A
n
d
 
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
e
r
s
o
n
a
l
i
z
a
d
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
P
o
r
 
f
a
v
o
r
,
 
i
n
f
o
r
m
e
 
a
 
j
u
s
t
i
f
i
c
a
t
i
v
a
 
d
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
 
d
o
 
C
a
i
x
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
D
I
F
E
R
E
N
Ç
A
 
N
O
 
C
A
I
X
A
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
F
o
r
m
O
r
i
g
e
m
 
=
 
"
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
"
 
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
T
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
 
I
I
f
(
v
a
l
o
r
_
c
a
i
x
a
 
>
 
0
,
 
"
C
r
é
d
i
t
o
"
,
 
"
D
é
b
i
t
o
"
)



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
d
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
 
D
a
t
e



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
d
e
s
c
r
i
c
a
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
F
e
c
h
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
"



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
c
a
i
x
a
"
)
 
=
 
I
I
f
(
v
a
l
o
r
_
c
a
i
x
a
 
>
=
 
0
,
 
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
t
b
l
_
c
a
d
_
C
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
]
!
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
t
b
l
_
c
a
d
_
C
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
]
!
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
 
1
0
)
)
,
 
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
t
b
l
_
c
a
d
_
C
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
]
!
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
t
b
l
_
c
a
d
_
C
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
]
!
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
 
9
)
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
 
I
I
f
(
v
a
l
o
r
_
c
a
i
x
a
 
>
=
 
0
,
 
v
a
l
o
r
_
c
a
i
x
a
,
 
v
a
l
o
r
_
c
a
i
x
a
 
*
 
(
-
1
)
)



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
x
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
t
b
l
_
c
a
d
_
C
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
]
!
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
t
b
l
_
c
a
d
_
C
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
]
!
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
T
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
 
I
I
f
(
v
a
l
o
r
_
c
a
i
x
a
 
>
 
0
,
 
"
D
é
b
i
t
o
"
,
 
"
C
r
é
d
i
t
o
"
)



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
d
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
 
D
a
t
e



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
d
e
s
c
r
i
c
a
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
F
e
c
h
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
"



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
c
a
i
x
a
"
)
 
=
 
I
I
f
(
v
a
l
o
r
_
c
a
i
x
a
 
>
=
 
0
,
 
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
t
b
l
_
c
a
d
_
C
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
]
!
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
t
b
l
_
c
a
d
_
C
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
]
!
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
 
1
0
)
)
,
 
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
t
b
l
_
c
a
d
_
C
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
]
!
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
t
b
l
_
c
a
d
_
C
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
]
!
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
 
9
)
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
 
I
I
f
(
v
a
l
o
r
_
c
a
i
x
a
 
>
=
 
0
,
 
v
a
l
o
r
_
c
a
i
x
a
,
 
v
a
l
o
r
_
c
a
i
x
a
 
*
 
(
-
1
)
)



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
t
b
l
_
c
a
d
_
C
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
]
!
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
t
b
l
_
c
a
d
_
C
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
]
!
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
e
n
v
i
a
r
 
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



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
d
t
c
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
"
)
 
=
 
M
e
.
t
x
t
P
e
r
s
o
n
a
l
i
z
a
d
o



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
v
a
l
o
r
_
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
v
a
l
o
r
_
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
C
o
d
_
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
M
a
t
F
u
n
c



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
S
e
s
s
a
o
C
a
i
x
a
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






 
 
 
 
 
 
 
 
I
f
 
M
e
.
F
o
r
m
O
r
i
g
e
m
 
=
 
"
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
"
 
T
h
e
n



 
 
 
 
 
 
 
 



 
 
 
 
 
 
 
 
'
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
"
 
_



 
 
 
 
 
 
 
 
'
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



 
 
 
 
 
 
 
 
'
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
d
t
c
a
i
x
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
d
a
t
a
c
a
i
x
a
]
"
,
 
"
C
s
_
T
b
l
C
a
i
x
a
_
I
n
d
i
v
i
d
u
a
l
"
,
 
"
[
M
a
t
F
u
n
c
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
x
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
)






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
d
t
c
a
i
x
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
d
a
t
a
c
a
i
x
a
]
"
,
 
"
C
s
_
T
b
l
C
a
i
x
a
_
I
n
d
i
v
i
d
u
a
l
"
,
 
"
[
M
a
t
F
u
n
c
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
x
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
)






 
 
 
 
 
 
 
 
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
!
d
t
c
a
i
x
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
d
a
t
a
c
a
i
x
a
]
"
,
 
"
C
s
_
T
b
l
C
a
i
x
a
_
I
n
d
i
v
i
d
u
a
l
"
,
 
"
[
M
a
t
F
u
n
c
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
!
C
x
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
)






 
 
 
 
 
 
 
 



 
 
 
 
 
 
 
 
E
n
d
 
I
f






 
 
 
 
 
 
 
 
M
s
g
B
o
x
 
"
C
a
i
x
a
 
F
E
C
H
A
D
O
 
c
o
m
 
Ê
x
i
t
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
s
a
l
d
o
_
c
a
i
x
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
0
4
6
 
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
 
t
e
x
t
o
 
d
i
g
i
t
a
d
o
 
é
 
m
u
i
t
o
 
g
r
a
n
d
e
 
p
a
r
a
 
c
a
b
e
r
 
n
o
 
c
a
m
p
o
 
J
u
s
t
i
f
i
c
a
t
i
v
a
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
 
t
x
t
S
a
l
d
o
O
p
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
 
E
r
r






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
C
a
i
x
a
D
i
n
h
e
i
r
o
 
=
 
I
I
f
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
s
a
l
d
o
D
i
n
h
e
i
r
o
 
>
 
0
,
 
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
O
p
 
-
 
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
s
a
l
d
o
D
i
n
h
e
i
r
o
,
 
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
O
p
 
+
 
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
s
a
l
d
o
D
i
n
h
e
i
r
o
)






I
f
 
M
e
.
v
a
l
o
r
_
c
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
t
x
t
P
e
r
s
o
n
a
l
i
z
a
d
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
P
e
r
s
o
n
a
l
i
z
a
d
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
8
6
 
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
 
2
4
5
0
 
T
h
e
n






M
e
.
v
a
l
o
r
_
c
a
i
x
a
 
=
 
I
I
f
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
!
t
x
t
_
s
a
l
d
o
D
i
n
h
e
i
r
o
 
>
 
0
,
 
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
O
p
 
-
 
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
!
t
x
t
_
s
a
l
d
o
D
i
n
h
e
i
r
o
,
 
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
O
p
 
+
 
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
!
t
x
t
_
s
a
l
d
o
D
i
n
h
e
i
r
o
)



I
f
 
M
e
.
v
a
l
o
r
_
c
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
t
x
t
P
e
r
s
o
n
a
l
i
z
a
d
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
P
e
r
s
o
n
a
l
i
z
a
d
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
e
u
 
C
a
i
x
a
 
e
s
t
á
 
s
e
n
d
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
 
v
b
C
r
L
f
 
&
 
"
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
 
F
e
c
h
a
m
e
n
t
o
 
d
o
 
s
e
u
 
C
a
i
x
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
R
e
l
a
t
ó
r
i
o
 
d
o
 
C
a
i
x
a
 
"
 
&
 
D
a
t
e
 
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
 
L
o
g
a
d
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
T
o
t
a
l
 
e
m
 
V
e
n
d
a
s
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
o
t
a
l
V
e
n
d
a
s
 
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
V
e
n
d
a
s
 
s
o
m
e
n
t
e
 
e
m
 
D
i
n
h
e
i
r
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
V
e
n
d
a
s
D
i
n
h
e
i
r
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
T
o
t
a
l
 
R
e
c
e
b
i
d
o
 
d
e
 
C
l
i
e
n
t
e
s
 
c
o
m
 
d
í
v
i
d
a
s
 
à
 
P
r
a
z
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
T
o
t
a
l
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
T
o
t
a
l
 
R
e
c
e
b
i
d
o
 
d
e
 
C
l
i
e
n
t
e
s
 
c
o
m
 
d
í
v
i
d
a
s
 
à
 
P
r
a
z
o
,
 
p
a
g
o
 
e
m
 
D
i
n
h
e
i
r
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
T
o
t
a
l
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
i
n
h
e
i
r
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
S
a
l
d
o
 
d
o
s
 
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
s
 
d
e
 
C
a
i
x
a
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
S
a
l
d
o
 
G
e
r
a
l
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
s
a
l
d
o
G
e
r
a
l
 
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
S
a
l
d
o
 
e
m
 
D
i
n
h
e
i
r
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
s
a
l
d
o
D
i
n
h
e
i
r
o









 
 
 
 
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



 
 
 
 
'
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
 
t
x
t
S
a
l
d
o
O
p
O
u
t
r
a
s
F
P
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
 
E
r
r






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
C
a
i
x
a
O
u
t
r
a
s
F
P
 
=
 
I
I
f
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
S
a
l
d
o
O
u
t
r
a
s
F
P
 
>
 
0
,
 
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
O
p
O
u
t
r
a
s
F
P
 
-
 
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
S
a
l
d
o
O
u
t
r
a
s
F
P
,
 
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
O
p
O
u
t
r
a
s
F
P
 
+
 
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
S
a
l
d
o
O
u
t
r
a
s
F
P
)






I
f
 
M
e
.
v
a
l
o
r
_
c
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
t
x
t
P
e
r
s
o
n
a
l
i
z
a
d
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
P
e
r
s
o
n
a
l
i
z
a
d
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
8
6
 
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
 
2
4
5
0
 
T
h
e
n






M
e
.
v
a
l
o
r
_
c
a
i
x
a
 
=
 
I
I
f
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
!
t
x
t
S
a
l
d
o
O
u
t
r
a
s
F
P
 
>
 
0
,
 
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
O
p
O
u
t
r
a
s
F
P
 
-
 
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
!
t
x
t
S
a
l
d
o
O
u
t
r
a
s
F
P
,
 
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
O
p
O
u
t
r
a
s
F
P
 
+
 
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
!
t
x
t
S
a
l
d
o
O
u
t
r
a
s
F
P
)



I
f
 
M
e
.
v
a
l
o
r
_
c
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
t
x
t
P
e
r
s
o
n
a
l
i
z
a
d
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
P
e
r
s
o
n
a
l
i
z
a
d
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