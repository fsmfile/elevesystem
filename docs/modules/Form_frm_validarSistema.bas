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
D
i
m
 
V
D
 
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
D
i
m
 
C
o
n
t
1
 
A
s
 
I
n
t
e
g
e
r



'
D
i
m
 
C
o
n
t
2
 
A
s
 
I
n
t
e
g
e
r



'
D
i
m
 
C
o
n
t
3
 
A
s
 
I
n
t
e
g
e
r









'
P
r
i
v
a
t
e
 
D
e
c
l
a
r
e
 
F
u
n
c
t
i
o
n
 
F
i
n
d
W
i
n
d
o
w
 
L
i
b
 
"
u
s
e
r
3
2
"
 
A
l
i
a
s
 
"
F
i
n
d
W
i
n
d
o
w
A
"
 
(
B
y
V
a
l
 
l
p
C
l
a
s
s
N
a
m
e
 
A
s
 
S
t
r
i
n
g
,
 
B
y
V
a
l
 
l
p
W
i
n
d
o
w
N
a
m
e
 
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
 
L
o
n
g









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






I
f
 
K
e
y
C
o
d
e
 
=
 
v
b
K
e
y
F
3
 
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
 
i
r
 
à
 
t
e
l
a
 
d
e
 
C
o
n
f
i
g
u
r
a
ç
ã
o
?
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
v
a
l
i
d
a
r
s
i
s
t
e
m
a
"



 
 
 
 
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
i
s
t
e
m
a
_
a
d
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
R
e
g






'
D
o
C
m
d
.
S
h
o
w
T
o
o
l
b
a
r
 
"
r
i
b
b
o
n
"
,
 
a
c
T
o
o
l
b
a
r
Y
e
s















'
I
f
 
D
i
r
(
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
h
a
b
i
l
i
t
a
n
a
v
e
l
e
v
e
.
r
e
g
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
h
a
b
i
l
i
t
a
n
a
v
e
l
e
v
e
.
r
e
g
"
 
T
h
e
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
h
a
b
i
l
i
t
a
n
a
v
e
l
e
v
e
.
r
e
g
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
h
a
b
i
l
i
t
a
n
a
v
e
l
e
v
e
.
r
e
g
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
C
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
"
 
&
 
"
C
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
"
 
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
D
o
 
W
h
i
l
e
 
F
i
n
d
W
i
n
d
o
w
(
v
b
N
u
l
l
S
t
r
i
n
g
,
 
"
C
a
l
c
u
l
a
d
o
r
a
"
)
 
>
 
0



'
L
o
o
p






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
h
a
b
i
l
i
t
a
n
a
v
e
l
e
v
e
.
r
e
g
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
R
e
g
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
 
7
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
 
V
e
r
i
f
i
c
a
J
a
n
e
l
a
(
)



'
I
f
 
F
i
n
d
W
i
n
d
o
w
(
v
b
N
u
l
l
S
t
r
i
n
g
,
 
"
C
a
l
c
u
l
a
d
o
r
a
"
)
 
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
E
x
i
s
t
e
 
u
m
a
 
j
a
n
e
l
a
 
a
b
e
r
t
a
 
c
o
m
 
o
 
n
o
m
e
 
d
e
 
:
 
"
 
&
 
"
C
a
l
c
u
l
a
d
o
r
a
"



'
E
n
d
 
I
f



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
 
B
a
i
x
a
r
B
A
T
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
 
t
r
a
t
a
e
r
r
o



'
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
 
p
a
r
a
 
b
a
i
x
a
r
 
a
 
B
A
T
 
q
u
e
 
i
r
á
 
e
x
e
c
u
t
a
r
 
o
 
a
r
q
u
i
v
o
 
.
r
e
g






'
I
f
 
D
i
r
(
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
g
r
a
v
a
r
e
g
n
a
v
.
b
a
t
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
g
r
a
v
a
r
e
g
n
a
v
.
b
a
t
"
 
T
h
e
n






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
h
a
b
i
l
i
t
a
n
a
v
e
l
e
v
e
.
r
e
g
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
E
l
s
e






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
g
r
a
v
a
r
e
g
n
a
v
.
b
a
t
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
C
o
n
t
3
 
=
 
1



'
V
D
 
=
 
D
i
r
(
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
g
r
a
v
a
r
e
g
n
a
v
.
b
a
t
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
g
r
a
v
a
r
e
g
n
a
v
.
b
a
t
"



'
D
o
 
W
h
i
l
e
 
V
D
 
=
 
0
 
A
n
d
 
C
o
n
t
 
<
 
1
0
0
0
0



'
V
D
 
=
 
D
i
r
(
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
g
r
a
v
a
r
e
g
n
a
v
.
b
a
t
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
g
r
a
v
a
r
e
g
n
a
v
.
b
a
t
"



'
C
o
n
t
3
 
=
 
C
o
n
t
3
 
+
 
1



'
C
a
l
l
 
L
e
A
r
q
u
i
v
o
T
e
x
t
o



'
L
o
o
p






'
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
 
m
o
m
e
n
t
o
,
 
i
r
ã
o
 
a
p
a
r
e
c
e
r
 
d
u
a
s
 
m
e
n
s
a
g
e
n
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
 
S
I
M
 
n
a
s
 
d
u
a
s
 
m
e
n
s
a
g
e
n
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
g
r
a
v
a
R
e
g
N
a
v
.
b
a
t
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






'
E
n
d
 
I
f






'
E
x
i
t
 
S
u
b






'
t
r
a
t
a
e
r
r
o
:






'
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






'
 
 
 
 
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
 
=
 
7
0



'
 
 
 
 
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



 
 
 
 



'
 
 
 
 
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
 
=
 
5
3



 
'
 
 
 
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



'



'
 
 
 
 
C
a
s
e
 
E
l
s
e



'
 
 
 
 
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






'
E
n
d
 
S
e
l
e
c
t









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
 
D
a
t
e
 
>
 
C
D
a
t
e
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
v
a
l
o
r
]
"
,
 
"
_
p
a
r
a
m
e
t
r
o
s
"
,
 
"
[
p
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
e
x
p
i
r
a
s
i
s
t
e
m
a
'
"
)
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
U
P
D
A
T
E
 
t
b
l
C
a
m
i
n
h
o
B
e
 
S
E
T
 
t
b
l
C
a
m
i
n
h
o
B
e
.
F
o
r
m
P
r
i
n
c
i
p
a
l
 
=
 
'
c
h
k
_
s
t
a
r
t
'
;
"



 
 
 
 
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
c
h
k
_
s
t
a
r
t
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
v
a
l
i
d
a
r
s
i
s
t
e
m
a
"



 
 
 
 
'
M
s
g
B
o
x
 
"
S
i
s
t
e
m
a
 
A
t
u
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



 
 
 
 
'
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
l
o
g
i
n
s
i
s
t
e
m
a
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
v
a
l
i
d
a
r
s
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






'
C
a
l
l
 
C
h
e
c
a
r
C
l
i
e
n
t
e






'
I
f
 
V
a
r
C
h
e
c
a
r
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
 
T
h
e
n



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
v
a
l
i
d
a
r
s
i
s
t
e
m
a
!
C
h
e
c
a
g
e
m
1
 
=
 
"
V
a
l
i
d
a
ç
ã
o
 
d
e
 
c
l
i
e
n
t
e
.
.
.
 
O
K
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
v
a
l
i
d
a
r
s
i
s
t
e
m
a
!
C
h
e
c
a
g
e
m
2
 
=
 
"
C
h
e
c
a
n
d
o
 
a
u
t
o
r
i
z
a
ç
ã
o
 
n
e
s
t
e
 
P
C
.
.
.
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
 
V
a
r
C
h
e
c
a
r
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
 
T
h
e
n



'
C
a
l
l
 
C
h
e
c
a
r
H
D
L
o
c
a
l



'
E
n
d
 
I
f






'
I
f
 
V
a
r
C
h
e
c
a
r
H
D
 
=
 
-
1
 
T
h
e
n



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
v
a
l
i
d
a
r
s
i
s
t
e
m
a
!
C
h
e
c
a
g
e
m
2
 
=
 
"
V
a
l
i
d
a
ç
ã
o
 
d
o
 
C
o
m
p
u
t
a
d
o
r
.
.
.
 
O
K
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
v
a
l
i
d
a
r
s
i
s
t
e
m
a
!
C
h
e
c
a
g
e
m
3
 
=
 
"
C
h
e
c
a
n
d
o
 
S
e
r
i
a
l
 
M
e
n
s
a
l
.
.
.
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
 
V
a
r
C
h
e
c
a
r
H
D
 
=
 
-
1
 
T
h
e
n



'
C
a
l
l
 
C
h
e
c
a
r
S
e
r
i
a
l
M
e
n
s
a
l



'
E
n
d
 
I
f






'
I
f
 
V
a
r
C
h
e
c
a
r
S
e
r
i
a
l
M
e
n
s
a
l
 
=
 
-
1
 
T
h
e
n



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
v
a
l
i
d
a
r
s
i
s
t
e
m
a
!
C
h
e
c
a
g
e
m
3
 
=
 
"
S
e
r
i
a
l
 
M
e
n
s
a
l
.
.
.
 
O
K
"



'
E
n
d
 
I
f









'
C
a
l
l
 
C
h
e
c
a
r
S
e
r
i
a
l
M
e
n
s
a
l



'
D
o
 
W
h
i
l
e
 
N
o
t
 
(
V
a
r
C
h
e
c
a
r
S
e
r
i
a
l
M
e
n
s
a
l
 
=
 
-
1
 
O
r
 
V
a
r
C
h
e
c
a
r
S
e
r
i
a
l
M
e
n
s
a
l
 
=
 
0
)



'
L
o
o
p



'
 
 
 
 
I
f
 
V
a
r
C
h
e
c
a
r
S
e
r
i
a
l
M
e
n
s
a
l
 
=
 
0
 
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
v
a
l
i
d
a
r
s
i
s
t
e
m
a
"



'
 
 
 
 
E
l
s
e



'



'
 
 
 
 
 
 
 
I
f
 
V
a
r
C
h
e
c
a
r
S
e
r
i
a
l
M
e
n
s
a
l
 
=
 
-
1
 
T
h
e
n



'
 
 
 
 
 
 
 
 
C
a
l
l
 
C
h
e
c
a
r
H
D
L
o
c
a
l



'
 
 
 
 
 
 
 
 
D
o
 
W
h
i
l
e
 
N
o
t
 
(
V
a
r
C
h
e
c
a
r
H
D
 
=
 
-
1
 
O
r
 
V
a
r
C
h
e
c
a
r
H
D
 
=
 
0
)



'
 
 
 
 
 
 
 
 
L
o
o
p



'
 
 
 
 
 
 
 
 
 
 
 
 
I
f
 
V
a
r
C
h
e
c
a
r
H
D
 
=
 
-
1
 
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
v
a
l
i
d
a
r
s
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
S
a
v
e
Y
e
s



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



'
 
 
 
 
 
 
 
 
 
 
 
 
E
l
s
e



'
 
 
 
 
 
 
 
 
 
 
 
 
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
o
m
p
u
t
a
d
o
r
 
n
ã
o
 
t
e
m
 
a
u
t
o
r
i
z
a
ç
ã
o
 
p
a
r
a
 
f
u
n
c
i
o
n
a
r
 
o
 
E
R
P
 
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



'
 
 
 
 
 
 
 
 
 
 
 
 
E
n
d
 
I
f



'



'
 
 
 
 
 
 
 
E
n
d
 
I
f



'
 
 
E
n
d
 
I
f



'



'
E
l
s
e



'



'
C
a
l
l
 
C
h
e
c
a
r
H
D
L
o
c
a
l



'
D
o
 
W
h
i
l
e
 
N
o
t
 
(
V
a
r
C
h
e
c
a
r
H
D
 
=
 
-
1
 
O
r
 
V
a
r
C
h
e
c
a
r
H
D
 
=
 
0
)



'
L
o
o
p



'
 
 
 
 
I
f
 
V
a
r
C
h
e
c
a
r
H
D
 
=
 
-
1
 
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
v
a
l
i
d
a
r
s
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
S
a
v
e
Y
e
s



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



'
 
 
 
 
E
l
s
e



'
 
 
 
 
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
o
m
p
u
t
a
d
o
r
 
n
ã
o
 
t
e
m
 
a
u
t
o
r
i
z
a
ç
ã
o
 
p
a
r
a
 
f
u
n
c
i
o
n
a
r
 
o
 
E
R
P
 
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



'
 
 
 
 
E
n
d
 
I
f



'



'
E
n
d
 
I
f






'
I
f
 
V
a
r
C
h
e
c
a
r
S
e
r
i
a
l
M
e
n
s
a
l
 
=
 
-
1
 
A
n
d
 
V
a
r
C
h
e
c
a
r
H
D
 
=
 
-
1
 
A
n
d
 
V
a
r
C
h
e
c
a
r
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
v
a
l
i
d
a
r
s
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
S
a
v
e
Y
e
s



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