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
A
l
t
e
r
a
V
a
l
o
r
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
7
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
1
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
L
s
t
C
l
i
e
n
t
e
s
D
e
b
i
t
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
C
a
l
l
 
S
o
m
a
L
i
s
t
B
o
x



'
C
a
l
l
 
S
o
m
a
L
i
s
t
B
o
x
2



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
G
e
r
a
C
a
r
n
e
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
C
a
r
n
e
P
a
g
a
m
e
n
t
o
P
a
r
c
e
l
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
=
"
 
&
 
M
e
.
L
s
t
C
l
i
e
n
t
e
s
A
t
i
v
o
s
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
 
B
t
n
r
l
t
D
i
v
i
d
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
d
i
v
i
d
a
s
C
l
i
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
R
l
t
D
i
v
i
d
a
s
C
l
i
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
 
E
r
r






I
f
 
L
s
t
C
l
i
e
n
t
e
s
D
e
b
i
t
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
d
e
t
a
l
h
e
s
d
i
v
i
d
a
c
l
i
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
 
c
l
i
e
n
t
e
 
n
o
 
q
u
a
d
r
o
 
a
c
i
m
a
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
I
S
T
E
M
A
S
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
2
1
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
O
p
e
r
a
ç
ã
o
 
C
a
n
c
e
l
a
d
a
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
I
S
T
E
M
A
S
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



'
C
a
l
l
 
S
o
m
a
L
i
s
t
B
o
x



'
C
a
l
l
 
S
o
m
a
L
i
s
t
B
o
x
2






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
s
t
C
l
i
e
n
t
e
s
D
e
b
i
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
L
s
t
C
l
i
e
n
t
e
s
A
t
i
v
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



'
C
a
l
l
 
S
o
m
a
L
i
s
t
B
o
x



'
C
a
l
l
 
S
o
m
a
L
i
s
t
B
o
x
2



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
s
t
D
i
v
i
d
a
s
C
l
i
e
n
t
e
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






S
a
l
d
o
D
i
v
i
d
a
 
=
 
M
e
.
L
s
t
C
l
i
e
n
t
e
s
A
t
i
v
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
6
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
i
n
s
p
a
g
d
i
v
i
d
a
c
l
i
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
i
n
s
p
a
g
d
i
v
i
d
a
c
l
i
!
t
x
t
C
o
d
V
e
n
d
a
 
=
 
M
e
.
L
s
t
C
l
i
e
n
t
e
s
A
t
i
v
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
i
n
s
p
a
g
d
i
v
i
d
a
c
l
i
!
t
x
t
C
o
d
D
i
v
i
d
a
 
=
 
M
e
.
L
s
t
C
l
i
e
n
t
e
s
A
t
i
v
o
s



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
i
n
s
p
a
g
d
i
v
i
d
a
c
l
i
!
t
x
t
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
.
L
s
t
C
l
i
e
n
t
e
s
A
t
i
v
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
s
t
C
l
i
e
n
t
e
s
A
t
i
v
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
t
x
t
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
 
M
e
.
L
s
t
C
l
i
e
n
t
e
s
A
t
i
v
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
0
)






M
e
.
L
s
t
D
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
L
s
t
H
i
s
t
o
r
i
c
o
P
l
a
n
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



M
e
.
L
s
t
P
a
r
c
e
l
a
s
P
a
g
a
s
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
t
x
t
M
e
n
s
a
l
i
d
a
d
e
 
=
 
M
e
.
L
s
t
C
l
i
e
n
t
e
s
A
t
i
v
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
9
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
 
L
s
t
C
l
i
e
n
t
e
s
A
t
i
v
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
 
C
A
N
C
E
L
A
R
 
o
 
P
l
a
n
o
 
d
o
 
c
l
i
e
n
t
e
 
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
6
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
s
t
D
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
 
C
A
N
C
E
L
A
R
 
o
 
P
l
a
n
o
 
d
o
 
c
l
i
e
n
t
e
 
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



 
 
 
 



 
 
 
 
'
g
r
a
v
a
 
a
 
a
ç
ã
o
 
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
 
E
n
v
i
r
o
n
(
"
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
"
)
 
&
 
"
;
D
e
p
e
n
d
e
n
t
e
 
D
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
;
C
o
d
T
i
t
u
l
a
r
:
"
 
&
 
M
e
.
L
s
t
C
l
i
e
n
t
e
s
A
t
i
v
o
s
 
&
 
"
;
D
e
p
e
n
d
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
L
s
t
D
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
 
&
 
"
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



 
 
 
 
 
 
 
 
 
 
 
 
r
s
t
(
"
d
a
t
a
l
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
A
t
u
a
l
i
z
a
 
o
 
c
a
d
a
s
t
r
o
 
d
o
 
c
l
i
e
n
t
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
 
S
E
T
 
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
 
&
 
C
h
r
$
(
3
4
)
 
&
 
C
h
r
$
(
3
4
)
 
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
F
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
_
P
l
a
n
o
s
A
t
i
v
o
s
]
!
[
L
s
t
D
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
]
)
)
;
"









 
 
 
 
'
a
t
u
a
l
i
z
a
 
l
i
s
t
a
 
d
e
 
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



 
 
 
 
M
e
.
L
s
t
D
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
L
s
t
C
l
i
e
n
t
e
s
A
t
i
v
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



'
C
a
l
l
 
S
o
m
a
L
i
s
t
B
o
x



'
C
a
l
l
 
S
o
m
a
L
i
s
t
B
o
x
2



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
o
m
a
L
i
s
t
B
o
x
(
)
 
A
s
 
V
a
r
i
a
n
t



D
i
m
 
i
 
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
 
j
 
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
 
c
t
l
 
A
s
 
C
o
n
t
r
o
l



S
e
t
 
c
t
l
 
=
 
M
e
.
L
s
t
C
l
i
e
n
t
e
s
A
t
i
v
o
s



j
 
=
 
c
t
l
.
L
i
s
t
C
o
u
n
t
 
-
 
1



S
o
m
a
L
i
s
t
B
o
x
 
=
 
0



F
o
r
 
i
 
=
 
1
 
T
o
 
j



S
o
m
a
L
i
s
t
B
o
x
 
=
 
S
o
m
a
L
i
s
t
B
o
x
 
+
 
c
t
l
.
C
o
l
u
m
n
(
4
,
 
i
)



N
e
x
t
 
i



S
o
m
a
L
i
s
t
B
o
x
 
=
 
F
o
r
m
a
t
(
S
o
m
a
L
i
s
t
B
o
x
,
 
"
c
u
r
r
e
n
c
y
"
)



M
e
.
t
x
t
M
e
n
s
a
l
i
d
a
d
e
 
=
 
S
o
m
a
L
i
s
t
B
o
x



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
 
S
o
m
a
L
i
s
t
B
o
x
2
(
)
 
A
s
 
V
a
r
i
a
n
t



D
i
m
 
I
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
,
 
J
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
,
 
c
t
l
2
 
A
s
 
C
o
n
t
r
o
l



S
e
t
 
c
t
l
2
 
=
 
M
e
.
L
s
t
C
l
i
e
n
t
e
s
A
t
i
v
o
s



J
2
 
=
 
c
t
l
2
.
L
i
s
t
C
o
u
n
t
 
-
 
1



S
o
m
a
L
i
s
t
B
o
x
2
 
=
 
0



F
o
r
 
I
2
 
=
 
1
 
T
o
 
J
2



S
o
m
a
L
i
s
t
B
o
x
2
 
=
 
S
o
m
a
L
i
s
t
B
o
x
2
 
+
 
c
t
l
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
,
 
I
2
)



N
e
x
t
 
I
2



S
o
m
a
L
i
s
t
B
o
x
2
 
=
 
F
o
r
m
a
t
(
S
o
m
a
L
i
s
t
B
o
x
2
,
 
"
c
u
r
r
e
n
c
y
"
)



M
e
.
t
x
t
T
o
t
a
l
P
a
g
o
H
o
j
e
 
=
 
S
o
m
a
L
i
s
t
B
o
x
2



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


