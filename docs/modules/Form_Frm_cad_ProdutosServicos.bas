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



D
i
m
 
T
i
p
o
M
s
g
 
A
s
 
S
t
r
i
n
g



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









 
 
 
 
D
i
m
 
d
b
 
A
s
 
D
A
O
.
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
 
r
s
 
A
s
 
D
A
O
.
R
e
c
o
r
d
s
e
t






 
 
 
 
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
!
N
o
m
e
_
p
r
o
d
S
e
r
v
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
I
n
s
i
r
a
 
o
s
 
d
a
d
o
s
 
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
C
l
i
e
n
t
e
 
n
ã
o
 
i
n
f
o
r
m
a
d
o
"



 
 
 
 
 
 
 
 
M
e
!
N
o
m
e
_
p
r
o
d
S
e
r
v
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
x
i
t
 
S
u
b



 
 
 
 
E
n
d
 
I
f






 
 
 
 
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
!
C
o
d
_
P
r
o
d
S
e
r
v
)
 
O
r
 
M
e
.
C
o
d
_
P
r
o
d
S
e
r
v
 
=
 
"
"
 
T
h
e
n



 
 
 
 
 
 
 
 
S
e
t
 
r
s
 
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
S
E
L
E
C
T
 
*
 
F
R
O
M
 
t
b
l
_
c
a
d
_
p
r
o
d
s
e
r
v
;
"
)






 
 
 
 
 
 
 
 
r
s
.
A
d
d
N
e
w



 
 
 
 
 
 
 
 
T
i
p
o
M
s
g
 
=
 
"
C
a
d
a
s
t
r
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
 
"



 
 
 
 
E
l
s
e



 
 
 
 
 
 
 
 
S
e
t
 
r
s
 
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
S
E
L
E
C
T
 
*
 
F
R
O
M
 
t
b
l
_
c
a
d
_
p
r
o
d
s
e
r
v
 
W
H
E
R
E
 
C
o
d
_
P
r
o
d
S
e
r
v
 
=
 
"
 
&
 
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
)






 
 
 
 
 
 
 
 
T
i
p
o
M
s
g
 
=
 
"
A
l
t
e
r
a
ç
ã
o
 
R
e
a
l
i
z
a
d
a
 
"



 
 
 
 
 
 
 
 
r
s
.
E
d
i
t






 
 
 
 
E
n
d
 
I
f



 
 
 
 
M
e
!
C
o
d
_
P
r
o
d
S
e
r
v
 
=
 
r
s
!
C
o
d
_
P
r
o
d
S
e
r
v



 
 
 
 
r
s
!
C
o
d
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
 
=
 
I
I
f
(
M
e
!
C
o
d
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
!
C
o
d
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
,
 
r
s
!
C
o
d
_
P
r
o
d
S
e
r
v
,
 
M
e
!
C
o
d
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



 
 
 
 
r
s
!
C
o
d
B
a
r
r
a
s
 
=
 
I
I
f
(
I
s
N
u
l
l
(
M
e
!
C
o
d
B
a
r
r
a
s
)
 
=
 
-
1
 
O
r
 
I
s
E
r
r
o
r
(
M
e
!
C
o
d
B
a
r
r
a
s
)
 
=
 
-
1
 
O
r
 
M
e
!
C
o
d
B
a
r
r
a
s
 
=
 
"
"
,
 
N
u
l
l
,
 
M
e
!
C
o
d
B
a
r
r
a
s
)



 
 
 
 
r
s
!
G
r
u
p
o
_
p
r
o
d
S
e
r
v
 
=
 
M
e
!
T
i
p
o
_
p
r
o
d
S
e
r
v



 
 
 
 
r
s
!
S
u
b
G
r
u
p
o
_
p
r
o
d
s
e
r
v
 
=
 
M
e
!
N
o
m
e
_
t
i
p
o
_
p
r
o
d
S
e
r
v



 
 
 
 
r
s
!
R
e
f
_
p
r
o
d
s
e
r
v
 
=
 
M
e
!
R
e
f
_
p
r
o
d
s
e
r
v



 
 
 
 
r
s
!
N
o
m
e
_
p
r
o
d
S
e
r
v
 
=
 
M
e
!
N
o
m
e
_
p
r
o
d
S
e
r
v



 
 
 
 
r
s
!
P
r
e
c
o
C
u
s
t
o
_
p
r
o
d
s
e
r
v
 
=
 
I
I
f
(
I
s
N
u
l
l
(
M
e
!
P
r
e
c
o
C
u
s
t
o
_
p
r
o
d
s
e
r
v
)
 
=
 
-
1
 
O
r
 
I
s
E
r
r
o
r
(
M
e
!
P
r
e
c
o
C
u
s
t
o
_
p
r
o
d
s
e
r
v
)
 
=
 
-
1
 
O
r
 
M
e
!
P
r
e
c
o
C
u
s
t
o
_
p
r
o
d
s
e
r
v
 
=
 
"
"
,
 
0
,
 
M
e
!
P
r
e
c
o
C
u
s
t
o
_
p
r
o
d
s
e
r
v
)



 
 
 
 
r
s
!
O
u
t
r
o
s
c
u
s
t
o
s
_
p
r
o
d
s
e
r
v
 
=
 
I
I
f
(
I
s
N
u
l
l
(
M
e
!
O
u
t
r
o
s
c
u
s
t
o
s
_
p
r
o
d
s
e
r
v
)
 
=
 
-
1
 
O
r
 
I
s
E
r
r
o
r
(
M
e
!
O
u
t
r
o
s
c
u
s
t
o
s
_
p
r
o
d
s
e
r
v
)
 
=
 
-
1
 
O
r
 
M
e
!
O
u
t
r
o
s
c
u
s
t
o
s
_
p
r
o
d
s
e
r
v
 
=
 
"
"
,
 
0
,
 
M
e
!
O
u
t
r
o
s
c
u
s
t
o
s
_
p
r
o
d
s
e
r
v
)



 
 
 
 
r
s
!
p
r
e
c
o
V
e
n
d
a
_
p
r
o
d
s
e
r
v
 
=
 
I
I
f
(
I
s
N
u
l
l
(
M
e
!
p
r
e
c
o
V
e
n
d
a
_
p
r
o
d
s
e
r
v
)
 
=
 
-
1
 
O
r
 
I
s
E
r
r
o
r
(
M
e
!
p
r
e
c
o
V
e
n
d
a
_
p
r
o
d
s
e
r
v
)
 
=
 
-
1
 
O
r
 
M
e
!
p
r
e
c
o
V
e
n
d
a
_
p
r
o
d
s
e
r
v
 
=
 
"
"
,
 
0
,
 
M
e
!
p
r
e
c
o
V
e
n
d
a
_
p
r
o
d
s
e
r
v
)



 
 
 
 
r
s
!
M
a
r
g
e
m
D
e
L
u
c
r
o
_
p
r
o
d
s
e
r
v
 
=
 
L
e
f
t
(
I
I
f
(
I
s
N
u
l
l
(
M
e
!
M
a
r
g
e
m
D
e
L
u
c
r
o
_
p
r
o
d
s
e
r
v
)
 
=
 
-
1
 
O
r
 
I
s
E
r
r
o
r
(
M
e
!
M
a
r
g
e
m
D
e
L
u
c
r
o
_
p
r
o
d
s
e
r
v
)
 
=
 
-
1
 
O
r
 
M
e
!
M
a
r
g
e
m
D
e
L
u
c
r
o
_
p
r
o
d
s
e
r
v
 
=
 
"
"
,
 
0
,
 
M
e
!
M
a
r
g
e
m
D
e
L
u
c
r
o
_
p
r
o
d
s
e
r
v
)
,
 
5
)



 
 
 
 
r
s
!
M
a
r
g
e
m
M
i
n
i
m
a
_
p
r
o
d
S
e
r
v
 
=
 
L
e
f
t
(
I
I
f
(
I
s
N
u
l
l
(
M
e
!
M
a
r
g
e
m
M
i
n
i
m
a
_
p
r
o
d
S
e
r
v
)
 
=
 
-
1
 
O
r
 
I
s
E
r
r
o
r
(
M
e
!
M
a
r
g
e
m
M
i
n
i
m
a
_
p
r
o
d
S
e
r
v
)
 
=
 
-
1
 
O
r
 
M
e
!
M
a
r
g
e
m
M
i
n
i
m
a
_
p
r
o
d
S
e
r
v
 
=
 
"
"
,
 
0
,
 
M
e
!
M
a
r
g
e
m
M
i
n
i
m
a
_
p
r
o
d
S
e
r
v
)
,
 
5
)



 
 
 
 
r
s
!
E
s
t
o
q
u
e
M
i
n
i
m
o
_
p
r
o
d
S
e
r
v
 
=
 
M
e
!
E
s
t
o
q
u
e
M
i
n
i
m
o
_
p
r
o
d
S
e
r
v



 
 
 
 
r
s
!
M
a
r
c
a
_
p
r
o
d
s
e
r
v
 
=
 
M
e
!
M
a
r
c
a
_
p
r
o
d
s
e
r
v



 
 
 
 
'
R
s
!
A
n
e
x
o
_
p
r
o
d
S
e
r
v
 
=
 
M
e
!
A
n
e
x
o
_
p
r
o
d
S
e
r
v



 
 
 
 
r
s
!
L
o
c
a
l
i
z
a
c
a
o
_
p
r
o
d
s
e
r
v
 
=
 
M
e
!
L
o
c
a
l
i
z
a
c
a
o
_
p
r
o
d
s
e
r
v



 
 
 
 
r
s
!
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
_
p
r
o
d
S
e
r
v
 
=
 
I
I
f
(
I
s
N
u
l
l
(
M
e
!
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
_
p
r
o
d
S
e
r
v
)
 
=
 
-
1
 
O
r
 
I
s
E
r
r
o
r
(
M
e
!
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
_
p
r
o
d
S
e
r
v
)
 
=
 
-
1
 
O
r
 
M
e
!
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
_
p
r
o
d
S
e
r
v
 
=
 
"
"
,
 
0
,
 
M
e
!
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
_
p
r
o
d
S
e
r
v
)



 
 
 
 
r
s
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
p
r
o
d
S
e
r
v
 
=
 
M
e
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
p
r
o
d
S
e
r
v



 
 
 
 
r
s
!
P
e
r
m
i
t
i
r
C
o
m
i
s
s
a
o
_
p
r
o
d
s
e
r
v
 
=
 
M
e
!
P
e
r
m
i
t
i
r
C
o
m
i
s
s
a
o
_
p
r
o
d
s
e
r
v



 
 
 
 
r
s
!
P
e
r
m
i
s
s
a
o
_
V
e
n
d
a
_
p
r
o
d
S
e
r
v
 
=
 
M
e
!
P
e
r
m
i
s
s
a
o
_
V
e
n
d
a
_
p
r
o
d
S
e
r
v



 
 
 
 
r
s
!
V
e
n
d
a
A
b
a
i
x
o
E
s
t
o
q
u
e
_
p
r
o
d
s
e
r
v
 
=
 
M
e
!
V
e
n
d
a
A
b
a
i
x
o
E
s
t
o
q
u
e
_
p
r
o
d
s
e
r
v



 
 
 
 
r
s
!
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
p
r
o
d
s
e
r
v
 
=
 
M
e
!
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
p
r
o
d
s
e
r
v



 
 
 
 
r
s
!
T
i
p
o
C
a
l
c
u
l
o
_
p
r
o
d
s
e
r
v
 
=
 
I
I
f
(
I
s
N
u
l
l
(
M
e
!
T
i
p
o
C
a
l
c
u
l
o
_
p
r
o
d
s
e
r
v
)
 
=
 
-
1
 
O
r
 
I
s
E
r
r
o
r
(
M
e
!
T
i
p
o
C
a
l
c
u
l
o
_
p
r
o
d
s
e
r
v
)
 
=
 
-
1
 
O
r
 
M
e
!
T
i
p
o
C
a
l
c
u
l
o
_
p
r
o
d
s
e
r
v
 
=
 
"
"
,
 
0
,
 
M
e
!
T
i
p
o
C
a
l
c
u
l
o
_
p
r
o
d
s
e
r
v
)



 
 
 
 
r
s
!
U
n
i
d
a
d
e
_
p
r
o
d
s
e
r
v
 
=
 
I
I
f
(
I
s
N
u
l
l
(
M
e
!
U
n
i
d
a
d
e
_
p
r
o
d
s
e
r
v
)
 
=
 
-
1
 
O
r
 
I
s
E
r
r
o
r
(
M
e
!
U
n
i
d
a
d
e
_
p
r
o
d
s
e
r
v
)
 
=
 
-
1
 
O
r
 
M
e
!
U
n
i
d
a
d
e
_
p
r
o
d
s
e
r
v
 
=
 
"
"
,
 
"
U
N
"
,
 
M
e
!
U
n
i
d
a
d
e
_
p
r
o
d
s
e
r
v
)



 
 
 
 
r
s
!
N
C
M
_
P
r
o
d
s
e
r
v
 
=
 
I
I
f
(
I
s
N
u
l
l
(
M
e
!
N
C
M
_
P
r
o
d
s
e
r
v
)
 
=
 
-
1
 
O
r
 
I
s
E
r
r
o
r
(
M
e
!
N
C
M
_
P
r
o
d
s
e
r
v
)
 
=
 
-
1
 
O
r
 
M
e
!
N
C
M
_
P
r
o
d
s
e
r
v
 
=
 
"
"
,
 
N
u
l
l
,
 
M
e
!
N
C
M
_
P
r
o
d
s
e
r
v
)



 
 
 
 
r
s
!
P
r
o
d
u
t
o
A
t
i
v
o
_
p
r
o
d
S
e
r
v
 
=
 
M
e
!
P
r
o
d
u
t
o
A
t
i
v
o
_
p
r
o
d
S
e
r
v



 
 
 
 



 
 
 
 
r
s
.
U
p
d
a
t
e






 
 
 
 
r
s
.
C
l
o
s
e



 
 
 
 



 
 
 
 
S
e
t
 
r
s
 
=
 
N
o
t
h
i
n
g






 
 
 
 
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



 
 
 
 



 
 
 
 



 
 
 
 
C
a
l
l
 
H
a
b
i
l
i
t
a
V
a
l
o
r
e
s









M
s
g
B
o
x
 
T
i
p
o
M
s
g
 
&
 
"
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






 
 
 
 
M
e
!
C
o
d
_
P
r
o
d
S
e
r
v
 
=
 
"
"



 
 
 
 
M
e
!
C
o
d
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
 
=
 
"
"



 
 
 
 
M
e
!
C
o
d
B
a
r
r
a
s
 
=
 
"
"



 
 
 
 
M
e
!
T
i
p
o
_
p
r
o
d
S
e
r
v
 
=
 
"
"



 
 
 
 
M
e
!
N
o
m
e
_
t
i
p
o
_
p
r
o
d
S
e
r
v
 
=
 
"
"



 
 
 
 
M
e
!
R
e
f
_
p
r
o
d
s
e
r
v
 
=
 
"
"



 
 
 
 
M
e
!
N
o
m
e
_
p
r
o
d
S
e
r
v
 
=
 
"
"



 
 
 
 
M
e
!
P
r
e
c
o
C
u
s
t
o
_
p
r
o
d
s
e
r
v
 
=
 
0



 
 
 
 
M
e
!
O
u
t
r
o
s
c
u
s
t
o
s
_
p
r
o
d
s
e
r
v
 
=
 
0



 
 
 
 
M
e
!
p
r
e
c
o
V
e
n
d
a
_
p
r
o
d
s
e
r
v
 
=
 
0



 
 
 
 
M
e
!
M
a
r
g
e
m
D
e
L
u
c
r
o
_
p
r
o
d
s
e
r
v
 
=
 
0



 
 
 
 
M
e
!
M
a
r
g
e
m
M
i
n
i
m
a
_
p
r
o
d
S
e
r
v
 
=
 
0



 
 
 
 
M
e
!
E
s
t
o
q
u
e
M
i
n
i
m
o
_
p
r
o
d
S
e
r
v
 
=
 
0



 
 
 
 
M
e
!
M
a
r
c
a
_
p
r
o
d
s
e
r
v
 
=
 
"
"



 
 
 
 
'
R
s
!
A
n
e
x
o
_
p
r
o
d
S
e
r
v
 
=
 
M
e
!
A
n
e
x
o
_
p
r
o
d
S
e
r
v



 
 
 
 
M
e
!
L
o
c
a
l
i
z
a
c
a
o
_
p
r
o
d
s
e
r
v
 
=
 
"
"



 
 
 
 
M
e
!
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
_
p
r
o
d
S
e
r
v
 
=
 
"
"



 
 
 
 
M
e
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
p
r
o
d
S
e
r
v
 
=
 
"
"



 
 
 
 
M
e
!
P
e
r
m
i
t
i
r
C
o
m
i
s
s
a
o
_
p
r
o
d
s
e
r
v
 
=
 
0



 
 
 
 
M
e
!
P
e
r
m
i
s
s
a
o
_
V
e
n
d
a
_
p
r
o
d
S
e
r
v
 
=
 
-
1



 
 
 
 
M
e
!
V
e
n
d
a
A
b
a
i
x
o
E
s
t
o
q
u
e
_
p
r
o
d
s
e
r
v
 
=
 
0



 
 
 
 
M
e
!
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
p
r
o
d
s
e
r
v
 
=
 
0



 
 
 
 
M
e
!
T
i
p
o
C
a
l
c
u
l
o
_
p
r
o
d
s
e
r
v
 
=
 
0



 
 
 
 
M
e
!
U
n
i
d
a
d
e
_
p
r
o
d
s
e
r
v
 
=
 
"
"



 
 
 
 
M
e
!
N
C
M
_
P
r
o
d
s
e
r
v
 
=
 
"
"



 
 
 
 
M
e
!
P
r
o
d
u
t
o
A
t
i
v
o
_
p
r
o
d
S
e
r
v
 
=
 
-
1






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
a
d
a
s
t
r
o
 
d
u
p
l
i
c
a
d
o
 
e
m
 
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
 
p
r
e
c
i
s
a
 
d
e
 
u
m
 
c
ó
d
i
g
o
 
ú
n
i
c
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
E
X
:
 
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
 
"
 
_



&
 
"
C
ó
d
i
g
o
 
P
E
R
S
O
N
A
L
I
Z
A
D
O
 
n
a
 
p
a
r
t
e
 
s
u
p
e
r
i
o
r
 
d
a
 
j
a
n
e
l
a
 
d
e
 
C
a
d
a
s
t
r
o
 
e
 
v
e
r
i
f
i
q
u
e
,
 
p
o
i
s
 
a
 
m
e
s
m
a
 
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
 
e
m
 
b
r
a
n
c
o
 
e
 
e
l
a
 
p
o
d
e
 
e
s
t
a
r
 
d
u
p
l
i
c
a
d
a
 
c
o
m
 
o
u
t
r
o
 
p
r
o
d
u
t
o
 
c
o
m
 
o
 
m
e
s
m
o
 
c
ó
d
i
g
o
"
,
 
_



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
s
"






E
l
s
e






 
 
 
 
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
r
o
d
u
t
o
A
t
i
v
o
_
p
r
o
d
S
e
r
v
 
=
 
0



M
s
g
B
o
x
 
"
O
 
p
r
o
d
u
t
o
 
e
s
t
á
 
s
e
n
d
o
 
d
e
s
a
t
i
v
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
C
l
i
q
u
e
 
e
m
 
S
a
l
v
a
r
 
p
a
r
a
 
a
s
 
a
l
t
e
r
a
ç
õ
e
s
 
s
u
r
t
i
r
e
m
 
e
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
a
d
m
.
s
i
s
t
e
m
a
s
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
m
o
n
t
a
r
K
i
t
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
C
o
d
_
P
r
o
d
S
e
r
v
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
p
r
o
d
S
e
r
v
 
<
>
 
"
K
I
T
"
 
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
S
e
l
e
c
i
o
n
e
 
u
m
 
K
i
t
 
p
a
r
a
 
p
o
d
e
r
 
i
n
i
c
i
a
r
 
a
 
m
o
n
t
a
g
e
m
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
p
r
o
d
u
t
o
s
d
o
k
i
t
m
o
n
t
a
d
o
"
,
 
a
c
F
o
r
m
D
S
,
 
,
 
"
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
=
"
 
&
 
M
e
.
C
o
d
_
P
r
o
d
S
e
r
v






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
 
+
 
v
b
C
r
L
f
 
+
 
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
 
C
x
C
o
m
b
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
R
e
q
u
e
r
y



'
M
e
.
C
x
C
o
m
b
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
 
=
 
N
u
l
l



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
M
a
r
g
e
m
M
i
n
i
m
a
_
p
r
o
d
S
e
r
v
)
 
O
r
 
M
e
.
M
a
r
g
e
m
M
i
n
i
m
a
_
p
r
o
d
S
e
r
v
 
<
 
0
 
T
h
e
n



M
e
.
M
a
r
g
e
m
M
i
n
i
m
a
_
p
r
o
d
S
e
r
v
 
=
 
0



E
n
d
 
I
f



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
M
i
n
 
=
 
M
e
.
p
r
e
c
o
V
e
n
d
a
_
p
r
o
d
s
e
r
v
 
-
 
(
M
e
.
p
r
e
c
o
V
e
n
d
a
_
p
r
o
d
s
e
r
v
 
*
 
M
e
.
M
a
r
g
e
m
M
i
n
i
m
a
_
p
r
o
d
S
e
r
v
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
 
B
t
n
A
u
t
o
r
i
z
a
V
a
l
o
r
e
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
8
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
G
e
r
a
r
C
o
d
B
a
r
r
a
s
_
C
l
i
c
k
(
)



'
M
e
.
G
r
u
p
o
_
p
r
o
d
S
e
r
v
 
=
 
"
P
r
o
d
u
t
o
"



M
e
.
C
o
d
B
a
r
r
a
s
 
=
 
"
7
8
9
"
 
&
 
M
e
.
C
o
d
_
P
r
o
d
S
e
r
v
 
&
 
"
1
3
7
9
2
3
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
 
E
s
t
o
q
u
e
M
i
n
i
m
o
_
p
r
o
d
S
e
r
v
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
E
s
t
o
q
u
e
M
i
n
i
m
o
_
p
r
o
d
S
e
r
v
)
 
O
r
 
M
e
.
E
s
t
o
q
u
e
M
i
n
i
m
o
_
p
r
o
d
S
e
r
v
 
=
 
"
"
 
T
h
e
n



M
e
.
E
s
t
o
q
u
e
M
i
n
i
m
o
_
p
r
o
d
S
e
r
v
 
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
 
F
o
r
m
_
A
f
t
e
r
I
n
s
e
r
t
(
)



M
s
g
B
o
x
 
"
P
r
o
d
u
t
o
 
o
u
 
S
e
r
v
i
ç
o
 
f
o
i
 
S
a
l
v
o
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



I
f
 
M
e
.
M
a
r
g
e
m
M
i
n
i
m
a
_
p
r
o
d
S
e
r
v
 
<
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
V
a
l
o
r
M
i
n
 
=
 
0



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
V
a
l
o
r
M
i
n
 
=
 
M
e
.
c
u
s
t
o
_
f
i
n
a
l
_
p
r
o
d
s
e
r
v
 
+
 
(
M
e
.
c
u
s
t
o
_
f
i
n
a
l
_
p
r
o
d
s
e
r
v
 
*
 
M
e
.
M
a
r
g
e
m
M
i
n
i
m
a
_
p
r
o
d
S
e
r
v
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



C
a
l
l
 
H
a
b
i
l
i
t
a
V
a
l
o
r
e
s






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






W
i
t
h
 
M
e
!
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



 
 
 
 



 
 
 
 
M
e
!
C
o
d
_
P
r
o
d
S
e
r
v
 
=
 
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
!
C
o
d
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
 
=
 
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
!
C
o
d
B
a
r
r
a
s
 
=
 
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



 
 
 
 
M
e
!
T
i
p
o
_
p
r
o
d
S
e
r
v
 
=
 
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



 
 
 
 
M
e
!
N
o
m
e
_
t
i
p
o
_
p
r
o
d
S
e
r
v
 
=
 
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



 
 
 
 
M
e
!
R
e
f
_
p
r
o
d
s
e
r
v
 
=
 
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



 
 
 
 
M
e
!
N
o
m
e
_
p
r
o
d
S
e
r
v
 
=
 
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



 
 
 
 
M
e
!
P
r
e
c
o
C
u
s
t
o
_
p
r
o
d
s
e
r
v
 
=
 
.
C
o
l
u
m
n
(
9
)



 
 
 
 
M
e
!
O
u
t
r
o
s
c
u
s
t
o
s
_
p
r
o
d
s
e
r
v
 
=
 
.
C
o
l
u
m
n
(
1
0
)



 
 
 
 
M
e
!
p
r
e
c
o
V
e
n
d
a
_
p
r
o
d
s
e
r
v
 
=
 
.
C
o
l
u
m
n
(
1
1
)



 
 
 
 
M
e
!
M
a
r
g
e
m
D
e
L
u
c
r
o
_
p
r
o
d
s
e
r
v
 
=
 
.
C
o
l
u
m
n
(
1
2
)



 
 
 
 
M
e
!
M
a
r
g
e
m
M
i
n
i
m
a
_
p
r
o
d
S
e
r
v
 
=
 
.
C
o
l
u
m
n
(
1
3
)



 
 
 
 
M
e
!
E
s
t
o
q
u
e
M
i
n
i
m
o
_
p
r
o
d
S
e
r
v
 
=
 
.
C
o
l
u
m
n
(
1
4
)



 
 
 
 
M
e
!
M
a
r
c
a
_
p
r
o
d
s
e
r
v
 
=
 
.
C
o
l
u
m
n
(
1
5
)



 
 
 
 
'
M
e
!
A
n
e
x
o
_
p
r
o
d
S
e
r
v
 
=
 
.
C
o
l
u
m
n
(
1
6
)



 
 
 
 
M
e
!
L
o
c
a
l
i
z
a
c
a
o
_
p
r
o
d
s
e
r
v
 
=
 
.
C
o
l
u
m
n
(
1
6
)



 
 
 
 
M
e
!
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
_
p
r
o
d
S
e
r
v
 
=
 
.
C
o
l
u
m
n
(
1
7
)



 
 
 
 
M
e
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
p
r
o
d
S
e
r
v
 
=
 
.
C
o
l
u
m
n
(
1
8
)



 
 
 
 
M
e
!
P
e
r
m
i
t
i
r
C
o
m
i
s
s
a
o
_
p
r
o
d
s
e
r
v
 
=
 
.
C
o
l
u
m
n
(
1
9
)



 
 
 
 
M
e
!
P
e
r
m
i
s
s
a
o
_
V
e
n
d
a
_
p
r
o
d
S
e
r
v
 
=
 
.
C
o
l
u
m
n
(
2
0
)



 
 
 
 
M
e
!
V
e
n
d
a
A
b
a
i
x
o
E
s
t
o
q
u
e
_
p
r
o
d
s
e
r
v
 
=
 
.
C
o
l
u
m
n
(
2
1
)



 
 
 
 
M
e
!
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
p
r
o
d
s
e
r
v
 
=
 
.
C
o
l
u
m
n
(
2
2
)



 
 
 
 
M
e
!
T
i
p
o
C
a
l
c
u
l
o
_
p
r
o
d
s
e
r
v
 
=
 
.
C
o
l
u
m
n
(
2
3
)



 
 
 
 
M
e
!
U
n
i
d
a
d
e
_
p
r
o
d
s
e
r
v
 
=
 
.
C
o
l
u
m
n
(
2
4
)



 
 
 
 
M
e
!
N
C
M
_
P
r
o
d
s
e
r
v
 
=
 
.
C
o
l
u
m
n
(
2
5
)



 
 
 
 
M
e
!
P
r
o
d
u
t
o
A
t
i
v
o
_
p
r
o
d
S
e
r
v
 
=
 
.
C
o
l
u
m
n
(
2
6
)






E
n
d
 
W
i
t
h






'
M
e
.
T
x
t
_
C
S
_
C
u
s
t
o
_
f
i
n
a
l
 
=
 
M
e
.
O
u
t
r
o
s
c
u
s
t
o
s
_
p
r
o
d
s
e
r
v
 
+
 
M
e
.
P
r
e
c
o
C
u
s
t
o
_
p
r
o
d
s
e
r
v



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
 
M
a
r
g
e
m
D
e
L
u
c
r
o
_
p
r
o
d
s
e
r
v
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
 
I
s
N
u
l
l
(
M
e
!
M
a
r
g
e
m
D
e
L
u
c
r
o
_
p
r
o
d
s
e
r
v
)
 
T
h
e
n



M
e
.
M
a
r
g
e
m
D
e
L
u
c
r
o
_
p
r
o
d
s
e
r
v
 
=
 
0



E
n
d
 
I
f









'
A
l
t
e
r
a
 
o
 
V
a
l
o
r
 
d
a
 
M
a
r
g
e
m
 
d
e
 
L
u
c
r
o
 
c
o
r
r
i
g
i
n
d
o
 
a
 
d
i
v
i
s
ã
o
 
p
o
r
 
0



I
f
 
M
e
.
T
x
t
_
C
S
_
C
u
s
t
o
_
f
i
n
a
l
 
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
É
 
i
m
p
o
r
t
a
n
t
e
 
o
 
p
r
o
d
u
t
o
 
t
e
r
 
u
m
 
p
r
e
ç
o
 
d
e
 
c
u
s
t
o
 
p
a
r
a
 
u
m
 
c
á
l
c
u
l
o
 
c
o
r
r
e
t
o
 
d
a
 
s
u
a
 
M
a
r
g
e
m
 
d
e
 
L
u
c
r
o
.
 
D
e
s
e
j
a
 
m
a
n
t
e
r
 
c
o
m
o
 
z
e
r
o
?
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
Y
e
s
 
T
h
e
n



M
a
r
g
e
m
D
e
L
u
c
r
o
_
p
r
o
d
s
e
r
v
 
=
 
0



M
a
r
g
e
m
M
i
n
i
m
a
_
p
r
o
d
S
e
r
v
 
=
 
0



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
M
i
n
 
=
 
0



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
M
i
n
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
a
r
g
e
m
M
i
n
i
m
a
_
p
r
o
d
S
e
r
v
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



P
r
e
c
o
C
u
s
t
o
_
p
r
o
d
s
e
r
v
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
l
s
e



P
r
e
c
o
C
u
s
t
o
_
p
r
o
d
s
e
r
v
.
S
e
t
F
o
c
u
s



M
a
r
g
e
m
D
e
L
u
c
r
o
_
p
r
o
d
s
e
r
v
 
=
 
0



M
a
r
g
e
m
M
i
n
i
m
a
_
p
r
o
d
S
e
r
v
 
=
 
0



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
M
i
n
 
=
 
0



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
A
l
t
e
r
a
 
o
 
V
a
l
o
r
 
d
o
 
P
R
E
Ç
O
 
D
E
 
V
E
N
D
A



p
r
e
c
o
V
e
n
d
a
_
p
r
o
d
s
e
r
v
 
=
 
(
c
u
s
t
o
_
f
i
n
a
l
_
p
r
o
d
s
e
r
v
 
*
 
M
a
r
g
e
m
D
e
L
u
c
r
o
_
p
r
o
d
s
e
r
v
)
 
+
 
c
u
s
t
o
_
f
i
n
a
l
_
p
r
o
d
s
e
r
v



E
n
d
 
I
f






M
e
.
c
u
s
t
o
_
f
i
n
a
l
_
p
r
o
d
s
e
r
v
 
=
 
M
e
.
T
x
t
_
C
S
_
C
u
s
t
o
_
f
i
n
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
 
M
a
r
g
e
m
M
i
n
i
m
a
_
p
r
o
d
S
e
r
v
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
 
I
s
N
u
l
l
(
M
e
!
M
a
r
g
e
m
M
i
n
i
m
a
_
p
r
o
d
S
e
r
v
)
 
T
h
e
n



M
e
.
M
a
r
g
e
m
M
i
n
i
m
a
_
p
r
o
d
S
e
r
v
 
=
 
0



E
n
d
 
I
f






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
M
a
r
g
e
m
M
i
n
i
m
a
_
p
r
o
d
S
e
r
v
)
 
O
r
 
M
e
.
M
a
r
g
e
m
M
i
n
i
m
a
_
p
r
o
d
S
e
r
v
 
<
 
0
 
T
h
e
n






M
e
.
M
a
r
g
e
m
M
i
n
i
m
a
_
p
r
o
d
S
e
r
v
 
=
 
0






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
V
a
l
o
r
M
i
n
 
=
 
M
e
.
c
u
s
t
o
_
f
i
n
a
l
_
p
r
o
d
s
e
r
v
 
+
 
(
M
e
.
c
u
s
t
o
_
f
i
n
a
l
_
p
r
o
d
s
e
r
v
 
*
 
M
e
.
M
a
r
g
e
m
M
i
n
i
m
a
_
p
r
o
d
S
e
r
v
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
 
O
u
t
r
o
s
c
u
s
t
o
s
_
p
r
o
d
s
e
r
v
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



'
A
l
t
e
r
a
 
o
 
v
a
l
o
r
 
d
o
 
c
u
s
t
o
 
f
i
n
a
l



M
e
.
c
u
s
t
o
_
f
i
n
a
l
_
p
r
o
d
s
e
r
v
 
=
 
M
e
.
T
x
t
_
C
S
_
C
u
s
t
o
_
f
i
n
a
l






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
!
O
u
t
r
o
s
c
u
s
t
o
s
_
p
r
o
d
s
e
r
v
)
 
T
h
e
n



M
e
.
O
u
t
r
o
s
c
u
s
t
o
s
_
p
r
o
d
s
e
r
v
 
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
 
P
r
e
c
o
C
u
s
t
o
_
p
r
o
d
s
e
r
v
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
!
P
r
e
c
o
C
u
s
t
o
_
p
r
o
d
s
e
r
v
)
 
T
h
e
n



M
e
.
P
r
e
c
o
C
u
s
t
o
_
p
r
o
d
s
e
r
v
 
=
 
0



E
n
d
 
I
f






M
e
.
c
u
s
t
o
_
f
i
n
a
l
_
p
r
o
d
s
e
r
v
 
=
 
M
e
.
T
x
t
_
C
S
_
C
u
s
t
o
_
f
i
n
a
l






'
A
l
t
e
r
a
 
o
 
V
a
l
o
r
 
d
a
 
M
a
r
g
e
m
 
d
e
 
L
u
c
r
o
 
c
o
r
r
i
g
i
n
d
o
 
a
 
d
i
v
i
s
ã
o
 
p
o
r
 
0



I
f
 
M
e
.
T
x
t
_
C
S
_
C
u
s
t
o
_
f
i
n
a
l
 
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
É
 
i
m
p
o
r
t
a
n
t
e
 
o
 
p
r
o
d
u
t
o
 
t
e
r
 
u
m
 
p
r
e
ç
o
 
d
e
 
c
u
s
t
o
 
p
a
r
a
 
u
m
 
c
á
l
c
u
l
o
 
c
o
r
r
e
t
o
 
d
a
 
s
u
a
 
M
a
r
g
e
m
 
d
e
 
L
u
c
r
o
.
 
D
e
s
e
j
a
 
m
a
n
t
e
r
 
c
o
m
o
 
z
e
r
o
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



 
 
 
 
M
a
r
g
e
m
D
e
L
u
c
r
o
_
p
r
o
d
s
e
r
v
 
=
 
0



 
 
 
 
M
a
r
g
e
m
M
i
n
i
m
a
_
p
r
o
d
S
e
r
v
 
=
 
0



 
 
 
 
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
M
i
n
 
=
 
0



 
 
 
 
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
M
i
n
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
a
r
g
e
m
M
i
n
i
m
a
_
p
r
o
d
S
e
r
v
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



 
 
 
 



 
 
 
 
P
r
e
c
o
C
u
s
t
o
_
p
r
o
d
s
e
r
v
.
S
e
t
F
o
c
u
s



 
 
 
 
M
a
r
g
e
m
D
e
L
u
c
r
o
_
p
r
o
d
s
e
r
v
 
=
 
0



 
 
 
 
M
a
r
g
e
m
M
i
n
i
m
a
_
p
r
o
d
S
e
r
v
 
=
 
0



 
 
 
 
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
M
i
n
 
=
 
0



 
 
 
 
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
M
i
n
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
a
r
g
e
m
M
i
n
i
m
a
_
p
r
o
d
S
e
r
v
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
M
i
n
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
a
r
g
e
m
M
i
n
i
m
a
_
p
r
o
d
S
e
r
v
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



 
 
 
 
I
f
 
p
r
e
c
o
V
e
n
d
a
_
p
r
o
d
s
e
r
v
 
>
 
0
 
T
h
e
n



 
 
 
 
M
a
r
g
e
m
D
e
L
u
c
r
o
_
p
r
o
d
s
e
r
v
 
=
 
(
N
z
(
p
r
e
c
o
V
e
n
d
a
_
p
r
o
d
s
e
r
v
,
 
0
)
 
/
 
c
u
s
t
o
_
f
i
n
a
l
_
p
r
o
d
s
e
r
v
)
 
-
 
1



 
 
 
 
E
l
s
e



 
 
 
 
M
a
r
g
e
m
D
e
L
u
c
r
o
_
p
r
o
d
s
e
r
v
 
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






M
e
.
c
u
s
t
o
_
f
i
n
a
l
_
p
r
o
d
s
e
r
v
 
=
 
M
e
.
T
x
t
_
C
S
_
C
u
s
t
o
_
f
i
n
a
l



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
M
i
n
 
=
 
M
e
.
c
u
s
t
o
_
f
i
n
a
l
_
p
r
o
d
s
e
r
v
 
+
 
(
M
e
.
c
u
s
t
o
_
f
i
n
a
l
_
p
r
o
d
s
e
r
v
 
*
 
M
e
.
M
a
r
g
e
m
M
i
n
i
m
a
_
p
r
o
d
S
e
r
v
)



M
e
.
M
a
r
g
e
m
M
i
n
i
m
a
_
p
r
o
d
S
e
r
v
 
=
 
(
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
M
i
n
 
/
 
M
e
.
c
u
s
t
o
_
f
i
n
a
l
_
p
r
o
d
s
e
r
v
)
 
-
 
1






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
s
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
 
p
r
e
c
o
V
e
n
d
a
_
p
r
o
d
s
e
r
v
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
 
I
s
N
u
l
l
(
M
e
!
p
r
e
c
o
V
e
n
d
a
_
p
r
o
d
s
e
r
v
)
 
T
h
e
n



M
e
.
p
r
e
c
o
V
e
n
d
a
_
p
r
o
d
s
e
r
v
 
=
 
0



E
n
d
 
I
f






'
A
l
t
e
r
a
 
o
 
V
a
l
o
r
 
d
a
 
M
a
r
g
e
m
 
d
e
 
L
u
c
r
o
 
c
o
r
r
i
g
i
n
d
o
 
a
 
d
i
v
i
s
ã
o
 
p
o
r
 
0



I
f
 
M
e
.
T
x
t
_
C
S
_
C
u
s
t
o
_
f
i
n
a
l
 
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
É
 
i
m
p
o
r
t
a
n
t
e
 
o
 
p
r
o
d
u
t
o
 
t
e
r
 
u
m
 
p
r
e
ç
o
 
d
e
 
c
u
s
t
o
 
p
a
r
a
 
u
m
 
c
á
l
c
u
l
o
 
c
o
r
r
e
t
o
 
d
a
 
s
u
a
 
M
a
r
g
e
m
 
d
e
 
L
u
c
r
o
.
 
D
e
s
e
j
a
 
m
a
n
t
e
r
 
c
o
m
o
 
z
e
r
o
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



 
 
 
 
M
a
r
g
e
m
D
e
L
u
c
r
o
_
p
r
o
d
s
e
r
v
 
=
 
0



 
 
 
 
M
a
r
g
e
m
M
i
n
i
m
a
_
p
r
o
d
S
e
r
v
 
=
 
0



 
 
 
 
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
M
i
n
 
=
 
0



 
 
 
 
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
M
i
n
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
a
r
g
e
m
M
i
n
i
m
a
_
p
r
o
d
S
e
r
v
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



 
 
 
 
P
r
e
c
o
C
u
s
t
o
_
p
r
o
d
s
e
r
v
.
S
e
t
F
o
c
u
s



 
 
 
 
M
a
r
g
e
m
D
e
L
u
c
r
o
_
p
r
o
d
s
e
r
v
 
=
 
0



 
 
 
 
M
a
r
g
e
m
M
i
n
i
m
a
_
p
r
o
d
S
e
r
v
 
=
 
0



 
 
 
 
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
M
i
n
 
=
 
0



 
 
 
 
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
M
i
n
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
a
r
g
e
m
M
i
n
i
m
a
_
p
r
o
d
S
e
r
v
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
a
r
g
e
m
M
i
n
i
m
a
_
p
r
o
d
S
e
r
v
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
t
x
t
V
a
l
o
r
M
i
n
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



 
 
 
 
I
f
 
p
r
e
c
o
V
e
n
d
a
_
p
r
o
d
s
e
r
v
 
>
 
0
 
T
h
e
n



 
 
 
 
M
a
r
g
e
m
D
e
L
u
c
r
o
_
p
r
o
d
s
e
r
v
 
=
 
(
(
(
M
e
.
p
r
e
c
o
V
e
n
d
a
_
p
r
o
d
s
e
r
v
 
*
 
1
0
0
)
 
/
 
M
e
.
T
x
t
_
C
S
_
C
u
s
t
o
_
f
i
n
a
l
)
 
/
 
1
0
0
)
 
-
 
1



 
 
 
 
E
l
s
e



 
 
 
 
M
a
r
g
e
m
D
e
L
u
c
r
o
_
p
r
o
d
s
e
r
v
 
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






M
e
.
c
u
s
t
o
_
f
i
n
a
l
_
p
r
o
d
s
e
r
v
 
=
 
M
e
.
T
x
t
_
C
S
_
C
u
s
t
o
_
f
i
n
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
 
S
u
b
_
P
r
o
d
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
E
x
i
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



c
u
s
t
o
_
f
i
n
a
l
_
p
r
o
d
s
e
r
v
 
=
 
T
x
t
_
C
S
_
C
u
s
t
o
_
f
i
n
a
l
 
+
 
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
 
P
r
o
d
u
t
o
A
t
i
v
o
_
p
r
o
d
S
e
r
v
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
P
r
o
d
u
t
o
A
t
i
v
o
_
p
r
o
d
S
e
r
v
 
=
 
-
1
 
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
A
t
i
v
o
_
p
r
o
d
S
e
r
v
 
=
 
0



M
s
g
B
o
x
 
"
O
 
p
r
o
d
u
t
o
 
e
s
t
á
 
s
e
n
d
o
 
d
e
s
a
t
i
v
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
C
l
i
q
u
e
 
e
m
 
S
a
l
v
a
r
 
p
a
r
a
 
a
s
 
a
l
t
e
r
a
ç
õ
e
s
 
s
u
r
t
i
r
e
m
 
e
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
 
R
e
f
_
p
r
o
d
s
e
r
v
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
C
o
d
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
 
=
 
M
e
.
R
e
f
_
p
r
o
d
s
e
r
v



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
p
r
o
d
S
e
r
v
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






N
o
m
e
_
t
i
p
o
_
p
r
o
d
S
e
r
v
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
p
r
o
d
S
e
r
v
 
=
 
"
S
e
r
v
i
ç
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
B
a
r
r
a
s
 
=
 
N
u
l
l



M
e
.
V
e
n
d
a
A
b
a
i
x
o
E
s
t
o
q
u
e
_
p
r
o
d
s
e
r
v
 
=
 
-
1






E
l
s
e






I
f
 
M
e
.
C
o
d
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
 
=
 
N
u
l
l
 
O
r
 
M
e
.
C
o
d
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
 
=
 
0
 
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
 
=
 
M
e
.
C
o
d
_
P
r
o
d
S
e
r
v



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
 
T
x
t
_
C
S
_
C
u
s
t
o
_
f
i
n
a
l
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



c
u
s
t
o
_
f
i
n
a
l
_
p
r
o
d
s
e
r
v
 
=
 
T
x
t
_
C
S
_
C
u
s
t
o
_
f
i
n
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
 
t
x
t
V
a
l
o
r
M
i
n
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
 
I
s
N
u
l
l
(
M
e
!
t
x
t
V
a
l
o
r
M
i
n
)
 
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
V
a
l
o
r
M
i
n
 
=
 
0



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
p
r
e
c
o
V
e
n
d
a
_
p
r
o
d
s
e
r
v
 
=
 
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
p
r
e
c
o
V
e
n
d
a
_
p
r
o
d
s
e
r
v
)
 
T
h
e
n



M
e
.
p
r
e
c
o
V
e
n
d
a
_
p
r
o
d
s
e
r
v
 
=
 
0



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
 
d
e
t
e
r
m
i
n
a
r
 
u
m
a
 
m
a
r
g
e
m
 
m
í
n
i
m
a
,
 
p
o
i
s
 
o
 
V
a
l
o
r
 
d
e
 
V
e
n
d
a
 
é
 
0
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
t
x
t
V
a
l
o
r
M
i
n
 
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
C
o
m
 
o
 
v
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
 
s
e
n
d
o
 
0
,
 
o
 
V
e
n
d
e
d
o
r
 
p
o
d
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
r
 
a
 
v
e
n
d
a
 
d
e
s
t
e
 
p
r
o
d
u
t
o
 
c
o
m
 
o
 
d
e
s
c
o
n
t
o
 
q
u
e
 
e
l
e
 
d
e
t
e
r
m
i
n
a
r
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
e
.
M
a
r
g
e
m
M
i
n
i
m
a
_
p
r
o
d
S
e
r
v
 
=
 
(
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
M
i
n
 
/
 
M
e
.
c
u
s
t
o
_
f
i
n
a
l
_
p
r
o
d
s
e
r
v
)
 
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
e
n
d
a
A
b
a
i
x
o
E
s
t
o
q
u
e
_
p
r
o
d
s
e
r
v
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
V
E
N
D
A
 
A
B
A
I
X
O
 
D
O
 
E
S
T
O
Q
U
E
"
 
&
 
"
;
P
r
o
d
S
e
r
v
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
P
r
o
d
S
e
r
v
 
&
 
"
;
A
l
t
e
r
a
d
o
 
P
a
r
a
:
"
 
&
 
M
e
.
V
e
n
d
a
A
b
a
i
x
o
E
s
t
o
q
u
e
_
p
r
o
d
s
e
r
v
 
&
 
"
;
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
 
A
l
t
e
r
a
ç
ã
o
 
f
o
i
 
r
e
g
i
s
t
r
a
d
a
 
n
o
 
l
o
g
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
 
H
a
b
i
l
i
t
a
V
a
l
o
r
e
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
2
2
 
=
 
-
1
 
T
h
e
n



M
e
.
P
r
e
c
o
C
u
s
t
o
_
p
r
o
d
s
e
r
v
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



M
e
.
p
r
e
c
o
V
e
n
d
a
_
p
r
o
d
s
e
r
v
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



M
e
.
O
u
t
r
o
s
c
u
s
t
o
s
_
p
r
o
d
s
e
r
v
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



M
e
.
M
a
r
g
e
m
D
e
L
u
c
r
o
_
p
r
o
d
s
e
r
v
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



M
e
.
M
a
r
g
e
m
M
i
n
i
m
a
_
p
r
o
d
S
e
r
v
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
M
i
n
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



M
e
.
B
t
n
A
u
t
o
r
i
z
a
V
a
l
o
r
e
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
 
0



E
l
s
e






M
e
.
P
r
e
c
o
C
u
s
t
o
_
p
r
o
d
s
e
r
v
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
p
r
e
c
o
V
e
n
d
a
_
p
r
o
d
s
e
r
v
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
O
u
t
r
o
s
c
u
s
t
o
s
_
p
r
o
d
s
e
r
v
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
M
a
r
g
e
m
D
e
L
u
c
r
o
_
p
r
o
d
s
e
r
v
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
M
a
r
g
e
m
M
i
n
i
m
a
_
p
r
o
d
S
e
r
v
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
t
x
t
V
a
l
o
r
M
i
n
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
B
t
n
A
u
t
o
r
i
z
a
V
a
l
o
r
e
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
 
F
u
n
c
t
i
o
n