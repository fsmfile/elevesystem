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
P
r
o
c
u
r
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



D
i
m
 
T
i
t
u
l
o
 
A
s
 
S
t
r
i
n
g
,
 
f
i
l
t
r
o
 
A
s
 
S
t
r
i
n
g
,
 
N
o
v
o
C
a
m
i
n
h
o
 
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



f
i
l
t
r
o
 
=
 
"
B
a
n
c
o
 
d
e
 
D
a
d
o
s
 
A
c
c
e
s
s
 
(
*
.
a
c
c
d
b
)
"
 
&
 
C
h
r
(
0
)
 
&
 
"
*
.
a
c
c
d
b
"



T
i
t
u
l
o
 
=
 
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
 
o
 
b
a
n
c
o
 
d
e
 
d
a
d
o
s
.
.
.
"



N
o
v
o
C
a
m
i
n
h
o
 
=
 
L
o
c
a
l
i
z
a
r
A
r
q
u
i
v
o
(
C
u
r
r
e
n
t
P
r
o
j
e
c
t
.
P
a
t
h
,
 
T
i
t
u
l
o
,
 
f
i
l
t
r
o
)



I
f
 
N
o
v
o
C
a
m
i
n
h
o
 
=
 
C
a
m
i
n
h
o
A
t
u
a
l
 
O
r
 
N
o
v
o
C
a
m
i
n
h
o
 
=
 
"
"
 
T
h
e
n



 
 
 
 
M
e
!
P
a
t
h
_
0
 
=
 
C
a
m
i
n
h
o
A
t
u
a
l



E
l
s
e



 
 
 
 
M
e
!
P
a
t
h
_
0
 
=
 
N
o
v
o
C
a
m
i
n
h
o



E
n
d
 
I
f



M
e
!
b
t
S
a
l
v
a
r
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
t
S
a
i
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



M
e
!
P
a
t
h
_
0
 
=
 
C
a
m
i
n
h
o
A
t
u
a
l



b
o
o
S
a
i
r
 
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
C
a
m
i
n
h
o
B
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
S
a
l
v
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



I
f
 
L
e
n
(
D
i
r
(
M
e
!
P
a
t
h
_
0
)
 
&
 
"
"
)
 
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
A
r
q
u
i
v
o
 
i
n
e
x
i
s
t
e
n
t
e
 
n
o
 
c
a
m
i
n
h
o
 
i
n
d
i
c
a
d
o
.
 
 
U
s
e
 
o
 
b
o
t
ã
o
 
p
r
o
c
u
r
a
r
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
A
v
i
s
o
"



 
 
 
 
M
e
!
b
t
P
r
o
c
u
r
a
r
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
n
S
t
r
(
M
e
!
P
a
t
h
_
0
,
 
D
L
o
o
k
u
p
(
"
N
o
m
e
B
e
"
,
 
"
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
"
)
)
 
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
O
 
b
a
c
k
-
e
n
d
 
s
e
l
e
c
i
o
n
a
d
o
 
n
ã
o
 
f
a
z
 
p
a
r
t
e
 
d
o
 
p
r
o
j
e
t
o
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
l
e
c
i
o
n
e
 
o
 
b
a
c
k
-
e
n
d
 
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
N
o
m
e
B
e
"
,
 
"
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
"
)
 
_



 
 
 
 
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
A
v
i
s
o
"



 
 
 
 
M
e
!
b
t
P
r
o
c
u
r
a
r
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
 
N
o
t
 
M
e
!
P
a
t
h
_
0
 
=
 
C
a
m
i
n
h
o
A
t
u
a
l
 
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
O
 
p
r
o
g
r
a
m
a
 
s
e
r
á
 
f
e
c
h
a
d
o
"
 
&
 
C
h
r
(
1
3
)
 
&
 
C
h
r
(
1
0
)
 
&
 
C
h
r
(
1
3
)
 
&
 
C
h
r
(
1
0
)
 
&
 
_



 
 
 
 
'
"
R
e
a
b
r
a
 
o
 
p
r
o
g
r
a
m
a
 
e
 
a
g
u
a
r
d
e
 
p
e
l
a
 
c
o
n
c
l
u
s
ã
o
 
d
a
 
n
o
v
a
 
c
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
A
v
i
s
o
"



 
 
 
 
b
o
o
N
o
v
a
C
h
e
c
a
g
e
m
 
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
C
a
m
i
n
h
o
B
e
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
É
 
n
e
c
e
s
s
á
r
i
o
 
m
o
d
i
f
i
c
a
r
 
o
 
c
a
m
i
n
h
o
 
a
t
u
a
l
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
A
v
i
s
o
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
 
f
n
c
N
o
m
e
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



 
 
 
 
D
i
m
 
l
n
g
V
a
l
 
A
s
 
L
o
n
g
P
t
r



 
 
 
 
D
i
m
 
s
t
r
C
o
m
p
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






 
 
 
 
O
n
 
E
r
r
o
r
 
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



 
 
 
 
s
t
r
C
o
m
p
N
a
m
e
 
=
 
S
p
a
c
e
(
2
5
5
)






 
 
 
 
l
n
g
V
a
l
 
=
 
G
e
t
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
s
t
r
C
o
m
p
N
a
m
e
,
 
2
5
5
)






 
 
 
 
I
f
 
l
n
g
V
a
l
 
T
h
e
n



 
 
 
 
 
 
 
 
M
e
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
N
o
m
e
 
d
e
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
:
 
"
 
&
 
L
e
f
t
$
(
s
t
r
C
o
m
p
N
a
m
e
,
 
I
n
S
t
r
(
s
t
r
C
o
m
p
N
a
m
e
,
 
v
b
N
u
l
l
C
h
a
r
)
 
-
 
1
)



 
 
 
 
E
l
s
e



 
 
 
 
 
 
 
 
M
e
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
o
n
f
i
g
u
r
a
r
 
e
m
 
r
e
d
e
"



 
 
 
 
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
l
l
 
f
n
c
N
o
m
e
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
i
m
 
B
o
x



I
f
 
N
z
(
M
e
.
O
p
e
n
A
r
g
s
,
 
0
)
 
=
 
0
 
T
h
e
n



 
 
 
 
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



B
o
x
 
=
 
"
<
p
>
<
f
o
n
t
 
c
o
l
o
r
=
#
C
0
5
0
4
D
>
<
s
t
r
o
n
g
>
F
a
l
h
a
 
d
e
 
c
o
m
u
n
i
c
a
ç
ã
o
 
c
o
m
 
a
 
b
a
s
e
 
d
e
 
d
a
d
o
s
 
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
N
o
m
e
b
e
"
,
 
"
t
b
l
c
a
m
i
n
h
o
b
e
"
)
 
&
 
"
<
/
s
t
r
o
n
g
>
<
/
f
o
n
t
>
<
/
p
>
<
b
r
>
"



B
o
x
 
=
 
B
o
x
 
&
 
"
<
p
>
1
 
-
 
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
 
o
 
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
 
q
u
e
 
p
o
s
s
u
i
 
a
 
b
a
s
e
 
d
e
 
d
a
d
o
s
 
e
s
t
á
 
l
i
g
a
d
o
.
<
/
p
>
"



B
o
x
 
=
 
B
o
x
 
&
 
"
<
p
>
2
 
-
 
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
 
o
 
s
e
u
 
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
 
e
s
t
á
 
e
m
 
c
o
m
u
n
i
c
a
ç
ã
o
 
c
o
m
 
a
 
r
e
d
e
.
<
/
p
>
"



B
o
x
 
=
 
B
o
x
 
&
 
"
<
p
>
3
 
-
 
C
l
i
q
u
e
 
n
o
 
b
o
t
ã
o
 
p
r
o
c
u
r
a
r
 
o
u
 
d
i
g
i
t
e
 
o
 
n
o
v
o
 
c
a
m
i
n
h
o
 
d
a
 
r
e
d
e
,
 
a
o
n
d
e
 
s
e
 
e
n
c
o
n
t
r
a
 
o
 
b
a
n
c
o
 
d
e
 
d
a
d
o
s
.
<
/
p
>
"



B
o
x
 
=
 
B
o
x
 
&
 
"
<
p
>
4
 
-
 
E
n
t
r
e
 
e
m
 
c
o
n
t
a
t
o
 
c
o
m
 
o
 
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
a
 
r
e
d
e
,
 
c
a
s
o
 
n
ã
o
 
t
e
n
h
a
 
r
e
s
o
l
v
i
d
o
 
o
 
p
r
o
b
l
e
m
a
.
"



M
e
!
t
x
Q
u
a
d
r
o
 
=
 
B
o
x



M
e
!
R
ó
t
u
l
o
2
1
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
E
x
e
m
p
l
o
:
 
\
\
n
o
m
e
 
d
o
 
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
a
 
r
e
d
e
\
p
a
s
t
a
\
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
N
o
m
e
b
e
"
,
 
"
t
b
l
c
a
m
i
n
h
o
b
e
"
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
 
P
a
t
h
_
0
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



M
e
!
P
a
t
h
_
0
.
S
e
l
S
t
a
r
t
 
=
 
L
e
n
(
M
e
!
P
a
t
h
_
0
 
&
 
"
"
)



E
n
d
 
S
u
b


