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



O
p
t
i
o
n
 
E
x
p
l
i
c
i
t






P
u
b
l
i
c
 
s
R
e
g
K
e
y
 
 
 
 
 
 
 
 
 
 
A
s
 
S
t
r
i
n
g



P
u
b
l
i
c
 
s
I
n
i
t
i
R
e
g
K
e
y
 
 
 
 
 
A
s
 
S
t
r
i
n
g



P
u
b
l
i
c
 
b
R
e
g
K
e
y
E
x
i
s
t
s
 
 
 
 
A
s
 
B
o
o
l
e
a
n












P
u
b
l
i
c
 
F
u
n
c
t
i
o
n
 
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
(
)
 
A
s
 
S
t
r
i
n
g



'
 
R
e
t
u
r
n
s
 
t
h
e
 
h
o
s
t
 
n
a
m
e












'
 
U
s
e
s
 
l
a
t
e
-
b
i
n
d
i
n
g
:
 
b
a
d
 
f
o
r
 
p
e
r
f
o
r
m
a
n
c
e
 
a
n
d
 
s
t
a
b
i
l
i
t
y
,
 
u
s
e
f
u
l
 
f
o
r



'
 
c
o
d
e
 
p
o
r
t
a
b
i
l
i
t
y
.
 
T
h
e
 
c
o
r
r
e
c
t
 
d
e
c
l
a
r
a
t
i
o
n
 
i
s
:












'
 
 
 
D
i
m
 
o
b
j
N
e
t
w
o
r
k
 
 
A
s
 
I
W
s
h
R
u
n
t
i
m
e
L
i
b
r
a
r
y
.
W
s
h
N
e
t
w
o
r
k



'
 
 
 
S
e
t
 
o
b
j
N
e
t
w
o
r
k
 
=
 
N
e
w
 
I
W
s
h
R
u
n
t
i
m
e
L
i
b
r
a
r
y
.
W
s
h
N
e
t
w
o
r
k












D
i
m
 
o
b
j
N
e
t
w
o
r
k
 
A
s
 
O
b
j
e
c
t



S
e
t
 
o
b
j
N
e
t
w
o
r
k
 
=
 
C
r
e
a
t
e
O
b
j
e
c
t
(
"
W
S
c
r
i
p
t
.
N
e
t
w
o
r
k
"
)






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
 
=
 
o
b
j
N
e
t
w
o
r
k
.
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






S
e
t
 
o
b
j
N
e
t
w
o
r
k
 
=
 
N
o
t
h
i
n
g









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
 
b
t
n
_
A
b
r
i
r
C
h
a
m
a
d
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
b
r
i
r
c
h
a
m
a
d
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
a
b
r
i
r
f
o
r
m
_
c
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
M
e
.
S
u
b
F
o
r
m
_
I
f
r
a
m
e
.
S
o
u
r
c
e
O
b
j
e
c
t
 
=
 
M
e
.
L
i
s
t
P
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
s






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
 
T
x
t
L
i
n
k
F
o
r
m
.
V
a
l
u
e
,
 
T
x
t
F
o
r
m
V
i
e
w
.
V
a
l
u
e
,
 
,
 
,
 
T
x
t
D
a
t
a
M
o
d
e
.
V
a
l
u
e



b
t
n
_
a
b
r
i
r
f
o
r
m
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
E
s
t
a
 
t
e
l
a
 
n
ã
o
 
e
x
i
s
t
e
 
o
u
 
v
o
c
ê
 
n
ã
o
 
t
e
m
 
p
e
r
m
i
s
s
ã
o
 
p
a
r
a
 
a
c
e
s
s
a
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
C
o
d
i
g
o
T
e
l
a
 
=
 
"
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
f
e
c
h
a
r
E
b
k
p
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
i
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
A
v
i
s
o
 
d
e
 
S
a
í
d
a
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
 
C
a
l
l
 
b
a
c
k
b
d






Q
u
i
t
 
a
c
Q
u
i
t
S
a
v
e
A
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
E
b
k
p
_
g
o
t
f
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
 
=
 
"
S
E
R
V
I
D
O
R
"
 
T
h
e
n



M
e
.
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
E
b
k
p
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



M
e
.
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
E
b
k
p
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
 
b
t
n
_
F
o
r
m
A
l
e
r
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
O
p
e
n
F
o
r
m
 
t
x
t
l
i
n
k
f
o
r
m
2
.
V
a
l
u
e
,
 
t
x
t
f
o
r
m
v
i
e
w
2
.
V
a
l
u
e
,
 
,
 
,
 
t
x
t
D
a
t
a
M
o
d
e
2
.
V
a
l
u
e



b
t
n
_
F
o
r
m
A
l
e
r
t
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
_
L
o
g
o
u
t
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
 
e
f
e
t
u
a
r
 
l
o
g
o
u
t
 
d
o
 
u
s
u
á
r
i
o
 
a
t
u
a
l
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
S
a
v
e
Y
e
s






C
a
l
l
 
f
n
c
F
e
c
h
a
F
o
r
m
s






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
o
k
E
m
p
r
e
s
a
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
 
C
x
E
m
p
r
e
s
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
 
A
n
d
 
t
x
t
C
N
P
J
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
 
T
h
e
n



C
x
E
m
p
r
e
s
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
C
N
P
J
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



C
x
E
m
p
r
e
s
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



t
x
t
C
N
P
J
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
s
g
B
o
x
 
"
A
l
t
e
r
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
r
e
f
r
e
s
h
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






C
a
l
l
 
C
o
n
f
i
g
B
a
s
i
c






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
c
a
l
c






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
2
)









'
M
e
.
M
s
g
W
e
b
.
E
x
e
c
W
B
 
O
L
E
C
M
D
I
D
_
Z
O
O
M
,
 
O
L
E
C
M
D
E
X
E
C
O
P
T
_
D
O
N
T
P
R
O
M
P
T
U
S
E
R
,
 
C
L
n
g
(
0
)
,
 
v
b
N
u
l
l



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
M
e
.
M
s
g
W
e
b
.
E
x
e
c
W
B
 
O
L
E
C
M
D
I
D
_
P
R
I
N
T
,
 
O
L
E
C
M
D
E
X
E
C
O
P
T
_
D
O
N
T
P
R
O
M
P
T
U
S
E
R
,
 
"
"
,
 
"
"






'
W
e
b
B
r
o
w
s
e
r
.
E
x
e
c
W
B
 
n
C
m
d
I
D
,
 
n
C
m
d
E
x
e
c
O
p
t
,
 
[
p
v
a
I
n
]
,
 
[
p
v
a
O
u
t
]






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
t
r
o
c
a
s
e
n
h
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
t
r
o
c
a
s
e
n
h
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
A
t
u
a
l
i
z
a
r
S
i
s
t
e
m
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
i
m
 
M
i
n
h
a
P
a
s
s
w
o
r
d
 
A
s
 
V
a
r
i
a
n
t



 
 
 
 
 
 
 
 
'
S
t
a
t
i
c
 
o
b
j
a
c
c
e
s
s
 
A
s
 
A
c
c
e
s
s
.
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



 
 
 
 
 
 
 
 
'
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



 
 
 
 
 
 
 
 
'
M
i
n
h
a
P
a
s
s
w
o
r
d
 
=
 
"
C
a
4
8
6
5
7
5
@
"



 
 
 
 
 
 
 
 
'
s
t
r
D
b
N
a
m
e
 
=
 
"
C
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
U
p
d
a
t
e
S
y
s
t
e
m
F
L
M
.
a
c
c
d
e
"



 
 
 
 
 
 
 
 
'
S
e
t
 
o
b
j
a
c
c
e
s
s
 
=
 
N
e
w
 
A
c
c
e
s
s
.
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



 
 
 
 
 
 
 
 
'
S
e
t
 
d
b
 
=
 
o
b
j
a
c
c
e
s
s
.
D
B
E
n
g
i
n
e
.
O
p
e
n
D
a
t
a
b
a
s
e
(
,
 
F
a
l
s
e
,
 
F
a
l
s
e
,
 
"
;
P
W
D
=
"
 
&
 
M
i
n
h
a
P
a
s
s
w
o
r
d
)



 
 
 
 
 
 
 
 
'
o
b
j
a
c
c
e
s
s
.
O
p
e
n
C
u
r
r
e
n
t
D
a
t
a
b
a
s
e
 
f
i
l
e
p
a
t
h
:
=
s
t
r
D
b
N
a
m
e



 
 
 
 
 
 
 
 
'
o
b
j
a
c
c
e
s
s
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
 
C
x
E
m
p
r
e
s
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



t
x
t
C
N
P
J
 
=
 
C
x
E
m
p
r
e
s
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
I
r
p
a
r
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



L
i
s
t
P
r
o
c
e
s
s
o
s
A
u
t
 
=
 
"
"



L
i
s
t
P
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
s
 
=
 
"
"



T
x
t
L
i
n
k
F
o
r
m
 
=
 
C
x
I
r
p
a
r
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



T
x
t
F
o
r
m
V
i
e
w
 
=
 
C
x
I
r
p
a
r
a
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



T
x
t
D
a
t
a
M
o
d
e
 
=
 
C
x
I
r
p
a
r
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



b
t
n
_
a
b
r
i
r
f
o
r
m
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
_
a
b
r
i
r
f
o
r
m
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
 
C
x
I
r
p
a
r
a
_
N
o
t
I
n
L
i
s
t
(
N
e
w
D
a
t
a
 
A
s
 
S
t
r
i
n
g
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



M
s
g
B
o
x
 
"
V
o
c
ê
 
n
ã
o
 
t
e
m
 
p
e
r
m
i
s
s
ã
o
 
p
a
r
a
 
a
c
e
s
s
a
r
 
e
s
t
a
 
p
á
g
i
n
a
 
o
u
 
e
l
a
 
n
ã
o
 
e
x
i
s
t
e
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



b
t
n
_
a
b
r
i
r
f
o
r
m
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
F
o
r
m
A
l
e
r
t
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
2
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
L
o
a
d
(
)



M
e
.
C
x
E
m
p
r
e
s
a
 
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






 
 
 
 
D
i
m
 
s
U
R
L
 
A
s
 
S
t
r
i
n
g






 
 
 
 
s
U
R
L
 
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
w
w
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
/
s
u
p
o
r
t
e
"



'
 
 
 
 
 
s
U
R
L
 
=
 
"
h
t
t
p
s
:
/
/
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
t
o
m
t
i
c
k
e
t
.
c
o
m
/
c
h
a
t
/
?
i
d
=
E
P
1
7
1
9
6
&
a
c
=
1
1
0
0
5
4
4
P
1
3
0
6
2
0
1
8
1
2
5
4
5
5
"



 
 
 
 
'
W
e
b
B
r
o
w
s
e
r
 
N
a
v
i
g
a
t
i
o
n



 
 
 
 
M
e
.
M
s
g
W
e
b
.
N
a
v
i
g
a
t
e
 
s
U
R
L



 
 
 
 
M
e
.
M
s
g
W
e
b
.
O
b
j
e
c
t
.
S
i
l
e
n
t
 
=
 
F
a
l
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






D
o
C
m
d
.
M
a
x
i
m
i
z
e






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
8
0
0
0
0
0






I
f
 
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
 
=
 
"
S
E
R
V
I
D
O
R
"
 
T
h
e
n






C
a
l
l
 
b
a
c
k
b
d






E
n
d
 
I
f






C
a
l
l
 
C
o
n
f
i
g
B
a
s
i
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
T
i
m
e
r
(
)






I
f
 
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
 
=
 
"
S
E
R
V
I
D
O
R
"
 
T
h
e
n






C
a
l
l
 
b
a
c
k
b
d






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
U
n
l
o
a
d
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



C
a
l
l
 
D
e
s
a
b
i
l
i
t
a
B
o
t
F
e
c
h
a
r



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
P
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






T
x
t
L
i
n
k
F
o
r
m
 
=
 
L
i
s
t
P
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
s
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



T
x
t
F
o
r
m
V
i
e
w
 
=
 
L
i
s
t
P
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
s
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



T
x
t
D
a
t
a
M
o
d
e
 
=
 
L
i
s
t
P
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
s
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



C
x
I
r
p
a
r
a
 
=
 
L
i
s
t
P
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
s
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
t
x
t
C
o
d
i
g
o
T
e
l
a
 
=
 
L
i
s
t
P
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
s
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



b
t
n
_
a
b
r
i
r
f
o
r
m
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
_
a
b
r
i
r
f
o
r
m
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
 
L
i
s
t
P
r
o
c
e
s
s
o
s
A
u
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



L
i
s
t
P
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
s
.
R
e
q
u
e
r
y



L
i
s
t
P
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
s
 
=
 
"
"



C
x
I
r
p
a
r
a
 
=
 
"
"



T
x
t
L
i
n
k
F
o
r
m
 
=
 
"
"



b
t
n
_
a
b
r
i
r
f
o
r
m
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
1
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






t
x
t
l
i
n
k
f
o
r
m
2
 
=
 
l
s
t
1
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



t
x
t
f
o
r
m
v
i
e
w
2
 
=
 
l
s
t
1
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



t
x
t
D
a
t
a
M
o
d
e
2
 
=
 
l
s
t
1
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



b
t
n
_
F
o
r
m
A
l
e
r
t
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
2
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






t
x
t
l
i
n
k
f
o
r
m
2
 
=
 
l
s
t
2
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



t
x
t
f
o
r
m
v
i
e
w
2
 
=
 
l
s
t
2
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



t
x
t
D
a
t
a
M
o
d
e
2
 
=
 
l
s
t
2
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



b
t
n
_
F
o
r
m
A
l
e
r
t
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
C
o
d
i
g
o
T
e
l
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
C
x
I
r
p
a
r
a
 
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
i
g
o
T
e
l
a






L
i
s
t
P
r
o
c
e
s
s
o
s
A
u
t
 
=
 
"
"



L
i
s
t
P
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
s
 
=
 
"
"



T
x
t
L
i
n
k
F
o
r
m
 
=
 
C
x
I
r
p
a
r
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



T
x
t
F
o
r
m
V
i
e
w
 
=
 
C
x
I
r
p
a
r
a
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



T
x
t
D
a
t
a
M
o
d
e
 
=
 
C
x
I
r
p
a
r
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



b
t
n
_
a
b
r
i
r
f
o
r
m
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
_
a
b
r
i
r
f
o
r
m
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