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






D
i
m
 
v
P
a
t
h
 
A
s
 
S
t
r
i
n
g



D
i
m
 
v
F
i
l
e
 
A
s
 
S
t
r
i
n
g



D
i
m
 
v
F
T
P
S
e
r
v
 
A
s
 
S
t
r
i
n
g



D
i
m
 
f
N
u
m
 
A
s
 
L
o
n
g






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
 
E
r
r
o
9
4
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
s
g
B
o
x
 
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
c
o
d
_
c
a
d
f
o
r
m
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
f
o
r
m
h
i
p
e
r
l
i
n
k
"
,
 
"
[
c
o
d
_
c
a
d
f
o
r
m
]
=
"
 
&
 
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
)
,
 
0
)
 
>
 
0



 
 
 
 
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
c
o
d
_
c
a
d
f
o
r
m
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
f
o
r
m
h
i
p
e
r
l
i
n
k
"
,
 
"
[
c
o
d
_
c
a
d
f
o
r
m
]
=
"
 
&
 
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
 
t
e
l
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
 
o
 
n
ú
m
e
r
o
 
d
a
 
t
e
l
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
 
F
u
n
c
t
i
o
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
C
o
p
i
a
B
D
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
 
b
a
c
k
b
d



C
a
l
l
 
E
n
v
i
a
D
a
d
o
s
l
o
j
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
 
b
t
n
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
e
r
t
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
s
o
b
r
e
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
)
 
T
h
e
n



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



'
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
 
9
4
 
T
h
e
n






E
r
r
o
9
4






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






'
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



'
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



'
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
S
u
p
o
r
t
e
R
e
m
o
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
 
D
i
r
(
"
C
:
\
P
r
o
g
r
a
m
 
F
i
l
e
s
 
(
x
8
6
)
\
L
o
g
M
e
I
n
 
R
e
s
c
u
e
 
C
a
l
l
i
n
g
 
C
a
r
d
\
d
2
4
0
3
r
\
C
a
l
l
i
n
g
C
a
r
d
.
e
x
e
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
C
a
l
l
i
n
g
C
a
r
d
.
e
x
e
"
 
O
r
 
D
i
r
(
"
C
:
\
P
r
o
g
r
a
m
 
F
i
l
e
s
\
L
o
g
M
e
I
n
 
R
e
s
c
u
e
 
C
a
l
l
i
n
g
 
C
a
r
d
\
d
2
4
0
3
r
\
C
a
l
l
i
n
g
C
a
r
d
.
e
x
e
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
C
a
l
l
i
n
g
C
a
r
d
.
e
x
e
"
 
T
h
e
n






S
h
e
l
l
 
"
C
:
\
P
r
o
g
r
a
m
 
F
i
l
e
s
 
(
x
8
6
)
\
L
o
g
M
e
I
n
 
R
e
s
c
u
e
 
C
a
l
l
i
n
g
 
C
a
r
d
\
d
2
4
0
3
r
\
C
a
l
l
i
n
g
C
a
r
d
.
e
x
e
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
F
o
c
u
s









E
l
s
e






'
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
 
F
t
p
R
e
c
e
b
e
r
(
)



'
D
i
m
 
v
P
a
t
h
 
A
s
 
S
t
r
i
n
g



'
D
i
m
 
v
F
i
l
e
 
A
s
 
S
t
r
i
n
g



'
D
i
m
 
v
F
T
P
S
e
r
v
 
A
s
 
S
t
r
i
n
g



'
D
i
m
 
f
N
u
m
 
A
s
 
L
o
n
g






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
s
u
p
o
r
t
e
r
e
m
o
t
o
f
l
m
.
e
x
e
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
c
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
c
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
 
&
 
v
F
T
P
S
e
r
v
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
M
s
g
B
o
x
 
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
 
v
P
a
t
h
 
&
 
"
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
 
&
 
v
F
T
P
S
e
r
v



'
M
s
g
B
o
x
 
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



'
M
s
g
B
o
x
T
i
m
e
r
 
2
,
 
"
R
e
a
l
i
z
a
n
d
o
 
d
o
w
n
l
o
a
d
 
e
 
a
b
r
i
n
d
o
 
A
m
m
y
 
A
d
m
i
n
.
.
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
P
o
r
 
f
a
v
o
r
,
 
a
g
u
a
r
d
e
.
 
E
s
t
a
 
m
e
n
s
a
g
e
m
 
f
e
c
h
a
r
á
 
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
A
g
u
a
r
d
e
.
.
.
"









'
S
h
e
l
l
 
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
s
u
p
o
r
t
e
r
e
m
o
t
o
f
l
m
.
e
x
e
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
F
o
c
u
s



'
K
i
l
l
 
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






M
s
g
B
o
x
 
"
A
p
l
i
c
a
t
i
v
o
 
N
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
n
t
r
e
 
n
o
 
S
i
t
e
:
 
h
t
t
p
:
/
/
s
u
p
o
r
t
e
r
e
m
o
t
o
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
3
 
T
h
e
n



S
h
e
l
l
 
"
C
:
\
P
r
o
g
r
a
m
 
F
i
l
e
s
\
L
o
g
M
e
I
n
 
R
e
s
c
u
e
 
C
a
l
l
i
n
g
 
C
a
r
d
\
d
2
4
0
3
r
\
C
a
l
l
i
n
g
C
a
r
d
.
e
x
e
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
F
o
c
u
s



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
T
e
l
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
s
_
T
e
l
a
s
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
F
o
r
m
D
S



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



'
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



'
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



'
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






'
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






'
D
i
m
 
h
o
s
P
i
n
g
 
A
s
 
S
t
r
i
n
g






'
T
e
s
t
e
 
c
o
n
e
x
ã
o
 
c
o
m
 
a
 
i
n
t
e
r
n
e
t






'
h
o
s
P
i
n
g
 
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
V
a
l
o
r
]
"
,
 
"
_
S
e
c
u
r
i
t
y
_
C
o
n
f
"
,
 
"
[
P
a
r
a
m
e
t
r
o
]
=
'
h
o
s
P
i
n
g
'
"
)
,
 
"
w
w
w
.
g
o
o
g
l
e
.
c
o
m
.
b
r
"
)






'
I
f
 
W
M
I
P
i
n
g
(
h
o
s
P
i
n
g
)
 
=
 
T
r
u
e
 
T
h
e
n
 
 
 
 
'
T
e
m
 
c
o
n
e
x
ã
o
 
c
o
m
 
a
 
i
n
t
e
r
n
e
t






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
:
/
/
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
 
T
r
u
e






'
E
l
s
e






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



'
M
e
.
C
a
i
x
a
S
e
m
I
n
t
e
r
n
e
t
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






'
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
n
t
a
t
e
m
p
o
l
o
g
a
d
o
"
,
 
,
 
,
 
,
 
,
 
a
c
H
i
d
d
e
n






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






'
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



'
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
1
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



'
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
 
9
4






E
r
r
o
9
4



 
 
 
 



C
a
s
e
 
2
4
9
4



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
a
 
o
p
ç
ã
o
 
d
e
 
t
e
l
a
 
p
a
r
a
 
a
b
r
i
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
e
l
e
c
t






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



'
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



'
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
)
 
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



M
s
g
B
o
x
 
"
T
e
l
a
 
j
á
 
a
b
e
r
t
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
 
I
f



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
 
9
4






 
E
r
r
o
9
4






C
a
s
e
 
2
4
9
4



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
a
 
o
p
ç
ã
o
 
d
e
 
t
e
l
a
 
p
a
r
a
 
a
b
r
i
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
e
l
e
c
t






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






'
P
r
i
v
a
t
e
 
F
u
n
c
t
i
o
n
 
W
M
I
P
i
n
g
(
s
t
r
A
d
r
 
A
s
 
S
t
r
i
n
g
)
 
A
s
 
B
o
o
l
e
a
n



'



'
1
0
 
 
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
 
W
M
I
P
i
n
g
_
E
r
r
o



'



'
 
 
 
 
D
i
m
 
o
b
j
P
i
n
g
 
A
s
 
O
b
j
e
c
t
,
 
o
b
j
S
t
a
t
u
s
 
A
s
 
O
b
j
e
c
t



'
2
0
 
 
S
e
t
 
o
b
j
P
i
n
g
 
=
 
G
e
t
O
b
j
e
c
t
(
"
w
i
n
m
g
m
t
s
:
{
i
m
p
e
r
s
o
n
a
t
i
o
n
L
e
v
e
l
=
i
m
p
e
r
s
o
n
a
t
e
}
"
)
.
 
_



'
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
E
x
e
c
Q
u
e
r
y
(
"
s
e
l
e
c
t
 
*
 
f
r
o
m
 
W
i
n
3
2
_
P
i
n
g
S
t
a
t
u
s
 
w
h
e
r
e
 
a
d
d
r
e
s
s
 
=
 
'
"
 
&
 
s
t
r
A
d
r
 
&
 
"
'
"
)



'
3
0
 
 
F
o
r
 
E
a
c
h
 
o
b
j
S
t
a
t
u
s
 
I
n
 
o
b
j
P
i
n
g



'
4
0
 
 
 
 
 
 
I
f
 
I
s
N
u
l
l
(
o
b
j
S
t
a
t
u
s
.
S
t
a
t
u
s
C
o
d
e
)
 
O
r
 
o
b
j
S
t
a
t
u
s
.
S
t
a
t
u
s
C
o
d
e
 
<
>
 
0
 
T
h
e
n



'
5
0
 
 
 
 
 
 
 
 
 
 
W
M
I
P
i
n
g
 
=
 
F
a
l
s
e



'
6
0
 
 
 
 
 
 
E
l
s
e



'
7
0
 
 
 
 
 
 
 
 
 
 
W
M
I
P
i
n
g
 
=
 
T
r
u
e



'
8
0
 
 
 
 
 
 
E
n
d
 
I
f



'
9
0
 
 
N
e
x
t



'



'
1
0
0
 
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
 
0



'
1
1
0
 
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



'



'



'
W
M
I
P
i
n
g
_
E
r
r
o
:



'



'



'
1
2
0
 
D
o
C
m
d
.
H
o
u
r
g
l
a
s
s
 
F
a
l
s
e



'



'



'
1
3
0
 
M
s
g
B
o
x
 
"
O
c
o
r
r
e
u
 
u
m
 
e
r
r
o
 
n
a
 
a
p
l
i
c
a
ç
ã
o
.
"
 
&
 
v
b
C
r
 
&
 
"
R
e
l
a
t
e
 
o
s
 
d
a
d
o
s
 
a
b
a
i
x
o
 
a
o
 
s
u
p
o
r
t
e
.
"
 
&
 
v
b
C
r
 
&
 
_



'
 
 
 
 
 
 
 
 
 
 
 
"
E
r
r
o
 
N
º
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
 
&
 
_



'
 
 
 
 
 
 
 
 
 
 
 
"
D
e
s
c
r
i
ç
ã
o
 
d
o
 
e
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
 
&
 
v
b
C
r
 
&
 
_



'
 
 
 
 
 
 
 
 
 
 
 
"
M
ó
d
u
l
o
:
 
"
 
&
 
"
P
a
r
a
m
e
t
r
o
s
_
C
o
n
e
x
a
o
_
W
e
b
"
 
&
 
v
b
C
r
 
&
 
_



'
 
 
 
 
 
 
 
 
 
 
 
"
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
:
 
"
 
&
 
"
W
M
I
P
i
n
g
"
 
&
 
v
b
C
r
 
&
 
_



'
 
 
 
 
 
 
 
 
 
 
 
"
L
i
n
h
a
:
 
"
 
&
 
E
r
l
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
 
n
o
m
e
a
p
l
i
c
a
t
i
v
o



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





