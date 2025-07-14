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
 
Q
u
i
t
a
r
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



'
I
f
 
M
e
.
q
u
i
t
a
r
 
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
 
C
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
 
q
u
i
t
a
r
 
e
s
t
a
 
p
a
r
c
e
l
a
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



'
 
 
 
 
V
a
l
o
r
P
a
g
o
 
=
 
V
a
l
o
r
P
a
r
c



'
 
 
 
 
D
t
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
 
D
a
t
e



'
 
 
 
 
E
n
d
 
I
f



'
E
l
s
e



'
V
a
l
o
r
P
a
g
o
 
=
 
"
"



'
D
t
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
 
"
"



'
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
a
l
o
r
P
a
g
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
 
V
a
l
o
r
P
a
g
o
 
=
 
V
a
l
o
r
P
a
r
c
 
T
h
e
n



D
t
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
 
D
a
t
e



q
u
i
t
a
r
 
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
X
C
L
U
I
R
 
e
s
t
a
 
d
í
v
i
d
a
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
o
d
.
 
d
a
 
D
í
v
i
d
a
:
 
"
 
&
 
M
e
.
c
o
d
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
E
T
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
I
S
T
E
M
A
S
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
 
M
e
.
N
a
m
e
 
&
 
"
;
"
 
&
 
"
E
X
C
L
U
S
Ã
O
 
D
E
 
D
Í
V
I
D
A
"
 
&
 
"
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
E
T
 
&
 
"
;
"
 
&
 
"
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



 
 
 
 



 
 
 
 
'
s
a
l
v
a
 
o
 
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
E
n
v
i
a
 
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
x
c
l
u
i
r



 
 
 
 
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
ç
ã
o
 
r
e
a
l
i
z
a
d
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
R
e
c
e
b
e
r
D
E
T
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
 
a
l
t
e
r
a
r
 
o
 
v
a
l
o
r
 
d
e
s
t
a
 
d
í
v
i
d
a
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
o
d
.
 
d
a
 
D
í
v
i
d
a
:
 
"
 
&
 
M
e
.
c
o
d
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
E
T
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
I
S
T
E
M
A
S
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
 
M
e
.
N
a
m
e
 
&
 
"
;
"
 
&
 
"
A
L
T
E
R
A
Ç
Ã
O
 
V
A
L
O
R
 
D
Í
V
I
D
A
"
 
&
 
"
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
E
T
 
&
 
"
;
"
 
&
 
"
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



 
 
 
 



 
 
 
 
'
s
a
l
v
a
 
o
 
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
E
n
v
i
a
 
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
ç
ã
o
 
r
e
a
l
i
z
a
d
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
A
l
t
e
r
a
ç
ã
o
 
d
o
 
V
a
l
o
r
 
d
a
 
D
í
v
i
d
a
 
d
o
 
c
l
i
e
n
t
e
:
 
"
 
&
 
M
e
.
c
o
d
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
E
T
 
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
C
L
I
E
N
T
E
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
C
o
d
C
l
i
:
 
"
 
&
 
M
e
.
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
c
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
V
a
l
o
r
 
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
:
 
"
 
&
 
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
r
c
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
E
T
 
&
 
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
U
S
U
Á
R
I
O
 
Q
U
E
 
E
F
E
T
U
O
U
 
A
 
A
L
T
E
R
A
Ç
Ã
O
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
D
A
T
A
 
E
 
H
O
R
A
 
D
A
 
A
L
T
E
R
A
Ç
Ã
O
:
 
"
 
&
 
N
o
w
 
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
E
x
c
l
u
i
r
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
 
D
í
v
i
d
a
 
d
o
 
c
l
i
e
n
t
e
:
 
"
 
&
 
M
e
.
c
o
d
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
E
T
 
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
C
L
I
E
N
T
E
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
C
o
d
C
l
i
:
 
"
 
&
 
M
e
.
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
c
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
V
a
l
o
r
 
d
a
 
d
í
v
i
d
a
 
e
x
c
l
u
í
d
a
:
 
"
 
&
 
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
r
c
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
E
T
 
&
 
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
C
o
d
.
 
d
a
 
D
í
v
i
d
a
:
 
"
 
&
 
M
e
.
c
o
d
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
E
T
 
&
 
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
U
S
U
Á
R
I
O
 
Q
U
E
 
E
F
E
T
U
O
U
 
A
 
A
L
T
E
R
A
Ç
Ã
O
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
D
A
T
A
 
E
 
H
O
R
A
 
D
A
 
A
L
T
E
R
A
Ç
Ã
O
:
 
"
 
&
 
N
o
w
 
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





