╢√
р▒
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
┴
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring Ии
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68╧═
|
hidden_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
╘А* 
shared_namehidden_1/kernel
u
#hidden_1/kernel/Read/ReadVariableOpReadVariableOphidden_1/kernel* 
_output_shapes
:
╘А*
dtype0
s
hidden_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namehidden_1/bias
l
!hidden_1/bias/Read/ReadVariableOpReadVariableOphidden_1/bias*
_output_shapes	
:А*
dtype0
|
hidden_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА* 
shared_namehidden_2/kernel
u
#hidden_2/kernel/Read/ReadVariableOpReadVariableOphidden_2/kernel* 
_output_shapes
:
АА*
dtype0
s
hidden_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namehidden_2/bias
l
!hidden_2/bias/Read/ReadVariableOpReadVariableOphidden_2/bias*
_output_shapes	
:А*
dtype0
|
hidden_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА* 
shared_namehidden_3/kernel
u
#hidden_3/kernel/Read/ReadVariableOpReadVariableOphidden_3/kernel* 
_output_shapes
:
АА*
dtype0
s
hidden_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namehidden_3/bias
l
!hidden_3/bias/Read/ReadVariableOpReadVariableOphidden_3/bias*
_output_shapes	
:А*
dtype0
У
classification_layer/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*,
shared_nameclassification_layer/kernel
М
/classification_layer/kernel/Read/ReadVariableOpReadVariableOpclassification_layer/kernel*
_output_shapes
:	А*
dtype0
К
classification_layer/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_nameclassification_layer/bias
Г
-classification_layer/bias/Read/ReadVariableOpReadVariableOpclassification_layer/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
К
Adam/hidden_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
╘А*'
shared_nameAdam/hidden_1/kernel/m
Г
*Adam/hidden_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/hidden_1/kernel/m* 
_output_shapes
:
╘А*
dtype0
Б
Adam/hidden_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/hidden_1/bias/m
z
(Adam/hidden_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/hidden_1/bias/m*
_output_shapes	
:А*
dtype0
К
Adam/hidden_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*'
shared_nameAdam/hidden_2/kernel/m
Г
*Adam/hidden_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/hidden_2/kernel/m* 
_output_shapes
:
АА*
dtype0
Б
Adam/hidden_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/hidden_2/bias/m
z
(Adam/hidden_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/hidden_2/bias/m*
_output_shapes	
:А*
dtype0
К
Adam/hidden_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*'
shared_nameAdam/hidden_3/kernel/m
Г
*Adam/hidden_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/hidden_3/kernel/m* 
_output_shapes
:
АА*
dtype0
Б
Adam/hidden_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/hidden_3/bias/m
z
(Adam/hidden_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/hidden_3/bias/m*
_output_shapes	
:А*
dtype0
б
"Adam/classification_layer/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*3
shared_name$"Adam/classification_layer/kernel/m
Ъ
6Adam/classification_layer/kernel/m/Read/ReadVariableOpReadVariableOp"Adam/classification_layer/kernel/m*
_output_shapes
:	А*
dtype0
Ш
 Adam/classification_layer/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/classification_layer/bias/m
С
4Adam/classification_layer/bias/m/Read/ReadVariableOpReadVariableOp Adam/classification_layer/bias/m*
_output_shapes
:*
dtype0
К
Adam/hidden_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
╘А*'
shared_nameAdam/hidden_1/kernel/v
Г
*Adam/hidden_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/hidden_1/kernel/v* 
_output_shapes
:
╘А*
dtype0
Б
Adam/hidden_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/hidden_1/bias/v
z
(Adam/hidden_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/hidden_1/bias/v*
_output_shapes	
:А*
dtype0
К
Adam/hidden_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*'
shared_nameAdam/hidden_2/kernel/v
Г
*Adam/hidden_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/hidden_2/kernel/v* 
_output_shapes
:
АА*
dtype0
Б
Adam/hidden_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/hidden_2/bias/v
z
(Adam/hidden_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/hidden_2/bias/v*
_output_shapes	
:А*
dtype0
К
Adam/hidden_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
АА*'
shared_nameAdam/hidden_3/kernel/v
Г
*Adam/hidden_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/hidden_3/kernel/v* 
_output_shapes
:
АА*
dtype0
Б
Adam/hidden_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*%
shared_nameAdam/hidden_3/bias/v
z
(Adam/hidden_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/hidden_3/bias/v*
_output_shapes	
:А*
dtype0
б
"Adam/classification_layer/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	А*3
shared_name$"Adam/classification_layer/kernel/v
Ъ
6Adam/classification_layer/kernel/v/Read/ReadVariableOpReadVariableOp"Adam/classification_layer/kernel/v*
_output_shapes
:	А*
dtype0
Ш
 Adam/classification_layer/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/classification_layer/bias/v
С
4Adam/classification_layer/bias/v/Read/ReadVariableOpReadVariableOp Adam/classification_layer/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
жH
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*сG
value╫GB╘G B═G
й
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 
О
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
ж

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses*
е
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%_random_generator
&__call__
*'&call_and_return_all_conditional_losses* 
ж

(kernel
)bias
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses*
е
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4_random_generator
5__call__
*6&call_and_return_all_conditional_losses* 
ж

7kernel
8bias
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses*
е
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C_random_generator
D__call__
*E&call_and_return_all_conditional_losses* 
ж

Fkernel
Gbias
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses*
ф
Niter

Obeta_1

Pbeta_2
	Qdecay
Rlearning_ratemМmН(mО)mП7mР8mСFmТGmУvФvХ(vЦ)vЧ7vШ8vЩFvЪGvЫ*
<
0
1
(2
)3
74
85
F6
G7*
<
0
1
(2
)3
74
85
F6
G7*
* 
░
Snon_trainable_variables

Tlayers
Umetrics
Vlayer_regularization_losses
Wlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

Xserving_default* 
* 
* 
* 
С
Ynon_trainable_variables

Zlayers
[metrics
\layer_regularization_losses
]layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 
* 
* 
_Y
VARIABLE_VALUEhidden_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEhidden_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

0
1*

0
1*
* 
У
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses*
* 
* 
* 
* 
* 
С
cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics
!	variables
"trainable_variables
#regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses* 
* 
* 
* 
_Y
VARIABLE_VALUEhidden_2/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEhidden_2/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

(0
)1*

(0
)1*
* 
У
hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
С
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
0	variables
1trainable_variables
2regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses* 
* 
* 
* 
_Y
VARIABLE_VALUEhidden_3/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEhidden_3/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

70
81*

70
81*
* 
У
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
С
wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
?	variables
@trainable_variables
Aregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses* 
* 
* 
* 
ke
VARIABLE_VALUEclassification_layer/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEclassification_layer/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

F0
G1*

F0
G1*
* 
Ф
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
Аlayer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
C
0
1
2
3
4
5
6
7
	8*

Б0
В1*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<

Гtotal

Дcount
Е	variables
Ж	keras_api*
M

Зtotal

Иcount
Й
_fn_kwargs
К	variables
Л	keras_api*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

Г0
Д1*

Е	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

З0
И1*

К	variables*
В|
VARIABLE_VALUEAdam/hidden_1/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/hidden_1/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/hidden_2/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/hidden_2/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/hidden_3/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/hidden_3/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ПИ
VARIABLE_VALUE"Adam/classification_layer/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
ЛД
VARIABLE_VALUE Adam/classification_layer/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/hidden_1/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/hidden_1/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/hidden_2/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/hidden_2/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/hidden_3/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/hidden_3/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ПИ
VARIABLE_VALUE"Adam/classification_layer/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
ЛД
VARIABLE_VALUE Adam/classification_layer/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}
serving_default_input_13Placeholder*(
_output_shapes
:         ╘*
dtype0*
shape:         ╘
▌
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_13hidden_1/kernelhidden_1/biashidden_2/kernelhidden_2/biashidden_3/kernelhidden_3/biasclassification_layer/kernelclassification_layer/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В */
f*R(
&__inference_signature_wrapper_16516361
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
я
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#hidden_1/kernel/Read/ReadVariableOp!hidden_1/bias/Read/ReadVariableOp#hidden_2/kernel/Read/ReadVariableOp!hidden_2/bias/Read/ReadVariableOp#hidden_3/kernel/Read/ReadVariableOp!hidden_3/bias/Read/ReadVariableOp/classification_layer/kernel/Read/ReadVariableOp-classification_layer/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp*Adam/hidden_1/kernel/m/Read/ReadVariableOp(Adam/hidden_1/bias/m/Read/ReadVariableOp*Adam/hidden_2/kernel/m/Read/ReadVariableOp(Adam/hidden_2/bias/m/Read/ReadVariableOp*Adam/hidden_3/kernel/m/Read/ReadVariableOp(Adam/hidden_3/bias/m/Read/ReadVariableOp6Adam/classification_layer/kernel/m/Read/ReadVariableOp4Adam/classification_layer/bias/m/Read/ReadVariableOp*Adam/hidden_1/kernel/v/Read/ReadVariableOp(Adam/hidden_1/bias/v/Read/ReadVariableOp*Adam/hidden_2/kernel/v/Read/ReadVariableOp(Adam/hidden_2/bias/v/Read/ReadVariableOp*Adam/hidden_3/kernel/v/Read/ReadVariableOp(Adam/hidden_3/bias/v/Read/ReadVariableOp6Adam/classification_layer/kernel/v/Read/ReadVariableOp4Adam/classification_layer/bias/v/Read/ReadVariableOpConst*.
Tin'
%2#	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference__traced_save_16516655
╓
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamehidden_1/kernelhidden_1/biashidden_2/kernelhidden_2/biashidden_3/kernelhidden_3/biasclassification_layer/kernelclassification_layer/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcounttotal_1count_1Adam/hidden_1/kernel/mAdam/hidden_1/bias/mAdam/hidden_2/kernel/mAdam/hidden_2/bias/mAdam/hidden_3/kernel/mAdam/hidden_3/bias/m"Adam/classification_layer/kernel/m Adam/classification_layer/bias/mAdam/hidden_1/kernel/vAdam/hidden_1/bias/vAdam/hidden_2/kernel/vAdam/hidden_2/bias/vAdam/hidden_3/kernel/vAdam/hidden_3/bias/v"Adam/classification_layer/kernel/v Adam/classification_layer/bias/v*-
Tin&
$2"*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *-
f(R&
$__inference__traced_restore_16516764чк
■	
g
H__inference_dropout_36_layer_call_and_return_conditional_losses_16516419

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Н
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=з
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         Аp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         Аj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         АZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╣Е
▓
$__inference__traced_restore_16516764
file_prefix4
 assignvariableop_hidden_1_kernel:
╘А/
 assignvariableop_1_hidden_1_bias:	А6
"assignvariableop_2_hidden_2_kernel:
АА/
 assignvariableop_3_hidden_2_bias:	А6
"assignvariableop_4_hidden_3_kernel:
АА/
 assignvariableop_5_hidden_3_bias:	АA
.assignvariableop_6_classification_layer_kernel:	А:
,assignvariableop_7_classification_layer_bias:&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: #
assignvariableop_13_total: #
assignvariableop_14_count: %
assignvariableop_15_total_1: %
assignvariableop_16_count_1: >
*assignvariableop_17_adam_hidden_1_kernel_m:
╘А7
(assignvariableop_18_adam_hidden_1_bias_m:	А>
*assignvariableop_19_adam_hidden_2_kernel_m:
АА7
(assignvariableop_20_adam_hidden_2_bias_m:	А>
*assignvariableop_21_adam_hidden_3_kernel_m:
АА7
(assignvariableop_22_adam_hidden_3_bias_m:	АI
6assignvariableop_23_adam_classification_layer_kernel_m:	АB
4assignvariableop_24_adam_classification_layer_bias_m:>
*assignvariableop_25_adam_hidden_1_kernel_v:
╘А7
(assignvariableop_26_adam_hidden_1_bias_v:	А>
*assignvariableop_27_adam_hidden_2_kernel_v:
АА7
(assignvariableop_28_adam_hidden_2_bias_v:	А>
*assignvariableop_29_adam_hidden_3_kernel_v:
АА7
(assignvariableop_30_adam_hidden_3_bias_v:	АI
6assignvariableop_31_adam_classification_layer_kernel_v:	АB
4assignvariableop_32_adam_classification_layer_bias_v:
identity_34ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9▓
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*╪
value╬B╦"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH┤
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ╦
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Ю
_output_shapesЛ
И::::::::::::::::::::::::::::::::::*0
dtypes&
$2"	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:Л
AssignVariableOpAssignVariableOp assignvariableop_hidden_1_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_1AssignVariableOp assignvariableop_1_hidden_1_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_2AssignVariableOp"assignvariableop_2_hidden_2_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_3AssignVariableOp assignvariableop_3_hidden_2_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_4AssignVariableOp"assignvariableop_4_hidden_3_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_5AssignVariableOp assignvariableop_5_hidden_3_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Э
AssignVariableOp_6AssignVariableOp.assignvariableop_6_classification_layer_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_7AssignVariableOp,assignvariableop_7_classification_layer_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:Л
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Н
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_15AssignVariableOpassignvariableop_15_total_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_16AssignVariableOpassignvariableop_16_count_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_17AssignVariableOp*assignvariableop_17_adam_hidden_1_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_18AssignVariableOp(assignvariableop_18_adam_hidden_1_bias_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_19AssignVariableOp*assignvariableop_19_adam_hidden_2_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_20AssignVariableOp(assignvariableop_20_adam_hidden_2_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_21AssignVariableOp*assignvariableop_21_adam_hidden_3_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_22AssignVariableOp(assignvariableop_22_adam_hidden_3_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:з
AssignVariableOp_23AssignVariableOp6assignvariableop_23_adam_classification_layer_kernel_mIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:е
AssignVariableOp_24AssignVariableOp4assignvariableop_24_adam_classification_layer_bias_mIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_25AssignVariableOp*assignvariableop_25_adam_hidden_1_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_26AssignVariableOp(assignvariableop_26_adam_hidden_1_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_27AssignVariableOp*assignvariableop_27_adam_hidden_2_kernel_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_28AssignVariableOp(assignvariableop_28_adam_hidden_2_bias_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_29AssignVariableOp*assignvariableop_29_adam_hidden_3_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_30AssignVariableOp(assignvariableop_30_adam_hidden_3_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:з
AssignVariableOp_31AssignVariableOp6assignvariableop_31_adam_classification_layer_kernel_vIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:е
AssignVariableOp_32AssignVariableOp4assignvariableop_32_adam_classification_layer_bias_vIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 е
Identity_33Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_34IdentityIdentity_33:output:0^NoOp_1*
T0*
_output_shapes
: Т
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_34Identity_34:output:0*W
_input_shapesF
D: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
╨G
К
!__inference__traced_save_16516655
file_prefix.
*savev2_hidden_1_kernel_read_readvariableop,
(savev2_hidden_1_bias_read_readvariableop.
*savev2_hidden_2_kernel_read_readvariableop,
(savev2_hidden_2_bias_read_readvariableop.
*savev2_hidden_3_kernel_read_readvariableop,
(savev2_hidden_3_bias_read_readvariableop:
6savev2_classification_layer_kernel_read_readvariableop8
4savev2_classification_layer_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop5
1savev2_adam_hidden_1_kernel_m_read_readvariableop3
/savev2_adam_hidden_1_bias_m_read_readvariableop5
1savev2_adam_hidden_2_kernel_m_read_readvariableop3
/savev2_adam_hidden_2_bias_m_read_readvariableop5
1savev2_adam_hidden_3_kernel_m_read_readvariableop3
/savev2_adam_hidden_3_bias_m_read_readvariableopA
=savev2_adam_classification_layer_kernel_m_read_readvariableop?
;savev2_adam_classification_layer_bias_m_read_readvariableop5
1savev2_adam_hidden_1_kernel_v_read_readvariableop3
/savev2_adam_hidden_1_bias_v_read_readvariableop5
1savev2_adam_hidden_2_kernel_v_read_readvariableop3
/savev2_adam_hidden_2_bias_v_read_readvariableop5
1savev2_adam_hidden_3_kernel_v_read_readvariableop3
/savev2_adam_hidden_3_bias_v_read_readvariableopA
=savev2_adam_classification_layer_kernel_v_read_readvariableop?
;savev2_adam_classification_layer_bias_v_read_readvariableop
savev2_const

identity_1ИвMergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/partБ
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: п
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*╪
value╬B╦"B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH▒
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:"*
dtype0*W
valueNBL"B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B щ
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_hidden_1_kernel_read_readvariableop(savev2_hidden_1_bias_read_readvariableop*savev2_hidden_2_kernel_read_readvariableop(savev2_hidden_2_bias_read_readvariableop*savev2_hidden_3_kernel_read_readvariableop(savev2_hidden_3_bias_read_readvariableop6savev2_classification_layer_kernel_read_readvariableop4savev2_classification_layer_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop1savev2_adam_hidden_1_kernel_m_read_readvariableop/savev2_adam_hidden_1_bias_m_read_readvariableop1savev2_adam_hidden_2_kernel_m_read_readvariableop/savev2_adam_hidden_2_bias_m_read_readvariableop1savev2_adam_hidden_3_kernel_m_read_readvariableop/savev2_adam_hidden_3_bias_m_read_readvariableop=savev2_adam_classification_layer_kernel_m_read_readvariableop;savev2_adam_classification_layer_bias_m_read_readvariableop1savev2_adam_hidden_1_kernel_v_read_readvariableop/savev2_adam_hidden_1_bias_v_read_readvariableop1savev2_adam_hidden_2_kernel_v_read_readvariableop/savev2_adam_hidden_2_bias_v_read_readvariableop1savev2_adam_hidden_3_kernel_v_read_readvariableop/savev2_adam_hidden_3_bias_v_read_readvariableop=savev2_adam_classification_layer_kernel_v_read_readvariableop;savev2_adam_classification_layer_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *0
dtypes&
$2"	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*Й
_input_shapesў
Ї: :
╘А:А:
АА:А:
АА:А:	А:: : : : : : : : : :
╘А:А:
АА:А:
АА:А:	А::
╘А:А:
АА:А:
АА:А:	А:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
╘А:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:%!

_output_shapes
:	А: 

_output_shapes
::	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
╘А:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:%!

_output_shapes
:	А: 

_output_shapes
::&"
 
_output_shapes
:
╘А:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:&"
 
_output_shapes
:
АА:!

_output_shapes	
:А:% !

_output_shapes
:	А: !

_output_shapes
::"

_output_shapes
: 
═
Ы
+__inference_hidden_1_layer_call_fn_16516381

inputs
unknown:
╘А
	unknown_0:	А
identityИвStatefulPartitionedCall▄
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_hidden_1_layer_call_and_return_conditional_losses_16515835p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ╘: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ╘
 
_user_specified_nameinputs
▀
f
H__inference_dropout_36_layer_call_and_return_conditional_losses_16515846

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         А\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
■	
g
H__inference_dropout_38_layer_call_and_return_conditional_losses_16515963

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Н
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=з
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         Аp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         Аj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         АZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
й
I
-__inference_dropout_37_layer_call_fn_16516444

inputs
identity┤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_37_layer_call_and_return_conditional_losses_16515870a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
√
f
-__inference_dropout_38_layer_call_fn_16516496

inputs
identityИвStatefulPartitionedCall─
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_38_layer_call_and_return_conditional_losses_16515963p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
▀
f
H__inference_dropout_38_layer_call_and_return_conditional_losses_16516501

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         А\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
м+
ў
F__inference_model_12_layer_call_and_return_conditional_losses_16516280

inputs;
'hidden_1_matmul_readvariableop_resource:
╘А7
(hidden_1_biasadd_readvariableop_resource:	А;
'hidden_2_matmul_readvariableop_resource:
АА7
(hidden_2_biasadd_readvariableop_resource:	А;
'hidden_3_matmul_readvariableop_resource:
АА7
(hidden_3_biasadd_readvariableop_resource:	АF
3classification_layer_matmul_readvariableop_resource:	АB
4classification_layer_biasadd_readvariableop_resource:
identityИв+classification_layer/BiasAdd/ReadVariableOpв*classification_layer/MatMul/ReadVariableOpвhidden_1/BiasAdd/ReadVariableOpвhidden_1/MatMul/ReadVariableOpвhidden_2/BiasAdd/ReadVariableOpвhidden_2/MatMul/ReadVariableOpвhidden_3/BiasAdd/ReadVariableOpвhidden_3/MatMul/ReadVariableOpa
flatten_12/ConstConst*
_output_shapes
:*
dtype0*
valueB"    ╘  s
flatten_12/ReshapeReshapeinputsflatten_12/Const:output:0*
T0*(
_output_shapes
:         ╘И
hidden_1/MatMul/ReadVariableOpReadVariableOp'hidden_1_matmul_readvariableop_resource* 
_output_shapes
:
╘А*
dtype0С
hidden_1/MatMulMatMulflatten_12/Reshape:output:0&hidden_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЕ
hidden_1/BiasAdd/ReadVariableOpReadVariableOp(hidden_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Т
hidden_1/BiasAddBiasAddhidden_1/MatMul:product:0'hidden_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аc
hidden_1/ReluReluhidden_1/BiasAdd:output:0*
T0*(
_output_shapes
:         Аo
dropout_36/IdentityIdentityhidden_1/Relu:activations:0*
T0*(
_output_shapes
:         АИ
hidden_2/MatMul/ReadVariableOpReadVariableOp'hidden_2_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Т
hidden_2/MatMulMatMuldropout_36/Identity:output:0&hidden_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЕ
hidden_2/BiasAdd/ReadVariableOpReadVariableOp(hidden_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Т
hidden_2/BiasAddBiasAddhidden_2/MatMul:product:0'hidden_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аc
hidden_2/ReluReluhidden_2/BiasAdd:output:0*
T0*(
_output_shapes
:         Аo
dropout_37/IdentityIdentityhidden_2/Relu:activations:0*
T0*(
_output_shapes
:         АИ
hidden_3/MatMul/ReadVariableOpReadVariableOp'hidden_3_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Т
hidden_3/MatMulMatMuldropout_37/Identity:output:0&hidden_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЕ
hidden_3/BiasAdd/ReadVariableOpReadVariableOp(hidden_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Т
hidden_3/BiasAddBiasAddhidden_3/MatMul:product:0'hidden_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аc
hidden_3/ReluReluhidden_3/BiasAdd:output:0*
T0*(
_output_shapes
:         Аo
dropout_38/IdentityIdentityhidden_3/Relu:activations:0*
T0*(
_output_shapes
:         АЯ
*classification_layer/MatMul/ReadVariableOpReadVariableOp3classification_layer_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0й
classification_layer/MatMulMatMuldropout_38/Identity:output:02classification_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Ь
+classification_layer/BiasAdd/ReadVariableOpReadVariableOp4classification_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╡
classification_layer/BiasAddBiasAdd%classification_layer/MatMul:product:03classification_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         А
classification_layer/SigmoidSigmoid%classification_layer/BiasAdd:output:0*
T0*'
_output_shapes
:         o
IdentityIdentity classification_layer/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         ъ
NoOpNoOp,^classification_layer/BiasAdd/ReadVariableOp+^classification_layer/MatMul/ReadVariableOp ^hidden_1/BiasAdd/ReadVariableOp^hidden_1/MatMul/ReadVariableOp ^hidden_2/BiasAdd/ReadVariableOp^hidden_2/MatMul/ReadVariableOp ^hidden_3/BiasAdd/ReadVariableOp^hidden_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         ╘: : : : : : : : 2Z
+classification_layer/BiasAdd/ReadVariableOp+classification_layer/BiasAdd/ReadVariableOp2X
*classification_layer/MatMul/ReadVariableOp*classification_layer/MatMul/ReadVariableOp2B
hidden_1/BiasAdd/ReadVariableOphidden_1/BiasAdd/ReadVariableOp2@
hidden_1/MatMul/ReadVariableOphidden_1/MatMul/ReadVariableOp2B
hidden_2/BiasAdd/ReadVariableOphidden_2/BiasAdd/ReadVariableOp2@
hidden_2/MatMul/ReadVariableOphidden_2/MatMul/ReadVariableOp2B
hidden_3/BiasAdd/ReadVariableOphidden_3/BiasAdd/ReadVariableOp2@
hidden_3/MatMul/ReadVariableOphidden_3/MatMul/ReadVariableOp:P L
(
_output_shapes
:         ╘
 
_user_specified_nameinputs
▀
f
H__inference_dropout_37_layer_call_and_return_conditional_losses_16515870

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         А\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
▀
f
H__inference_dropout_37_layer_call_and_return_conditional_losses_16516454

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         А\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
м

Д
R__inference_classification_layer_layer_call_and_return_conditional_losses_16516533

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╝
d
H__inference_flatten_12_layer_call_and_return_conditional_losses_16515822

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"    ╘  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         ╘Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         ╘"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ╘:P L
(
_output_shapes
:         ╘
 
_user_specified_nameinputs
╬	
─
+__inference_model_12_layer_call_fn_16516243

inputs
unknown:
╘А
	unknown_0:	А
	unknown_1:
АА
	unknown_2:	А
	unknown_3:
АА
	unknown_4:	А
	unknown_5:	А
	unknown_6:
identityИвStatefulPartitionedCallй
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_model_12_layer_call_and_return_conditional_losses_16516099o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         ╘: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ╘
 
_user_specified_nameinputs
■	
g
H__inference_dropout_38_layer_call_and_return_conditional_losses_16516513

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Н
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=з
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         Аp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         Аj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         АZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
■	
g
H__inference_dropout_37_layer_call_and_return_conditional_losses_16516466

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Н
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=з
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         Аp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         Аj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         АZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
═
Ы
+__inference_hidden_3_layer_call_fn_16516475

inputs
unknown:
АА
	unknown_0:	А
identityИвStatefulPartitionedCall▄
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_hidden_3_layer_call_and_return_conditional_losses_16515883p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
■	
g
H__inference_dropout_36_layer_call_and_return_conditional_losses_16516029

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Н
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=з
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         Аp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         Аj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         АZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
и#
╣
F__inference_model_12_layer_call_and_return_conditional_losses_16516167
input_13%
hidden_1_16516143:
╘А 
hidden_1_16516145:	А%
hidden_2_16516149:
АА 
hidden_2_16516151:	А%
hidden_3_16516155:
АА 
hidden_3_16516157:	А0
classification_layer_16516161:	А+
classification_layer_16516163:
identityИв,classification_layer/StatefulPartitionedCallв hidden_1/StatefulPartitionedCallв hidden_2/StatefulPartitionedCallв hidden_3/StatefulPartitionedCall┴
flatten_12/PartitionedCallPartitionedCallinput_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╘* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_flatten_12_layer_call_and_return_conditional_losses_16515822Ф
 hidden_1/StatefulPartitionedCallStatefulPartitionedCall#flatten_12/PartitionedCall:output:0hidden_1_16516143hidden_1_16516145*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_hidden_1_layer_call_and_return_conditional_losses_16515835т
dropout_36/PartitionedCallPartitionedCall)hidden_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_36_layer_call_and_return_conditional_losses_16515846Ф
 hidden_2/StatefulPartitionedCallStatefulPartitionedCall#dropout_36/PartitionedCall:output:0hidden_2_16516149hidden_2_16516151*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_hidden_2_layer_call_and_return_conditional_losses_16515859т
dropout_37/PartitionedCallPartitionedCall)hidden_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_37_layer_call_and_return_conditional_losses_16515870Ф
 hidden_3/StatefulPartitionedCallStatefulPartitionedCall#dropout_37/PartitionedCall:output:0hidden_3_16516155hidden_3_16516157*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_hidden_3_layer_call_and_return_conditional_losses_16515883т
dropout_38/PartitionedCallPartitionedCall)hidden_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_38_layer_call_and_return_conditional_losses_16515894├
,classification_layer/StatefulPartitionedCallStatefulPartitionedCall#dropout_38/PartitionedCall:output:0classification_layer_16516161classification_layer_16516163*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_classification_layer_layer_call_and_return_conditional_losses_16515907Д
IdentityIdentity5classification_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ▐
NoOpNoOp-^classification_layer/StatefulPartitionedCall!^hidden_1/StatefulPartitionedCall!^hidden_2/StatefulPartitionedCall!^hidden_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         ╘: : : : : : : : 2\
,classification_layer/StatefulPartitionedCall,classification_layer/StatefulPartitionedCall2D
 hidden_1/StatefulPartitionedCall hidden_1/StatefulPartitionedCall2D
 hidden_2/StatefulPartitionedCall hidden_2/StatefulPartitionedCall2D
 hidden_3/StatefulPartitionedCall hidden_3/StatefulPartitionedCall:R N
(
_output_shapes
:         ╘
"
_user_specified_name
input_13
й

·
F__inference_hidden_1_layer_call_and_return_conditional_losses_16516392

inputs2
matmul_readvariableop_resource:
╘А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
╘А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ╘: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ╘
 
_user_specified_nameinputs
▀
f
H__inference_dropout_36_layer_call_and_return_conditional_losses_16516407

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         А\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
√
f
-__inference_dropout_36_layer_call_fn_16516402

inputs
identityИвStatefulPartitionedCall─
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_36_layer_call_and_return_conditional_losses_16516029p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
й

·
F__inference_hidden_3_layer_call_and_return_conditional_losses_16516486

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
▀
f
H__inference_dropout_38_layer_call_and_return_conditional_losses_16515894

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:         А\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
оB
ў
F__inference_model_12_layer_call_and_return_conditional_losses_16516338

inputs;
'hidden_1_matmul_readvariableop_resource:
╘А7
(hidden_1_biasadd_readvariableop_resource:	А;
'hidden_2_matmul_readvariableop_resource:
АА7
(hidden_2_biasadd_readvariableop_resource:	А;
'hidden_3_matmul_readvariableop_resource:
АА7
(hidden_3_biasadd_readvariableop_resource:	АF
3classification_layer_matmul_readvariableop_resource:	АB
4classification_layer_biasadd_readvariableop_resource:
identityИв+classification_layer/BiasAdd/ReadVariableOpв*classification_layer/MatMul/ReadVariableOpвhidden_1/BiasAdd/ReadVariableOpвhidden_1/MatMul/ReadVariableOpвhidden_2/BiasAdd/ReadVariableOpвhidden_2/MatMul/ReadVariableOpвhidden_3/BiasAdd/ReadVariableOpвhidden_3/MatMul/ReadVariableOpa
flatten_12/ConstConst*
_output_shapes
:*
dtype0*
valueB"    ╘  s
flatten_12/ReshapeReshapeinputsflatten_12/Const:output:0*
T0*(
_output_shapes
:         ╘И
hidden_1/MatMul/ReadVariableOpReadVariableOp'hidden_1_matmul_readvariableop_resource* 
_output_shapes
:
╘А*
dtype0С
hidden_1/MatMulMatMulflatten_12/Reshape:output:0&hidden_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЕ
hidden_1/BiasAdd/ReadVariableOpReadVariableOp(hidden_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Т
hidden_1/BiasAddBiasAddhidden_1/MatMul:product:0'hidden_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аc
hidden_1/ReluReluhidden_1/BiasAdd:output:0*
T0*(
_output_shapes
:         А]
dropout_36/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?Р
dropout_36/dropout/MulMulhidden_1/Relu:activations:0!dropout_36/dropout/Const:output:0*
T0*(
_output_shapes
:         Аc
dropout_36/dropout/ShapeShapehidden_1/Relu:activations:0*
T0*
_output_shapes
:г
/dropout_36/dropout/random_uniform/RandomUniformRandomUniform!dropout_36/dropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0f
!dropout_36/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=╚
dropout_36/dropout/GreaterEqualGreaterEqual8dropout_36/dropout/random_uniform/RandomUniform:output:0*dropout_36/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АЖ
dropout_36/dropout/CastCast#dropout_36/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         АЛ
dropout_36/dropout/Mul_1Muldropout_36/dropout/Mul:z:0dropout_36/dropout/Cast:y:0*
T0*(
_output_shapes
:         АИ
hidden_2/MatMul/ReadVariableOpReadVariableOp'hidden_2_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Т
hidden_2/MatMulMatMuldropout_36/dropout/Mul_1:z:0&hidden_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЕ
hidden_2/BiasAdd/ReadVariableOpReadVariableOp(hidden_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Т
hidden_2/BiasAddBiasAddhidden_2/MatMul:product:0'hidden_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аc
hidden_2/ReluReluhidden_2/BiasAdd:output:0*
T0*(
_output_shapes
:         А]
dropout_37/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?Р
dropout_37/dropout/MulMulhidden_2/Relu:activations:0!dropout_37/dropout/Const:output:0*
T0*(
_output_shapes
:         Аc
dropout_37/dropout/ShapeShapehidden_2/Relu:activations:0*
T0*
_output_shapes
:г
/dropout_37/dropout/random_uniform/RandomUniformRandomUniform!dropout_37/dropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0f
!dropout_37/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=╚
dropout_37/dropout/GreaterEqualGreaterEqual8dropout_37/dropout/random_uniform/RandomUniform:output:0*dropout_37/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АЖ
dropout_37/dropout/CastCast#dropout_37/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         АЛ
dropout_37/dropout/Mul_1Muldropout_37/dropout/Mul:z:0dropout_37/dropout/Cast:y:0*
T0*(
_output_shapes
:         АИ
hidden_3/MatMul/ReadVariableOpReadVariableOp'hidden_3_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0Т
hidden_3/MatMulMatMuldropout_37/dropout/Mul_1:z:0&hidden_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЕ
hidden_3/BiasAdd/ReadVariableOpReadVariableOp(hidden_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0Т
hidden_3/BiasAddBiasAddhidden_3/MatMul:product:0'hidden_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аc
hidden_3/ReluReluhidden_3/BiasAdd:output:0*
T0*(
_output_shapes
:         А]
dropout_38/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?Р
dropout_38/dropout/MulMulhidden_3/Relu:activations:0!dropout_38/dropout/Const:output:0*
T0*(
_output_shapes
:         Аc
dropout_38/dropout/ShapeShapehidden_3/Relu:activations:0*
T0*
_output_shapes
:г
/dropout_38/dropout/random_uniform/RandomUniformRandomUniform!dropout_38/dropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0f
!dropout_38/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=╚
dropout_38/dropout/GreaterEqualGreaterEqual8dropout_38/dropout/random_uniform/RandomUniform:output:0*dropout_38/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         АЖ
dropout_38/dropout/CastCast#dropout_38/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         АЛ
dropout_38/dropout/Mul_1Muldropout_38/dropout/Mul:z:0dropout_38/dropout/Cast:y:0*
T0*(
_output_shapes
:         АЯ
*classification_layer/MatMul/ReadVariableOpReadVariableOp3classification_layer_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0й
classification_layer/MatMulMatMuldropout_38/dropout/Mul_1:z:02classification_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Ь
+classification_layer/BiasAdd/ReadVariableOpReadVariableOp4classification_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╡
classification_layer/BiasAddBiasAdd%classification_layer/MatMul:product:03classification_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         А
classification_layer/SigmoidSigmoid%classification_layer/BiasAdd:output:0*
T0*'
_output_shapes
:         o
IdentityIdentity classification_layer/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         ъ
NoOpNoOp,^classification_layer/BiasAdd/ReadVariableOp+^classification_layer/MatMul/ReadVariableOp ^hidden_1/BiasAdd/ReadVariableOp^hidden_1/MatMul/ReadVariableOp ^hidden_2/BiasAdd/ReadVariableOp^hidden_2/MatMul/ReadVariableOp ^hidden_3/BiasAdd/ReadVariableOp^hidden_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         ╘: : : : : : : : 2Z
+classification_layer/BiasAdd/ReadVariableOp+classification_layer/BiasAdd/ReadVariableOp2X
*classification_layer/MatMul/ReadVariableOp*classification_layer/MatMul/ReadVariableOp2B
hidden_1/BiasAdd/ReadVariableOphidden_1/BiasAdd/ReadVariableOp2@
hidden_1/MatMul/ReadVariableOphidden_1/MatMul/ReadVariableOp2B
hidden_2/BiasAdd/ReadVariableOphidden_2/BiasAdd/ReadVariableOp2@
hidden_2/MatMul/ReadVariableOphidden_2/MatMul/ReadVariableOp2B
hidden_3/BiasAdd/ReadVariableOphidden_3/BiasAdd/ReadVariableOp2@
hidden_3/MatMul/ReadVariableOphidden_3/MatMul/ReadVariableOp:P L
(
_output_shapes
:         ╘
 
_user_specified_nameinputs
в#
╖
F__inference_model_12_layer_call_and_return_conditional_losses_16515914

inputs%
hidden_1_16515836:
╘А 
hidden_1_16515838:	А%
hidden_2_16515860:
АА 
hidden_2_16515862:	А%
hidden_3_16515884:
АА 
hidden_3_16515886:	А0
classification_layer_16515908:	А+
classification_layer_16515910:
identityИв,classification_layer/StatefulPartitionedCallв hidden_1/StatefulPartitionedCallв hidden_2/StatefulPartitionedCallв hidden_3/StatefulPartitionedCall┐
flatten_12/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╘* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_flatten_12_layer_call_and_return_conditional_losses_16515822Ф
 hidden_1/StatefulPartitionedCallStatefulPartitionedCall#flatten_12/PartitionedCall:output:0hidden_1_16515836hidden_1_16515838*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_hidden_1_layer_call_and_return_conditional_losses_16515835т
dropout_36/PartitionedCallPartitionedCall)hidden_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_36_layer_call_and_return_conditional_losses_16515846Ф
 hidden_2/StatefulPartitionedCallStatefulPartitionedCall#dropout_36/PartitionedCall:output:0hidden_2_16515860hidden_2_16515862*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_hidden_2_layer_call_and_return_conditional_losses_16515859т
dropout_37/PartitionedCallPartitionedCall)hidden_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_37_layer_call_and_return_conditional_losses_16515870Ф
 hidden_3/StatefulPartitionedCallStatefulPartitionedCall#dropout_37/PartitionedCall:output:0hidden_3_16515884hidden_3_16515886*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_hidden_3_layer_call_and_return_conditional_losses_16515883т
dropout_38/PartitionedCallPartitionedCall)hidden_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_38_layer_call_and_return_conditional_losses_16515894├
,classification_layer/StatefulPartitionedCallStatefulPartitionedCall#dropout_38/PartitionedCall:output:0classification_layer_16515908classification_layer_16515910*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_classification_layer_layer_call_and_return_conditional_losses_16515907Д
IdentityIdentity5classification_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ▐
NoOpNoOp-^classification_layer/StatefulPartitionedCall!^hidden_1/StatefulPartitionedCall!^hidden_2/StatefulPartitionedCall!^hidden_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         ╘: : : : : : : : 2\
,classification_layer/StatefulPartitionedCall,classification_layer/StatefulPartitionedCall2D
 hidden_1/StatefulPartitionedCall hidden_1/StatefulPartitionedCall2D
 hidden_2/StatefulPartitionedCall hidden_2/StatefulPartitionedCall2D
 hidden_3/StatefulPartitionedCall hidden_3/StatefulPartitionedCall:P L
(
_output_shapes
:         ╘
 
_user_specified_nameinputs
╘	
╞
+__inference_model_12_layer_call_fn_16516139
input_13
unknown:
╘А
	unknown_0:	А
	unknown_1:
АА
	unknown_2:	А
	unknown_3:
АА
	unknown_4:	А
	unknown_5:	А
	unknown_6:
identityИвStatefulPartitionedCallл
StatefulPartitionedCallStatefulPartitionedCallinput_13unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_model_12_layer_call_and_return_conditional_losses_16516099o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         ╘: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
(
_output_shapes
:         ╘
"
_user_specified_name
input_13
м	
┴
&__inference_signature_wrapper_16516361
input_13
unknown:
╘А
	unknown_0:	А
	unknown_1:
АА
	unknown_2:	А
	unknown_3:
АА
	unknown_4:	А
	unknown_5:	А
	unknown_6:
identityИвStatefulPartitionedCallИ
StatefulPartitionedCallStatefulPartitionedCallinput_13unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *,
f'R%
#__inference__wrapped_model_16515809o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         ╘: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
(
_output_shapes
:         ╘
"
_user_specified_name
input_13
м

Д
R__inference_classification_layer_layer_call_and_return_conditional_losses_16515907

inputs1
matmul_readvariableop_resource:	А-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	А*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
й

·
F__inference_hidden_2_layer_call_and_return_conditional_losses_16516439

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Е2
ц
#__inference__wrapped_model_16515809
input_13D
0model_12_hidden_1_matmul_readvariableop_resource:
╘А@
1model_12_hidden_1_biasadd_readvariableop_resource:	АD
0model_12_hidden_2_matmul_readvariableop_resource:
АА@
1model_12_hidden_2_biasadd_readvariableop_resource:	АD
0model_12_hidden_3_matmul_readvariableop_resource:
АА@
1model_12_hidden_3_biasadd_readvariableop_resource:	АO
<model_12_classification_layer_matmul_readvariableop_resource:	АK
=model_12_classification_layer_biasadd_readvariableop_resource:
identityИв4model_12/classification_layer/BiasAdd/ReadVariableOpв3model_12/classification_layer/MatMul/ReadVariableOpв(model_12/hidden_1/BiasAdd/ReadVariableOpв'model_12/hidden_1/MatMul/ReadVariableOpв(model_12/hidden_2/BiasAdd/ReadVariableOpв'model_12/hidden_2/MatMul/ReadVariableOpв(model_12/hidden_3/BiasAdd/ReadVariableOpв'model_12/hidden_3/MatMul/ReadVariableOpj
model_12/flatten_12/ConstConst*
_output_shapes
:*
dtype0*
valueB"    ╘  З
model_12/flatten_12/ReshapeReshapeinput_13"model_12/flatten_12/Const:output:0*
T0*(
_output_shapes
:         ╘Ъ
'model_12/hidden_1/MatMul/ReadVariableOpReadVariableOp0model_12_hidden_1_matmul_readvariableop_resource* 
_output_shapes
:
╘А*
dtype0м
model_12/hidden_1/MatMulMatMul$model_12/flatten_12/Reshape:output:0/model_12/hidden_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЧ
(model_12/hidden_1/BiasAdd/ReadVariableOpReadVariableOp1model_12_hidden_1_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0н
model_12/hidden_1/BiasAddBiasAdd"model_12/hidden_1/MatMul:product:00model_12/hidden_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аu
model_12/hidden_1/ReluRelu"model_12/hidden_1/BiasAdd:output:0*
T0*(
_output_shapes
:         АБ
model_12/dropout_36/IdentityIdentity$model_12/hidden_1/Relu:activations:0*
T0*(
_output_shapes
:         АЪ
'model_12/hidden_2/MatMul/ReadVariableOpReadVariableOp0model_12_hidden_2_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0н
model_12/hidden_2/MatMulMatMul%model_12/dropout_36/Identity:output:0/model_12/hidden_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЧ
(model_12/hidden_2/BiasAdd/ReadVariableOpReadVariableOp1model_12_hidden_2_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0н
model_12/hidden_2/BiasAddBiasAdd"model_12/hidden_2/MatMul:product:00model_12/hidden_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аu
model_12/hidden_2/ReluRelu"model_12/hidden_2/BiasAdd:output:0*
T0*(
_output_shapes
:         АБ
model_12/dropout_37/IdentityIdentity$model_12/hidden_2/Relu:activations:0*
T0*(
_output_shapes
:         АЪ
'model_12/hidden_3/MatMul/ReadVariableOpReadVariableOp0model_12_hidden_3_matmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0н
model_12/hidden_3/MatMulMatMul%model_12/dropout_37/Identity:output:0/model_12/hidden_3/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АЧ
(model_12/hidden_3/BiasAdd/ReadVariableOpReadVariableOp1model_12_hidden_3_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0н
model_12/hidden_3/BiasAddBiasAdd"model_12/hidden_3/MatMul:product:00model_12/hidden_3/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аu
model_12/hidden_3/ReluRelu"model_12/hidden_3/BiasAdd:output:0*
T0*(
_output_shapes
:         АБ
model_12/dropout_38/IdentityIdentity$model_12/hidden_3/Relu:activations:0*
T0*(
_output_shapes
:         А▒
3model_12/classification_layer/MatMul/ReadVariableOpReadVariableOp<model_12_classification_layer_matmul_readvariableop_resource*
_output_shapes
:	А*
dtype0─
$model_12/classification_layer/MatMulMatMul%model_12/dropout_38/Identity:output:0;model_12/classification_layer/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         о
4model_12/classification_layer/BiasAdd/ReadVariableOpReadVariableOp=model_12_classification_layer_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0╨
%model_12/classification_layer/BiasAddBiasAdd.model_12/classification_layer/MatMul:product:0<model_12/classification_layer/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Т
%model_12/classification_layer/SigmoidSigmoid.model_12/classification_layer/BiasAdd:output:0*
T0*'
_output_shapes
:         x
IdentityIdentity)model_12/classification_layer/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         ▓
NoOpNoOp5^model_12/classification_layer/BiasAdd/ReadVariableOp4^model_12/classification_layer/MatMul/ReadVariableOp)^model_12/hidden_1/BiasAdd/ReadVariableOp(^model_12/hidden_1/MatMul/ReadVariableOp)^model_12/hidden_2/BiasAdd/ReadVariableOp(^model_12/hidden_2/MatMul/ReadVariableOp)^model_12/hidden_3/BiasAdd/ReadVariableOp(^model_12/hidden_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         ╘: : : : : : : : 2l
4model_12/classification_layer/BiasAdd/ReadVariableOp4model_12/classification_layer/BiasAdd/ReadVariableOp2j
3model_12/classification_layer/MatMul/ReadVariableOp3model_12/classification_layer/MatMul/ReadVariableOp2T
(model_12/hidden_1/BiasAdd/ReadVariableOp(model_12/hidden_1/BiasAdd/ReadVariableOp2R
'model_12/hidden_1/MatMul/ReadVariableOp'model_12/hidden_1/MatMul/ReadVariableOp2T
(model_12/hidden_2/BiasAdd/ReadVariableOp(model_12/hidden_2/BiasAdd/ReadVariableOp2R
'model_12/hidden_2/MatMul/ReadVariableOp'model_12/hidden_2/MatMul/ReadVariableOp2T
(model_12/hidden_3/BiasAdd/ReadVariableOp(model_12/hidden_3/BiasAdd/ReadVariableOp2R
'model_12/hidden_3/MatMul/ReadVariableOp'model_12/hidden_3/MatMul/ReadVariableOp:R N
(
_output_shapes
:         ╘
"
_user_specified_name
input_13
■	
g
H__inference_dropout_37_layer_call_and_return_conditional_losses_16515996

inputs
identityИR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         АC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:Н
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=з
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         Аp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         Аj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         АZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Ў'
и
F__inference_model_12_layer_call_and_return_conditional_losses_16516195
input_13%
hidden_1_16516171:
╘А 
hidden_1_16516173:	А%
hidden_2_16516177:
АА 
hidden_2_16516179:	А%
hidden_3_16516183:
АА 
hidden_3_16516185:	А0
classification_layer_16516189:	А+
classification_layer_16516191:
identityИв,classification_layer/StatefulPartitionedCallв"dropout_36/StatefulPartitionedCallв"dropout_37/StatefulPartitionedCallв"dropout_38/StatefulPartitionedCallв hidden_1/StatefulPartitionedCallв hidden_2/StatefulPartitionedCallв hidden_3/StatefulPartitionedCall┴
flatten_12/PartitionedCallPartitionedCallinput_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╘* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_flatten_12_layer_call_and_return_conditional_losses_16515822Ф
 hidden_1/StatefulPartitionedCallStatefulPartitionedCall#flatten_12/PartitionedCall:output:0hidden_1_16516171hidden_1_16516173*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_hidden_1_layer_call_and_return_conditional_losses_16515835Є
"dropout_36/StatefulPartitionedCallStatefulPartitionedCall)hidden_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_36_layer_call_and_return_conditional_losses_16516029Ь
 hidden_2/StatefulPartitionedCallStatefulPartitionedCall+dropout_36/StatefulPartitionedCall:output:0hidden_2_16516177hidden_2_16516179*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_hidden_2_layer_call_and_return_conditional_losses_16515859Ч
"dropout_37/StatefulPartitionedCallStatefulPartitionedCall)hidden_2/StatefulPartitionedCall:output:0#^dropout_36/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_37_layer_call_and_return_conditional_losses_16515996Ь
 hidden_3/StatefulPartitionedCallStatefulPartitionedCall+dropout_37/StatefulPartitionedCall:output:0hidden_3_16516183hidden_3_16516185*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_hidden_3_layer_call_and_return_conditional_losses_16515883Ч
"dropout_38/StatefulPartitionedCallStatefulPartitionedCall)hidden_3/StatefulPartitionedCall:output:0#^dropout_37/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_38_layer_call_and_return_conditional_losses_16515963╦
,classification_layer/StatefulPartitionedCallStatefulPartitionedCall+dropout_38/StatefulPartitionedCall:output:0classification_layer_16516189classification_layer_16516191*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_classification_layer_layer_call_and_return_conditional_losses_16515907Д
IdentityIdentity5classification_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ═
NoOpNoOp-^classification_layer/StatefulPartitionedCall#^dropout_36/StatefulPartitionedCall#^dropout_37/StatefulPartitionedCall#^dropout_38/StatefulPartitionedCall!^hidden_1/StatefulPartitionedCall!^hidden_2/StatefulPartitionedCall!^hidden_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         ╘: : : : : : : : 2\
,classification_layer/StatefulPartitionedCall,classification_layer/StatefulPartitionedCall2H
"dropout_36/StatefulPartitionedCall"dropout_36/StatefulPartitionedCall2H
"dropout_37/StatefulPartitionedCall"dropout_37/StatefulPartitionedCall2H
"dropout_38/StatefulPartitionedCall"dropout_38/StatefulPartitionedCall2D
 hidden_1/StatefulPartitionedCall hidden_1/StatefulPartitionedCall2D
 hidden_2/StatefulPartitionedCall hidden_2/StatefulPartitionedCall2D
 hidden_3/StatefulPartitionedCall hidden_3/StatefulPartitionedCall:R N
(
_output_shapes
:         ╘
"
_user_specified_name
input_13
й
I
-__inference_flatten_12_layer_call_fn_16516366

inputs
identity┤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╘* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_flatten_12_layer_call_and_return_conditional_losses_16515822a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         ╘"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ╘:P L
(
_output_shapes
:         ╘
 
_user_specified_nameinputs
с
е
7__inference_classification_layer_layer_call_fn_16516522

inputs
unknown:	А
	unknown_0:
identityИвStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_classification_layer_layer_call_and_return_conditional_losses_16515907o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
й
I
-__inference_dropout_38_layer_call_fn_16516491

inputs
identity┤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_38_layer_call_and_return_conditional_losses_16515894a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╝
d
H__inference_flatten_12_layer_call_and_return_conditional_losses_16516372

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"    ╘  ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:         ╘Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:         ╘"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         ╘:P L
(
_output_shapes
:         ╘
 
_user_specified_nameinputs
й

·
F__inference_hidden_3_layer_call_and_return_conditional_losses_16515883

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
√
f
-__inference_dropout_37_layer_call_fn_16516449

inputs
identityИвStatefulPartitionedCall─
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_37_layer_call_and_return_conditional_losses_16515996p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
═
Ы
+__inference_hidden_2_layer_call_fn_16516428

inputs
unknown:
АА
	unknown_0:	А
identityИвStatefulPartitionedCall▄
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_hidden_2_layer_call_and_return_conditional_losses_16515859p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:         А`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
й

·
F__inference_hidden_1_layer_call_and_return_conditional_losses_16515835

inputs2
matmul_readvariableop_resource:
╘А.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
╘А*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ╘: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         ╘
 
_user_specified_nameinputs
й

·
F__inference_hidden_2_layer_call_and_return_conditional_losses_16515859

inputs2
matmul_readvariableop_resource:
АА.
biasadd_readvariableop_resource:	А
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
АА*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         Аs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         АQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         Аb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:         Аw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         А: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Ё'
ж
F__inference_model_12_layer_call_and_return_conditional_losses_16516099

inputs%
hidden_1_16516075:
╘А 
hidden_1_16516077:	А%
hidden_2_16516081:
АА 
hidden_2_16516083:	А%
hidden_3_16516087:
АА 
hidden_3_16516089:	А0
classification_layer_16516093:	А+
classification_layer_16516095:
identityИв,classification_layer/StatefulPartitionedCallв"dropout_36/StatefulPartitionedCallв"dropout_37/StatefulPartitionedCallв"dropout_38/StatefulPartitionedCallв hidden_1/StatefulPartitionedCallв hidden_2/StatefulPartitionedCallв hidden_3/StatefulPartitionedCall┐
flatten_12/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         ╘* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_flatten_12_layer_call_and_return_conditional_losses_16515822Ф
 hidden_1/StatefulPartitionedCallStatefulPartitionedCall#flatten_12/PartitionedCall:output:0hidden_1_16516075hidden_1_16516077*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_hidden_1_layer_call_and_return_conditional_losses_16515835Є
"dropout_36/StatefulPartitionedCallStatefulPartitionedCall)hidden_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_36_layer_call_and_return_conditional_losses_16516029Ь
 hidden_2/StatefulPartitionedCallStatefulPartitionedCall+dropout_36/StatefulPartitionedCall:output:0hidden_2_16516081hidden_2_16516083*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_hidden_2_layer_call_and_return_conditional_losses_16515859Ч
"dropout_37/StatefulPartitionedCallStatefulPartitionedCall)hidden_2/StatefulPartitionedCall:output:0#^dropout_36/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_37_layer_call_and_return_conditional_losses_16515996Ь
 hidden_3/StatefulPartitionedCallStatefulPartitionedCall+dropout_37/StatefulPartitionedCall:output:0hidden_3_16516087hidden_3_16516089*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_hidden_3_layer_call_and_return_conditional_losses_16515883Ч
"dropout_38/StatefulPartitionedCallStatefulPartitionedCall)hidden_3/StatefulPartitionedCall:output:0#^dropout_37/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_38_layer_call_and_return_conditional_losses_16515963╦
,classification_layer/StatefulPartitionedCallStatefulPartitionedCall+dropout_38/StatefulPartitionedCall:output:0classification_layer_16516093classification_layer_16516095*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *[
fVRT
R__inference_classification_layer_layer_call_and_return_conditional_losses_16515907Д
IdentityIdentity5classification_layer/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         ═
NoOpNoOp-^classification_layer/StatefulPartitionedCall#^dropout_36/StatefulPartitionedCall#^dropout_37/StatefulPartitionedCall#^dropout_38/StatefulPartitionedCall!^hidden_1/StatefulPartitionedCall!^hidden_2/StatefulPartitionedCall!^hidden_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         ╘: : : : : : : : 2\
,classification_layer/StatefulPartitionedCall,classification_layer/StatefulPartitionedCall2H
"dropout_36/StatefulPartitionedCall"dropout_36/StatefulPartitionedCall2H
"dropout_37/StatefulPartitionedCall"dropout_37/StatefulPartitionedCall2H
"dropout_38/StatefulPartitionedCall"dropout_38/StatefulPartitionedCall2D
 hidden_1/StatefulPartitionedCall hidden_1/StatefulPartitionedCall2D
 hidden_2/StatefulPartitionedCall hidden_2/StatefulPartitionedCall2D
 hidden_3/StatefulPartitionedCall hidden_3/StatefulPartitionedCall:P L
(
_output_shapes
:         ╘
 
_user_specified_nameinputs
й
I
-__inference_dropout_36_layer_call_fn_16516397

inputs
identity┤
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *Q
fLRJ
H__inference_dropout_36_layer_call_and_return_conditional_losses_16515846a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╘	
╞
+__inference_model_12_layer_call_fn_16515933
input_13
unknown:
╘А
	unknown_0:	А
	unknown_1:
АА
	unknown_2:	А
	unknown_3:
АА
	unknown_4:	А
	unknown_5:	А
	unknown_6:
identityИвStatefulPartitionedCallл
StatefulPartitionedCallStatefulPartitionedCallinput_13unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_model_12_layer_call_and_return_conditional_losses_16515914o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         ╘: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:R N
(
_output_shapes
:         ╘
"
_user_specified_name
input_13
╬	
─
+__inference_model_12_layer_call_fn_16516222

inputs
unknown:
╘А
	unknown_0:	А
	unknown_1:
АА
	unknown_2:	А
	unknown_3:
АА
	unknown_4:	А
	unknown_5:	А
	unknown_6:
identityИвStatefulPartitionedCallй
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         **
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_model_12_layer_call_and_return_conditional_losses_16515914o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*7
_input_shapes&
$:         ╘: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         ╘
 
_user_specified_nameinputs"█L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*║
serving_defaultж
>
input_132
serving_default_input_13:0         ╘H
classification_layer0
StatefulPartitionedCall:0         tensorflow/serving/predict:РЬ
└
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer_with_weights-3
	layer-8

	optimizer
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
е
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

kernel
bias
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses"
_tf_keras_layer
╝
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%_random_generator
&__call__
*'&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

(kernel
)bias
*	variables
+trainable_variables
,regularization_losses
-	keras_api
.__call__
*/&call_and_return_all_conditional_losses"
_tf_keras_layer
╝
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4_random_generator
5__call__
*6&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

7kernel
8bias
9	variables
:trainable_variables
;regularization_losses
<	keras_api
=__call__
*>&call_and_return_all_conditional_losses"
_tf_keras_layer
╝
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C_random_generator
D__call__
*E&call_and_return_all_conditional_losses"
_tf_keras_layer
╗

Fkernel
Gbias
H	variables
Itrainable_variables
Jregularization_losses
K	keras_api
L__call__
*M&call_and_return_all_conditional_losses"
_tf_keras_layer
є
Niter

Obeta_1

Pbeta_2
	Qdecay
Rlearning_ratemМmН(mО)mП7mР8mСFmТGmУvФvХ(vЦ)vЧ7vШ8vЩFvЪGvЫ"
	optimizer
X
0
1
(2
)3
74
85
F6
G7"
trackable_list_wrapper
X
0
1
(2
)3
74
85
F6
G7"
trackable_list_wrapper
 "
trackable_list_wrapper
╩
Snon_trainable_variables

Tlayers
Umetrics
Vlayer_regularization_losses
Wlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
·2ў
+__inference_model_12_layer_call_fn_16515933
+__inference_model_12_layer_call_fn_16516222
+__inference_model_12_layer_call_fn_16516243
+__inference_model_12_layer_call_fn_16516139└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ц2у
F__inference_model_12_layer_call_and_return_conditional_losses_16516280
F__inference_model_12_layer_call_and_return_conditional_losses_16516338
F__inference_model_12_layer_call_and_return_conditional_losses_16516167
F__inference_model_12_layer_call_and_return_conditional_losses_16516195└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╧B╠
#__inference__wrapped_model_16515809input_13"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
,
Xserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
Ynon_trainable_variables

Zlayers
[metrics
\layer_regularization_losses
]layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
╫2╘
-__inference_flatten_12_layer_call_fn_16516366в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Є2я
H__inference_flatten_12_layer_call_and_return_conditional_losses_16516372в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
#:!
╘А2hidden_1/kernel
:А2hidden_1/bias
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
^non_trainable_variables

_layers
`metrics
alayer_regularization_losses
blayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
╒2╥
+__inference_hidden_1_layer_call_fn_16516381в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ё2э
F__inference_hidden_1_layer_call_and_return_conditional_losses_16516392в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
cnon_trainable_variables

dlayers
emetrics
flayer_regularization_losses
glayer_metrics
!	variables
"trainable_variables
#regularization_losses
&__call__
*'&call_and_return_all_conditional_losses
&'"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
Ш2Х
-__inference_dropout_36_layer_call_fn_16516397
-__inference_dropout_36_layer_call_fn_16516402┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╬2╦
H__inference_dropout_36_layer_call_and_return_conditional_losses_16516407
H__inference_dropout_36_layer_call_and_return_conditional_losses_16516419┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
#:!
АА2hidden_2/kernel
:А2hidden_2/bias
.
(0
)1"
trackable_list_wrapper
.
(0
)1"
trackable_list_wrapper
 "
trackable_list_wrapper
н
hnon_trainable_variables

ilayers
jmetrics
klayer_regularization_losses
llayer_metrics
*	variables
+trainable_variables
,regularization_losses
.__call__
*/&call_and_return_all_conditional_losses
&/"call_and_return_conditional_losses"
_generic_user_object
╒2╥
+__inference_hidden_2_layer_call_fn_16516428в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ё2э
F__inference_hidden_2_layer_call_and_return_conditional_losses_16516439в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
0	variables
1trainable_variables
2regularization_losses
5__call__
*6&call_and_return_all_conditional_losses
&6"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
Ш2Х
-__inference_dropout_37_layer_call_fn_16516444
-__inference_dropout_37_layer_call_fn_16516449┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╬2╦
H__inference_dropout_37_layer_call_and_return_conditional_losses_16516454
H__inference_dropout_37_layer_call_and_return_conditional_losses_16516466┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
#:!
АА2hidden_3/kernel
:А2hidden_3/bias
.
70
81"
trackable_list_wrapper
.
70
81"
trackable_list_wrapper
 "
trackable_list_wrapper
н
rnon_trainable_variables

slayers
tmetrics
ulayer_regularization_losses
vlayer_metrics
9	variables
:trainable_variables
;regularization_losses
=__call__
*>&call_and_return_all_conditional_losses
&>"call_and_return_conditional_losses"
_generic_user_object
╒2╥
+__inference_hidden_3_layer_call_fn_16516475в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ё2э
F__inference_hidden_3_layer_call_and_return_conditional_losses_16516486в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
н
wnon_trainable_variables

xlayers
ymetrics
zlayer_regularization_losses
{layer_metrics
?	variables
@trainable_variables
Aregularization_losses
D__call__
*E&call_and_return_all_conditional_losses
&E"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
Ш2Х
-__inference_dropout_38_layer_call_fn_16516491
-__inference_dropout_38_layer_call_fn_16516496┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
╬2╦
H__inference_dropout_38_layer_call_and_return_conditional_losses_16516501
H__inference_dropout_38_layer_call_and_return_conditional_losses_16516513┤
л▓з
FullArgSpec)
args!Ъ
jself
jinputs

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
.:,	А2classification_layer/kernel
':%2classification_layer/bias
.
F0
G1"
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
о
|non_trainable_variables

}layers
~metrics
layer_regularization_losses
Аlayer_metrics
H	variables
Itrainable_variables
Jregularization_losses
L__call__
*M&call_and_return_all_conditional_losses
&M"call_and_return_conditional_losses"
_generic_user_object
с2▐
7__inference_classification_layer_layer_call_fn_16516522в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
№2∙
R__inference_classification_layer_layer_call_and_return_conditional_losses_16516533в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
 "
trackable_list_wrapper
_
0
1
2
3
4
5
6
7
	8"
trackable_list_wrapper
0
Б0
В1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
╬B╦
&__inference_signature_wrapper_16516361input_13"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
R

Гtotal

Дcount
Е	variables
Ж	keras_api"
_tf_keras_metric
c

Зtotal

Иcount
Й
_fn_kwargs
К	variables
Л	keras_api"
_tf_keras_metric
:  (2total
:  (2count
0
Г0
Д1"
trackable_list_wrapper
.
Е	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
З0
И1"
trackable_list_wrapper
.
К	variables"
_generic_user_object
(:&
╘А2Adam/hidden_1/kernel/m
!:А2Adam/hidden_1/bias/m
(:&
АА2Adam/hidden_2/kernel/m
!:А2Adam/hidden_2/bias/m
(:&
АА2Adam/hidden_3/kernel/m
!:А2Adam/hidden_3/bias/m
3:1	А2"Adam/classification_layer/kernel/m
,:*2 Adam/classification_layer/bias/m
(:&
╘А2Adam/hidden_1/kernel/v
!:А2Adam/hidden_1/bias/v
(:&
АА2Adam/hidden_2/kernel/v
!:А2Adam/hidden_2/bias/v
(:&
АА2Adam/hidden_3/kernel/v
!:А2Adam/hidden_3/bias/v
3:1	А2"Adam/classification_layer/kernel/v
,:*2 Adam/classification_layer/bias/v│
#__inference__wrapped_model_16515809Л()78FG2в/
(в%
#К 
input_13         ╘
к "KкH
F
classification_layer.К+
classification_layer         │
R__inference_classification_layer_layer_call_and_return_conditional_losses_16516533]FG0в-
&в#
!К
inputs         А
к "%в"
К
0         
Ъ Л
7__inference_classification_layer_layer_call_fn_16516522PFG0в-
&в#
!К
inputs         А
к "К         к
H__inference_dropout_36_layer_call_and_return_conditional_losses_16516407^4в1
*в'
!К
inputs         А
p 
к "&в#
К
0         А
Ъ к
H__inference_dropout_36_layer_call_and_return_conditional_losses_16516419^4в1
*в'
!К
inputs         А
p
к "&в#
К
0         А
Ъ В
-__inference_dropout_36_layer_call_fn_16516397Q4в1
*в'
!К
inputs         А
p 
к "К         АВ
-__inference_dropout_36_layer_call_fn_16516402Q4в1
*в'
!К
inputs         А
p
к "К         Ак
H__inference_dropout_37_layer_call_and_return_conditional_losses_16516454^4в1
*в'
!К
inputs         А
p 
к "&в#
К
0         А
Ъ к
H__inference_dropout_37_layer_call_and_return_conditional_losses_16516466^4в1
*в'
!К
inputs         А
p
к "&в#
К
0         А
Ъ В
-__inference_dropout_37_layer_call_fn_16516444Q4в1
*в'
!К
inputs         А
p 
к "К         АВ
-__inference_dropout_37_layer_call_fn_16516449Q4в1
*в'
!К
inputs         А
p
к "К         Ак
H__inference_dropout_38_layer_call_and_return_conditional_losses_16516501^4в1
*в'
!К
inputs         А
p 
к "&в#
К
0         А
Ъ к
H__inference_dropout_38_layer_call_and_return_conditional_losses_16516513^4в1
*в'
!К
inputs         А
p
к "&в#
К
0         А
Ъ В
-__inference_dropout_38_layer_call_fn_16516491Q4в1
*в'
!К
inputs         А
p 
к "К         АВ
-__inference_dropout_38_layer_call_fn_16516496Q4в1
*в'
!К
inputs         А
p
к "К         Аж
H__inference_flatten_12_layer_call_and_return_conditional_losses_16516372Z0в-
&в#
!К
inputs         ╘
к "&в#
К
0         ╘
Ъ ~
-__inference_flatten_12_layer_call_fn_16516366M0в-
&в#
!К
inputs         ╘
к "К         ╘и
F__inference_hidden_1_layer_call_and_return_conditional_losses_16516392^0в-
&в#
!К
inputs         ╘
к "&в#
К
0         А
Ъ А
+__inference_hidden_1_layer_call_fn_16516381Q0в-
&в#
!К
inputs         ╘
к "К         Аи
F__inference_hidden_2_layer_call_and_return_conditional_losses_16516439^()0в-
&в#
!К
inputs         А
к "&в#
К
0         А
Ъ А
+__inference_hidden_2_layer_call_fn_16516428Q()0в-
&в#
!К
inputs         А
к "К         Аи
F__inference_hidden_3_layer_call_and_return_conditional_losses_16516486^780в-
&в#
!К
inputs         А
к "&в#
К
0         А
Ъ А
+__inference_hidden_3_layer_call_fn_16516475Q780в-
&в#
!К
inputs         А
к "К         А╖
F__inference_model_12_layer_call_and_return_conditional_losses_16516167m()78FG:в7
0в-
#К 
input_13         ╘
p 

 
к "%в"
К
0         
Ъ ╖
F__inference_model_12_layer_call_and_return_conditional_losses_16516195m()78FG:в7
0в-
#К 
input_13         ╘
p

 
к "%в"
К
0         
Ъ ╡
F__inference_model_12_layer_call_and_return_conditional_losses_16516280k()78FG8в5
.в+
!К
inputs         ╘
p 

 
к "%в"
К
0         
Ъ ╡
F__inference_model_12_layer_call_and_return_conditional_losses_16516338k()78FG8в5
.в+
!К
inputs         ╘
p

 
к "%в"
К
0         
Ъ П
+__inference_model_12_layer_call_fn_16515933`()78FG:в7
0в-
#К 
input_13         ╘
p 

 
к "К         П
+__inference_model_12_layer_call_fn_16516139`()78FG:в7
0в-
#К 
input_13         ╘
p

 
к "К         Н
+__inference_model_12_layer_call_fn_16516222^()78FG8в5
.в+
!К
inputs         ╘
p 

 
к "К         Н
+__inference_model_12_layer_call_fn_16516243^()78FG8в5
.в+
!К
inputs         ╘
p

 
к "К         ┬
&__inference_signature_wrapper_16516361Ч()78FG>в;
в 
4к1
/
input_13#К 
input_13         ╘"KкH
F
classification_layer.К+
classification_layer         