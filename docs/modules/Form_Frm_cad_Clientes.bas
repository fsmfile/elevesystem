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



'
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



'
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
b
u
s
c
a
c
e
p
_
C
l
i
c
k
(
)






'
C
a
l
l
 
p
e
g
a
_
t
a
b
e
l
a
 
'
*
*
*
 
C
ó
d
i
g
o
 
a
n
t
i
g
o






'
A
p
ó
s
 
a
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
 
o
 
c
ó
d
i
g
o
 
n
ã
o
 
l
o
c
a
l
i
z
a
 
m
a
i
s
 
a
s
 
t
a
b
e
l
a
s
 
n
o
 
s
i
t
e
 
d
o
 
c
o
r
r
e
i
o
s
.



'
C
ó
d
i
g
o
 
a
l
t
e
r
a
d
o
 
p
a
r
a
 
b
u
s
c
a
r
 
i
n
f
o
r
m
a
ç
õ
e
s
 
n
o
 
s
i
t
e
 
h
t
t
p
:
/
/
r
e
p
u
b
l
i
c
a
v
i
r
t
u
a
l
.
c
o
m
.
b
r
/
c
e
p
/
 
u
t
i
l
i
z
a
n
d
o
 
o
 
W
e
b
S
e
r
v
i
c
e
 
C
E
P



'
É
 
u
m
 
s
e
r
v
i
ç
o
 
d
e
 
c
o
n
s
u
l
t
a
 
d
e
 
C
E
P
 
p
a
r
a
 
s
e
r
 
u
t
i
l
i
z
a
d
o
 
c
o
m
o
 
a
u
x
i
l
i
a
r
 
p
a
r
a
 
q
u
a
l
q
u
e
r
 
s
i
s
t
e
m
a
,






'
*
*
*
*
*



'
C
ó
d
i
g
o
 
N
o
v
o



'
A
p
p
l
i
c
a
t
i
o
n
.
D
i
s
p
l
a
y
A
l
e
r
t
s
 
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
c
e
p
_
c
l
i
e
n
t
e
 
=
 
"
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
F
a
v
o
r
 
d
i
g
i
t
a
r
 
u
m
 
C
E
P
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









'
D
i
m
 
C
E
P
 
A
s
 
S
t
r
i
n
g






'
C
E
P
 
=
 
M
e
.
c
e
p
_
c
l
i
e
n
t
e






'
A
c
t
i
v
e
W
o
r
k
b
o
o
k
.
X
m
l
I
m
p
o
r
t
 
U
R
L
:
=
"
h
t
t
p
:
/
/
w
e
b
s
e
r
v
i
c
e
.
k
i
n
g
h
o
s
t
.
n
e
t
/
w
e
b
_
c
e
p
.
p
h
p
?
a
u
t
h
=
d
2
3
1
8
b
f
b
5
c
0
a
9
e
3
3
3
b
3
d
6
4
e
9
1
c
c
2
6
3
e
5
&
f
o
r
m
a
t
o
=
x
m
l
&
c
e
p
=
"
 
&
 
C
E
P
,
 
i
m
p
o
r
t
m
a
p
:
=
N
o
t
h
i
n
g
,
 
o
v
e
r
w
r
i
t
e
:
=
F
a
l
s
e
,
 
D
e
s
t
i
n
a
t
i
o
n
:
=
P
l
a
n
1
.
C
e
l
l
s
(
1
,
 
1
)






'
I
f
 
P
l
a
n
1
.
C
e
l
l
s
(
1
,
 
2
)
 
=
 
"
s
u
c
e
s
s
o
 
-
 
c
e
p
 
n
ã
o
 
e
n
c
o
n
t
r
a
d
o
"
 
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
 
(
"
C
E
P
 
d
i
g
i
t
a
d
o
 
n
ã
o
 
f
o
i
 
e
n
c
o
n
t
r
a
d
o
"
)
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



'
 
 
 
 
E
x
i
t
 
S
u
b



'
E
n
d
 
I
f






'
M
e
.
N
u
m
e
r
o
_
c
l
i
e
n
t
e
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
R
a
z
a
o
S
o
c
i
a
l
_
C
l
i
e
n
t
e
)
 
O
r
 
M
e
!
N
o
m
e
R
a
z
a
o
S
o
c
i
a
l
_
C
l
i
e
n
t
e
 
=
 
"
"
 
O
r
 
_



 
 
 
 
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
D
t
N
a
s
c
i
m
e
n
t
o
)
 
O
r
 
M
e
!
D
t
N
a
s
c
i
m
e
n
t
o
 
=
 
"
"
 
O
r
 
_



 
 
 
 
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
e
l
e
f
o
n
e
_
C
l
i
e
n
t
e
)
 
O
r
 
M
e
!
T
e
l
e
f
o
n
e
_
C
l
i
e
n
t
e
 
=
 
"
"
 
O
r
 
_



 
 
 
 
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
A
p
e
l
i
d
o
_
c
l
i
e
n
t
e
)
 
O
r
 
M
e
!
A
p
e
l
i
d
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
 
"
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
P
r
e
e
n
c
h
a
 
t
o
d
o
s
 
o
s
 
c
a
m
p
o
s
 
e
m
 
v
e
r
m
e
l
h
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
N
o
m
e
R
a
z
a
o
S
o
c
i
a
l
_
C
l
i
e
n
t
e
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
c
l
i
e
n
t
e
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
c
l
i
e
n
t
e
 
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
c
l
i
e
n
t
e
s
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



 
 
 
 
 
 
 
 
'
I
f
 
M
e
.
C
x
C
l
i
e
n
t
e
 
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
C
x
C
l
i
e
n
t
e
)
 
T
h
e
n



 
 
 
 
 
 
 
 
'
S
e
t
 
R
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
c
l
i
e
n
t
e
s
 
W
H
E
R
E
 
C
o
d
_
c
l
i
e
n
t
e
 
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
c
l
i
e
n
t
e
)



 
 
 
 
 
 
 
 
'
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
c
l
i
e
n
t
e
s
 
W
H
E
R
E
 
C
o
d
_
c
l
i
e
n
t
e
 
=
 
"
 
&
 
M
e
.
C
x
C
l
i
e
n
t
e
)



 
 
 
 
 
 
 
 
'
E
n
d
 
I
f






 
 
 
 
 
 
 
 
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
c
l
i
e
n
t
e
 
=
 
r
s
!
C
o
d
_
c
l
i
e
n
t
e



 
 
 
 
r
s
!
N
o
m
e
R
a
z
a
o
S
o
c
i
a
l
_
C
l
i
e
n
t
e
 
=
 
M
e
!
N
o
m
e
R
a
z
a
o
S
o
c
i
a
l
_
C
l
i
e
n
t
e



 
 
 
 
r
s
!
D
t
N
a
s
c
i
m
e
n
t
o
 
=
 
M
e
!
D
t
N
a
s
c
i
m
e
n
t
o



 
 
 
 
r
s
!
T
i
p
o
D
o
c
u
m
e
n
t
o
 
=
 
M
e
!
T
i
p
o
D
o
c
u
m
e
n
t
o



 
 
 
 
r
s
!
C
P
F
_
C
N
P
J
_
C
l
i
e
n
t
e
 
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
P
F
_
C
N
P
J
_
C
l
i
e
n
t
e
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
P
F
_
C
N
P
J
_
C
l
i
e
n
t
e
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
P
F
_
C
N
P
J
_
C
l
i
e
n
t
e
 
=
 
"
"
,
 
M
e
.
C
o
d
_
c
l
i
e
n
t
e
,
 
M
e
!
C
P
F
_
C
N
P
J
_
C
l
i
e
n
t
e
)



 
 
 
 
r
s
!
T
e
l
e
f
o
n
e
_
C
l
i
e
n
t
e
 
=
 
M
e
!
T
e
l
e
f
o
n
e
_
C
l
i
e
n
t
e



 
 
 
 
r
s
!
I
n
s
c
r
i
c
a
o
E
s
t
a
d
u
a
l
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
!
I
n
s
c
r
i
c
a
o
E
s
t
a
d
u
a
l
_
c
l
i
e
n
t
e



 
 
 
 
r
s
!
I
s
e
n
t
o
I
C
M
S
 
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
I
s
e
n
t
o
I
C
M
S
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
I
s
e
n
t
o
I
C
M
S
)
 
=
 
-
1
 
O
r
 
M
e
!
I
s
e
n
t
o
I
C
M
S
 
=
 
"
"
,
 
0
,
 
M
e
!
I
s
e
n
t
o
I
C
M
S
)



 
 
 
 
r
s
!
I
n
s
c
r
i
c
a
o
S
U
F
R
A
M
A
 
=
 
M
e
!
I
n
s
c
r
i
c
a
o
S
U
F
R
A
M
A



 
 
 
 
r
s
!
E
m
a
i
l
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
!
E
m
a
i
l
_
c
l
i
e
n
t
e



 
 
 
 
r
s
!
c
e
p
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
!
c
e
p
_
c
l
i
e
n
t
e



 
 
 
 
r
s
!
L
o
g
r
a
d
o
u
r
o
_
C
l
i
e
n
t
e
 
=
 
M
e
!
L
o
g
r
a
d
o
u
r
o
_
C
l
i
e
n
t
e



 
 
 
 
r
s
!
C
o
m
p
l
e
m
e
n
t
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
!
C
o
m
p
l
e
m
e
n
t
o
_
c
l
i
e
n
t
e



 
 
 
 
r
s
!
N
u
m
e
r
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
!
N
u
m
e
r
o
_
c
l
i
e
n
t
e



 
 
 
 
r
s
!
B
a
i
r
r
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
!
B
a
i
r
r
o
_
c
l
i
e
n
t
e



 
 
 
 
r
s
!
U
F
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
!
U
F
_
c
l
i
e
n
t
e



 
 
 
 
r
s
!
M
u
n
i
c
i
p
i
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
!
M
u
n
i
c
i
p
i
o
_
c
l
i
e
n
t
e



 
 
 
 
r
s
!
P
a
i
s
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
!
P
a
i
s
_
c
l
i
e
n
t
e



 
 
 
 
r
s
!
D
t
E
x
p
R
G
_
c
l
i
e
n
t
e
 
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
D
t
E
x
p
R
G
_
c
l
i
e
n
t
e
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
D
t
E
x
p
R
G
_
c
l
i
e
n
t
e
)
 
=
 
-
1
 
O
r
 
M
e
!
D
t
E
x
p
R
G
_
c
l
i
e
n
t
e
 
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
D
t
E
x
p
R
G
_
c
l
i
e
n
t
e
)



 
 
 
 
r
s
!
O
r
g
a
o
E
x
p
R
G
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
!
O
r
g
a
o
E
x
p
R
G
_
c
l
i
e
n
t
e



 
 
 
 
r
s
!
E
s
t
a
d
o
C
i
v
i
l
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
!
E
s
t
a
d
o
C
i
v
i
l
_
c
l
i
e
n
t
e



 
 
 
 
r
s
!
g
e
n
e
r
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
!
g
e
n
e
r
o
_
c
l
i
e
n
t
e



 
 
 
 
r
s
!
N
o
m
e
P
a
i
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
!
N
o
m
e
P
a
i
_
c
l
i
e
n
t
e



 
 
 
 
r
s
!
N
o
m
e
M
a
e
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
!
N
o
m
e
M
a
e
_
c
l
i
e
n
t
e



 
 
 
 
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
c
l
i
e
n
t
e
 
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
l
i
e
n
t
e
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
l
i
e
n
t
e
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
l
i
e
n
t
e
 
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
l
i
e
n
t
e
)



 
 
 
 
r
s
!
A
t
i
v
o
_
C
l
i
e
n
t
e
 
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
A
t
i
v
o
_
C
l
i
e
n
t
e
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
A
t
i
v
o
_
C
l
i
e
n
t
e
)
 
=
 
-
1
 
O
r
 
M
e
!
A
t
i
v
o
_
C
l
i
e
n
t
e
 
=
 
"
"
,
 
-
1
,
 
M
e
!
A
t
i
v
o
_
C
l
i
e
n
t
e
)



 
 
 
 
r
s
!
T
i
t
u
l
a
r
_
C
l
i
e
n
t
e
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
T
i
t
u
l
a
r
_
C
l
i
e
n
t
e
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
T
i
t
u
l
a
r
_
C
l
i
e
n
t
e
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
T
i
t
u
l
a
r
_
C
l
i
e
n
t
e
s
 
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
t
u
l
a
r
_
C
l
i
e
n
t
e
s
)



 
 
 
 
r
s
!
V
i
n
c
u
l
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
V
i
n
c
u
l
o
_
c
l
i
e
n
t
e
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
V
i
n
c
u
l
o
_
c
l
i
e
n
t
e
)
 
=
 
-
1
 
O
r
 
M
e
!
V
i
n
c
u
l
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
 
"
"
,
 
0
,
 
M
e
!
V
i
n
c
u
l
o
_
c
l
i
e
n
t
e
)



 
 
 
 
r
s
!
A
p
e
l
i
d
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
!
A
p
e
l
i
d
o
_
c
l
i
e
n
t
e



 
 
 
 
r
s
!
R
G
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
!
R
G
_
c
l
i
e
n
t
e









 
 
 
 
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
C
x
C
l
i
e
n
t
e
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
c
l
i
e
n
t
e
 
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
R
a
z
a
o
S
o
c
i
a
l
_
C
l
i
e
n
t
e
 
=
 
"
"



 
 
 
 
M
e
!
D
t
N
a
s
c
i
m
e
n
t
o
 
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
D
o
c
u
m
e
n
t
o
 
=
 
"
"



 
 
 
 
M
e
!
C
P
F
_
C
N
P
J
_
C
l
i
e
n
t
e
 
=
 
"
"



 
 
 
 
M
e
!
T
e
l
e
f
o
n
e
_
C
l
i
e
n
t
e
 
=
 
"
"



 
 
 
 
M
e
!
I
n
s
c
r
i
c
a
o
E
s
t
a
d
u
a
l
_
c
l
i
e
n
t
e
 
=
 
"
"



 
 
 
 
M
e
!
I
s
e
n
t
o
I
C
M
S
 
=
 
"
"



 
 
 
 
M
e
!
I
n
s
c
r
i
c
a
o
S
U
F
R
A
M
A
 
=
 
"
"



 
 
 
 
M
e
!
E
m
a
i
l
_
c
l
i
e
n
t
e
 
=
 
"
"



 
 
 
 
M
e
!
c
e
p
_
c
l
i
e
n
t
e
 
=
 
"
"



 
 
 
 
M
e
!
L
o
g
r
a
d
o
u
r
o
_
C
l
i
e
n
t
e
 
=
 
"
"



 
 
 
 
M
e
!
C
o
m
p
l
e
m
e
n
t
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
 
"
"



 
 
 
 
M
e
!
N
u
m
e
r
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
 
"
"



 
 
 
 
M
e
!
B
a
i
r
r
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
 
"
"



 
 
 
 
M
e
!
U
F
_
c
l
i
e
n
t
e
 
=
 
"
"



 
 
 
 
M
e
!
M
u
n
i
c
i
p
i
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
 
"
"



 
 
 
 
M
e
!
P
a
i
s
_
c
l
i
e
n
t
e
 
=
 
"
"



 
 
 
 
M
e
!
D
t
E
x
p
R
G
_
c
l
i
e
n
t
e
 
=
 
"
"



 
 
 
 
M
e
!
O
r
g
a
o
E
x
p
R
G
_
c
l
i
e
n
t
e
 
=
 
"
"



 
 
 
 
M
e
!
E
s
t
a
d
o
C
i
v
i
l
_
c
l
i
e
n
t
e
 
=
 
"
"



 
 
 
 
M
e
!
g
e
n
e
r
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
 
"
"



 
 
 
 
M
e
!
N
o
m
e
P
a
i
_
c
l
i
e
n
t
e
 
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
M
a
e
_
c
l
i
e
n
t
e
 
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
c
l
i
e
n
t
e
 
=
 
"
"



 
 
 
 
'
M
e
!
A
t
i
v
o
_
C
l
i
e
n
t
e
 
=
 
"
"



 
 
 
 
M
e
!
T
i
t
u
l
a
r
_
C
l
i
e
n
t
e
s
 
=
 
"
"



 
 
 
 
M
e
!
V
i
n
c
u
l
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
 
"
"



 
 
 
 
M
e
!
A
p
e
l
i
d
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
 
"
"



 
 
 
 
M
e
!
R
G
_
c
l
i
e
n
t
e
 
=
 
"
"



 
 
 
 



 
 
 
 
M
e
.
C
P
F
_
C
N
P
J
_
C
l
i
e
n
t
e
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
"
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
"
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
A
 
L
i
s
t
a
 
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
 
f
o
i
 
a
t
u
a
l
i
z
a
d
a
 
a
u
t
o
m
a
t
i
c
a
m
e
n
t
e
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
N
o
m
e
_
c
l
i
e
n
t
e
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
 
3
0
2
2



 
 
 
 



 
 
 
 
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
 
n
o
s
 
C
a
m
p
o
s
 
q
u
e
 
a
c
e
i
t
a
m
 
d
a
d
o
s
 
ú
n
i
c
o
s
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






 
 
 
 
C
a
s
e
 
2
4
5
0



 
 
 
 



 
 
 
 
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



 
 
 
 



 
 
 
 
C
a
s
e
 
3
3
1
4



 
 
 
 



 
 
 
 
M
s
g
B
o
x
 
"
P
r
e
e
n
c
h
a
 
t
o
d
o
s
 
o
s
 
c
a
m
p
o
s
 
e
m
 
v
e
r
m
e
l
h
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
 
3
0
7
5



 
 
 
 



 
 
 
 
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
 
é
 
m
u
i
t
o
 
p
e
q
u
e
n
o
 
p
a
r
a
 
o
 
t
a
m
a
n
h
o
 
d
o
s
 
d
a
d
o
s
 
i
n
s
e
r
i
d
o
s
.
"
 
&
 
_



 
 
 
 
v
b
C
r
L
f
 
&
 
"
E
x
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
 
c
a
m
p
o
 
t
e
l
e
f
o
n
e
 
i
n
s
e
r
i
n
d
o
 
a
p
e
n
a
s
 
n
ú
m
e
r
o
s
,
 
s
e
m
 
t
r
a
ç
o
s
 
e
 
p
a
r
ê
n
t
e
s
e
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
.
T
e
l
e
f
o
n
e
_
C
l
i
e
n
t
e
 
=
 
"
"



 
 
 
 
M
e
.
C
o
d
_
c
l
i
e
n
t
e
 
=
 
"
"



 
 
 
 



 
 
 
 
C
a
s
e
 
3
1
6
3



 
 
 
 



 
 
 
 
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
 
é
 
m
u
i
t
o
 
p
e
q
u
e
n
o
 
p
a
r
a
 
o
 
t
a
m
a
n
h
o
 
d
o
s
 
d
a
d
o
s
 
i
n
s
e
r
i
d
o
s
.
"
 
&
 
_



 
 
 
 
v
b
C
r
L
f
 
&
 
"
E
x
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
 
c
a
m
p
o
 
t
e
l
e
f
o
n
e
 
i
n
s
e
r
i
n
d
o
 
a
p
e
n
a
s
 
n
ú
m
e
r
o
s
,
 
s
e
m
 
t
r
a
ç
o
s
 
e
 
p
a
r
ê
n
t
e
s
e
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
.
T
e
l
e
f
o
n
e
_
C
l
i
e
n
t
e
 
=
 
"
"



 
 
 
 
M
e
.
C
o
d
_
c
l
i
e
n
t
e
 
=
 
"
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
 
b
t
n
_
G
r
u
p
o
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
v
i
n
c
u
l
a
r
g
r
u
p
o
a
o
c
l
i
e
n
t
e
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
V
i
n
c
G
r
u
p
o
C
l
i
]
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
c
l
i
e
n
t
e






E
x
i
t
 
S
u
b
:



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
5
 
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
e
 
C
l
i
e
n
t
e
 
i
n
v
á
l
i
d
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
B
u
s
c
a
C
E
P
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
 
E
r
r






I
f
 
M
e
.
c
e
p
_
c
l
i
e
n
t
e
 
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
c
e
p
_
c
l
i
e
n
t
e
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
r
e
e
n
c
h
a
 
o
 
c
a
m
p
o
 
C
E
P
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
l
s
e






V
a
r
C
E
P
 
=
 
M
e
.
c
e
p
_
c
l
i
e
n
t
e






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
C
E
P






M
e
.
L
o
g
r
a
d
o
u
r
o
_
C
l
i
e
n
t
e
 
=
 
V
a
r
L
o
g
r
a
d
o
u
r
o



M
e
.
B
a
i
r
r
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
 
V
a
r
B
a
i
r
r
o



M
e
.
M
u
n
i
c
i
p
i
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
 
V
a
r
M
u
n
i
c
i
p
i
o



M
e
.
U
F
_
c
l
i
e
n
t
e
 
=
 
V
a
r
U
F









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
L
o
g
r
a
d
o
u
r
o
_
C
l
i
e
n
t
e
)
 
A
n
d
 
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
B
a
i
r
r
o
_
c
l
i
e
n
t
e
)
 
A
n
d
 
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
M
u
n
i
c
i
p
i
o
_
c
l
i
e
n
t
e
)
 
T
h
e
n






M
e
.
L
o
g
r
a
d
o
u
r
o
_
C
l
i
e
n
t
e
 
=
 
R
e
p
l
a
c
e
(
M
e
.
L
o
g
r
a
d
o
u
r
o
_
C
l
i
e
n
t
e
,
 
"
%
E
1
"
,
 
"
á
"
)



M
e
.
L
o
g
r
a
d
o
u
r
o
_
C
l
i
e
n
t
e
 
=
 
R
e
p
l
a
c
e
(
M
e
.
L
o
g
r
a
d
o
u
r
o
_
C
l
i
e
n
t
e
,
 
"
%
E
2
"
,
 
"
â
"
)



M
e
.
L
o
g
r
a
d
o
u
r
o
_
C
l
i
e
n
t
e
 
=
 
R
e
p
l
a
c
e
(
M
e
.
L
o
g
r
a
d
o
u
r
o
_
C
l
i
e
n
t
e
,
 
"
%
E
3
"
,
 
"
ã
"
)



M
e
.
L
o
g
r
a
d
o
u
r
o
_
C
l
i
e
n
t
e
 
=
 
R
e
p
l
a
c
e
(
M
e
.
L
o
g
r
a
d
o
u
r
o
_
C
l
i
e
n
t
e
,
 
"
%
E
7
"
,
 
"
ç
"
)



M
e
.
L
o
g
r
a
d
o
u
r
o
_
C
l
i
e
n
t
e
 
=
 
R
e
p
l
a
c
e
(
M
e
.
L
o
g
r
a
d
o
u
r
o
_
C
l
i
e
n
t
e
,
 
"
%
E
9
"
,
 
"
é
"
)



M
e
.
L
o
g
r
a
d
o
u
r
o
_
C
l
i
e
n
t
e
 
=
 
R
e
p
l
a
c
e
(
M
e
.
L
o
g
r
a
d
o
u
r
o
_
C
l
i
e
n
t
e
,
 
"
%
E
A
"
,
 
"
ê
"
)



M
e
.
L
o
g
r
a
d
o
u
r
o
_
C
l
i
e
n
t
e
 
=
 
R
e
p
l
a
c
e
(
M
e
.
L
o
g
r
a
d
o
u
r
o
_
C
l
i
e
n
t
e
,
 
"
%
E
D
"
,
 
"
í
"
)



M
e
.
L
o
g
r
a
d
o
u
r
o
_
C
l
i
e
n
t
e
 
=
 
R
e
p
l
a
c
e
(
M
e
.
L
o
g
r
a
d
o
u
r
o
_
C
l
i
e
n
t
e
,
 
"
%
F
3
"
,
 
"
ó
"
)



M
e
.
L
o
g
r
a
d
o
u
r
o
_
C
l
i
e
n
t
e
 
=
 
R
e
p
l
a
c
e
(
M
e
.
L
o
g
r
a
d
o
u
r
o
_
C
l
i
e
n
t
e
,
 
"
%
F
4
"
,
 
"
ô
"
)



M
e
.
L
o
g
r
a
d
o
u
r
o
_
C
l
i
e
n
t
e
 
=
 
R
e
p
l
a
c
e
(
M
e
.
L
o
g
r
a
d
o
u
r
o
_
C
l
i
e
n
t
e
,
 
"
%
F
5
"
,
 
"
õ
"
)



M
e
.
L
o
g
r
a
d
o
u
r
o
_
C
l
i
e
n
t
e
 
=
 
R
e
p
l
a
c
e
(
M
e
.
L
o
g
r
a
d
o
u
r
o
_
C
l
i
e
n
t
e
,
 
"
%
F
A
"
,
 
"
ú
"
)






M
e
.
B
a
i
r
r
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
 
R
e
p
l
a
c
e
(
M
e
.
B
a
i
r
r
o
_
c
l
i
e
n
t
e
,
 
"
%
E
1
"
,
 
"
á
"
)



M
e
.
B
a
i
r
r
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
 
R
e
p
l
a
c
e
(
M
e
.
B
a
i
r
r
o
_
c
l
i
e
n
t
e
,
 
"
%
E
2
"
,
 
"
â
"
)



M
e
.
B
a
i
r
r
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
 
R
e
p
l
a
c
e
(
M
e
.
B
a
i
r
r
o
_
c
l
i
e
n
t
e
,
 
"
%
E
3
"
,
 
"
ã
"
)



M
e
.
B
a
i
r
r
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
 
R
e
p
l
a
c
e
(
M
e
.
B
a
i
r
r
o
_
c
l
i
e
n
t
e
,
 
"
%
E
7
"
,
 
"
ç
"
)



M
e
.
B
a
i
r
r
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
 
R
e
p
l
a
c
e
(
M
e
.
B
a
i
r
r
o
_
c
l
i
e
n
t
e
,
 
"
%
E
9
"
,
 
"
é
"
)



M
e
.
B
a
i
r
r
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
 
R
e
p
l
a
c
e
(
M
e
.
B
a
i
r
r
o
_
c
l
i
e
n
t
e
,
 
"
%
E
A
"
,
 
"
ê
"
)



M
e
.
B
a
i
r
r
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
 
R
e
p
l
a
c
e
(
M
e
.
B
a
i
r
r
o
_
c
l
i
e
n
t
e
,
 
"
%
E
D
"
,
 
"
í
"
)



M
e
.
B
a
i
r
r
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
 
R
e
p
l
a
c
e
(
M
e
.
B
a
i
r
r
o
_
c
l
i
e
n
t
e
,
 
"
%
F
3
"
,
 
"
ó
"
)



M
e
.
B
a
i
r
r
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
 
R
e
p
l
a
c
e
(
M
e
.
B
a
i
r
r
o
_
c
l
i
e
n
t
e
,
 
"
%
F
4
"
,
 
"
ô
"
)



M
e
.
B
a
i
r
r
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
 
R
e
p
l
a
c
e
(
M
e
.
B
a
i
r
r
o
_
c
l
i
e
n
t
e
,
 
"
%
F
5
"
,
 
"
õ
"
)



M
e
.
B
a
i
r
r
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
 
R
e
p
l
a
c
e
(
M
e
.
B
a
i
r
r
o
_
c
l
i
e
n
t
e
,
 
"
%
F
A
"
,
 
"
ú
"
)






M
e
.
M
u
n
i
c
i
p
i
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
 
R
e
p
l
a
c
e
(
M
e
.
M
u
n
i
c
i
p
i
o
_
c
l
i
e
n
t
e
,
 
"
%
E
1
"
,
 
"
á
"
)



M
e
.
M
u
n
i
c
i
p
i
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
 
R
e
p
l
a
c
e
(
M
e
.
M
u
n
i
c
i
p
i
o
_
c
l
i
e
n
t
e
,
 
"
%
E
2
"
,
 
"
â
"
)



M
e
.
M
u
n
i
c
i
p
i
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
 
R
e
p
l
a
c
e
(
M
e
.
M
u
n
i
c
i
p
i
o
_
c
l
i
e
n
t
e
,
 
"
%
E
3
"
,
 
"
ã
"
)



M
e
.
M
u
n
i
c
i
p
i
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
 
R
e
p
l
a
c
e
(
M
e
.
M
u
n
i
c
i
p
i
o
_
c
l
i
e
n
t
e
,
 
"
%
E
7
"
,
 
"
ç
"
)



M
e
.
M
u
n
i
c
i
p
i
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
 
R
e
p
l
a
c
e
(
M
e
.
M
u
n
i
c
i
p
i
o
_
c
l
i
e
n
t
e
,
 
"
%
E
9
"
,
 
"
é
"
)



M
e
.
M
u
n
i
c
i
p
i
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
 
R
e
p
l
a
c
e
(
M
e
.
M
u
n
i
c
i
p
i
o
_
c
l
i
e
n
t
e
,
 
"
%
E
A
"
,
 
"
ê
"
)



M
e
.
M
u
n
i
c
i
p
i
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
 
R
e
p
l
a
c
e
(
M
e
.
M
u
n
i
c
i
p
i
o
_
c
l
i
e
n
t
e
,
 
"
%
E
D
"
,
 
"
í
"
)



M
e
.
M
u
n
i
c
i
p
i
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
 
R
e
p
l
a
c
e
(
M
e
.
M
u
n
i
c
i
p
i
o
_
c
l
i
e
n
t
e
,
 
"
%
F
3
"
,
 
"
ó
"
)



M
e
.
M
u
n
i
c
i
p
i
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
 
R
e
p
l
a
c
e
(
M
e
.
M
u
n
i
c
i
p
i
o
_
c
l
i
e
n
t
e
,
 
"
%
F
4
"
,
 
"
ô
"
)



M
e
.
M
u
n
i
c
i
p
i
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
 
R
e
p
l
a
c
e
(
M
e
.
M
u
n
i
c
i
p
i
o
_
c
l
i
e
n
t
e
,
 
"
%
F
5
"
,
 
"
õ
"
)



M
e
.
M
u
n
i
c
i
p
i
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
 
R
e
p
l
a
c
e
(
M
e
.
M
u
n
i
c
i
p
i
o
_
c
l
i
e
n
t
e
,
 
"
%
F
A
"
,
 
"
ú
"
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
t
n
P
l
a
n
o
M
e
n
s
a
l
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
C
l
i
e
n
t
e
s
P
l
a
n
o
A
t
i
v
o
s
_
C
o
m
p
l
e
t
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
[
C
o
d
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
C
o
d
_
c
l
i
e
n
t
e
,
 
a
c
F
o
r
m
R
e
a
d
O
n
l
y
,
 
a
c
I
c
o
n






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
5
 
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
e
 
C
l
i
e
n
t
e
 
i
n
v
á
l
i
d
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
V
i
n
c
u
l
a
r
G
r
u
p
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
v
i
n
c
u
l
o
c
l
i
e
n
t
e
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






E
x
i
t
 
S
u
b
:



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
5
 
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
e
 
C
l
i
e
n
t
e
 
i
n
v
á
l
i
d
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
 
C
P
F
_
C
N
P
J
_
C
l
i
e
n
t
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
 
N
z
(
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
c
l
i
e
n
t
e
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
"
,
 
"
[
C
P
F
_
C
N
P
J
_
C
l
i
e
n
t
e
]
=
'
"
 
&
 
N
z
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
!
C
P
F
_
C
N
P
J
_
C
l
i
e
n
t
e
,
 
"
0
"
)
 
&
 
"
'
"
)
,
 
0
)
 
>
 
0
 
T
h
e
n



M
e
.
C
P
F
_
C
N
P
J
_
C
l
i
e
n
t
e
 
=
 
"
"



M
s
g
B
o
x
 
"
C
P
F
 
j
á
 
c
a
d
a
s
t
r
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
 
C
x
C
l
i
e
n
t
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






W
i
t
h
 
M
e
!
C
x
C
l
i
e
n
t
e






 
 
 
 
M
e
!
C
o
d
_
c
l
i
e
n
t
e
 
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
)



 
 
 
 
M
e
!
N
o
m
e
R
a
z
a
o
S
o
c
i
a
l
_
C
l
i
e
n
t
e
 
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
D
t
N
a
s
c
i
m
e
n
t
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
T
i
p
o
D
o
c
u
m
e
n
t
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
4
)



 
 
 
 
M
e
!
C
P
F
_
C
N
P
J
_
C
l
i
e
n
t
e
 
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
T
e
l
e
f
o
n
e
_
C
l
i
e
n
t
e
 
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
I
n
s
c
r
i
c
a
o
E
s
t
a
d
u
a
l
_
c
l
i
e
n
t
e
 
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
I
s
e
n
t
o
I
C
M
S
 
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
I
n
s
c
r
i
c
a
o
S
U
F
R
A
M
A
 
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
E
m
a
i
l
_
c
l
i
e
n
t
e
 
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
c
e
p
_
c
l
i
e
n
t
e
 
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
L
o
g
r
a
d
o
u
r
o
_
C
l
i
e
n
t
e
 
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
C
o
m
p
l
e
m
e
n
t
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
N
u
m
e
r
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
B
a
i
r
r
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



 
 
 
 
M
e
!
U
F
_
c
l
i
e
n
t
e
 
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
M
u
n
i
c
i
p
i
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
P
a
i
s
_
c
l
i
e
n
t
e
 
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
D
t
E
x
p
R
G
_
c
l
i
e
n
t
e
 
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
O
r
g
a
o
E
x
p
R
G
_
c
l
i
e
n
t
e
 
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
E
s
t
a
d
o
C
i
v
i
l
_
c
l
i
e
n
t
e
 
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
g
e
n
e
r
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
N
o
m
e
P
a
i
_
c
l
i
e
n
t
e
 
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
N
o
m
e
M
a
e
_
c
l
i
e
n
t
e
 
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
l
i
e
n
t
e
 
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
A
t
i
v
o
_
C
l
i
e
n
t
e
 
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



 
 
 
 
M
e
!
T
i
t
u
l
a
r
_
C
l
i
e
n
t
e
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
2
7
)



 
 
 
 
M
e
!
V
i
n
c
u
l
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
 
.
C
o
l
u
m
n
(
2
8
)



 
 
 
 
M
e
!
A
p
e
l
i
d
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
 
.
C
o
l
u
m
n
(
2
9
)



 
 
 
 
M
e
!
R
G
_
c
l
i
e
n
t
e
 
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
0
)






E
n
d
 
W
i
t
h






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
 
M
e
.
T
i
p
o
D
o
c
u
m
e
n
t
o






 
 
 
 
C
a
s
e
 
"
C
P
F
"



 
 
 
 



 
 
 
 
M
e
.
C
P
F
_
C
N
P
J
_
C
l
i
e
n
t
e
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



 
 
 
 



 
 
 
 
C
a
s
e
 
"
C
N
P
J
"



 
 
 
 



 
 
 
 
M
e
.
C
P
F
_
C
N
P
J
_
C
l
i
e
n
t
e
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






 
 
 
 
C
a
s
e
 
E
l
s
e



 
 
 
 



 
 
 
 
M
e
.
C
P
F
_
C
N
P
J
_
C
l
i
e
n
t
e
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
C
u
r
r
e
n
t
(
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
 
M
e
.
T
i
p
o
D
o
c
u
m
e
n
t
o






 
 
 
 
C
a
s
e
 
"
C
P
F
"



 
 
 
 



 
 
 
 
M
e
.
C
P
F
_
C
N
P
J
_
C
l
i
e
n
t
e
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



 
 
 
 



 
 
 
 
C
a
s
e
 
"
C
N
P
J
"



 
 
 
 



 
 
 
 
M
e
.
C
P
F
_
C
N
P
J
_
C
l
i
e
n
t
e
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






 
 
 
 
C
a
s
e
 
E
l
s
e



 
 
 
 



 
 
 
 
M
e
.
C
P
F
_
C
N
P
J
_
C
l
i
e
n
t
e
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
 
<
>
 
2
1
0
5
 
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
 
N
o
m
e
R
a
z
a
o
S
o
c
i
a
l
_
C
l
i
e
n
t
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



M
e
.
A
p
e
l
i
d
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
N
o
m
e
R
a
z
a
o
S
o
c
i
a
l
_
C
l
i
e
n
t
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
 
T
i
p
o
D
o
c
u
m
e
n
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
 
M
e
.
T
i
p
o
D
o
c
u
m
e
n
t
o






 
 
 
 
C
a
s
e
 
"
C
P
F
"



 
 
 
 



 
 
 
 
M
e
.
C
P
F
_
C
N
P
J
_
C
l
i
e
n
t
e
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



 
 
 
 



 
 
 
 
C
a
s
e
 
"
C
N
P
J
"



 
 
 
 



 
 
 
 
M
e
.
C
P
F
_
C
N
P
J
_
C
l
i
e
n
t
e
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






 
 
 
 
C
a
s
e
 
E
l
s
e



 
 
 
 



 
 
 
 
M
e
.
C
P
F
_
C
N
P
J
_
C
l
i
e
n
t
e
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
 
T
i
p
o
D
o
c
u
m
e
n
t
o
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
T
i
p
o
D
o
c
u
m
e
n
t
o
 
=
 
"
C
P
F
"
 
T
h
e
n



 
 
 
 
M
e
.
C
P
F
_
C
N
P
J
_
C
l
i
e
n
t
e
.
I
n
p
u
t
M
a
s
k
 
=
 
"
#
#
#
,
#
#
#
,
#
#
#
-
#
#
"



'
 
 
 
 
M
e
.
C
P
F
_
C
N
P
J
_
C
l
i
e
n
t
e
.
S
e
t
F
o
c
u
s



 
 
 
 
'
M
e
!
R
ó
t
u
l
o
6
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
C
P
F
:
"



E
l
s
e



 
 
 
 
M
e
.
C
P
F
_
C
N
P
J
_
C
l
i
e
n
t
e
.
I
n
p
u
t
M
a
s
k
 
=
 
"
#
#
,
#
#
#
,
#
#
#
/
#
#
#
#
-
#
#
"



'
 
 
 
 
M
e
.
C
P
F
_
C
N
P
J
_
C
l
i
e
n
t
e
.
S
e
t
F
o
c
u
s



 
 
 
 
'
M
e
!
R
ó
t
u
l
o
6
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
C
N
P
J
:
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
 
T
i
t
u
l
a
r
_
C
l
i
e
n
t
e
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
c
l
i
e
n
t
e
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
c
l
i
e
n
t
e
 
=
 
"
"
 
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
S
a
l
v
e
 
o
 
C
a
d
a
s
t
r
o
,
 
d
e
p
o
i
s
 
c
a
r
r
e
g
u
e
 
o
 
c
a
d
a
s
t
r
o
 
p
a
r
a
 
t
o
r
n
a
-
l
o
 
T
I
T
U
L
A
R
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
l
s
e






 
 
 
 
I
f
 
M
e
.
T
i
t
u
l
a
r
_
C
l
i
e
n
t
e
s
 
=
 
0
 
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
c
l
i
e
n
t
e
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
"
,
 
"
[
v
i
n
c
u
l
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
C
o
d
_
c
l
i
e
n
t
e
)
 
>
 
0
 
T
h
e
n



 
 
 
 



 
 
 
 
 
 
 
 
M
e
.
T
i
t
u
l
a
r
_
C
l
i
e
n
t
e
s
 
=
 
-
1



 
 
 
 



 
 
 
 
 
 
 
 
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
 
c
l
i
e
n
t
e
 
t
e
m
 
d
e
p
e
n
d
e
n
t
e
s
 
e
m
 
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
 
e
l
e
 
d
e
i
x
a
r
 
d
e
 
s
e
r
 
u
m
 
T
i
t
u
l
a
r
 
a
 
n
ã
o
 
s
e
r
 
q
u
e
 
s
e
u
s
 
d
e
p
e
n
d
e
n
t
e
s
 
s
e
j
a
m
 
d
e
s
v
i
n
c
u
l
a
d
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
l
s
e






 
 
 
 
 
 
 
 
I
f
 
M
e
.
V
i
n
c
u
l
o
_
c
l
i
e
n
t
e
 
>
 
0
 
T
h
e
n






 
 
 
 
 
 
 
 
M
e
.
T
i
t
u
l
a
r
_
C
l
i
e
n
t
e
s
 
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
 
t
o
r
n
a
r
 
e
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
 
u
m
 
T
I
T
U
L
A
R
,
 
p
o
i
s
 
e
l
e
 
e
s
t
á
 
v
i
n
c
u
l
a
d
o
 
a
 
u
m
 
o
u
t
r
o
 
c
l
i
e
n
t
e
.
"
 
_



 
 
 
 
 
 
 
 
&
 
v
b
C
r
L
f
 
&
 
"
R
e
t
i
r
e
 
o
 
V
i
n
c
u
l
o
 
a
n
t
e
s
 
d
e
 
a
l
t
e
r
a
r
 
e
s
t
a
 
o
p
ç
ã
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
 
t
x
t
L
o
c
a
l
i
z
a
C
l
i
e
n
t
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



M
e
.
C
x
C
l
i
e
n
t
e
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
 
U
F
_
c
l
i
e
n
t
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



M
u
n
i
c
i
p
i
o
_
c
l
i
e
n
t
e
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
 
V
i
n
c
u
l
o
_
c
l
i
e
n
t
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









I
f
 
M
e
.
T
i
t
u
l
a
r
_
C
l
i
e
n
t
e
s
 
=
 
-
1
 
T
h
e
n






 
 
 
 
'
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
c
l
i
e
n
t
e
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
"
,
 
"
[
v
i
n
c
u
l
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
C
o
d
_
c
l
i
e
n
t
e
)
 
>
 
0
 
T
h
e
n



 
 
 
 



 
 
 
 
M
e
.
V
i
n
c
u
l
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
 
N
u
l
l



 
 
 
 



 
 
 
 
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
 
c
l
i
e
n
t
e
 
é
 
o
 
T
i
t
u
l
a
r
 
d
o
 
C
a
d
a
s
t
r
o
,
 
p
o
r
t
a
n
t
o
,
 
n
ã
o
 
p
o
d
e
 
s
e
r
 
V
i
n
c
u
l
a
d
o
 
a
 
o
u
t
r
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
m
a
r
q
u
e
 
a
 
o
p
ç
ã
o
 
C
L
I
E
N
T
E
 
T
I
T
U
L
A
R
 
p
a
r
a
 
a
l
t
e
r
a
r
 
e
s
t
e
 
c
a
m
p
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