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
 
v
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
R
e
c
e
b
e
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



D
i
m
 
v
a
r
D
t
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
 
A
s
 
D
a
t
e



'
D
i
m
 
X
,
 
C
o
n
t
a
d
o
r
,
 
S
o
m
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
l
o
c
a
l
i
z
a
r
r
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
C
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
 
=
 
"
s
i
m
"
 
T
h
e
n






 
 
 
 
'
V
e
r
i
f
i
c
a
 
s
e
 
e
x
i
s
t
e
 
p
a
r
c
e
l
a
 
c
r
i
a
d
a



 
 
 
 
I
f
 
M
e
.
t
x
t
V
e
r
i
f
i
c
a
C
a
d
a
s
t
r
o
 
<
=
 
0
 
T
h
e
n



 
 
 
 






 
 
 
 
 
 
 
 
I
f
 
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
T
o
t
a
l
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
)
 
O
r
 
M
e
.
D
t
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
s
R
e
c
e
b
e
r
 
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
c
o
n
t
a
s
a
r
e
c
e
b
e
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



 
 
 
 
 
 
 
 
 
 
 
 
v
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
R
e
c
e
b
e
r
 
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
C
o
n
t
a
s
a
R
e
c
e
b
e
r
"
)



 
 
 
 
 
 
 
 
 
 
 
 
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
t
o
t
a
l
_
c
o
n
t
a
s
r
e
c
e
b
e
r
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
T
o
t
a
l
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



 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
d
t
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
s
R
e
c
e
b
e
r
"
)
 
=
 
M
e
.
D
t
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
s
R
e
c
e
b
e
r



 
 
 
 
 
 
 
 
 
 
 
 
'
r
s
t
(
"
P
a
r
c
e
l
a
s
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
"
)
 
=
 
M
e
.
P
a
r
c
e
l
a
s
_
c
o
n
t
a
s
r
e
c
e
b
e
r



 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
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
"
)
 
=
 
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



 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
p
l
a
n
o
m
e
n
s
a
l
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
c
o
n
t
a
s
r
e
c
e
b
e
r
_
a
t
i
v
o
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
c
o
d
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
s
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
l
a
n
o
C
o
n
t
a
s



 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
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
s
R
e
c
e
b
e
r
"
)
 
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



 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
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
"
)
 
=
 
M
e
.
C
o
d
V
e
n
d
a
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



 
 
 
 
 
 
 
 
'
E
n
d
 
I
f






 
 
 
 
 
 
 
 
'
l
i
m
p
a
 
o
s
 
c
a
m
p
o
s



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
M
e
.
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
 
=
 
0



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
M
e
.
D
t
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
s
R
e
c
e
b
e
r
 
=
 
"
"



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
M
e
.
P
a
r
c
e
l
a
s
_
c
o
n
t
a
s
r
e
c
e
b
e
r
 
=
 
"
"



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
 
=
 
"
"



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
 
=
 
"
"



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
M
e
.
c
o
d
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
s
 
=
 
"
"



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
M
e
.
C
o
d
V
e
n
d
a
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
 
=
 
"
"



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
'
M
e
.
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
"



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
'
M
e
.
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
o
n
t
a
 
a
 
R
e
c
e
b
e
r
 
c
r
i
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






 
 
 
 
 
 
 
 
'
P
a
s
s
a
 
o
 
c
ó
d
i
g
o
 
d
o
 
c
o
n
t
a
s
 
a
 
r
e
c
e
b
e
r
 
d
a
 
v
a
r
i
á
v
e
l
 
p
a
r
a
 
o
 
C
a
m
p
o
 
C
o
d
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



 
 
 
 
 
 
 
 
'
M
e
.
C
o
d
_
c
o
n
t
a
s
A
r
e
c
e
b
e
r
 
=
 
v
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
R
e
c
e
b
e
r









 
 
 
 
 
 
 
 
'
I
n
í
c
i
o
 
d
a
 
C
r
i
a
ç
ã
o
 
d
a
 
P
a
r
c
e
l
a



 
 
 
 
 
 
 
 
'
C
a
l
l
 
f
n
c
C
r
i
a
P
a
r
c
e
l
a









 
 
 
 
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
 
c
r
i
a
r
 
u
m
 
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
,
 
v
o
c
ê
 
d
e
v
e
 
e
x
c
l
u
i
r
 
a
 
p
a
r
c
e
l
a
 
c
r
i
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
 
c
r
i
a
r
 
e
s
t
a
 
C
o
n
t
a
 
a
 
R
e
c
e
b
e
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
a
l
i
z
a
 
t
e
s
t
e
 
p
a
r
a
 
v
e
r
i
f
i
c
a
r
 
s
e
 
e
x
i
s
t
e
 
a
l
g
u
m
a
 
p
a
r
c
e
l
a
 
c
r
i
a
d
a



 
 
 
 
 
 
 
 
I
f
 
M
e
.
t
x
t
V
e
r
i
f
i
c
a
C
a
d
a
s
t
r
o
 
>
 
0
 
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



 
 
 
 



 
 
 
 
 
 
 
 
'
C
o
p
i
a
 
o
s
 
d
a
d
o
s
 
d
a
 
t
a
b
e
l
a
 
t
e
m
p
o
r
á
r
i
a
 
p
a
r
a
 
a
 
t
a
b
e
l
a
 
d
o
 
c
o
n
t
a
s
 
a
 
r
e
c
e
b
e
r



 
 
 
 
 
 
 
 
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
 
t
b
l
_
r
o
t
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
_
d
e
t
 
(
 
C
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
,
 
N
u
m
e
r
a
c
a
o
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
,
 
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
 
D
a
t
a
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
 
T
M
P
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
C
r
i
a
r
C
R
.
C
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
,
 
T
M
P
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
C
r
i
a
r
C
R
.
N
u
m
e
r
a
c
a
o
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
,
 
T
M
P
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
C
r
i
a
r
C
R
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
,
 
T
M
P
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
C
r
i
a
r
C
R
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
 
T
M
P
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
C
r
i
a
r
C
R
.
D
a
t
a
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
"
 
_



 
 
 
 
 
 
 
 
&
 
"
 
F
R
O
M
 
T
M
P
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
C
r
i
a
r
C
R
;
"



 
 
 
 



 
 
 
 
 
 
 
 
M
s
g
B
o
x
 
"
C
o
n
t
a
 
a
 
R
e
c
e
b
e
r
 
c
r
i
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



 
 
 
 



 
 
 
 
 
 
 
 
'
l
i
m
p
a
 
o
s
 
c
a
m
p
o
s



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
M
e
.
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
 
=
 
0



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
M
e
.
D
t
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
s
R
e
c
e
b
e
r
 
=
 
"
"



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
M
e
.
P
a
r
c
e
l
a
s
_
c
o
n
t
a
s
r
e
c
e
b
e
r
 
=
 
"
"



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
 
=
 
"
"



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
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
 
=
 
"
"



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
M
e
.
c
o
d
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
s
 
=
 
"
"



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
M
e
.
C
o
d
V
e
n
d
a
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
 
=
 
"
"



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
'
M
e
.
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
"



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
'
M
e
.
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
 
"
"



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 



 
 
 
 
 
 
 
 
'
A
p
a
g
a
 
o
s
 
d
a
d
o
s
 
d
a
 
t
a
b
e
l
a
 
t
e
m
p
o
r
á
r
i
a



 
 
 
 
 
 
 
 
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






 
 
 
 
 
 
 
 
f
r
m
_
r
o
t
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
_
d
e
t
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
a
r
i
o
.
S
e
t
F
o
c
u
s






 
 
 
 
 
 
 
 
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
C
r
i
a
r
C
R
.
*
,
 
T
M
P
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
C
r
i
a
r
C
R
.
C
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
"
 
_



 
 
 
 
 
 
 
 
&
 
"
 
F
r
o
m
 
T
M
P
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
C
r
i
a
r
C
R
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
T
M
P
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
C
r
i
a
r
C
R
.
C
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
)
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
r
e
c
e
b
e
r
]
!
[
C
o
d
_
c
o
n
t
a
s
A
r
e
c
e
b
e
r
]
)
)
;
"



 
 
 
 



 
 
 
 
 
 
 
 
M
e
.
C
o
d
_
c
o
n
t
a
s
A
r
e
c
e
b
e
r
 
=
 
0



 
 
 
 



 
 
 
 
 
 
 
 
M
e
.
f
r
m
_
r
o
t
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
_
d
e
t
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
a
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
 
S
a
l
v
a
r
 
u
m
a
 
C
o
n
t
a
 
s
e
m
 
g
e
r
a
r
 
u
m
a
 
p
a
r
c
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
_
S
a
v
e
_
G
e
r
a
P
a
r
c
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
 
T
r
a
t
a
e
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
V
e
r
i
f
i
c
a
C
a
d
a
s
t
r
o
 
>
 
0
 
T
h
e
n






C
a
l
l
 
f
n
c
C
r
i
a
P
a
r
c
e
l
a






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
t
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
s
R
e
c
e
b
e
r
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
M
e
.
P
a
r
c
e
l
a
s
_
c
o
n
t
a
s
r
e
c
e
b
e
r
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
T
o
t
a
l
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
 
=
 
0
 
O
r
 
M
e
.
D
t
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
s
R
e
c
e
b
e
r
 
=
 
"
"
 
O
r
 
M
e
.
P
a
r
c
e
l
a
s
_
c
o
n
t
a
s
r
e
c
e
b
e
r
 
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
c
o
n
t
a
s
a
r
e
c
e
b
e
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



 
 
 
 
 
 
 
 
v
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
R
e
c
e
b
e
r
 
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
C
o
n
t
a
s
a
R
e
c
e
b
e
r
"
)



 
 
 
 
 
 
 
 
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
t
o
t
a
l
_
c
o
n
t
a
s
r
e
c
e
b
e
r
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
T
o
t
a
l
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



 
 
 
 
 
 
 
 
r
s
t
(
"
d
t
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
s
R
e
c
e
b
e
r
"
)
 
=
 
M
e
.
D
t
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
s
R
e
c
e
b
e
r



 
 
 
 
 
 
 
 
r
s
t
(
"
P
a
r
c
e
l
a
s
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
"
)
 
=
 
M
e
.
P
a
r
c
e
l
a
s
_
c
o
n
t
a
s
r
e
c
e
b
e
r



 
 
 
 
 
 
 
 
r
s
t
(
"
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
"
)
 
=
 
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



 
 
 
 
 
 
 
 
r
s
t
(
"
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
s
R
e
c
e
b
e
r
"
)
 
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



 
 
 
 
 
 
 
 
r
s
t
(
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
"
)
 
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
.
C
o
d
V
e
n
d
a
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
)
 
O
r
 
M
e
.
C
o
d
V
e
n
d
a
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
V
e
n
d
a
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
V
e
n
d
a
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
)



 
 
 
 
 
 
 
 
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



 
 
 
 
'
E
n
d
 
I
f






 
 
 
 
'
P
a
s
s
a
 
o
 
c
ó
d
i
g
o
 
d
o
 
c
o
n
t
a
s
 
a
 
r
e
c
e
b
e
r
 
d
a
 
v
a
r
i
á
v
e
l
 
p
a
r
a
 
o
 
C
a
m
p
o
 
C
o
d
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



 
 
 
 
M
e
.
C
o
d
_
c
o
n
t
a
s
A
r
e
c
e
b
e
r
 
=
 
v
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
R
e
c
e
b
e
r









 
 
 
 
'
I
n
í
c
i
o
 
d
a
 
C
r
i
a
ç
ã
o
 
d
a
 
P
a
r
c
e
l
a



 
 
 
 
C
a
l
l
 
f
n
c
C
r
i
a
P
a
r
c
e
l
a












 
 
 
 
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
 
C
o
d
V
e
n
d
a
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
 
=
 
M
e
.
C
o
d
V
e
n
d
a
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
V
e
r
i
f
i
c
a
C
a
d
a
s
t
r
o
 
>
 
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
e
c
h
a
r
 
e
s
t
a
 
j
a
n
e
l
a
 
s
e
m
 
S
a
l
v
a
r
 
a
s
 
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
r
e
c
e
b
e
r
.
*
,
 
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
s
a
r
e
c
e
b
e
r
.
C
o
d
_
c
o
n
t
a
s
A
r
e
c
e
b
e
r
 
F
r
o
m
 
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
s
a
r
e
c
e
b
e
r
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
c
o
n
t
a
s
a
r
e
c
e
b
e
r
.
C
o
d
_
c
o
n
t
a
s
A
r
e
c
e
b
e
r
)
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
r
e
c
e
b
e
r
]
!
[
C
o
d
_
c
o
n
t
a
s
A
r
e
c
e
b
e
r
]
)
)
;
"



 
 
 
 



 
 
 
 
f
r
m
_
r
o
t
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
_
d
e
t
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
a
r
i
o
.
S
e
t
F
o
c
u
s






 
 
 
 
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
C
r
i
a
r
C
R
.
*
,
 
T
M
P
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
C
r
i
a
r
C
R
.
C
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
"
 
_



 
 
 
 
&
 
"
 
F
r
o
m
 
T
M
P
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
C
r
i
a
r
C
R
;
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
T
M
P
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
C
r
i
a
r
C
R
.
C
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
)
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
r
e
c
e
b
e
r
]
!
[
C
o
d
_
c
o
n
t
a
s
A
r
e
c
e
b
e
r
]
)
)
;
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
r
e
c
e
b
e
r
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



 
 
 
 



 
 
 
 
E
n
d
 
I
f






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
s
a
r
e
c
e
b
e
r
.
*
,
 
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
s
a
r
e
c
e
b
e
r
.
C
o
d
_
c
o
n
t
a
s
A
r
e
c
e
b
e
r
 
F
r
o
m
 
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
s
a
r
e
c
e
b
e
r
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
c
o
n
t
a
s
a
r
e
c
e
b
e
r
.
C
o
d
_
c
o
n
t
a
s
A
r
e
c
e
b
e
r
)
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
r
e
c
e
b
e
r
]
!
[
C
o
d
_
c
o
n
t
a
s
A
r
e
c
e
b
e
r
]
)
)
;
"



 
 
 
 



 
 
 
 
f
r
m
_
r
o
t
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
_
d
e
t
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
a
r
i
o
.
S
e
t
F
o
c
u
s






 
 
 
 
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
C
r
i
a
r
C
R
.
*
,
 
T
M
P
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
C
r
i
a
r
C
R
.
C
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
"
 
_



 
 
 
 
&
 
"
 
F
r
o
m
 
T
M
P
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
C
r
i
a
r
C
R
;
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
T
M
P
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
C
r
i
a
r
C
R
.
C
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
)
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
r
e
c
e
b
e
r
]
!
[
C
o
d
_
c
o
n
t
a
s
A
r
e
c
e
b
e
r
]
)
)
;
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
r
e
c
e
b
e
r
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
c
l
i
e
n
t
e
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
L
i
m
p
a
P
a
r
c
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






 
 
 
 
f
r
m
_
r
o
t
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
_
d
e
t
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
a
r
i
o
.
S
e
t
F
o
c
u
s



 
 
 
 



 
 
 
 
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
C
r
i
a
r
C
R
.
*
,
 
T
M
P
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
C
r
i
a
r
C
R
.
C
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
"
 
_



 
 
 
 
&
 
"
 
F
r
o
m
 
T
M
P
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
C
r
i
a
r
C
R
;
"



 
 
 
 



 
 
 
 
M
e
.
f
r
m
_
r
o
t
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
_
d
e
t
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
a
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
2
3
2
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
R
u
n
S
Q
L
 
"
U
P
D
A
T
E
 
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
s
a
r
e
c
e
b
e
r
 
L
E
F
T
 
J
O
I
N
 
(
t
b
l
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
 
L
E
F
T
 
J
O
I
N
 
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
v
e
n
d
a
s
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
c
o
n
t
a
s
a
r
e
c
e
b
e
r
.
C
o
d
V
e
n
d
a
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
 
=
 
t
b
l
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
.
C
o
d
_
v
e
n
d
a
 
S
E
T
 
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
s
a
r
e
c
e
b
e
r
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
 
=
 
[
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
]
!
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
c
o
n
t
a
s
a
r
e
c
e
b
e
r
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
)
 
I
s
 
N
u
l
l
)
 
A
N
D
 
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
c
o
n
t
a
s
a
r
e
c
e
b
e
r
.
C
o
d
V
e
n
d
a
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
)
 
I
s
 
N
o
t
 
N
u
l
l
)
)
;
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
 
F
u
n
c
t
i
o
n
 
f
n
c
C
r
i
a
P
a
r
c
e
l
a
(
)



 
 
 
 
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
C
o
d
_
c
o
n
t
a
s
A
r
e
c
e
b
e
r
)
 
T
h
e
n






 
 
 
 
 
 
 
 
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
T
o
t
a
l
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
P
a
r
c
e
l
a
s
_
c
o
n
t
a
s
r
e
c
e
b
e
r
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
 
C
L
I
E
N
T
E
,
 
V
A
L
O
R
 
T
O
T
A
L
 
e
 
Q
T
D
 
D
E
 
P
A
R
C
E
L
A
S
 
p
r
e
c
i
s
a
m
 
e
s
t
a
r
 
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
s
 
p
a
r
a
 
a
s
 
p
a
r
c
e
l
a
s
 
s
e
r
e
m
 
g
e
r
a
d
a
s
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






 
 
 
 
 
 
 
 
f
r
m
_
r
o
t
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
_
d
e
t
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
a
r
i
o
.
S
e
t
F
o
c
u
s






 
 
 
 
 
 
 
 
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
C
r
i
a
r
C
R
.
*
,
 
T
M
P
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
C
r
i
a
r
C
R
.
C
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
"
 
_



 
 
 
 
 
 
 
 
&
 
"
 
F
r
o
m
 
T
M
P
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
C
r
i
a
r
C
R
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
T
M
P
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
C
r
i
a
r
C
R
.
C
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
)
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
r
e
c
e
b
e
r
]
!
[
C
o
d
_
c
o
n
t
a
s
A
r
e
c
e
b
e
r
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
T
M
P
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
C
r
i
a
r
C
R
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
 
=
 
M
e
.
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
 
/
 
M
e
.
P
a
r
c
e
l
a
s
_
c
o
n
t
a
s
r
e
c
e
b
e
r
 
'
V
a
l
o
r
 
d
a
s
 
p
a
r
c
e
l
a
s









 
 
 
 
 
 
 
 
'
X
 
=
 
M
e
.
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



 
 
 
 
 
 
 
 
'
C
o
n
t
a
d
o
r
 
=
 
1



 
 
 
 
 
 
 
 
'
S
o
m
a
 
=
 
0



 
 
 
 
 
 
 
 



 
 
 
 
 
 
 
 
'
D
o
 
W
h
i
l
e
 
C
o
n
t
a
d
o
r
 
<
 
X



 
 
 
 
 
 
 
 



 
 
 
 
 
 
 
 
F
o
r
 
i
 
=
 
1
 
T
o
 
M
e
.
P
a
r
c
e
l
a
s
_
c
o
n
t
a
s
r
e
c
e
b
e
r
 
'
I
n
s
e
r
e
 
a
s
 
p
a
r
c
e
l
a
s
 
n
a
 
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
"
)
 
=
 
M
e
.
C
o
d
_
c
o
n
t
a
s
A
r
e
c
e
b
e
r



 
 
 
 
 
 
 
 
r
s
t
(
"
N
u
m
e
r
a
c
a
o
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
"
)
 
=
 
i



 
 
 
 
 
 
 
 
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
"
)
 
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



 
 
 
 
 
 
 
 
r
s
t
(
"
D
a
t
a
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
"
)
 
=
 
D
a
t
e
A
d
d
(
M
e
.
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
V
a
l
u
e
,
 
(
i
 
-
 
1
)
 
+
 
M
e
.
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
V
a
l
u
e
,
 
M
e
.
D
t
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
s
R
e
c
e
b
e
r
)
 
'
C
a
l
c
u
l
a
 
a
s
 
d
a
t
a
s
 
d
e
 
v
e
n
c
i
m
e
n
t
o



 
 
 
 
 
 
 
 
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






 
 
 
 
 
 
 
 
N
e
x
t






 
 
 
 
 
 
 
 
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
e
.
f
r
m
_
r
o
t
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
_
d
e
t
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
a
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
n
d
 
I
f






 
 
 
 
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
 
t
b
l
_
r
o
t
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
_
d
e
t
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
 
t
b
l
_
r
o
t
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
_
d
e
t
.
C
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
,
 
t
b
l
_
r
o
t
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
_
d
e
t
.
N
u
m
e
r
a
c
a
o
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
,
 
t
b
l
_
r
o
t
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
_
d
e
t
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
,
 
t
b
l
_
r
o
t
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
_
d
e
t
.
D
a
t
a
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
,
 
t
b
l
_
r
o
t
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
_
d
e
t
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
 
t
b
l
_
r
o
t
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
_
d
e
t
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
 
F
R
O
M
 
t
b
l
_
r
o
t
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
_
d
e
t
 
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
_
d
e
t
.
C
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
)
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
r
e
c
e
b
e
r
]
!
[
C
o
d
_
c
o
n
t
a
s
A
r
e
c
e
b
e
r
]
)
)
;
"



 
 
 
 
M
e
.
f
r
m
_
r
o
t
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
_
d
e
t
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
a
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
a
r
c
e
l
a
s
_
c
o
n
t
a
s
r
e
c
e
b
e
r
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
a
r
c
e
l
a
s
_
c
o
n
t
a
s
r
e
c
e
b
e
r
 
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
P
a
r
c
e
l
a
s
_
c
o
n
t
a
s
r
e
c
e
b
e
r
 
=
 
1



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
 
=
 
"
s
i
m
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
 
=
 
N
u
l
l



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
R
a
d
i
o
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



M
e
.
R
a
d
i
o
C
o
d
V
e
n
d
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
C
o
d
V
e
n
d
a
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









 
 
 
 
I
f
 
M
e
.
t
x
t
V
e
r
i
f
i
c
a
C
a
d
a
s
t
r
o
 
>
 
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
 
i
r
á
 
a
p
a
g
a
r
 
t
o
d
a
s
 
a
s
 
P
a
r
c
e
l
a
s
 
c
r
i
a
d
a
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
 
"
D
e
s
e
j
a
 
C
o
n
t
i
n
u
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



 
 
 
 
 
 
 
 



 
 
 
 
 
 
 
 
f
r
m
_
r
o
t
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
_
d
e
t
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
a
r
i
o
.
S
e
t
F
o
c
u
s



 
 
 
 



 
 
 
 
 
 
 
 
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
C
r
i
a
r
C
R
.
*
,
 
T
M
P
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
C
r
i
a
r
C
R
.
C
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
"
 
_



 
 
 
 
 
 
 
 
&
 
"
 
F
r
o
m
 
T
M
P
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
C
r
i
a
r
C
R
;
"



 
 
 
 



 
 
 
 
 
 
 
 
M
e
.
f
r
m
_
r
o
t
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
_
d
e
t
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
a
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



 
 
 
 
 
 
 
 



 
 
 
 
 
 
 
 
M
e
.
P
a
r
c
e
l
a
s
_
c
o
n
t
a
s
r
e
c
e
b
e
r
 
=
 
"
"



 
 
 
 
 
 
 
 
M
e
.
P
a
r
c
e
l
a
s
_
c
o
n
t
a
s
r
e
c
e
b
e
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
 
0



 
 
 
 
 
 
 
 
M
e
.
b
t
n
_
S
a
v
e
_
G
e
r
a
P
a
r
c
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
c
o
d
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
l
s
e



 
 
 
 
 
 
 
 



 
 
 
 
 
 
 
 
M
e
.
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
 
=
 
"
N
ã
o
"



 
 
 
 
 
 
 
 
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
 
=
 
N
u
l
l



 
 
 
 
 
 
 
 
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
l
s
e



 
 
 
 






 
 
 
 



 
 
 
 
f
r
m
_
r
o
t
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
_
d
e
t
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
a
r
i
o
.
S
e
t
F
o
c
u
s



 
 
 
 



 
 
 
 
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
C
r
i
a
r
C
R
.
*
,
 
T
M
P
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
C
r
i
a
r
C
R
.
C
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
"
 
_



 
 
 
 
&
 
"
 
F
r
o
m
 
T
M
P
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
C
r
i
a
r
C
R
;
"



 
 
 
 



 
 
 
 
M
e
.
f
r
m
_
r
o
t
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
_
d
e
t
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
a
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



 
 
 
 
 
 
 
 



 
 
 
 
M
e
.
P
a
r
c
e
l
a
s
_
c
o
n
t
a
s
r
e
c
e
b
e
r
 
=
 
"
"



 
 
 
 
M
e
.
P
a
r
c
e
l
a
s
_
c
o
n
t
a
s
r
e
c
e
b
e
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
 
0



 
 
 
 
M
e
.
b
t
n
_
S
a
v
e
_
G
e
r
a
P
a
r
c
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
c
o
d
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
l
s
e






M
e
.
P
a
r
c
e
l
a
s
_
c
o
n
t
a
s
r
e
c
e
b
e
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
 
-
1



M
e
.
b
t
n
_
S
a
v
e
_
G
e
r
a
P
a
r
c
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
c
o
d
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



M
e
.
c
o
d
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
s
 
=
 
N
u
l
l



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
 
=
 
N
u
l
l



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
R
a
d
i
o
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



M
e
.
R
a
d
i
o
C
o
d
V
e
n
d
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
V
e
n
d
a
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
a
d
i
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






M
e
.
R
a
d
i
o
C
l
i
e
n
t
e
 
=
 
-
1



M
e
.
R
a
d
i
o
C
o
d
V
e
n
d
a
 
=
 
0



M
e
.
C
o
d
V
e
n
d
a
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



M
e
.
C
o
d
V
e
n
d
a
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
 
=
 
N
u
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
 
R
a
d
i
o
C
o
d
V
e
n
d
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
R
a
d
i
o
C
l
i
e
n
t
e
 
=
 
0



M
e
.
R
a
d
i
o
C
o
d
V
e
n
d
a
 
=
 
-
1



M
e
.
C
o
d
V
e
n
d
a
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
 
=
 
N
u
l
l






E
n
d
 
S
u
b