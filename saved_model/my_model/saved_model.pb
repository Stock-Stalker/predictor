¹+
Î¤
B
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
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
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
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
dtypetype
¥
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
¾
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
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2

TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type
output_handle"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements

handle"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintÿÿÿÿÿÿÿÿÿ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
"serve*2.4.12v2.4.1-0-g85c8b2a817f8)

embedding_2/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:
À>*'
shared_nameembedding_2/embeddings

*embedding_2/embeddings/Read/ReadVariableOpReadVariableOpembedding_2/embeddings* 
_output_shapes
:
À>*
dtype0
y
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ä*
shared_namedense_2/kernel
r
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel*
_output_shapes
:	Ä*
dtype0
p
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_2/bias
i
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes
:*
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

lstm_2/lstm_cell_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
**
shared_namelstm_2/lstm_cell_2/kernel

-lstm_2/lstm_cell_2/kernel/Read/ReadVariableOpReadVariableOplstm_2/lstm_cell_2/kernel* 
_output_shapes
:
*
dtype0
¤
#lstm_2/lstm_cell_2/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ä*4
shared_name%#lstm_2/lstm_cell_2/recurrent_kernel

7lstm_2/lstm_cell_2/recurrent_kernel/Read/ReadVariableOpReadVariableOp#lstm_2/lstm_cell_2/recurrent_kernel* 
_output_shapes
:
Ä*
dtype0

lstm_2/lstm_cell_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*(
shared_namelstm_2/lstm_cell_2/bias

+lstm_2/lstm_cell_2/bias/Read/ReadVariableOpReadVariableOplstm_2/lstm_cell_2/bias*
_output_shapes	
:*
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

Adam/embedding_2/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
À>*.
shared_nameAdam/embedding_2/embeddings/m

1Adam/embedding_2/embeddings/m/Read/ReadVariableOpReadVariableOpAdam/embedding_2/embeddings/m* 
_output_shapes
:
À>*
dtype0

Adam/dense_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ä*&
shared_nameAdam/dense_2/kernel/m

)Adam/dense_2/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/m*
_output_shapes
:	Ä*
dtype0
~
Adam/dense_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_2/bias/m
w
'Adam/dense_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/m*
_output_shapes
:*
dtype0

 Adam/lstm_2/lstm_cell_2/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*1
shared_name" Adam/lstm_2/lstm_cell_2/kernel/m

4Adam/lstm_2/lstm_cell_2/kernel/m/Read/ReadVariableOpReadVariableOp Adam/lstm_2/lstm_cell_2/kernel/m* 
_output_shapes
:
*
dtype0
²
*Adam/lstm_2/lstm_cell_2/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ä*;
shared_name,*Adam/lstm_2/lstm_cell_2/recurrent_kernel/m
«
>Adam/lstm_2/lstm_cell_2/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp*Adam/lstm_2/lstm_cell_2/recurrent_kernel/m* 
_output_shapes
:
Ä*
dtype0

Adam/lstm_2/lstm_cell_2/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/lstm_2/lstm_cell_2/bias/m

2Adam/lstm_2/lstm_cell_2/bias/m/Read/ReadVariableOpReadVariableOpAdam/lstm_2/lstm_cell_2/bias/m*
_output_shapes	
:*
dtype0

Adam/embedding_2/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
À>*.
shared_nameAdam/embedding_2/embeddings/v

1Adam/embedding_2/embeddings/v/Read/ReadVariableOpReadVariableOpAdam/embedding_2/embeddings/v* 
_output_shapes
:
À>*
dtype0

Adam/dense_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ä*&
shared_nameAdam/dense_2/kernel/v

)Adam/dense_2/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/kernel/v*
_output_shapes
:	Ä*
dtype0
~
Adam/dense_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_2/bias/v
w
'Adam/dense_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_2/bias/v*
_output_shapes
:*
dtype0

 Adam/lstm_2/lstm_cell_2/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*1
shared_name" Adam/lstm_2/lstm_cell_2/kernel/v

4Adam/lstm_2/lstm_cell_2/kernel/v/Read/ReadVariableOpReadVariableOp Adam/lstm_2/lstm_cell_2/kernel/v* 
_output_shapes
:
*
dtype0
²
*Adam/lstm_2/lstm_cell_2/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
Ä*;
shared_name,*Adam/lstm_2/lstm_cell_2/recurrent_kernel/v
«
>Adam/lstm_2/lstm_cell_2/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp*Adam/lstm_2/lstm_cell_2/recurrent_kernel/v* 
_output_shapes
:
Ä*
dtype0

Adam/lstm_2/lstm_cell_2/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*/
shared_name Adam/lstm_2/lstm_cell_2/bias/v

2Adam/lstm_2/lstm_cell_2/bias/v/Read/ReadVariableOpReadVariableOpAdam/lstm_2/lstm_cell_2/bias/v*
_output_shapes	
:*
dtype0

NoOpNoOp
à*
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0**
value*B* B*
ó
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	optimizer
	variables
regularization_losses
trainable_variables
		keras_api


signatures
b

embeddings
	variables
regularization_losses
trainable_variables
	keras_api
R
	variables
regularization_losses
trainable_variables
	keras_api
l
cell

state_spec
	variables
regularization_losses
trainable_variables
	keras_api
h

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
¬
 iter

!beta_1

"beta_2
	#decay
$learning_ratemVmWmX%mY&mZ'm[v\v]v^%v_&v`'va
*
0
%1
&2
'3
4
5
 
*
0
%1
&2
'3
4
5
­
(layer_regularization_losses
)metrics
	variables
*layer_metrics

+layers
regularization_losses
,non_trainable_variables
trainable_variables
 
fd
VARIABLE_VALUEembedding_2/embeddings:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUE

0
 

0
­
-layer_regularization_losses
.metrics
	variables
/layer_metrics

0layers
regularization_losses
1non_trainable_variables
trainable_variables
 
 
 
­
2layer_regularization_losses
3metrics
	variables
4layer_metrics

5layers
regularization_losses
6non_trainable_variables
trainable_variables
~

%kernel
&recurrent_kernel
'bias
7	variables
8regularization_losses
9trainable_variables
:	keras_api
 

%0
&1
'2
 

%0
&1
'2
¹
;layer_regularization_losses
<metrics
	variables
=layer_metrics

>layers
regularization_losses

?states
@non_trainable_variables
trainable_variables
ZX
VARIABLE_VALUEdense_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
­
Alayer_regularization_losses
Bmetrics
	variables
Clayer_metrics

Dlayers
regularization_losses
Enon_trainable_variables
trainable_variables
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUElstm_2/lstm_cell_2/kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE
_]
VARIABLE_VALUE#lstm_2/lstm_cell_2/recurrent_kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE
SQ
VARIABLE_VALUElstm_2/lstm_cell_2/bias&variables/3/.ATTRIBUTES/VARIABLE_VALUE
 

F0
G1
 

0
1
2
3
 
 
 
 
 
 
 
 
 
 
 

%0
&1
'2
 

%0
&1
'2
­
Hlayer_regularization_losses
Imetrics
7	variables
Jlayer_metrics

Klayers
8regularization_losses
Lnon_trainable_variables
9trainable_variables
 
 
 

0
 
 
 
 
 
 
 
4
	Mtotal
	Ncount
O	variables
P	keras_api
D
	Qtotal
	Rcount
S
_fn_kwargs
T	variables
U	keras_api
 
 
 
 
 
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

M0
N1

O	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

Q0
R1

T	variables

VARIABLE_VALUEAdam/embedding_2/embeddings/mVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_2/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_2/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_2/lstm_cell_2/kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/lstm_2/lstm_cell_2/recurrent_kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/lstm_2/lstm_cell_2/bias/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/embedding_2/embeddings/vVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_2/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_2/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE Adam/lstm_2/lstm_cell_2/kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE*Adam/lstm_2/lstm_cell_2/recurrent_kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
vt
VARIABLE_VALUEAdam/lstm_2/lstm_cell_2/bias/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

!serving_default_embedding_2_inputPlaceholder*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB*
dtype0*
shape:ÿÿÿÿÿÿÿÿÿB
×
StatefulPartitionedCallStatefulPartitionedCall!serving_default_embedding_2_inputembedding_2/embeddingslstm_2/lstm_cell_2/kernellstm_2/lstm_cell_2/bias#lstm_2/lstm_cell_2/recurrent_kerneldense_2/kerneldense_2/bias*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_569397
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
¸
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename*embedding_2/embeddings/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOp-lstm_2/lstm_cell_2/kernel/Read/ReadVariableOp7lstm_2/lstm_cell_2/recurrent_kernel/Read/ReadVariableOp+lstm_2/lstm_cell_2/bias/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp1Adam/embedding_2/embeddings/m/Read/ReadVariableOp)Adam/dense_2/kernel/m/Read/ReadVariableOp'Adam/dense_2/bias/m/Read/ReadVariableOp4Adam/lstm_2/lstm_cell_2/kernel/m/Read/ReadVariableOp>Adam/lstm_2/lstm_cell_2/recurrent_kernel/m/Read/ReadVariableOp2Adam/lstm_2/lstm_cell_2/bias/m/Read/ReadVariableOp1Adam/embedding_2/embeddings/v/Read/ReadVariableOp)Adam/dense_2/kernel/v/Read/ReadVariableOp'Adam/dense_2/bias/v/Read/ReadVariableOp4Adam/lstm_2/lstm_cell_2/kernel/v/Read/ReadVariableOp>Adam/lstm_2/lstm_cell_2/recurrent_kernel/v/Read/ReadVariableOp2Adam/lstm_2/lstm_cell_2/bias/v/Read/ReadVariableOpConst*(
Tin!
2	*
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
GPU 2J 8 *(
f#R!
__inference__traced_save_571915

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameembedding_2/embeddingsdense_2/kerneldense_2/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratelstm_2/lstm_cell_2/kernel#lstm_2/lstm_cell_2/recurrent_kernellstm_2/lstm_cell_2/biastotalcounttotal_1count_1Adam/embedding_2/embeddings/mAdam/dense_2/kernel/mAdam/dense_2/bias/m Adam/lstm_2/lstm_cell_2/kernel/m*Adam/lstm_2/lstm_cell_2/recurrent_kernel/mAdam/lstm_2/lstm_cell_2/bias/mAdam/embedding_2/embeddings/vAdam/dense_2/kernel/vAdam/dense_2/bias/v Adam/lstm_2/lstm_cell_2/kernel/v*Adam/lstm_2/lstm_cell_2/recurrent_kernel/vAdam/lstm_2/lstm_cell_2/bias/v*'
Tin 
2*
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
GPU 2J 8 *+
f&R$
"__inference__traced_restore_572006´(
å
¾
-__inference_sequential_4_layer_call_fn_570097

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity¢StatefulPartitionedCall¬
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_5693182
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿB::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB
 
_user_specified_nameinputs
øõ
Æ
while_body_568762
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_05
1while_lstm_cell_2_split_readvariableop_resource_07
3while_lstm_cell_2_split_1_readvariableop_resource_0/
+while_lstm_cell_2_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor3
/while_lstm_cell_2_split_readvariableop_resource5
1while_lstm_cell_2_split_1_readvariableop_resource-
)while_lstm_cell_2_readvariableop_resource¢ while/lstm_cell_2/ReadVariableOp¢"while/lstm_cell_2/ReadVariableOp_1¢"while/lstm_cell_2/ReadVariableOp_2¢"while/lstm_cell_2/ReadVariableOp_3¢&while/lstm_cell_2/split/ReadVariableOp¢(while/lstm_cell_2/split_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÔ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem¦
!while/lstm_cell_2/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_2/ones_like/Shape
!while/lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2#
!while/lstm_cell_2/ones_like/ConstÍ
while/lstm_cell_2/ones_likeFill*while/lstm_cell_2/ones_like/Shape:output:0*while/lstm_cell_2/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_2/ones_like
while/lstm_cell_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2!
while/lstm_cell_2/dropout/ConstÈ
while/lstm_cell_2/dropout/MulMul$while/lstm_cell_2/ones_like:output:0(while/lstm_cell_2/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_2/dropout/Mul
while/lstm_cell_2/dropout/ShapeShape$while/lstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell_2/dropout/Shape
6while/lstm_cell_2/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_2/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2ÊÄ§28
6while/lstm_cell_2/dropout/random_uniform/RandomUniform
(while/lstm_cell_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2*
(while/lstm_cell_2/dropout/GreaterEqual/y
&while/lstm_cell_2/dropout/GreaterEqualGreaterEqual?while/lstm_cell_2/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_2/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&while/lstm_cell_2/dropout/GreaterEqual¶
while/lstm_cell_2/dropout/CastCast*while/lstm_cell_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
while/lstm_cell_2/dropout/CastÃ
while/lstm_cell_2/dropout/Mul_1Mul!while/lstm_cell_2/dropout/Mul:z:0"while/lstm_cell_2/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
while/lstm_cell_2/dropout/Mul_1
!while/lstm_cell_2/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_2/dropout_1/ConstÎ
while/lstm_cell_2/dropout_1/MulMul$while/lstm_cell_2/ones_like:output:0*while/lstm_cell_2/dropout_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
while/lstm_cell_2/dropout_1/Mul
!while/lstm_cell_2/dropout_1/ShapeShape$while/lstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_2/dropout_1/Shape
8while/lstm_cell_2/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_2/dropout_1/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2±2:
8while/lstm_cell_2/dropout_1/random_uniform/RandomUniform
*while/lstm_cell_2/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_2/dropout_1/GreaterEqual/y
(while/lstm_cell_2/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_2/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_2/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(while/lstm_cell_2/dropout_1/GreaterEqual¼
 while/lstm_cell_2/dropout_1/CastCast,while/lstm_cell_2/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 while/lstm_cell_2/dropout_1/CastË
!while/lstm_cell_2/dropout_1/Mul_1Mul#while/lstm_cell_2/dropout_1/Mul:z:0$while/lstm_cell_2/dropout_1/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!while/lstm_cell_2/dropout_1/Mul_1
!while/lstm_cell_2/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_2/dropout_2/ConstÎ
while/lstm_cell_2/dropout_2/MulMul$while/lstm_cell_2/ones_like:output:0*while/lstm_cell_2/dropout_2/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
while/lstm_cell_2/dropout_2/Mul
!while/lstm_cell_2/dropout_2/ShapeShape$while/lstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_2/dropout_2/Shape
8while/lstm_cell_2/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_2/dropout_2/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2¶äß2:
8while/lstm_cell_2/dropout_2/random_uniform/RandomUniform
*while/lstm_cell_2/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_2/dropout_2/GreaterEqual/y
(while/lstm_cell_2/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_2/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_2/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(while/lstm_cell_2/dropout_2/GreaterEqual¼
 while/lstm_cell_2/dropout_2/CastCast,while/lstm_cell_2/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 while/lstm_cell_2/dropout_2/CastË
!while/lstm_cell_2/dropout_2/Mul_1Mul#while/lstm_cell_2/dropout_2/Mul:z:0$while/lstm_cell_2/dropout_2/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!while/lstm_cell_2/dropout_2/Mul_1
!while/lstm_cell_2/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_2/dropout_3/ConstÎ
while/lstm_cell_2/dropout_3/MulMul$while/lstm_cell_2/ones_like:output:0*while/lstm_cell_2/dropout_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
while/lstm_cell_2/dropout_3/Mul
!while/lstm_cell_2/dropout_3/ShapeShape$while/lstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_2/dropout_3/Shape
8while/lstm_cell_2/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_2/dropout_3/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2«ºò2:
8while/lstm_cell_2/dropout_3/random_uniform/RandomUniform
*while/lstm_cell_2/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_2/dropout_3/GreaterEqual/y
(while/lstm_cell_2/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_2/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_2/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(while/lstm_cell_2/dropout_3/GreaterEqual¼
 while/lstm_cell_2/dropout_3/CastCast,while/lstm_cell_2/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 while/lstm_cell_2/dropout_3/CastË
!while/lstm_cell_2/dropout_3/Mul_1Mul#while/lstm_cell_2/dropout_3/Mul:z:0$while/lstm_cell_2/dropout_3/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!while/lstm_cell_2/dropout_3/Mul_1
#while/lstm_cell_2/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_2/ones_like_1/Shape
#while/lstm_cell_2/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#while/lstm_cell_2/ones_like_1/ConstÕ
while/lstm_cell_2/ones_like_1Fill,while/lstm_cell_2/ones_like_1/Shape:output:0,while/lstm_cell_2/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/ones_like_1
!while/lstm_cell_2/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_2/dropout_4/ConstÐ
while/lstm_cell_2/dropout_4/MulMul&while/lstm_cell_2/ones_like_1:output:0*while/lstm_cell_2/dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2!
while/lstm_cell_2/dropout_4/Mul
!while/lstm_cell_2/dropout_4/ShapeShape&while/lstm_cell_2/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_2/dropout_4/Shape
8while/lstm_cell_2/dropout_4/random_uniform/RandomUniformRandomUniform*while/lstm_cell_2/dropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
dtype0*
seed±ÿå)*
seed2¼2:
8while/lstm_cell_2/dropout_4/random_uniform/RandomUniform
*while/lstm_cell_2/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_2/dropout_4/GreaterEqual/y
(while/lstm_cell_2/dropout_4/GreaterEqualGreaterEqualAwhile/lstm_cell_2/dropout_4/random_uniform/RandomUniform:output:03while/lstm_cell_2/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2*
(while/lstm_cell_2/dropout_4/GreaterEqual¼
 while/lstm_cell_2/dropout_4/CastCast,while/lstm_cell_2/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2"
 while/lstm_cell_2/dropout_4/CastË
!while/lstm_cell_2/dropout_4/Mul_1Mul#while/lstm_cell_2/dropout_4/Mul:z:0$while/lstm_cell_2/dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2#
!while/lstm_cell_2/dropout_4/Mul_1
!while/lstm_cell_2/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_2/dropout_5/ConstÐ
while/lstm_cell_2/dropout_5/MulMul&while/lstm_cell_2/ones_like_1:output:0*while/lstm_cell_2/dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2!
while/lstm_cell_2/dropout_5/Mul
!while/lstm_cell_2/dropout_5/ShapeShape&while/lstm_cell_2/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_2/dropout_5/Shape
8while/lstm_cell_2/dropout_5/random_uniform/RandomUniformRandomUniform*while/lstm_cell_2/dropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
dtype0*
seed±ÿå)*
seed2êß2:
8while/lstm_cell_2/dropout_5/random_uniform/RandomUniform
*while/lstm_cell_2/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_2/dropout_5/GreaterEqual/y
(while/lstm_cell_2/dropout_5/GreaterEqualGreaterEqualAwhile/lstm_cell_2/dropout_5/random_uniform/RandomUniform:output:03while/lstm_cell_2/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2*
(while/lstm_cell_2/dropout_5/GreaterEqual¼
 while/lstm_cell_2/dropout_5/CastCast,while/lstm_cell_2/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2"
 while/lstm_cell_2/dropout_5/CastË
!while/lstm_cell_2/dropout_5/Mul_1Mul#while/lstm_cell_2/dropout_5/Mul:z:0$while/lstm_cell_2/dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2#
!while/lstm_cell_2/dropout_5/Mul_1
!while/lstm_cell_2/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_2/dropout_6/ConstÐ
while/lstm_cell_2/dropout_6/MulMul&while/lstm_cell_2/ones_like_1:output:0*while/lstm_cell_2/dropout_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2!
while/lstm_cell_2/dropout_6/Mul
!while/lstm_cell_2/dropout_6/ShapeShape&while/lstm_cell_2/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_2/dropout_6/Shape
8while/lstm_cell_2/dropout_6/random_uniform/RandomUniformRandomUniform*while/lstm_cell_2/dropout_6/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
dtype0*
seed±ÿå)*
seed2«Üo2:
8while/lstm_cell_2/dropout_6/random_uniform/RandomUniform
*while/lstm_cell_2/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_2/dropout_6/GreaterEqual/y
(while/lstm_cell_2/dropout_6/GreaterEqualGreaterEqualAwhile/lstm_cell_2/dropout_6/random_uniform/RandomUniform:output:03while/lstm_cell_2/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2*
(while/lstm_cell_2/dropout_6/GreaterEqual¼
 while/lstm_cell_2/dropout_6/CastCast,while/lstm_cell_2/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2"
 while/lstm_cell_2/dropout_6/CastË
!while/lstm_cell_2/dropout_6/Mul_1Mul#while/lstm_cell_2/dropout_6/Mul:z:0$while/lstm_cell_2/dropout_6/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2#
!while/lstm_cell_2/dropout_6/Mul_1
!while/lstm_cell_2/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_2/dropout_7/ConstÐ
while/lstm_cell_2/dropout_7/MulMul&while/lstm_cell_2/ones_like_1:output:0*while/lstm_cell_2/dropout_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2!
while/lstm_cell_2/dropout_7/Mul
!while/lstm_cell_2/dropout_7/ShapeShape&while/lstm_cell_2/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_2/dropout_7/Shape
8while/lstm_cell_2/dropout_7/random_uniform/RandomUniformRandomUniform*while/lstm_cell_2/dropout_7/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
dtype0*
seed±ÿå)*
seed2ªá®2:
8while/lstm_cell_2/dropout_7/random_uniform/RandomUniform
*while/lstm_cell_2/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_2/dropout_7/GreaterEqual/y
(while/lstm_cell_2/dropout_7/GreaterEqualGreaterEqualAwhile/lstm_cell_2/dropout_7/random_uniform/RandomUniform:output:03while/lstm_cell_2/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2*
(while/lstm_cell_2/dropout_7/GreaterEqual¼
 while/lstm_cell_2/dropout_7/CastCast,while/lstm_cell_2/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2"
 while/lstm_cell_2/dropout_7/CastË
!while/lstm_cell_2/dropout_7/Mul_1Mul#while/lstm_cell_2/dropout_7/Mul:z:0$while/lstm_cell_2/dropout_7/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2#
!while/lstm_cell_2/dropout_7/Mul_1¿
while/lstm_cell_2/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell_2/dropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_2/mulÅ
while/lstm_cell_2/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_2/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_2/mul_1Å
while/lstm_cell_2/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_2/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_2/mul_2Å
while/lstm_cell_2/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_2/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_2/mul_3t
while/lstm_cell_2/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_2/Const
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_2/split/split_dimÄ
&while/lstm_cell_2/split/ReadVariableOpReadVariableOp1while_lstm_cell_2_split_readvariableop_resource_0* 
_output_shapes
:
*
dtype02(
&while/lstm_cell_2/split/ReadVariableOp÷
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0.while/lstm_cell_2/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
Ä:
Ä:
Ä:
Ä*
	num_split2
while/lstm_cell_2/split®
while/lstm_cell_2/MatMulMatMulwhile/lstm_cell_2/mul:z:0 while/lstm_cell_2/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/MatMul´
while/lstm_cell_2/MatMul_1MatMulwhile/lstm_cell_2/mul_1:z:0 while/lstm_cell_2/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/MatMul_1´
while/lstm_cell_2/MatMul_2MatMulwhile/lstm_cell_2/mul_2:z:0 while/lstm_cell_2/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/MatMul_2´
while/lstm_cell_2/MatMul_3MatMulwhile/lstm_cell_2/mul_3:z:0 while/lstm_cell_2/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/MatMul_3x
while/lstm_cell_2/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_2/Const_1
#while/lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_2/split_1/split_dimÅ
(while/lstm_cell_2/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_2_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02*
(while/lstm_cell_2/split_1/ReadVariableOpë
while/lstm_cell_2/split_1Split,while/lstm_cell_2/split_1/split_dim:output:00while/lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ä:Ä:Ä:Ä*
	num_split2
while/lstm_cell_2/split_1¼
while/lstm_cell_2/BiasAddBiasAdd"while/lstm_cell_2/MatMul:product:0"while/lstm_cell_2/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/BiasAddÂ
while/lstm_cell_2/BiasAdd_1BiasAdd$while/lstm_cell_2/MatMul_1:product:0"while/lstm_cell_2/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/BiasAdd_1Â
while/lstm_cell_2/BiasAdd_2BiasAdd$while/lstm_cell_2/MatMul_2:product:0"while/lstm_cell_2/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/BiasAdd_2Â
while/lstm_cell_2/BiasAdd_3BiasAdd$while/lstm_cell_2/MatMul_3:product:0"while/lstm_cell_2/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/BiasAdd_3¨
while/lstm_cell_2/mul_4Mulwhile_placeholder_2%while/lstm_cell_2/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/mul_4¨
while/lstm_cell_2/mul_5Mulwhile_placeholder_2%while/lstm_cell_2/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/mul_5¨
while/lstm_cell_2/mul_6Mulwhile_placeholder_2%while/lstm_cell_2/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/mul_6¨
while/lstm_cell_2/mul_7Mulwhile_placeholder_2%while/lstm_cell_2/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/mul_7²
 while/lstm_cell_2/ReadVariableOpReadVariableOp+while_lstm_cell_2_readvariableop_resource_0* 
_output_shapes
:
Ä*
dtype02"
 while/lstm_cell_2/ReadVariableOp
%while/lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_2/strided_slice/stack£
'while/lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ä   2)
'while/lstm_cell_2/strided_slice/stack_1£
'while/lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_2/strided_slice/stack_2ê
while/lstm_cell_2/strided_sliceStridedSlice(while/lstm_cell_2/ReadVariableOp:value:0.while/lstm_cell_2/strided_slice/stack:output:00while/lstm_cell_2/strided_slice/stack_1:output:00while/lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2!
while/lstm_cell_2/strided_slice¼
while/lstm_cell_2/MatMul_4MatMulwhile/lstm_cell_2/mul_4:z:0(while/lstm_cell_2/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/MatMul_4´
while/lstm_cell_2/addAddV2"while/lstm_cell_2/BiasAdd:output:0$while/lstm_cell_2/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/add
while/lstm_cell_2/SigmoidSigmoidwhile/lstm_cell_2/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/Sigmoid¶
"while/lstm_cell_2/ReadVariableOp_1ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0* 
_output_shapes
:
Ä*
dtype02$
"while/lstm_cell_2/ReadVariableOp_1£
'while/lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ä   2)
'while/lstm_cell_2/strided_slice_1/stack§
)while/lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_2/strided_slice_1/stack_1§
)while/lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_2/strided_slice_1/stack_2ö
!while/lstm_cell_2/strided_slice_1StridedSlice*while/lstm_cell_2/ReadVariableOp_1:value:00while/lstm_cell_2/strided_slice_1/stack:output:02while/lstm_cell_2/strided_slice_1/stack_1:output:02while/lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2#
!while/lstm_cell_2/strided_slice_1¾
while/lstm_cell_2/MatMul_5MatMulwhile/lstm_cell_2/mul_5:z:0*while/lstm_cell_2/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/MatMul_5º
while/lstm_cell_2/add_1AddV2$while/lstm_cell_2/BiasAdd_1:output:0$while/lstm_cell_2/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/add_1
while/lstm_cell_2/Sigmoid_1Sigmoidwhile/lstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/Sigmoid_1¢
while/lstm_cell_2/mul_8Mulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/mul_8¶
"while/lstm_cell_2/ReadVariableOp_2ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0* 
_output_shapes
:
Ä*
dtype02$
"while/lstm_cell_2/ReadVariableOp_2£
'while/lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_2/strided_slice_2/stack§
)while/lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2+
)while/lstm_cell_2/strided_slice_2/stack_1§
)while/lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_2/strided_slice_2/stack_2ö
!while/lstm_cell_2/strided_slice_2StridedSlice*while/lstm_cell_2/ReadVariableOp_2:value:00while/lstm_cell_2/strided_slice_2/stack:output:02while/lstm_cell_2/strided_slice_2/stack_1:output:02while/lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2#
!while/lstm_cell_2/strided_slice_2¾
while/lstm_cell_2/MatMul_6MatMulwhile/lstm_cell_2/mul_6:z:0*while/lstm_cell_2/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/MatMul_6º
while/lstm_cell_2/add_2AddV2$while/lstm_cell_2/BiasAdd_2:output:0$while/lstm_cell_2/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/add_2
while/lstm_cell_2/TanhTanhwhile/lstm_cell_2/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/Tanh§
while/lstm_cell_2/mul_9Mulwhile/lstm_cell_2/Sigmoid:y:0while/lstm_cell_2/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/mul_9¨
while/lstm_cell_2/add_3AddV2while/lstm_cell_2/mul_8:z:0while/lstm_cell_2/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/add_3¶
"while/lstm_cell_2/ReadVariableOp_3ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0* 
_output_shapes
:
Ä*
dtype02$
"while/lstm_cell_2/ReadVariableOp_3£
'while/lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2)
'while/lstm_cell_2/strided_slice_3/stack§
)while/lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_2/strided_slice_3/stack_1§
)while/lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_2/strided_slice_3/stack_2ö
!while/lstm_cell_2/strided_slice_3StridedSlice*while/lstm_cell_2/ReadVariableOp_3:value:00while/lstm_cell_2/strided_slice_3/stack:output:02while/lstm_cell_2/strided_slice_3/stack_1:output:02while/lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2#
!while/lstm_cell_2/strided_slice_3¾
while/lstm_cell_2/MatMul_7MatMulwhile/lstm_cell_2/mul_7:z:0*while/lstm_cell_2/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/MatMul_7º
while/lstm_cell_2/add_4AddV2$while/lstm_cell_2/BiasAdd_3:output:0$while/lstm_cell_2/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/add_4
while/lstm_cell_2/Sigmoid_2Sigmoidwhile/lstm_cell_2/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/Sigmoid_2
while/lstm_cell_2/Tanh_1Tanhwhile/lstm_cell_2/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/Tanh_1­
while/lstm_cell_2/mul_10Mulwhile/lstm_cell_2/Sigmoid_2:y:0while/lstm_cell_2/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/mul_10à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Ä
while/IdentityIdentitywhile/add_1:z:0!^while/lstm_cell_2/ReadVariableOp#^while/lstm_cell_2/ReadVariableOp_1#^while/lstm_cell_2/ReadVariableOp_2#^while/lstm_cell_2/ReadVariableOp_3'^while/lstm_cell_2/split/ReadVariableOp)^while/lstm_cell_2/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity×
while/Identity_1Identitywhile_while_maximum_iterations!^while/lstm_cell_2/ReadVariableOp#^while/lstm_cell_2/ReadVariableOp_1#^while/lstm_cell_2/ReadVariableOp_2#^while/lstm_cell_2/ReadVariableOp_3'^while/lstm_cell_2/split/ReadVariableOp)^while/lstm_cell_2/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Æ
while/Identity_2Identitywhile/add:z:0!^while/lstm_cell_2/ReadVariableOp#^while/lstm_cell_2/ReadVariableOp_1#^while/lstm_cell_2/ReadVariableOp_2#^while/lstm_cell_2/ReadVariableOp_3'^while/lstm_cell_2/split/ReadVariableOp)^while/lstm_cell_2/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2ó
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^while/lstm_cell_2/ReadVariableOp#^while/lstm_cell_2/ReadVariableOp_1#^while/lstm_cell_2/ReadVariableOp_2#^while/lstm_cell_2/ReadVariableOp_3'^while/lstm_cell_2/split/ReadVariableOp)^while/lstm_cell_2/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3ç
while/Identity_4Identitywhile/lstm_cell_2/mul_10:z:0!^while/lstm_cell_2/ReadVariableOp#^while/lstm_cell_2/ReadVariableOp_1#^while/lstm_cell_2/ReadVariableOp_2#^while/lstm_cell_2/ReadVariableOp_3'^while/lstm_cell_2/split/ReadVariableOp)^while/lstm_cell_2/split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/Identity_4æ
while/Identity_5Identitywhile/lstm_cell_2/add_3:z:0!^while/lstm_cell_2/ReadVariableOp#^while/lstm_cell_2/ReadVariableOp_1#^while/lstm_cell_2/ReadVariableOp_2#^while/lstm_cell_2/ReadVariableOp_3'^while/lstm_cell_2/split/ReadVariableOp)^while/lstm_cell_2/split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_2_readvariableop_resource+while_lstm_cell_2_readvariableop_resource_0"h
1while_lstm_cell_2_split_1_readvariableop_resource3while_lstm_cell_2_split_1_readvariableop_resource_0"d
/while_lstm_cell_2_split_readvariableop_resource1while_lstm_cell_2_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ: : :::2D
 while/lstm_cell_2/ReadVariableOp while/lstm_cell_2/ReadVariableOp2H
"while/lstm_cell_2/ReadVariableOp_1"while/lstm_cell_2/ReadVariableOp_12H
"while/lstm_cell_2/ReadVariableOp_2"while/lstm_cell_2/ReadVariableOp_22H
"while/lstm_cell_2/ReadVariableOp_3"while/lstm_cell_2/ReadVariableOp_32P
&while/lstm_cell_2/split/ReadVariableOp&while/lstm_cell_2/split/ReadVariableOp2T
(while/lstm_cell_2/split_1/ReadVariableOp(while/lstm_cell_2/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ:

_output_shapes
: :

_output_shapes
: 
¦
»

lstm_2_while_body_569937*
&lstm_2_while_lstm_2_while_loop_counter0
,lstm_2_while_lstm_2_while_maximum_iterations
lstm_2_while_placeholder
lstm_2_while_placeholder_1
lstm_2_while_placeholder_2
lstm_2_while_placeholder_3)
%lstm_2_while_lstm_2_strided_slice_1_0e
alstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0<
8lstm_2_while_lstm_cell_2_split_readvariableop_resource_0>
:lstm_2_while_lstm_cell_2_split_1_readvariableop_resource_06
2lstm_2_while_lstm_cell_2_readvariableop_resource_0
lstm_2_while_identity
lstm_2_while_identity_1
lstm_2_while_identity_2
lstm_2_while_identity_3
lstm_2_while_identity_4
lstm_2_while_identity_5'
#lstm_2_while_lstm_2_strided_slice_1c
_lstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor:
6lstm_2_while_lstm_cell_2_split_readvariableop_resource<
8lstm_2_while_lstm_cell_2_split_1_readvariableop_resource4
0lstm_2_while_lstm_cell_2_readvariableop_resource¢'lstm_2/while/lstm_cell_2/ReadVariableOp¢)lstm_2/while/lstm_cell_2/ReadVariableOp_1¢)lstm_2/while/lstm_cell_2/ReadVariableOp_2¢)lstm_2/while/lstm_cell_2/ReadVariableOp_3¢-lstm_2/while/lstm_cell_2/split/ReadVariableOp¢/lstm_2/while/lstm_cell_2/split_1/ReadVariableOpÑ
>lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2@
>lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeþ
0lstm_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0lstm_2_while_placeholderGlstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype022
0lstm_2/while/TensorArrayV2Read/TensorListGetItem»
(lstm_2/while/lstm_cell_2/ones_like/ShapeShape7lstm_2/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2*
(lstm_2/while/lstm_cell_2/ones_like/Shape
(lstm_2/while/lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2*
(lstm_2/while/lstm_cell_2/ones_like/Consté
"lstm_2/while/lstm_cell_2/ones_likeFill1lstm_2/while/lstm_cell_2/ones_like/Shape:output:01lstm_2/while/lstm_cell_2/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_2/while/lstm_cell_2/ones_like¢
*lstm_2/while/lstm_cell_2/ones_like_1/ShapeShapelstm_2_while_placeholder_2*
T0*
_output_shapes
:2,
*lstm_2/while/lstm_cell_2/ones_like_1/Shape
*lstm_2/while/lstm_cell_2/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*lstm_2/while/lstm_cell_2/ones_like_1/Constñ
$lstm_2/while/lstm_cell_2/ones_like_1Fill3lstm_2/while/lstm_cell_2/ones_like_1/Shape:output:03lstm_2/while/lstm_cell_2/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2&
$lstm_2/while/lstm_cell_2/ones_like_1Ü
lstm_2/while/lstm_cell_2/mulMul7lstm_2/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_2/while/lstm_cell_2/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_2/while/lstm_cell_2/mulà
lstm_2/while/lstm_cell_2/mul_1Mul7lstm_2/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_2/while/lstm_cell_2/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_2/while/lstm_cell_2/mul_1à
lstm_2/while/lstm_cell_2/mul_2Mul7lstm_2/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_2/while/lstm_cell_2/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_2/while/lstm_cell_2/mul_2à
lstm_2/while/lstm_cell_2/mul_3Mul7lstm_2/while/TensorArrayV2Read/TensorListGetItem:item:0+lstm_2/while/lstm_cell_2/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_2/while/lstm_cell_2/mul_3
lstm_2/while/lstm_cell_2/ConstConst*
_output_shapes
: *
dtype0*
value	B :2 
lstm_2/while/lstm_cell_2/Const
(lstm_2/while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(lstm_2/while/lstm_cell_2/split/split_dimÙ
-lstm_2/while/lstm_cell_2/split/ReadVariableOpReadVariableOp8lstm_2_while_lstm_cell_2_split_readvariableop_resource_0* 
_output_shapes
:
*
dtype02/
-lstm_2/while/lstm_cell_2/split/ReadVariableOp
lstm_2/while/lstm_cell_2/splitSplit1lstm_2/while/lstm_cell_2/split/split_dim:output:05lstm_2/while/lstm_cell_2/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
Ä:
Ä:
Ä:
Ä*
	num_split2 
lstm_2/while/lstm_cell_2/splitÊ
lstm_2/while/lstm_cell_2/MatMulMatMul lstm_2/while/lstm_cell_2/mul:z:0'lstm_2/while/lstm_cell_2/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2!
lstm_2/while/lstm_cell_2/MatMulÐ
!lstm_2/while/lstm_cell_2/MatMul_1MatMul"lstm_2/while/lstm_cell_2/mul_1:z:0'lstm_2/while/lstm_cell_2/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2#
!lstm_2/while/lstm_cell_2/MatMul_1Ð
!lstm_2/while/lstm_cell_2/MatMul_2MatMul"lstm_2/while/lstm_cell_2/mul_2:z:0'lstm_2/while/lstm_cell_2/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2#
!lstm_2/while/lstm_cell_2/MatMul_2Ð
!lstm_2/while/lstm_cell_2/MatMul_3MatMul"lstm_2/while/lstm_cell_2/mul_3:z:0'lstm_2/while/lstm_cell_2/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2#
!lstm_2/while/lstm_cell_2/MatMul_3
 lstm_2/while/lstm_cell_2/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2"
 lstm_2/while/lstm_cell_2/Const_1
*lstm_2/while/lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2,
*lstm_2/while/lstm_cell_2/split_1/split_dimÚ
/lstm_2/while/lstm_cell_2/split_1/ReadVariableOpReadVariableOp:lstm_2_while_lstm_cell_2_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype021
/lstm_2/while/lstm_cell_2/split_1/ReadVariableOp
 lstm_2/while/lstm_cell_2/split_1Split3lstm_2/while/lstm_cell_2/split_1/split_dim:output:07lstm_2/while/lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ä:Ä:Ä:Ä*
	num_split2"
 lstm_2/while/lstm_cell_2/split_1Ø
 lstm_2/while/lstm_cell_2/BiasAddBiasAdd)lstm_2/while/lstm_cell_2/MatMul:product:0)lstm_2/while/lstm_cell_2/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2"
 lstm_2/while/lstm_cell_2/BiasAddÞ
"lstm_2/while/lstm_cell_2/BiasAdd_1BiasAdd+lstm_2/while/lstm_cell_2/MatMul_1:product:0)lstm_2/while/lstm_cell_2/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2$
"lstm_2/while/lstm_cell_2/BiasAdd_1Þ
"lstm_2/while/lstm_cell_2/BiasAdd_2BiasAdd+lstm_2/while/lstm_cell_2/MatMul_2:product:0)lstm_2/while/lstm_cell_2/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2$
"lstm_2/while/lstm_cell_2/BiasAdd_2Þ
"lstm_2/while/lstm_cell_2/BiasAdd_3BiasAdd+lstm_2/while/lstm_cell_2/MatMul_3:product:0)lstm_2/while/lstm_cell_2/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2$
"lstm_2/while/lstm_cell_2/BiasAdd_3Å
lstm_2/while/lstm_cell_2/mul_4Mullstm_2_while_placeholder_2-lstm_2/while/lstm_cell_2/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2 
lstm_2/while/lstm_cell_2/mul_4Å
lstm_2/while/lstm_cell_2/mul_5Mullstm_2_while_placeholder_2-lstm_2/while/lstm_cell_2/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2 
lstm_2/while/lstm_cell_2/mul_5Å
lstm_2/while/lstm_cell_2/mul_6Mullstm_2_while_placeholder_2-lstm_2/while/lstm_cell_2/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2 
lstm_2/while/lstm_cell_2/mul_6Å
lstm_2/while/lstm_cell_2/mul_7Mullstm_2_while_placeholder_2-lstm_2/while/lstm_cell_2/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2 
lstm_2/while/lstm_cell_2/mul_7Ç
'lstm_2/while/lstm_cell_2/ReadVariableOpReadVariableOp2lstm_2_while_lstm_cell_2_readvariableop_resource_0* 
_output_shapes
:
Ä*
dtype02)
'lstm_2/while/lstm_cell_2/ReadVariableOp­
,lstm_2/while/lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_2/while/lstm_cell_2/strided_slice/stack±
.lstm_2/while/lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ä   20
.lstm_2/while/lstm_cell_2/strided_slice/stack_1±
.lstm_2/while/lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.lstm_2/while/lstm_cell_2/strided_slice/stack_2
&lstm_2/while/lstm_cell_2/strided_sliceStridedSlice/lstm_2/while/lstm_cell_2/ReadVariableOp:value:05lstm_2/while/lstm_cell_2/strided_slice/stack:output:07lstm_2/while/lstm_cell_2/strided_slice/stack_1:output:07lstm_2/while/lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2(
&lstm_2/while/lstm_cell_2/strided_sliceØ
!lstm_2/while/lstm_cell_2/MatMul_4MatMul"lstm_2/while/lstm_cell_2/mul_4:z:0/lstm_2/while/lstm_cell_2/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2#
!lstm_2/while/lstm_cell_2/MatMul_4Ð
lstm_2/while/lstm_cell_2/addAddV2)lstm_2/while/lstm_cell_2/BiasAdd:output:0+lstm_2/while/lstm_cell_2/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/while/lstm_cell_2/add¤
 lstm_2/while/lstm_cell_2/SigmoidSigmoid lstm_2/while/lstm_cell_2/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2"
 lstm_2/while/lstm_cell_2/SigmoidË
)lstm_2/while/lstm_cell_2/ReadVariableOp_1ReadVariableOp2lstm_2_while_lstm_cell_2_readvariableop_resource_0* 
_output_shapes
:
Ä*
dtype02+
)lstm_2/while/lstm_cell_2/ReadVariableOp_1±
.lstm_2/while/lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ä   20
.lstm_2/while/lstm_cell_2/strided_slice_1/stackµ
0lstm_2/while/lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_2/while/lstm_cell_2/strided_slice_1/stack_1µ
0lstm_2/while/lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_2/while/lstm_cell_2/strided_slice_1/stack_2 
(lstm_2/while/lstm_cell_2/strided_slice_1StridedSlice1lstm_2/while/lstm_cell_2/ReadVariableOp_1:value:07lstm_2/while/lstm_cell_2/strided_slice_1/stack:output:09lstm_2/while/lstm_cell_2/strided_slice_1/stack_1:output:09lstm_2/while/lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2*
(lstm_2/while/lstm_cell_2/strided_slice_1Ú
!lstm_2/while/lstm_cell_2/MatMul_5MatMul"lstm_2/while/lstm_cell_2/mul_5:z:01lstm_2/while/lstm_cell_2/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2#
!lstm_2/while/lstm_cell_2/MatMul_5Ö
lstm_2/while/lstm_cell_2/add_1AddV2+lstm_2/while/lstm_cell_2/BiasAdd_1:output:0+lstm_2/while/lstm_cell_2/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2 
lstm_2/while/lstm_cell_2/add_1ª
"lstm_2/while/lstm_cell_2/Sigmoid_1Sigmoid"lstm_2/while/lstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2$
"lstm_2/while/lstm_cell_2/Sigmoid_1¾
lstm_2/while/lstm_cell_2/mul_8Mul&lstm_2/while/lstm_cell_2/Sigmoid_1:y:0lstm_2_while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2 
lstm_2/while/lstm_cell_2/mul_8Ë
)lstm_2/while/lstm_cell_2/ReadVariableOp_2ReadVariableOp2lstm_2_while_lstm_cell_2_readvariableop_resource_0* 
_output_shapes
:
Ä*
dtype02+
)lstm_2/while/lstm_cell_2/ReadVariableOp_2±
.lstm_2/while/lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      20
.lstm_2/while/lstm_cell_2/strided_slice_2/stackµ
0lstm_2/while/lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  22
0lstm_2/while/lstm_cell_2/strided_slice_2/stack_1µ
0lstm_2/while/lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_2/while/lstm_cell_2/strided_slice_2/stack_2 
(lstm_2/while/lstm_cell_2/strided_slice_2StridedSlice1lstm_2/while/lstm_cell_2/ReadVariableOp_2:value:07lstm_2/while/lstm_cell_2/strided_slice_2/stack:output:09lstm_2/while/lstm_cell_2/strided_slice_2/stack_1:output:09lstm_2/while/lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2*
(lstm_2/while/lstm_cell_2/strided_slice_2Ú
!lstm_2/while/lstm_cell_2/MatMul_6MatMul"lstm_2/while/lstm_cell_2/mul_6:z:01lstm_2/while/lstm_cell_2/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2#
!lstm_2/while/lstm_cell_2/MatMul_6Ö
lstm_2/while/lstm_cell_2/add_2AddV2+lstm_2/while/lstm_cell_2/BiasAdd_2:output:0+lstm_2/while/lstm_cell_2/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2 
lstm_2/while/lstm_cell_2/add_2
lstm_2/while/lstm_cell_2/TanhTanh"lstm_2/while/lstm_cell_2/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/while/lstm_cell_2/TanhÃ
lstm_2/while/lstm_cell_2/mul_9Mul$lstm_2/while/lstm_cell_2/Sigmoid:y:0!lstm_2/while/lstm_cell_2/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2 
lstm_2/while/lstm_cell_2/mul_9Ä
lstm_2/while/lstm_cell_2/add_3AddV2"lstm_2/while/lstm_cell_2/mul_8:z:0"lstm_2/while/lstm_cell_2/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2 
lstm_2/while/lstm_cell_2/add_3Ë
)lstm_2/while/lstm_cell_2/ReadVariableOp_3ReadVariableOp2lstm_2_while_lstm_cell_2_readvariableop_resource_0* 
_output_shapes
:
Ä*
dtype02+
)lstm_2/while/lstm_cell_2/ReadVariableOp_3±
.lstm_2/while/lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  20
.lstm_2/while/lstm_cell_2/strided_slice_3/stackµ
0lstm_2/while/lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_2/while/lstm_cell_2/strided_slice_3/stack_1µ
0lstm_2/while/lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_2/while/lstm_cell_2/strided_slice_3/stack_2 
(lstm_2/while/lstm_cell_2/strided_slice_3StridedSlice1lstm_2/while/lstm_cell_2/ReadVariableOp_3:value:07lstm_2/while/lstm_cell_2/strided_slice_3/stack:output:09lstm_2/while/lstm_cell_2/strided_slice_3/stack_1:output:09lstm_2/while/lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2*
(lstm_2/while/lstm_cell_2/strided_slice_3Ú
!lstm_2/while/lstm_cell_2/MatMul_7MatMul"lstm_2/while/lstm_cell_2/mul_7:z:01lstm_2/while/lstm_cell_2/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2#
!lstm_2/while/lstm_cell_2/MatMul_7Ö
lstm_2/while/lstm_cell_2/add_4AddV2+lstm_2/while/lstm_cell_2/BiasAdd_3:output:0+lstm_2/while/lstm_cell_2/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2 
lstm_2/while/lstm_cell_2/add_4ª
"lstm_2/while/lstm_cell_2/Sigmoid_2Sigmoid"lstm_2/while/lstm_cell_2/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2$
"lstm_2/while/lstm_cell_2/Sigmoid_2¡
lstm_2/while/lstm_cell_2/Tanh_1Tanh"lstm_2/while/lstm_cell_2/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2!
lstm_2/while/lstm_cell_2/Tanh_1É
lstm_2/while/lstm_cell_2/mul_10Mul&lstm_2/while/lstm_cell_2/Sigmoid_2:y:0#lstm_2/while/lstm_cell_2/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2!
lstm_2/while/lstm_cell_2/mul_10
1lstm_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_2_while_placeholder_1lstm_2_while_placeholder#lstm_2/while/lstm_cell_2/mul_10:z:0*
_output_shapes
: *
element_dtype023
1lstm_2/while/TensorArrayV2Write/TensorListSetItemj
lstm_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_2/while/add/y
lstm_2/while/addAddV2lstm_2_while_placeholderlstm_2/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_2/while/addn
lstm_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_2/while/add_1/y
lstm_2/while/add_1AddV2&lstm_2_while_lstm_2_while_loop_counterlstm_2/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_2/while/add_1
lstm_2/while/IdentityIdentitylstm_2/while/add_1:z:0(^lstm_2/while/lstm_cell_2/ReadVariableOp*^lstm_2/while/lstm_cell_2/ReadVariableOp_1*^lstm_2/while/lstm_cell_2/ReadVariableOp_2*^lstm_2/while/lstm_cell_2/ReadVariableOp_3.^lstm_2/while/lstm_cell_2/split/ReadVariableOp0^lstm_2/while/lstm_cell_2/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity
lstm_2/while/Identity_1Identity,lstm_2_while_lstm_2_while_maximum_iterations(^lstm_2/while/lstm_cell_2/ReadVariableOp*^lstm_2/while/lstm_cell_2/ReadVariableOp_1*^lstm_2/while/lstm_cell_2/ReadVariableOp_2*^lstm_2/while/lstm_cell_2/ReadVariableOp_3.^lstm_2/while/lstm_cell_2/split/ReadVariableOp0^lstm_2/while/lstm_cell_2/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity_1
lstm_2/while/Identity_2Identitylstm_2/while/add:z:0(^lstm_2/while/lstm_cell_2/ReadVariableOp*^lstm_2/while/lstm_cell_2/ReadVariableOp_1*^lstm_2/while/lstm_cell_2/ReadVariableOp_2*^lstm_2/while/lstm_cell_2/ReadVariableOp_3.^lstm_2/while/lstm_cell_2/split/ReadVariableOp0^lstm_2/while/lstm_cell_2/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity_2²
lstm_2/while/Identity_3IdentityAlstm_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^lstm_2/while/lstm_cell_2/ReadVariableOp*^lstm_2/while/lstm_cell_2/ReadVariableOp_1*^lstm_2/while/lstm_cell_2/ReadVariableOp_2*^lstm_2/while/lstm_cell_2/ReadVariableOp_3.^lstm_2/while/lstm_cell_2/split/ReadVariableOp0^lstm_2/while/lstm_cell_2/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity_3¦
lstm_2/while/Identity_4Identity#lstm_2/while/lstm_cell_2/mul_10:z:0(^lstm_2/while/lstm_cell_2/ReadVariableOp*^lstm_2/while/lstm_cell_2/ReadVariableOp_1*^lstm_2/while/lstm_cell_2/ReadVariableOp_2*^lstm_2/while/lstm_cell_2/ReadVariableOp_3.^lstm_2/while/lstm_cell_2/split/ReadVariableOp0^lstm_2/while/lstm_cell_2/split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/while/Identity_4¥
lstm_2/while/Identity_5Identity"lstm_2/while/lstm_cell_2/add_3:z:0(^lstm_2/while/lstm_cell_2/ReadVariableOp*^lstm_2/while/lstm_cell_2/ReadVariableOp_1*^lstm_2/while/lstm_cell_2/ReadVariableOp_2*^lstm_2/while/lstm_cell_2/ReadVariableOp_3.^lstm_2/while/lstm_cell_2/split/ReadVariableOp0^lstm_2/while/lstm_cell_2/split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/while/Identity_5"7
lstm_2_while_identitylstm_2/while/Identity:output:0";
lstm_2_while_identity_1 lstm_2/while/Identity_1:output:0";
lstm_2_while_identity_2 lstm_2/while/Identity_2:output:0";
lstm_2_while_identity_3 lstm_2/while/Identity_3:output:0";
lstm_2_while_identity_4 lstm_2/while/Identity_4:output:0";
lstm_2_while_identity_5 lstm_2/while/Identity_5:output:0"L
#lstm_2_while_lstm_2_strided_slice_1%lstm_2_while_lstm_2_strided_slice_1_0"f
0lstm_2_while_lstm_cell_2_readvariableop_resource2lstm_2_while_lstm_cell_2_readvariableop_resource_0"v
8lstm_2_while_lstm_cell_2_split_1_readvariableop_resource:lstm_2_while_lstm_cell_2_split_1_readvariableop_resource_0"r
6lstm_2_while_lstm_cell_2_split_readvariableop_resource8lstm_2_while_lstm_cell_2_split_readvariableop_resource_0"Ä
_lstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensoralstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ: : :::2R
'lstm_2/while/lstm_cell_2/ReadVariableOp'lstm_2/while/lstm_cell_2/ReadVariableOp2V
)lstm_2/while/lstm_cell_2/ReadVariableOp_1)lstm_2/while/lstm_cell_2/ReadVariableOp_12V
)lstm_2/while/lstm_cell_2/ReadVariableOp_2)lstm_2/while/lstm_cell_2/ReadVariableOp_22V
)lstm_2/while/lstm_cell_2/ReadVariableOp_3)lstm_2/while/lstm_cell_2/ReadVariableOp_32^
-lstm_2/while/lstm_cell_2/split/ReadVariableOp-lstm_2/while/lstm_cell_2/split/ReadVariableOp2b
/lstm_2/while/lstm_cell_2/split_1/ReadVariableOp/lstm_2/while/lstm_cell_2/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ:

_output_shapes
: :

_output_shapes
: 
Ü
}
(__inference_dense_2_layer_call_fn_571545

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_5692582
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿÄ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ
 
_user_specified_nameinputs
¯
Ã
while_cond_568761
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_568761___redundant_placeholder04
0while_while_cond_568761___redundant_placeholder14
0while_while_cond_568761___redundant_placeholder24
0while_while_cond_568761___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ:

_output_shapes
: :

_output_shapes
:
öN
ÿ
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_568012

inputs

states
states_1!
split_readvariableop_resource#
split_1_readvariableop_resource
readvariableop_resource
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢split/ReadVariableOp¢split_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	ones_like\
ones_like_1/ShapeShapestates*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like_1/Const
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
ones_like_1`
mulMulinputsones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
muld
mul_1Mulinputsones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_1d
mul_2Mulinputsones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_2d
mul_3Mulinputsones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_3P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource* 
_output_shapes
:
*
dtype02
split/ReadVariableOp¯
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
Ä:
Ä:
Ä:
Ä*
	num_split2
splitf
MatMulMatMulmul:z:0split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
MatMull
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

MatMul_1l
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

MatMul_2l
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

MatMul_3T
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:*
dtype02
split_1/ReadVariableOp£
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ä:Ä:Ä:Ä*
	num_split2	
split_1t
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2	
BiasAddz
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
	BiasAdd_1z
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
	BiasAdd_2z
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
	BiasAdd_3f
mul_4Mulstatesones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
mul_4f
mul_5Mulstatesones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
mul_5f
mul_6Mulstatesones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
mul_6f
mul_7Mulstatesones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
mul_7z
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ä*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ä   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2þ
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2
strided_slicet
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

MatMul_4l
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2	
Sigmoid~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ä*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ä   2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2
strided_slice_1v
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

MatMul_5r
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
	Sigmoid_1a
mul_8MulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
mul_8~
ReadVariableOp_2ReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ä*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2
strided_slice_2v
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

MatMul_6r
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
add_2R
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
Tanh_
mul_9MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
mul_9`
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
add_3~
ReadVariableOp_3ReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ä*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2
strided_slice_3/stack
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2
strided_slice_3v
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

MatMul_7r
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
add_4_
	Sigmoid_2Sigmoid	add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
	Sigmoid_2V
Tanh_1Tanh	add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
Tanh_1e
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
mul_10Ù
IdentityIdentity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

IdentityÝ

Identity_1Identity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

Identity_1Ü

Identity_2Identity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*[
_input_shapesJ
H:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ:::2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ
 
_user_specified_namestates:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ
 
_user_specified_namestates
¯
Ã
while_cond_571047
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_571047___redundant_placeholder04
0while_while_cond_571047___redundant_placeholder14
0while_while_cond_571047___redundant_placeholder24
0while_while_cond_571047___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ:

_output_shapes
: :

_output_shapes
:
ôõ
Æ
while_body_571048
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_05
1while_lstm_cell_2_split_readvariableop_resource_07
3while_lstm_cell_2_split_1_readvariableop_resource_0/
+while_lstm_cell_2_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor3
/while_lstm_cell_2_split_readvariableop_resource5
1while_lstm_cell_2_split_1_readvariableop_resource-
)while_lstm_cell_2_readvariableop_resource¢ while/lstm_cell_2/ReadVariableOp¢"while/lstm_cell_2/ReadVariableOp_1¢"while/lstm_cell_2/ReadVariableOp_2¢"while/lstm_cell_2/ReadVariableOp_3¢&while/lstm_cell_2/split/ReadVariableOp¢(while/lstm_cell_2/split_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÔ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem¦
!while/lstm_cell_2/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_2/ones_like/Shape
!while/lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2#
!while/lstm_cell_2/ones_like/ConstÍ
while/lstm_cell_2/ones_likeFill*while/lstm_cell_2/ones_like/Shape:output:0*while/lstm_cell_2/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_2/ones_like
while/lstm_cell_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2!
while/lstm_cell_2/dropout/ConstÈ
while/lstm_cell_2/dropout/MulMul$while/lstm_cell_2/ones_like:output:0(while/lstm_cell_2/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_2/dropout/Mul
while/lstm_cell_2/dropout/ShapeShape$while/lstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell_2/dropout/Shape
6while/lstm_cell_2/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_2/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2¿¼Ñ28
6while/lstm_cell_2/dropout/random_uniform/RandomUniform
(while/lstm_cell_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2*
(while/lstm_cell_2/dropout/GreaterEqual/y
&while/lstm_cell_2/dropout/GreaterEqualGreaterEqual?while/lstm_cell_2/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_2/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&while/lstm_cell_2/dropout/GreaterEqual¶
while/lstm_cell_2/dropout/CastCast*while/lstm_cell_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
while/lstm_cell_2/dropout/CastÃ
while/lstm_cell_2/dropout/Mul_1Mul!while/lstm_cell_2/dropout/Mul:z:0"while/lstm_cell_2/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
while/lstm_cell_2/dropout/Mul_1
!while/lstm_cell_2/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_2/dropout_1/ConstÎ
while/lstm_cell_2/dropout_1/MulMul$while/lstm_cell_2/ones_like:output:0*while/lstm_cell_2/dropout_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
while/lstm_cell_2/dropout_1/Mul
!while/lstm_cell_2/dropout_1/ShapeShape$while/lstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_2/dropout_1/Shape
8while/lstm_cell_2/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_2/dropout_1/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2)2:
8while/lstm_cell_2/dropout_1/random_uniform/RandomUniform
*while/lstm_cell_2/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_2/dropout_1/GreaterEqual/y
(while/lstm_cell_2/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_2/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_2/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(while/lstm_cell_2/dropout_1/GreaterEqual¼
 while/lstm_cell_2/dropout_1/CastCast,while/lstm_cell_2/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 while/lstm_cell_2/dropout_1/CastË
!while/lstm_cell_2/dropout_1/Mul_1Mul#while/lstm_cell_2/dropout_1/Mul:z:0$while/lstm_cell_2/dropout_1/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!while/lstm_cell_2/dropout_1/Mul_1
!while/lstm_cell_2/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_2/dropout_2/ConstÎ
while/lstm_cell_2/dropout_2/MulMul$while/lstm_cell_2/ones_like:output:0*while/lstm_cell_2/dropout_2/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
while/lstm_cell_2/dropout_2/Mul
!while/lstm_cell_2/dropout_2/ShapeShape$while/lstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_2/dropout_2/Shape
8while/lstm_cell_2/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_2/dropout_2/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2ð¢³2:
8while/lstm_cell_2/dropout_2/random_uniform/RandomUniform
*while/lstm_cell_2/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_2/dropout_2/GreaterEqual/y
(while/lstm_cell_2/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_2/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_2/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(while/lstm_cell_2/dropout_2/GreaterEqual¼
 while/lstm_cell_2/dropout_2/CastCast,while/lstm_cell_2/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 while/lstm_cell_2/dropout_2/CastË
!while/lstm_cell_2/dropout_2/Mul_1Mul#while/lstm_cell_2/dropout_2/Mul:z:0$while/lstm_cell_2/dropout_2/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!while/lstm_cell_2/dropout_2/Mul_1
!while/lstm_cell_2/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_2/dropout_3/ConstÎ
while/lstm_cell_2/dropout_3/MulMul$while/lstm_cell_2/ones_like:output:0*while/lstm_cell_2/dropout_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
while/lstm_cell_2/dropout_3/Mul
!while/lstm_cell_2/dropout_3/ShapeShape$while/lstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_2/dropout_3/Shape
8while/lstm_cell_2/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_2/dropout_3/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2¤02:
8while/lstm_cell_2/dropout_3/random_uniform/RandomUniform
*while/lstm_cell_2/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_2/dropout_3/GreaterEqual/y
(while/lstm_cell_2/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_2/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_2/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(while/lstm_cell_2/dropout_3/GreaterEqual¼
 while/lstm_cell_2/dropout_3/CastCast,while/lstm_cell_2/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 while/lstm_cell_2/dropout_3/CastË
!while/lstm_cell_2/dropout_3/Mul_1Mul#while/lstm_cell_2/dropout_3/Mul:z:0$while/lstm_cell_2/dropout_3/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!while/lstm_cell_2/dropout_3/Mul_1
#while/lstm_cell_2/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_2/ones_like_1/Shape
#while/lstm_cell_2/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#while/lstm_cell_2/ones_like_1/ConstÕ
while/lstm_cell_2/ones_like_1Fill,while/lstm_cell_2/ones_like_1/Shape:output:0,while/lstm_cell_2/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/ones_like_1
!while/lstm_cell_2/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_2/dropout_4/ConstÐ
while/lstm_cell_2/dropout_4/MulMul&while/lstm_cell_2/ones_like_1:output:0*while/lstm_cell_2/dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2!
while/lstm_cell_2/dropout_4/Mul
!while/lstm_cell_2/dropout_4/ShapeShape&while/lstm_cell_2/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_2/dropout_4/Shape
8while/lstm_cell_2/dropout_4/random_uniform/RandomUniformRandomUniform*while/lstm_cell_2/dropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
dtype0*
seed±ÿå)*
seed2óØI2:
8while/lstm_cell_2/dropout_4/random_uniform/RandomUniform
*while/lstm_cell_2/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_2/dropout_4/GreaterEqual/y
(while/lstm_cell_2/dropout_4/GreaterEqualGreaterEqualAwhile/lstm_cell_2/dropout_4/random_uniform/RandomUniform:output:03while/lstm_cell_2/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2*
(while/lstm_cell_2/dropout_4/GreaterEqual¼
 while/lstm_cell_2/dropout_4/CastCast,while/lstm_cell_2/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2"
 while/lstm_cell_2/dropout_4/CastË
!while/lstm_cell_2/dropout_4/Mul_1Mul#while/lstm_cell_2/dropout_4/Mul:z:0$while/lstm_cell_2/dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2#
!while/lstm_cell_2/dropout_4/Mul_1
!while/lstm_cell_2/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_2/dropout_5/ConstÐ
while/lstm_cell_2/dropout_5/MulMul&while/lstm_cell_2/ones_like_1:output:0*while/lstm_cell_2/dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2!
while/lstm_cell_2/dropout_5/Mul
!while/lstm_cell_2/dropout_5/ShapeShape&while/lstm_cell_2/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_2/dropout_5/Shape
8while/lstm_cell_2/dropout_5/random_uniform/RandomUniformRandomUniform*while/lstm_cell_2/dropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
dtype0*
seed±ÿå)*
seed2çþM2:
8while/lstm_cell_2/dropout_5/random_uniform/RandomUniform
*while/lstm_cell_2/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_2/dropout_5/GreaterEqual/y
(while/lstm_cell_2/dropout_5/GreaterEqualGreaterEqualAwhile/lstm_cell_2/dropout_5/random_uniform/RandomUniform:output:03while/lstm_cell_2/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2*
(while/lstm_cell_2/dropout_5/GreaterEqual¼
 while/lstm_cell_2/dropout_5/CastCast,while/lstm_cell_2/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2"
 while/lstm_cell_2/dropout_5/CastË
!while/lstm_cell_2/dropout_5/Mul_1Mul#while/lstm_cell_2/dropout_5/Mul:z:0$while/lstm_cell_2/dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2#
!while/lstm_cell_2/dropout_5/Mul_1
!while/lstm_cell_2/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_2/dropout_6/ConstÐ
while/lstm_cell_2/dropout_6/MulMul&while/lstm_cell_2/ones_like_1:output:0*while/lstm_cell_2/dropout_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2!
while/lstm_cell_2/dropout_6/Mul
!while/lstm_cell_2/dropout_6/ShapeShape&while/lstm_cell_2/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_2/dropout_6/Shape
8while/lstm_cell_2/dropout_6/random_uniform/RandomUniformRandomUniform*while/lstm_cell_2/dropout_6/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
dtype0*
seed±ÿå)*
seed2°Y2:
8while/lstm_cell_2/dropout_6/random_uniform/RandomUniform
*while/lstm_cell_2/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_2/dropout_6/GreaterEqual/y
(while/lstm_cell_2/dropout_6/GreaterEqualGreaterEqualAwhile/lstm_cell_2/dropout_6/random_uniform/RandomUniform:output:03while/lstm_cell_2/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2*
(while/lstm_cell_2/dropout_6/GreaterEqual¼
 while/lstm_cell_2/dropout_6/CastCast,while/lstm_cell_2/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2"
 while/lstm_cell_2/dropout_6/CastË
!while/lstm_cell_2/dropout_6/Mul_1Mul#while/lstm_cell_2/dropout_6/Mul:z:0$while/lstm_cell_2/dropout_6/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2#
!while/lstm_cell_2/dropout_6/Mul_1
!while/lstm_cell_2/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_2/dropout_7/ConstÐ
while/lstm_cell_2/dropout_7/MulMul&while/lstm_cell_2/ones_like_1:output:0*while/lstm_cell_2/dropout_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2!
while/lstm_cell_2/dropout_7/Mul
!while/lstm_cell_2/dropout_7/ShapeShape&while/lstm_cell_2/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_2/dropout_7/Shape
8while/lstm_cell_2/dropout_7/random_uniform/RandomUniformRandomUniform*while/lstm_cell_2/dropout_7/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
dtype0*
seed±ÿå)*
seed2Ù¬À2:
8while/lstm_cell_2/dropout_7/random_uniform/RandomUniform
*while/lstm_cell_2/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_2/dropout_7/GreaterEqual/y
(while/lstm_cell_2/dropout_7/GreaterEqualGreaterEqualAwhile/lstm_cell_2/dropout_7/random_uniform/RandomUniform:output:03while/lstm_cell_2/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2*
(while/lstm_cell_2/dropout_7/GreaterEqual¼
 while/lstm_cell_2/dropout_7/CastCast,while/lstm_cell_2/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2"
 while/lstm_cell_2/dropout_7/CastË
!while/lstm_cell_2/dropout_7/Mul_1Mul#while/lstm_cell_2/dropout_7/Mul:z:0$while/lstm_cell_2/dropout_7/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2#
!while/lstm_cell_2/dropout_7/Mul_1¿
while/lstm_cell_2/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell_2/dropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_2/mulÅ
while/lstm_cell_2/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_2/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_2/mul_1Å
while/lstm_cell_2/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_2/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_2/mul_2Å
while/lstm_cell_2/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_2/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_2/mul_3t
while/lstm_cell_2/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_2/Const
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_2/split/split_dimÄ
&while/lstm_cell_2/split/ReadVariableOpReadVariableOp1while_lstm_cell_2_split_readvariableop_resource_0* 
_output_shapes
:
*
dtype02(
&while/lstm_cell_2/split/ReadVariableOp÷
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0.while/lstm_cell_2/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
Ä:
Ä:
Ä:
Ä*
	num_split2
while/lstm_cell_2/split®
while/lstm_cell_2/MatMulMatMulwhile/lstm_cell_2/mul:z:0 while/lstm_cell_2/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/MatMul´
while/lstm_cell_2/MatMul_1MatMulwhile/lstm_cell_2/mul_1:z:0 while/lstm_cell_2/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/MatMul_1´
while/lstm_cell_2/MatMul_2MatMulwhile/lstm_cell_2/mul_2:z:0 while/lstm_cell_2/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/MatMul_2´
while/lstm_cell_2/MatMul_3MatMulwhile/lstm_cell_2/mul_3:z:0 while/lstm_cell_2/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/MatMul_3x
while/lstm_cell_2/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_2/Const_1
#while/lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_2/split_1/split_dimÅ
(while/lstm_cell_2/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_2_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02*
(while/lstm_cell_2/split_1/ReadVariableOpë
while/lstm_cell_2/split_1Split,while/lstm_cell_2/split_1/split_dim:output:00while/lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ä:Ä:Ä:Ä*
	num_split2
while/lstm_cell_2/split_1¼
while/lstm_cell_2/BiasAddBiasAdd"while/lstm_cell_2/MatMul:product:0"while/lstm_cell_2/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/BiasAddÂ
while/lstm_cell_2/BiasAdd_1BiasAdd$while/lstm_cell_2/MatMul_1:product:0"while/lstm_cell_2/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/BiasAdd_1Â
while/lstm_cell_2/BiasAdd_2BiasAdd$while/lstm_cell_2/MatMul_2:product:0"while/lstm_cell_2/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/BiasAdd_2Â
while/lstm_cell_2/BiasAdd_3BiasAdd$while/lstm_cell_2/MatMul_3:product:0"while/lstm_cell_2/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/BiasAdd_3¨
while/lstm_cell_2/mul_4Mulwhile_placeholder_2%while/lstm_cell_2/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/mul_4¨
while/lstm_cell_2/mul_5Mulwhile_placeholder_2%while/lstm_cell_2/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/mul_5¨
while/lstm_cell_2/mul_6Mulwhile_placeholder_2%while/lstm_cell_2/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/mul_6¨
while/lstm_cell_2/mul_7Mulwhile_placeholder_2%while/lstm_cell_2/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/mul_7²
 while/lstm_cell_2/ReadVariableOpReadVariableOp+while_lstm_cell_2_readvariableop_resource_0* 
_output_shapes
:
Ä*
dtype02"
 while/lstm_cell_2/ReadVariableOp
%while/lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_2/strided_slice/stack£
'while/lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ä   2)
'while/lstm_cell_2/strided_slice/stack_1£
'while/lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_2/strided_slice/stack_2ê
while/lstm_cell_2/strided_sliceStridedSlice(while/lstm_cell_2/ReadVariableOp:value:0.while/lstm_cell_2/strided_slice/stack:output:00while/lstm_cell_2/strided_slice/stack_1:output:00while/lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2!
while/lstm_cell_2/strided_slice¼
while/lstm_cell_2/MatMul_4MatMulwhile/lstm_cell_2/mul_4:z:0(while/lstm_cell_2/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/MatMul_4´
while/lstm_cell_2/addAddV2"while/lstm_cell_2/BiasAdd:output:0$while/lstm_cell_2/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/add
while/lstm_cell_2/SigmoidSigmoidwhile/lstm_cell_2/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/Sigmoid¶
"while/lstm_cell_2/ReadVariableOp_1ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0* 
_output_shapes
:
Ä*
dtype02$
"while/lstm_cell_2/ReadVariableOp_1£
'while/lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ä   2)
'while/lstm_cell_2/strided_slice_1/stack§
)while/lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_2/strided_slice_1/stack_1§
)while/lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_2/strided_slice_1/stack_2ö
!while/lstm_cell_2/strided_slice_1StridedSlice*while/lstm_cell_2/ReadVariableOp_1:value:00while/lstm_cell_2/strided_slice_1/stack:output:02while/lstm_cell_2/strided_slice_1/stack_1:output:02while/lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2#
!while/lstm_cell_2/strided_slice_1¾
while/lstm_cell_2/MatMul_5MatMulwhile/lstm_cell_2/mul_5:z:0*while/lstm_cell_2/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/MatMul_5º
while/lstm_cell_2/add_1AddV2$while/lstm_cell_2/BiasAdd_1:output:0$while/lstm_cell_2/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/add_1
while/lstm_cell_2/Sigmoid_1Sigmoidwhile/lstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/Sigmoid_1¢
while/lstm_cell_2/mul_8Mulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/mul_8¶
"while/lstm_cell_2/ReadVariableOp_2ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0* 
_output_shapes
:
Ä*
dtype02$
"while/lstm_cell_2/ReadVariableOp_2£
'while/lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_2/strided_slice_2/stack§
)while/lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2+
)while/lstm_cell_2/strided_slice_2/stack_1§
)while/lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_2/strided_slice_2/stack_2ö
!while/lstm_cell_2/strided_slice_2StridedSlice*while/lstm_cell_2/ReadVariableOp_2:value:00while/lstm_cell_2/strided_slice_2/stack:output:02while/lstm_cell_2/strided_slice_2/stack_1:output:02while/lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2#
!while/lstm_cell_2/strided_slice_2¾
while/lstm_cell_2/MatMul_6MatMulwhile/lstm_cell_2/mul_6:z:0*while/lstm_cell_2/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/MatMul_6º
while/lstm_cell_2/add_2AddV2$while/lstm_cell_2/BiasAdd_2:output:0$while/lstm_cell_2/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/add_2
while/lstm_cell_2/TanhTanhwhile/lstm_cell_2/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/Tanh§
while/lstm_cell_2/mul_9Mulwhile/lstm_cell_2/Sigmoid:y:0while/lstm_cell_2/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/mul_9¨
while/lstm_cell_2/add_3AddV2while/lstm_cell_2/mul_8:z:0while/lstm_cell_2/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/add_3¶
"while/lstm_cell_2/ReadVariableOp_3ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0* 
_output_shapes
:
Ä*
dtype02$
"while/lstm_cell_2/ReadVariableOp_3£
'while/lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2)
'while/lstm_cell_2/strided_slice_3/stack§
)while/lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_2/strided_slice_3/stack_1§
)while/lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_2/strided_slice_3/stack_2ö
!while/lstm_cell_2/strided_slice_3StridedSlice*while/lstm_cell_2/ReadVariableOp_3:value:00while/lstm_cell_2/strided_slice_3/stack:output:02while/lstm_cell_2/strided_slice_3/stack_1:output:02while/lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2#
!while/lstm_cell_2/strided_slice_3¾
while/lstm_cell_2/MatMul_7MatMulwhile/lstm_cell_2/mul_7:z:0*while/lstm_cell_2/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/MatMul_7º
while/lstm_cell_2/add_4AddV2$while/lstm_cell_2/BiasAdd_3:output:0$while/lstm_cell_2/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/add_4
while/lstm_cell_2/Sigmoid_2Sigmoidwhile/lstm_cell_2/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/Sigmoid_2
while/lstm_cell_2/Tanh_1Tanhwhile/lstm_cell_2/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/Tanh_1­
while/lstm_cell_2/mul_10Mulwhile/lstm_cell_2/Sigmoid_2:y:0while/lstm_cell_2/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/mul_10à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Ä
while/IdentityIdentitywhile/add_1:z:0!^while/lstm_cell_2/ReadVariableOp#^while/lstm_cell_2/ReadVariableOp_1#^while/lstm_cell_2/ReadVariableOp_2#^while/lstm_cell_2/ReadVariableOp_3'^while/lstm_cell_2/split/ReadVariableOp)^while/lstm_cell_2/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity×
while/Identity_1Identitywhile_while_maximum_iterations!^while/lstm_cell_2/ReadVariableOp#^while/lstm_cell_2/ReadVariableOp_1#^while/lstm_cell_2/ReadVariableOp_2#^while/lstm_cell_2/ReadVariableOp_3'^while/lstm_cell_2/split/ReadVariableOp)^while/lstm_cell_2/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Æ
while/Identity_2Identitywhile/add:z:0!^while/lstm_cell_2/ReadVariableOp#^while/lstm_cell_2/ReadVariableOp_1#^while/lstm_cell_2/ReadVariableOp_2#^while/lstm_cell_2/ReadVariableOp_3'^while/lstm_cell_2/split/ReadVariableOp)^while/lstm_cell_2/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2ó
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^while/lstm_cell_2/ReadVariableOp#^while/lstm_cell_2/ReadVariableOp_1#^while/lstm_cell_2/ReadVariableOp_2#^while/lstm_cell_2/ReadVariableOp_3'^while/lstm_cell_2/split/ReadVariableOp)^while/lstm_cell_2/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3ç
while/Identity_4Identitywhile/lstm_cell_2/mul_10:z:0!^while/lstm_cell_2/ReadVariableOp#^while/lstm_cell_2/ReadVariableOp_1#^while/lstm_cell_2/ReadVariableOp_2#^while/lstm_cell_2/ReadVariableOp_3'^while/lstm_cell_2/split/ReadVariableOp)^while/lstm_cell_2/split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/Identity_4æ
while/Identity_5Identitywhile/lstm_cell_2/add_3:z:0!^while/lstm_cell_2/ReadVariableOp#^while/lstm_cell_2/ReadVariableOp_1#^while/lstm_cell_2/ReadVariableOp_2#^while/lstm_cell_2/ReadVariableOp_3'^while/lstm_cell_2/split/ReadVariableOp)^while/lstm_cell_2/split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_2_readvariableop_resource+while_lstm_cell_2_readvariableop_resource_0"h
1while_lstm_cell_2_split_1_readvariableop_resource3while_lstm_cell_2_split_1_readvariableop_resource_0"d
/while_lstm_cell_2_split_readvariableop_resource1while_lstm_cell_2_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ: : :::2D
 while/lstm_cell_2/ReadVariableOp while/lstm_cell_2/ReadVariableOp2H
"while/lstm_cell_2/ReadVariableOp_1"while/lstm_cell_2/ReadVariableOp_12H
"while/lstm_cell_2/ReadVariableOp_2"while/lstm_cell_2/ReadVariableOp_22H
"while/lstm_cell_2/ReadVariableOp_3"while/lstm_cell_2/ReadVariableOp_32P
&while/lstm_cell_2/split/ReadVariableOp&while/lstm_cell_2/split/ReadVariableOp2T
(while/lstm_cell_2/split_1/ReadVariableOp(while/lstm_cell_2/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ:

_output_shapes
: :

_output_shapes
: 
¬

G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_571693

inputs
states_0
states_1!
split_readvariableop_resource#
split_1_readvariableop_resource
readvariableop_resource
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢split/ReadVariableOp¢split_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Const
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/ShapeÔ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2¢ÞÝ2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout/GreaterEqual/y¿
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_1/Const
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/ShapeÚ
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2ó® 2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout_1/GreaterEqual/yÇ
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_1/GreaterEqual
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_1/Cast
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_2/Const
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/ShapeÚ
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2ÚÃ¼2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout_2/GreaterEqual/yÇ
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_2/GreaterEqual
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_2/Cast
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_2/Mul_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_3/Const
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_3/Muld
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_3/ShapeÚ
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2Á¾2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout_3/GreaterEqual/yÇ
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_3/GreaterEqual
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_3/Cast
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_3/Mul_1^
ones_like_1/ShapeShapestates_0*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like_1/Const
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
ones_like_1g
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_4/Const
dropout_4/MulMulones_like_1:output:0dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
dropout_4/Mulf
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_4/ShapeÚ
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
dtype0*
seed±ÿå)*
seed2Ì¬Ú2(
&dropout_4/random_uniform/RandomUniformy
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout_4/GreaterEqual/yÇ
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
dropout_4/GreaterEqual
dropout_4/CastCastdropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
dropout_4/Cast
dropout_4/Mul_1Muldropout_4/Mul:z:0dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
dropout_4/Mul_1g
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_5/Const
dropout_5/MulMulones_like_1:output:0dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
dropout_5/Mulf
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_5/ShapeÙ
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
dtype0*
seed±ÿå)*
seed2§Û32(
&dropout_5/random_uniform/RandomUniformy
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout_5/GreaterEqual/yÇ
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
dropout_5/GreaterEqual
dropout_5/CastCastdropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
dropout_5/Cast
dropout_5/Mul_1Muldropout_5/Mul:z:0dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
dropout_5/Mul_1g
dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_6/Const
dropout_6/MulMulones_like_1:output:0dropout_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
dropout_6/Mulf
dropout_6/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_6/ShapeÚ
&dropout_6/random_uniform/RandomUniformRandomUniformdropout_6/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
dtype0*
seed±ÿå)*
seed2¢ÅÙ2(
&dropout_6/random_uniform/RandomUniformy
dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout_6/GreaterEqual/yÇ
dropout_6/GreaterEqualGreaterEqual/dropout_6/random_uniform/RandomUniform:output:0!dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
dropout_6/GreaterEqual
dropout_6/CastCastdropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
dropout_6/Cast
dropout_6/Mul_1Muldropout_6/Mul:z:0dropout_6/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
dropout_6/Mul_1g
dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_7/Const
dropout_7/MulMulones_like_1:output:0dropout_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
dropout_7/Mulf
dropout_7/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_7/ShapeÚ
&dropout_7/random_uniform/RandomUniformRandomUniformdropout_7/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
dtype0*
seed±ÿå)*
seed2ï2(
&dropout_7/random_uniform/RandomUniformy
dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout_7/GreaterEqual/yÇ
dropout_7/GreaterEqualGreaterEqual/dropout_7/random_uniform/RandomUniform:output:0!dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
dropout_7/GreaterEqual
dropout_7/CastCastdropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
dropout_7/Cast
dropout_7/Mul_1Muldropout_7/Mul:z:0dropout_7/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
dropout_7/Mul_1_
mulMulinputsdropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mule
mul_1Mulinputsdropout_1/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_1e
mul_2Mulinputsdropout_2/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_2e
mul_3Mulinputsdropout_3/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_3P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource* 
_output_shapes
:
*
dtype02
split/ReadVariableOp¯
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
Ä:
Ä:
Ä:
Ä*
	num_split2
splitf
MatMulMatMulmul:z:0split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
MatMull
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

MatMul_1l
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

MatMul_2l
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

MatMul_3T
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:*
dtype02
split_1/ReadVariableOp£
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ä:Ä:Ä:Ä*
	num_split2	
split_1t
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2	
BiasAddz
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
	BiasAdd_1z
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
	BiasAdd_2z
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
	BiasAdd_3g
mul_4Mulstates_0dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
mul_4g
mul_5Mulstates_0dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
mul_5g
mul_6Mulstates_0dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
mul_6g
mul_7Mulstates_0dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
mul_7z
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ä*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ä   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2þ
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2
strided_slicet
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

MatMul_4l
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2	
Sigmoid~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ä*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ä   2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2
strided_slice_1v
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

MatMul_5r
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
	Sigmoid_1a
mul_8MulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
mul_8~
ReadVariableOp_2ReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ä*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2
strided_slice_2v
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

MatMul_6r
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
add_2R
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
Tanh_
mul_9MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
mul_9`
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
add_3~
ReadVariableOp_3ReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ä*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2
strided_slice_3/stack
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2
strided_slice_3v
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

MatMul_7r
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
add_4_
	Sigmoid_2Sigmoid	add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
	Sigmoid_2V
Tanh_1Tanh	add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
Tanh_1e
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
mul_10Ù
IdentityIdentity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

IdentityÝ

Identity_1Identity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

Identity_1Ü

Identity_2Identity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*[
_input_shapesJ
H:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ:::2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ
"
_user_specified_name
states/1
¯
Ã
while_cond_571366
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_571366___redundant_placeholder04
0while_while_cond_571366___redundant_placeholder14
0while_while_cond_571366___redundant_placeholder24
0while_while_cond_571366___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ:

_output_shapes
: :

_output_shapes
:

Ó
%sequential_4_lstm_2_while_cond_567530D
@sequential_4_lstm_2_while_sequential_4_lstm_2_while_loop_counterJ
Fsequential_4_lstm_2_while_sequential_4_lstm_2_while_maximum_iterations)
%sequential_4_lstm_2_while_placeholder+
'sequential_4_lstm_2_while_placeholder_1+
'sequential_4_lstm_2_while_placeholder_2+
'sequential_4_lstm_2_while_placeholder_3F
Bsequential_4_lstm_2_while_less_sequential_4_lstm_2_strided_slice_1\
Xsequential_4_lstm_2_while_sequential_4_lstm_2_while_cond_567530___redundant_placeholder0\
Xsequential_4_lstm_2_while_sequential_4_lstm_2_while_cond_567530___redundant_placeholder1\
Xsequential_4_lstm_2_while_sequential_4_lstm_2_while_cond_567530___redundant_placeholder2\
Xsequential_4_lstm_2_while_sequential_4_lstm_2_while_cond_567530___redundant_placeholder3&
"sequential_4_lstm_2_while_identity
Ô
sequential_4/lstm_2/while/LessLess%sequential_4_lstm_2_while_placeholderBsequential_4_lstm_2_while_less_sequential_4_lstm_2_strided_slice_1*
T0*
_output_shapes
: 2 
sequential_4/lstm_2/while/Less
"sequential_4/lstm_2/while/IdentityIdentity"sequential_4/lstm_2/while/Less:z:0*
T0
*
_output_shapes
: 2$
"sequential_4/lstm_2/while/Identity"Q
"sequential_4_lstm_2_while_identity+sequential_4/lstm_2/while/Identity:output:0*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ:

_output_shapes
: :

_output_shapes
:
æ
m
O__inference_spatial_dropout1d_2_layer_call_and_return_conditional_losses_568568

inputs

identity_1_
IdentityIdentityinputs*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2

Identityn

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2

Identity_1"!

identity_1Identity_1:output:0*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿB:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB
 
_user_specified_nameinputs
Öø
¶
B__inference_lstm_2_layer_call_and_return_conditional_losses_570588
inputs_0-
)lstm_cell_2_split_readvariableop_resource/
+lstm_cell_2_split_1_readvariableop_resource'
#lstm_cell_2_readvariableop_resource
identity¢lstm_cell_2/ReadVariableOp¢lstm_cell_2/ReadVariableOp_1¢lstm_cell_2/ReadVariableOp_2¢lstm_cell_2/ReadVariableOp_3¢ lstm_cell_2/split/ReadVariableOp¢"lstm_cell_2/split_1/ReadVariableOp¢whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ä2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ä2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ä2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ä2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ý
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2
lstm_cell_2/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_2/ones_like/Shape
lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_2/ones_like/Constµ
lstm_cell_2/ones_likeFill$lstm_cell_2/ones_like/Shape:output:0$lstm_cell_2/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/ones_like{
lstm_cell_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_2/dropout/Const°
lstm_cell_2/dropout/MulMullstm_cell_2/ones_like:output:0"lstm_cell_2/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/dropout/Mul
lstm_cell_2/dropout/ShapeShapelstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_2/dropout/Shapeø
0lstm_cell_2/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_2/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2ðÀ«22
0lstm_cell_2/dropout/random_uniform/RandomUniform
"lstm_cell_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2$
"lstm_cell_2/dropout/GreaterEqual/yï
 lstm_cell_2/dropout/GreaterEqualGreaterEqual9lstm_cell_2/dropout/random_uniform/RandomUniform:output:0+lstm_cell_2/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_cell_2/dropout/GreaterEqual¤
lstm_cell_2/dropout/CastCast$lstm_cell_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/dropout/Cast«
lstm_cell_2/dropout/Mul_1Mullstm_cell_2/dropout/Mul:z:0lstm_cell_2/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/dropout/Mul_1
lstm_cell_2/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_2/dropout_1/Const¶
lstm_cell_2/dropout_1/MulMullstm_cell_2/ones_like:output:0$lstm_cell_2/dropout_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/dropout_1/Mul
lstm_cell_2/dropout_1/ShapeShapelstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_2/dropout_1/Shapeþ
2lstm_cell_2/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_2/dropout_1/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2ú24
2lstm_cell_2/dropout_1/random_uniform/RandomUniform
$lstm_cell_2/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_2/dropout_1/GreaterEqual/y÷
"lstm_cell_2/dropout_1/GreaterEqualGreaterEqual;lstm_cell_2/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_2/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_cell_2/dropout_1/GreaterEqualª
lstm_cell_2/dropout_1/CastCast&lstm_cell_2/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/dropout_1/Cast³
lstm_cell_2/dropout_1/Mul_1Mullstm_cell_2/dropout_1/Mul:z:0lstm_cell_2/dropout_1/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/dropout_1/Mul_1
lstm_cell_2/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_2/dropout_2/Const¶
lstm_cell_2/dropout_2/MulMullstm_cell_2/ones_like:output:0$lstm_cell_2/dropout_2/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/dropout_2/Mul
lstm_cell_2/dropout_2/ShapeShapelstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_2/dropout_2/Shapeþ
2lstm_cell_2/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_2/dropout_2/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2Ý·È24
2lstm_cell_2/dropout_2/random_uniform/RandomUniform
$lstm_cell_2/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_2/dropout_2/GreaterEqual/y÷
"lstm_cell_2/dropout_2/GreaterEqualGreaterEqual;lstm_cell_2/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_2/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_cell_2/dropout_2/GreaterEqualª
lstm_cell_2/dropout_2/CastCast&lstm_cell_2/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/dropout_2/Cast³
lstm_cell_2/dropout_2/Mul_1Mullstm_cell_2/dropout_2/Mul:z:0lstm_cell_2/dropout_2/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/dropout_2/Mul_1
lstm_cell_2/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_2/dropout_3/Const¶
lstm_cell_2/dropout_3/MulMullstm_cell_2/ones_like:output:0$lstm_cell_2/dropout_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/dropout_3/Mul
lstm_cell_2/dropout_3/ShapeShapelstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_2/dropout_3/Shapeþ
2lstm_cell_2/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_2/dropout_3/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2ý²ý24
2lstm_cell_2/dropout_3/random_uniform/RandomUniform
$lstm_cell_2/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_2/dropout_3/GreaterEqual/y÷
"lstm_cell_2/dropout_3/GreaterEqualGreaterEqual;lstm_cell_2/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_2/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_cell_2/dropout_3/GreaterEqualª
lstm_cell_2/dropout_3/CastCast&lstm_cell_2/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/dropout_3/Cast³
lstm_cell_2/dropout_3/Mul_1Mullstm_cell_2/dropout_3/Mul:z:0lstm_cell_2/dropout_3/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/dropout_3/Mul_1|
lstm_cell_2/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_2/ones_like_1/Shape
lstm_cell_2/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_2/ones_like_1/Const½
lstm_cell_2/ones_like_1Fill&lstm_cell_2/ones_like_1/Shape:output:0&lstm_cell_2/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/ones_like_1
lstm_cell_2/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_2/dropout_4/Const¸
lstm_cell_2/dropout_4/MulMul lstm_cell_2/ones_like_1:output:0$lstm_cell_2/dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/dropout_4/Mul
lstm_cell_2/dropout_4/ShapeShape lstm_cell_2/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_2/dropout_4/Shapeþ
2lstm_cell_2/dropout_4/random_uniform/RandomUniformRandomUniform$lstm_cell_2/dropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
dtype0*
seed±ÿå)*
seed2¯24
2lstm_cell_2/dropout_4/random_uniform/RandomUniform
$lstm_cell_2/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_2/dropout_4/GreaterEqual/y÷
"lstm_cell_2/dropout_4/GreaterEqualGreaterEqual;lstm_cell_2/dropout_4/random_uniform/RandomUniform:output:0-lstm_cell_2/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2$
"lstm_cell_2/dropout_4/GreaterEqualª
lstm_cell_2/dropout_4/CastCast&lstm_cell_2/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/dropout_4/Cast³
lstm_cell_2/dropout_4/Mul_1Mullstm_cell_2/dropout_4/Mul:z:0lstm_cell_2/dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/dropout_4/Mul_1
lstm_cell_2/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_2/dropout_5/Const¸
lstm_cell_2/dropout_5/MulMul lstm_cell_2/ones_like_1:output:0$lstm_cell_2/dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/dropout_5/Mul
lstm_cell_2/dropout_5/ShapeShape lstm_cell_2/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_2/dropout_5/Shapeþ
2lstm_cell_2/dropout_5/random_uniform/RandomUniformRandomUniform$lstm_cell_2/dropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
dtype0*
seed±ÿå)*
seed2¶«ü24
2lstm_cell_2/dropout_5/random_uniform/RandomUniform
$lstm_cell_2/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_2/dropout_5/GreaterEqual/y÷
"lstm_cell_2/dropout_5/GreaterEqualGreaterEqual;lstm_cell_2/dropout_5/random_uniform/RandomUniform:output:0-lstm_cell_2/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2$
"lstm_cell_2/dropout_5/GreaterEqualª
lstm_cell_2/dropout_5/CastCast&lstm_cell_2/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/dropout_5/Cast³
lstm_cell_2/dropout_5/Mul_1Mullstm_cell_2/dropout_5/Mul:z:0lstm_cell_2/dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/dropout_5/Mul_1
lstm_cell_2/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_2/dropout_6/Const¸
lstm_cell_2/dropout_6/MulMul lstm_cell_2/ones_like_1:output:0$lstm_cell_2/dropout_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/dropout_6/Mul
lstm_cell_2/dropout_6/ShapeShape lstm_cell_2/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_2/dropout_6/Shapeþ
2lstm_cell_2/dropout_6/random_uniform/RandomUniformRandomUniform$lstm_cell_2/dropout_6/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
dtype0*
seed±ÿå)*
seed224
2lstm_cell_2/dropout_6/random_uniform/RandomUniform
$lstm_cell_2/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_2/dropout_6/GreaterEqual/y÷
"lstm_cell_2/dropout_6/GreaterEqualGreaterEqual;lstm_cell_2/dropout_6/random_uniform/RandomUniform:output:0-lstm_cell_2/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2$
"lstm_cell_2/dropout_6/GreaterEqualª
lstm_cell_2/dropout_6/CastCast&lstm_cell_2/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/dropout_6/Cast³
lstm_cell_2/dropout_6/Mul_1Mullstm_cell_2/dropout_6/Mul:z:0lstm_cell_2/dropout_6/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/dropout_6/Mul_1
lstm_cell_2/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_2/dropout_7/Const¸
lstm_cell_2/dropout_7/MulMul lstm_cell_2/ones_like_1:output:0$lstm_cell_2/dropout_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/dropout_7/Mul
lstm_cell_2/dropout_7/ShapeShape lstm_cell_2/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_2/dropout_7/Shapeþ
2lstm_cell_2/dropout_7/random_uniform/RandomUniformRandomUniform$lstm_cell_2/dropout_7/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
dtype0*
seed±ÿå)*
seed2©® 24
2lstm_cell_2/dropout_7/random_uniform/RandomUniform
$lstm_cell_2/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_2/dropout_7/GreaterEqual/y÷
"lstm_cell_2/dropout_7/GreaterEqualGreaterEqual;lstm_cell_2/dropout_7/random_uniform/RandomUniform:output:0-lstm_cell_2/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2$
"lstm_cell_2/dropout_7/GreaterEqualª
lstm_cell_2/dropout_7/CastCast&lstm_cell_2/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/dropout_7/Cast³
lstm_cell_2/dropout_7/Mul_1Mullstm_cell_2/dropout_7/Mul:z:0lstm_cell_2/dropout_7/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/dropout_7/Mul_1
lstm_cell_2/mulMulstrided_slice_2:output:0lstm_cell_2/dropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/mul
lstm_cell_2/mul_1Mulstrided_slice_2:output:0lstm_cell_2/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/mul_1
lstm_cell_2/mul_2Mulstrided_slice_2:output:0lstm_cell_2/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/mul_2
lstm_cell_2/mul_3Mulstrided_slice_2:output:0lstm_cell_2/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/mul_3h
lstm_cell_2/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_2/Const|
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_2/split/split_dim°
 lstm_cell_2/split/ReadVariableOpReadVariableOp)lstm_cell_2_split_readvariableop_resource* 
_output_shapes
:
*
dtype02"
 lstm_cell_2/split/ReadVariableOpß
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0(lstm_cell_2/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
Ä:
Ä:
Ä:
Ä*
	num_split2
lstm_cell_2/split
lstm_cell_2/MatMulMatMullstm_cell_2/mul:z:0lstm_cell_2/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/MatMul
lstm_cell_2/MatMul_1MatMullstm_cell_2/mul_1:z:0lstm_cell_2/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/MatMul_1
lstm_cell_2/MatMul_2MatMullstm_cell_2/mul_2:z:0lstm_cell_2/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/MatMul_2
lstm_cell_2/MatMul_3MatMullstm_cell_2/mul_3:z:0lstm_cell_2/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/MatMul_3l
lstm_cell_2/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_2/Const_1
lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_2/split_1/split_dim±
"lstm_cell_2/split_1/ReadVariableOpReadVariableOp+lstm_cell_2_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02$
"lstm_cell_2/split_1/ReadVariableOpÓ
lstm_cell_2/split_1Split&lstm_cell_2/split_1/split_dim:output:0*lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ä:Ä:Ä:Ä*
	num_split2
lstm_cell_2/split_1¤
lstm_cell_2/BiasAddBiasAddlstm_cell_2/MatMul:product:0lstm_cell_2/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/BiasAddª
lstm_cell_2/BiasAdd_1BiasAddlstm_cell_2/MatMul_1:product:0lstm_cell_2/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/BiasAdd_1ª
lstm_cell_2/BiasAdd_2BiasAddlstm_cell_2/MatMul_2:product:0lstm_cell_2/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/BiasAdd_2ª
lstm_cell_2/BiasAdd_3BiasAddlstm_cell_2/MatMul_3:product:0lstm_cell_2/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/BiasAdd_3
lstm_cell_2/mul_4Mulzeros:output:0lstm_cell_2/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/mul_4
lstm_cell_2/mul_5Mulzeros:output:0lstm_cell_2/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/mul_5
lstm_cell_2/mul_6Mulzeros:output:0lstm_cell_2/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/mul_6
lstm_cell_2/mul_7Mulzeros:output:0lstm_cell_2/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/mul_7
lstm_cell_2/ReadVariableOpReadVariableOp#lstm_cell_2_readvariableop_resource* 
_output_shapes
:
Ä*
dtype02
lstm_cell_2/ReadVariableOp
lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_2/strided_slice/stack
!lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ä   2#
!lstm_cell_2/strided_slice/stack_1
!lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_2/strided_slice/stack_2Æ
lstm_cell_2/strided_sliceStridedSlice"lstm_cell_2/ReadVariableOp:value:0(lstm_cell_2/strided_slice/stack:output:0*lstm_cell_2/strided_slice/stack_1:output:0*lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2
lstm_cell_2/strided_slice¤
lstm_cell_2/MatMul_4MatMullstm_cell_2/mul_4:z:0"lstm_cell_2/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/MatMul_4
lstm_cell_2/addAddV2lstm_cell_2/BiasAdd:output:0lstm_cell_2/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/add}
lstm_cell_2/SigmoidSigmoidlstm_cell_2/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/Sigmoid¢
lstm_cell_2/ReadVariableOp_1ReadVariableOp#lstm_cell_2_readvariableop_resource* 
_output_shapes
:
Ä*
dtype02
lstm_cell_2/ReadVariableOp_1
!lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ä   2#
!lstm_cell_2/strided_slice_1/stack
#lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_2/strided_slice_1/stack_1
#lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_2/strided_slice_1/stack_2Ò
lstm_cell_2/strided_slice_1StridedSlice$lstm_cell_2/ReadVariableOp_1:value:0*lstm_cell_2/strided_slice_1/stack:output:0,lstm_cell_2/strided_slice_1/stack_1:output:0,lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2
lstm_cell_2/strided_slice_1¦
lstm_cell_2/MatMul_5MatMullstm_cell_2/mul_5:z:0$lstm_cell_2/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/MatMul_5¢
lstm_cell_2/add_1AddV2lstm_cell_2/BiasAdd_1:output:0lstm_cell_2/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/add_1
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/Sigmoid_1
lstm_cell_2/mul_8Mullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/mul_8¢
lstm_cell_2/ReadVariableOp_2ReadVariableOp#lstm_cell_2_readvariableop_resource* 
_output_shapes
:
Ä*
dtype02
lstm_cell_2/ReadVariableOp_2
!lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_2/strided_slice_2/stack
#lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2%
#lstm_cell_2/strided_slice_2/stack_1
#lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_2/strided_slice_2/stack_2Ò
lstm_cell_2/strided_slice_2StridedSlice$lstm_cell_2/ReadVariableOp_2:value:0*lstm_cell_2/strided_slice_2/stack:output:0,lstm_cell_2/strided_slice_2/stack_1:output:0,lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2
lstm_cell_2/strided_slice_2¦
lstm_cell_2/MatMul_6MatMullstm_cell_2/mul_6:z:0$lstm_cell_2/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/MatMul_6¢
lstm_cell_2/add_2AddV2lstm_cell_2/BiasAdd_2:output:0lstm_cell_2/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/add_2v
lstm_cell_2/TanhTanhlstm_cell_2/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/Tanh
lstm_cell_2/mul_9Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/mul_9
lstm_cell_2/add_3AddV2lstm_cell_2/mul_8:z:0lstm_cell_2/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/add_3¢
lstm_cell_2/ReadVariableOp_3ReadVariableOp#lstm_cell_2_readvariableop_resource* 
_output_shapes
:
Ä*
dtype02
lstm_cell_2/ReadVariableOp_3
!lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2#
!lstm_cell_2/strided_slice_3/stack
#lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_2/strided_slice_3/stack_1
#lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_2/strided_slice_3/stack_2Ò
lstm_cell_2/strided_slice_3StridedSlice$lstm_cell_2/ReadVariableOp_3:value:0*lstm_cell_2/strided_slice_3/stack:output:0,lstm_cell_2/strided_slice_3/stack_1:output:0,lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2
lstm_cell_2/strided_slice_3¦
lstm_cell_2/MatMul_7MatMullstm_cell_2/mul_7:z:0$lstm_cell_2/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/MatMul_7¢
lstm_cell_2/add_4AddV2lstm_cell_2/BiasAdd_3:output:0lstm_cell_2/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/add_4
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/Sigmoid_2z
lstm_cell_2/Tanh_1Tanhlstm_cell_2/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/Tanh_1
lstm_cell_2/mul_10Mullstm_cell_2/Sigmoid_2:y:0lstm_cell_2/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/mul_10
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÄ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterå
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_2_split_readvariableop_resource+lstm_cell_2_split_1_readvariableop_resource#lstm_cell_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_570388*
condR
while_cond_570387*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÄ   22
0TensorArrayV2Stack/TensorListStack/element_shapeò
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÄ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¯
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÄ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime·
IdentityIdentitystrided_slice_3:output:0^lstm_cell_2/ReadVariableOp^lstm_cell_2/ReadVariableOp_1^lstm_cell_2/ReadVariableOp_2^lstm_cell_2/ReadVariableOp_3!^lstm_cell_2/split/ReadVariableOp#^lstm_cell_2/split_1/ReadVariableOp^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::28
lstm_cell_2/ReadVariableOplstm_cell_2/ReadVariableOp2<
lstm_cell_2/ReadVariableOp_1lstm_cell_2/ReadVariableOp_12<
lstm_cell_2/ReadVariableOp_2lstm_cell_2/ReadVariableOp_22<
lstm_cell_2/ReadVariableOp_3lstm_cell_2/ReadVariableOp_32D
 lstm_cell_2/split/ReadVariableOp lstm_cell_2/split/ReadVariableOp2H
"lstm_cell_2/split_1/ReadVariableOp"lstm_cell_2/split_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
ø	
Ü
C__inference_dense_2_layer_call_and_return_conditional_losses_571536

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Ä*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿÄ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ
 
_user_specified_nameinputs
«
n
O__inference_spatial_dropout1d_2_layer_call_and_return_conditional_losses_570153

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2
dropout/Const
dropout/MulMulinputsdropout/Const:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/Mul
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1Í
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shapeÐ
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2
dropout/GreaterEqual/yË
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/Mul_1{
IdentityIdentitydropout/Mul_1:z:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¼
P
4__inference_spatial_dropout1d_2_layer_call_fn_570205

inputs
identityÒ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_spatial_dropout1d_2_layer_call_and_return_conditional_losses_5685682
PartitionedCallq
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2

Identity"
identityIdentity:output:0*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿB:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB
 
_user_specified_nameinputs
¯
Ã
while_cond_570706
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_570706___redundant_placeholder04
0while_while_cond_570706___redundant_placeholder14
0while_while_cond_570706___redundant_placeholder24
0while_while_cond_570706___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ:

_output_shapes
: :

_output_shapes
:
%

while_body_568438
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_lstm_cell_2_568462_0
while_lstm_cell_2_568464_0
while_lstm_cell_2_568466_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_2_568462
while_lstm_cell_2_568464
while_lstm_cell_2_568466¢)while/lstm_cell_2/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÔ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÞ
)while/lstm_cell_2/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_2_568462_0while_lstm_cell_2_568464_0while_lstm_cell_2_568466_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_5680122+
)while/lstm_cell_2/StatefulPartitionedCallö
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_2/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_2/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_2/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_2/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2¹
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_2/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Ã
while/Identity_4Identity2while/lstm_cell_2/StatefulPartitionedCall:output:1*^while/lstm_cell_2/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/Identity_4Ã
while/Identity_5Identity2while/lstm_cell_2/StatefulPartitionedCall:output:2*^while/lstm_cell_2/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_2_568462while_lstm_cell_2_568462_0"6
while_lstm_cell_2_568464while_lstm_cell_2_568464_0"6
while_lstm_cell_2_568466while_lstm_cell_2_568466_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ: : :::2V
)while/lstm_cell_2/StatefulPartitionedCall)while/lstm_cell_2/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ:

_output_shapes
: :

_output_shapes
: 
ã	

G__inference_embedding_2_layer_call_and_return_conditional_losses_570124

inputs
embedding_lookup_570118
identity¢embedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2
Castþ
embedding_lookupResourceGatherembedding_lookup_570118Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0**
_class 
loc:@embedding_lookup/570118*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB*
dtype02
embedding_lookupî
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@embedding_lookup/570118*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2
embedding_lookup/Identity¡
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2

Identity"
identityIdentity:output:0**
_input_shapes
:ÿÿÿÿÿÿÿÿÿB:2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB
 
_user_specified_nameinputs
å
¾
-__inference_sequential_4_layer_call_fn_570114

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity¢StatefulPartitionedCall¬
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_5693552
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿB::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB
 
_user_specified_nameinputs
Ü
»

lstm_2_while_body_569604*
&lstm_2_while_lstm_2_while_loop_counter0
,lstm_2_while_lstm_2_while_maximum_iterations
lstm_2_while_placeholder
lstm_2_while_placeholder_1
lstm_2_while_placeholder_2
lstm_2_while_placeholder_3)
%lstm_2_while_lstm_2_strided_slice_1_0e
alstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0<
8lstm_2_while_lstm_cell_2_split_readvariableop_resource_0>
:lstm_2_while_lstm_cell_2_split_1_readvariableop_resource_06
2lstm_2_while_lstm_cell_2_readvariableop_resource_0
lstm_2_while_identity
lstm_2_while_identity_1
lstm_2_while_identity_2
lstm_2_while_identity_3
lstm_2_while_identity_4
lstm_2_while_identity_5'
#lstm_2_while_lstm_2_strided_slice_1c
_lstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor:
6lstm_2_while_lstm_cell_2_split_readvariableop_resource<
8lstm_2_while_lstm_cell_2_split_1_readvariableop_resource4
0lstm_2_while_lstm_cell_2_readvariableop_resource¢'lstm_2/while/lstm_cell_2/ReadVariableOp¢)lstm_2/while/lstm_cell_2/ReadVariableOp_1¢)lstm_2/while/lstm_cell_2/ReadVariableOp_2¢)lstm_2/while/lstm_cell_2/ReadVariableOp_3¢-lstm_2/while/lstm_cell_2/split/ReadVariableOp¢/lstm_2/while/lstm_cell_2/split_1/ReadVariableOpÑ
>lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2@
>lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeþ
0lstm_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemalstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0lstm_2_while_placeholderGlstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype022
0lstm_2/while/TensorArrayV2Read/TensorListGetItem»
(lstm_2/while/lstm_cell_2/ones_like/ShapeShape7lstm_2/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2*
(lstm_2/while/lstm_cell_2/ones_like/Shape
(lstm_2/while/lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2*
(lstm_2/while/lstm_cell_2/ones_like/Consté
"lstm_2/while/lstm_cell_2/ones_likeFill1lstm_2/while/lstm_cell_2/ones_like/Shape:output:01lstm_2/while/lstm_cell_2/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_2/while/lstm_cell_2/ones_like
&lstm_2/while/lstm_cell_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2(
&lstm_2/while/lstm_cell_2/dropout/Constä
$lstm_2/while/lstm_cell_2/dropout/MulMul+lstm_2/while/lstm_cell_2/ones_like:output:0/lstm_2/while/lstm_cell_2/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2&
$lstm_2/while/lstm_cell_2/dropout/Mul«
&lstm_2/while/lstm_cell_2/dropout/ShapeShape+lstm_2/while/lstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2(
&lstm_2/while/lstm_cell_2/dropout/Shape
=lstm_2/while/lstm_cell_2/dropout/random_uniform/RandomUniformRandomUniform/lstm_2/while/lstm_cell_2/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2ã2?
=lstm_2/while/lstm_cell_2/dropout/random_uniform/RandomUniform§
/lstm_2/while/lstm_cell_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>21
/lstm_2/while/lstm_cell_2/dropout/GreaterEqual/y£
-lstm_2/while/lstm_cell_2/dropout/GreaterEqualGreaterEqualFlstm_2/while/lstm_cell_2/dropout/random_uniform/RandomUniform:output:08lstm_2/while/lstm_cell_2/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2/
-lstm_2/while/lstm_cell_2/dropout/GreaterEqualË
%lstm_2/while/lstm_cell_2/dropout/CastCast1lstm_2/while/lstm_cell_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%lstm_2/while/lstm_cell_2/dropout/Castß
&lstm_2/while/lstm_cell_2/dropout/Mul_1Mul(lstm_2/while/lstm_cell_2/dropout/Mul:z:0)lstm_2/while/lstm_cell_2/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&lstm_2/while/lstm_cell_2/dropout/Mul_1
(lstm_2/while/lstm_cell_2/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2*
(lstm_2/while/lstm_cell_2/dropout_1/Constê
&lstm_2/while/lstm_cell_2/dropout_1/MulMul+lstm_2/while/lstm_cell_2/ones_like:output:01lstm_2/while/lstm_cell_2/dropout_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&lstm_2/while/lstm_cell_2/dropout_1/Mul¯
(lstm_2/while/lstm_cell_2/dropout_1/ShapeShape+lstm_2/while/lstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2*
(lstm_2/while/lstm_cell_2/dropout_1/Shape¥
?lstm_2/while/lstm_cell_2/dropout_1/random_uniform/RandomUniformRandomUniform1lstm_2/while/lstm_cell_2/dropout_1/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2£·2A
?lstm_2/while/lstm_cell_2/dropout_1/random_uniform/RandomUniform«
1lstm_2/while/lstm_cell_2/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>23
1lstm_2/while/lstm_cell_2/dropout_1/GreaterEqual/y«
/lstm_2/while/lstm_cell_2/dropout_1/GreaterEqualGreaterEqualHlstm_2/while/lstm_cell_2/dropout_1/random_uniform/RandomUniform:output:0:lstm_2/while/lstm_cell_2/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/lstm_2/while/lstm_cell_2/dropout_1/GreaterEqualÑ
'lstm_2/while/lstm_cell_2/dropout_1/CastCast3lstm_2/while/lstm_cell_2/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'lstm_2/while/lstm_cell_2/dropout_1/Castç
(lstm_2/while/lstm_cell_2/dropout_1/Mul_1Mul*lstm_2/while/lstm_cell_2/dropout_1/Mul:z:0+lstm_2/while/lstm_cell_2/dropout_1/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(lstm_2/while/lstm_cell_2/dropout_1/Mul_1
(lstm_2/while/lstm_cell_2/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2*
(lstm_2/while/lstm_cell_2/dropout_2/Constê
&lstm_2/while/lstm_cell_2/dropout_2/MulMul+lstm_2/while/lstm_cell_2/ones_like:output:01lstm_2/while/lstm_cell_2/dropout_2/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&lstm_2/while/lstm_cell_2/dropout_2/Mul¯
(lstm_2/while/lstm_cell_2/dropout_2/ShapeShape+lstm_2/while/lstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2*
(lstm_2/while/lstm_cell_2/dropout_2/Shape¥
?lstm_2/while/lstm_cell_2/dropout_2/random_uniform/RandomUniformRandomUniform1lstm_2/while/lstm_cell_2/dropout_2/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2í×Ò2A
?lstm_2/while/lstm_cell_2/dropout_2/random_uniform/RandomUniform«
1lstm_2/while/lstm_cell_2/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>23
1lstm_2/while/lstm_cell_2/dropout_2/GreaterEqual/y«
/lstm_2/while/lstm_cell_2/dropout_2/GreaterEqualGreaterEqualHlstm_2/while/lstm_cell_2/dropout_2/random_uniform/RandomUniform:output:0:lstm_2/while/lstm_cell_2/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/lstm_2/while/lstm_cell_2/dropout_2/GreaterEqualÑ
'lstm_2/while/lstm_cell_2/dropout_2/CastCast3lstm_2/while/lstm_cell_2/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'lstm_2/while/lstm_cell_2/dropout_2/Castç
(lstm_2/while/lstm_cell_2/dropout_2/Mul_1Mul*lstm_2/while/lstm_cell_2/dropout_2/Mul:z:0+lstm_2/while/lstm_cell_2/dropout_2/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(lstm_2/while/lstm_cell_2/dropout_2/Mul_1
(lstm_2/while/lstm_cell_2/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2*
(lstm_2/while/lstm_cell_2/dropout_3/Constê
&lstm_2/while/lstm_cell_2/dropout_3/MulMul+lstm_2/while/lstm_cell_2/ones_like:output:01lstm_2/while/lstm_cell_2/dropout_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&lstm_2/while/lstm_cell_2/dropout_3/Mul¯
(lstm_2/while/lstm_cell_2/dropout_3/ShapeShape+lstm_2/while/lstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2*
(lstm_2/while/lstm_cell_2/dropout_3/Shape¤
?lstm_2/while/lstm_cell_2/dropout_3/random_uniform/RandomUniformRandomUniform1lstm_2/while/lstm_cell_2/dropout_3/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2Íß2A
?lstm_2/while/lstm_cell_2/dropout_3/random_uniform/RandomUniform«
1lstm_2/while/lstm_cell_2/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>23
1lstm_2/while/lstm_cell_2/dropout_3/GreaterEqual/y«
/lstm_2/while/lstm_cell_2/dropout_3/GreaterEqualGreaterEqualHlstm_2/while/lstm_cell_2/dropout_3/random_uniform/RandomUniform:output:0:lstm_2/while/lstm_cell_2/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/lstm_2/while/lstm_cell_2/dropout_3/GreaterEqualÑ
'lstm_2/while/lstm_cell_2/dropout_3/CastCast3lstm_2/while/lstm_cell_2/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'lstm_2/while/lstm_cell_2/dropout_3/Castç
(lstm_2/while/lstm_cell_2/dropout_3/Mul_1Mul*lstm_2/while/lstm_cell_2/dropout_3/Mul:z:0+lstm_2/while/lstm_cell_2/dropout_3/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(lstm_2/while/lstm_cell_2/dropout_3/Mul_1¢
*lstm_2/while/lstm_cell_2/ones_like_1/ShapeShapelstm_2_while_placeholder_2*
T0*
_output_shapes
:2,
*lstm_2/while/lstm_cell_2/ones_like_1/Shape
*lstm_2/while/lstm_cell_2/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2,
*lstm_2/while/lstm_cell_2/ones_like_1/Constñ
$lstm_2/while/lstm_cell_2/ones_like_1Fill3lstm_2/while/lstm_cell_2/ones_like_1/Shape:output:03lstm_2/while/lstm_cell_2/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2&
$lstm_2/while/lstm_cell_2/ones_like_1
(lstm_2/while/lstm_cell_2/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2*
(lstm_2/while/lstm_cell_2/dropout_4/Constì
&lstm_2/while/lstm_cell_2/dropout_4/MulMul-lstm_2/while/lstm_cell_2/ones_like_1:output:01lstm_2/while/lstm_cell_2/dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2(
&lstm_2/while/lstm_cell_2/dropout_4/Mul±
(lstm_2/while/lstm_cell_2/dropout_4/ShapeShape-lstm_2/while/lstm_cell_2/ones_like_1:output:0*
T0*
_output_shapes
:2*
(lstm_2/while/lstm_cell_2/dropout_4/Shape¤
?lstm_2/while/lstm_cell_2/dropout_4/random_uniform/RandomUniformRandomUniform1lstm_2/while/lstm_cell_2/dropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
dtype0*
seed±ÿå)*
seed2òåN2A
?lstm_2/while/lstm_cell_2/dropout_4/random_uniform/RandomUniform«
1lstm_2/while/lstm_cell_2/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>23
1lstm_2/while/lstm_cell_2/dropout_4/GreaterEqual/y«
/lstm_2/while/lstm_cell_2/dropout_4/GreaterEqualGreaterEqualHlstm_2/while/lstm_cell_2/dropout_4/random_uniform/RandomUniform:output:0:lstm_2/while/lstm_cell_2/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ21
/lstm_2/while/lstm_cell_2/dropout_4/GreaterEqualÑ
'lstm_2/while/lstm_cell_2/dropout_4/CastCast3lstm_2/while/lstm_cell_2/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2)
'lstm_2/while/lstm_cell_2/dropout_4/Castç
(lstm_2/while/lstm_cell_2/dropout_4/Mul_1Mul*lstm_2/while/lstm_cell_2/dropout_4/Mul:z:0+lstm_2/while/lstm_cell_2/dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2*
(lstm_2/while/lstm_cell_2/dropout_4/Mul_1
(lstm_2/while/lstm_cell_2/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2*
(lstm_2/while/lstm_cell_2/dropout_5/Constì
&lstm_2/while/lstm_cell_2/dropout_5/MulMul-lstm_2/while/lstm_cell_2/ones_like_1:output:01lstm_2/while/lstm_cell_2/dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2(
&lstm_2/while/lstm_cell_2/dropout_5/Mul±
(lstm_2/while/lstm_cell_2/dropout_5/ShapeShape-lstm_2/while/lstm_cell_2/ones_like_1:output:0*
T0*
_output_shapes
:2*
(lstm_2/while/lstm_cell_2/dropout_5/Shape¤
?lstm_2/while/lstm_cell_2/dropout_5/random_uniform/RandomUniformRandomUniform1lstm_2/while/lstm_cell_2/dropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
dtype0*
seed±ÿå)*
seed2¢2A
?lstm_2/while/lstm_cell_2/dropout_5/random_uniform/RandomUniform«
1lstm_2/while/lstm_cell_2/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>23
1lstm_2/while/lstm_cell_2/dropout_5/GreaterEqual/y«
/lstm_2/while/lstm_cell_2/dropout_5/GreaterEqualGreaterEqualHlstm_2/while/lstm_cell_2/dropout_5/random_uniform/RandomUniform:output:0:lstm_2/while/lstm_cell_2/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ21
/lstm_2/while/lstm_cell_2/dropout_5/GreaterEqualÑ
'lstm_2/while/lstm_cell_2/dropout_5/CastCast3lstm_2/while/lstm_cell_2/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2)
'lstm_2/while/lstm_cell_2/dropout_5/Castç
(lstm_2/while/lstm_cell_2/dropout_5/Mul_1Mul*lstm_2/while/lstm_cell_2/dropout_5/Mul:z:0+lstm_2/while/lstm_cell_2/dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2*
(lstm_2/while/lstm_cell_2/dropout_5/Mul_1
(lstm_2/while/lstm_cell_2/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2*
(lstm_2/while/lstm_cell_2/dropout_6/Constì
&lstm_2/while/lstm_cell_2/dropout_6/MulMul-lstm_2/while/lstm_cell_2/ones_like_1:output:01lstm_2/while/lstm_cell_2/dropout_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2(
&lstm_2/while/lstm_cell_2/dropout_6/Mul±
(lstm_2/while/lstm_cell_2/dropout_6/ShapeShape-lstm_2/while/lstm_cell_2/ones_like_1:output:0*
T0*
_output_shapes
:2*
(lstm_2/while/lstm_cell_2/dropout_6/Shape¤
?lstm_2/while/lstm_cell_2/dropout_6/random_uniform/RandomUniformRandomUniform1lstm_2/while/lstm_cell_2/dropout_6/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
dtype0*
seed±ÿå)*
seed2öÚO2A
?lstm_2/while/lstm_cell_2/dropout_6/random_uniform/RandomUniform«
1lstm_2/while/lstm_cell_2/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>23
1lstm_2/while/lstm_cell_2/dropout_6/GreaterEqual/y«
/lstm_2/while/lstm_cell_2/dropout_6/GreaterEqualGreaterEqualHlstm_2/while/lstm_cell_2/dropout_6/random_uniform/RandomUniform:output:0:lstm_2/while/lstm_cell_2/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ21
/lstm_2/while/lstm_cell_2/dropout_6/GreaterEqualÑ
'lstm_2/while/lstm_cell_2/dropout_6/CastCast3lstm_2/while/lstm_cell_2/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2)
'lstm_2/while/lstm_cell_2/dropout_6/Castç
(lstm_2/while/lstm_cell_2/dropout_6/Mul_1Mul*lstm_2/while/lstm_cell_2/dropout_6/Mul:z:0+lstm_2/while/lstm_cell_2/dropout_6/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2*
(lstm_2/while/lstm_cell_2/dropout_6/Mul_1
(lstm_2/while/lstm_cell_2/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2*
(lstm_2/while/lstm_cell_2/dropout_7/Constì
&lstm_2/while/lstm_cell_2/dropout_7/MulMul-lstm_2/while/lstm_cell_2/ones_like_1:output:01lstm_2/while/lstm_cell_2/dropout_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2(
&lstm_2/while/lstm_cell_2/dropout_7/Mul±
(lstm_2/while/lstm_cell_2/dropout_7/ShapeShape-lstm_2/while/lstm_cell_2/ones_like_1:output:0*
T0*
_output_shapes
:2*
(lstm_2/while/lstm_cell_2/dropout_7/Shape¥
?lstm_2/while/lstm_cell_2/dropout_7/random_uniform/RandomUniformRandomUniform1lstm_2/while/lstm_cell_2/dropout_7/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
dtype0*
seed±ÿå)*
seed2üÂ2A
?lstm_2/while/lstm_cell_2/dropout_7/random_uniform/RandomUniform«
1lstm_2/while/lstm_cell_2/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>23
1lstm_2/while/lstm_cell_2/dropout_7/GreaterEqual/y«
/lstm_2/while/lstm_cell_2/dropout_7/GreaterEqualGreaterEqualHlstm_2/while/lstm_cell_2/dropout_7/random_uniform/RandomUniform:output:0:lstm_2/while/lstm_cell_2/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ21
/lstm_2/while/lstm_cell_2/dropout_7/GreaterEqualÑ
'lstm_2/while/lstm_cell_2/dropout_7/CastCast3lstm_2/while/lstm_cell_2/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2)
'lstm_2/while/lstm_cell_2/dropout_7/Castç
(lstm_2/while/lstm_cell_2/dropout_7/Mul_1Mul*lstm_2/while/lstm_cell_2/dropout_7/Mul:z:0+lstm_2/while/lstm_cell_2/dropout_7/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2*
(lstm_2/while/lstm_cell_2/dropout_7/Mul_1Û
lstm_2/while/lstm_cell_2/mulMul7lstm_2/while/TensorArrayV2Read/TensorListGetItem:item:0*lstm_2/while/lstm_cell_2/dropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_2/while/lstm_cell_2/mulá
lstm_2/while/lstm_cell_2/mul_1Mul7lstm_2/while/TensorArrayV2Read/TensorListGetItem:item:0,lstm_2/while/lstm_cell_2/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_2/while/lstm_cell_2/mul_1á
lstm_2/while/lstm_cell_2/mul_2Mul7lstm_2/while/TensorArrayV2Read/TensorListGetItem:item:0,lstm_2/while/lstm_cell_2/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_2/while/lstm_cell_2/mul_2á
lstm_2/while/lstm_cell_2/mul_3Mul7lstm_2/while/TensorArrayV2Read/TensorListGetItem:item:0,lstm_2/while/lstm_cell_2/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_2/while/lstm_cell_2/mul_3
lstm_2/while/lstm_cell_2/ConstConst*
_output_shapes
: *
dtype0*
value	B :2 
lstm_2/while/lstm_cell_2/Const
(lstm_2/while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2*
(lstm_2/while/lstm_cell_2/split/split_dimÙ
-lstm_2/while/lstm_cell_2/split/ReadVariableOpReadVariableOp8lstm_2_while_lstm_cell_2_split_readvariableop_resource_0* 
_output_shapes
:
*
dtype02/
-lstm_2/while/lstm_cell_2/split/ReadVariableOp
lstm_2/while/lstm_cell_2/splitSplit1lstm_2/while/lstm_cell_2/split/split_dim:output:05lstm_2/while/lstm_cell_2/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
Ä:
Ä:
Ä:
Ä*
	num_split2 
lstm_2/while/lstm_cell_2/splitÊ
lstm_2/while/lstm_cell_2/MatMulMatMul lstm_2/while/lstm_cell_2/mul:z:0'lstm_2/while/lstm_cell_2/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2!
lstm_2/while/lstm_cell_2/MatMulÐ
!lstm_2/while/lstm_cell_2/MatMul_1MatMul"lstm_2/while/lstm_cell_2/mul_1:z:0'lstm_2/while/lstm_cell_2/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2#
!lstm_2/while/lstm_cell_2/MatMul_1Ð
!lstm_2/while/lstm_cell_2/MatMul_2MatMul"lstm_2/while/lstm_cell_2/mul_2:z:0'lstm_2/while/lstm_cell_2/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2#
!lstm_2/while/lstm_cell_2/MatMul_2Ð
!lstm_2/while/lstm_cell_2/MatMul_3MatMul"lstm_2/while/lstm_cell_2/mul_3:z:0'lstm_2/while/lstm_cell_2/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2#
!lstm_2/while/lstm_cell_2/MatMul_3
 lstm_2/while/lstm_cell_2/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2"
 lstm_2/while/lstm_cell_2/Const_1
*lstm_2/while/lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2,
*lstm_2/while/lstm_cell_2/split_1/split_dimÚ
/lstm_2/while/lstm_cell_2/split_1/ReadVariableOpReadVariableOp:lstm_2_while_lstm_cell_2_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype021
/lstm_2/while/lstm_cell_2/split_1/ReadVariableOp
 lstm_2/while/lstm_cell_2/split_1Split3lstm_2/while/lstm_cell_2/split_1/split_dim:output:07lstm_2/while/lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ä:Ä:Ä:Ä*
	num_split2"
 lstm_2/while/lstm_cell_2/split_1Ø
 lstm_2/while/lstm_cell_2/BiasAddBiasAdd)lstm_2/while/lstm_cell_2/MatMul:product:0)lstm_2/while/lstm_cell_2/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2"
 lstm_2/while/lstm_cell_2/BiasAddÞ
"lstm_2/while/lstm_cell_2/BiasAdd_1BiasAdd+lstm_2/while/lstm_cell_2/MatMul_1:product:0)lstm_2/while/lstm_cell_2/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2$
"lstm_2/while/lstm_cell_2/BiasAdd_1Þ
"lstm_2/while/lstm_cell_2/BiasAdd_2BiasAdd+lstm_2/while/lstm_cell_2/MatMul_2:product:0)lstm_2/while/lstm_cell_2/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2$
"lstm_2/while/lstm_cell_2/BiasAdd_2Þ
"lstm_2/while/lstm_cell_2/BiasAdd_3BiasAdd+lstm_2/while/lstm_cell_2/MatMul_3:product:0)lstm_2/while/lstm_cell_2/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2$
"lstm_2/while/lstm_cell_2/BiasAdd_3Ä
lstm_2/while/lstm_cell_2/mul_4Mullstm_2_while_placeholder_2,lstm_2/while/lstm_cell_2/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2 
lstm_2/while/lstm_cell_2/mul_4Ä
lstm_2/while/lstm_cell_2/mul_5Mullstm_2_while_placeholder_2,lstm_2/while/lstm_cell_2/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2 
lstm_2/while/lstm_cell_2/mul_5Ä
lstm_2/while/lstm_cell_2/mul_6Mullstm_2_while_placeholder_2,lstm_2/while/lstm_cell_2/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2 
lstm_2/while/lstm_cell_2/mul_6Ä
lstm_2/while/lstm_cell_2/mul_7Mullstm_2_while_placeholder_2,lstm_2/while/lstm_cell_2/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2 
lstm_2/while/lstm_cell_2/mul_7Ç
'lstm_2/while/lstm_cell_2/ReadVariableOpReadVariableOp2lstm_2_while_lstm_cell_2_readvariableop_resource_0* 
_output_shapes
:
Ä*
dtype02)
'lstm_2/while/lstm_cell_2/ReadVariableOp­
,lstm_2/while/lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2.
,lstm_2/while/lstm_cell_2/strided_slice/stack±
.lstm_2/while/lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ä   20
.lstm_2/while/lstm_cell_2/strided_slice/stack_1±
.lstm_2/while/lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      20
.lstm_2/while/lstm_cell_2/strided_slice/stack_2
&lstm_2/while/lstm_cell_2/strided_sliceStridedSlice/lstm_2/while/lstm_cell_2/ReadVariableOp:value:05lstm_2/while/lstm_cell_2/strided_slice/stack:output:07lstm_2/while/lstm_cell_2/strided_slice/stack_1:output:07lstm_2/while/lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2(
&lstm_2/while/lstm_cell_2/strided_sliceØ
!lstm_2/while/lstm_cell_2/MatMul_4MatMul"lstm_2/while/lstm_cell_2/mul_4:z:0/lstm_2/while/lstm_cell_2/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2#
!lstm_2/while/lstm_cell_2/MatMul_4Ð
lstm_2/while/lstm_cell_2/addAddV2)lstm_2/while/lstm_cell_2/BiasAdd:output:0+lstm_2/while/lstm_cell_2/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/while/lstm_cell_2/add¤
 lstm_2/while/lstm_cell_2/SigmoidSigmoid lstm_2/while/lstm_cell_2/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2"
 lstm_2/while/lstm_cell_2/SigmoidË
)lstm_2/while/lstm_cell_2/ReadVariableOp_1ReadVariableOp2lstm_2_while_lstm_cell_2_readvariableop_resource_0* 
_output_shapes
:
Ä*
dtype02+
)lstm_2/while/lstm_cell_2/ReadVariableOp_1±
.lstm_2/while/lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ä   20
.lstm_2/while/lstm_cell_2/strided_slice_1/stackµ
0lstm_2/while/lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_2/while/lstm_cell_2/strided_slice_1/stack_1µ
0lstm_2/while/lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_2/while/lstm_cell_2/strided_slice_1/stack_2 
(lstm_2/while/lstm_cell_2/strided_slice_1StridedSlice1lstm_2/while/lstm_cell_2/ReadVariableOp_1:value:07lstm_2/while/lstm_cell_2/strided_slice_1/stack:output:09lstm_2/while/lstm_cell_2/strided_slice_1/stack_1:output:09lstm_2/while/lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2*
(lstm_2/while/lstm_cell_2/strided_slice_1Ú
!lstm_2/while/lstm_cell_2/MatMul_5MatMul"lstm_2/while/lstm_cell_2/mul_5:z:01lstm_2/while/lstm_cell_2/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2#
!lstm_2/while/lstm_cell_2/MatMul_5Ö
lstm_2/while/lstm_cell_2/add_1AddV2+lstm_2/while/lstm_cell_2/BiasAdd_1:output:0+lstm_2/while/lstm_cell_2/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2 
lstm_2/while/lstm_cell_2/add_1ª
"lstm_2/while/lstm_cell_2/Sigmoid_1Sigmoid"lstm_2/while/lstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2$
"lstm_2/while/lstm_cell_2/Sigmoid_1¾
lstm_2/while/lstm_cell_2/mul_8Mul&lstm_2/while/lstm_cell_2/Sigmoid_1:y:0lstm_2_while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2 
lstm_2/while/lstm_cell_2/mul_8Ë
)lstm_2/while/lstm_cell_2/ReadVariableOp_2ReadVariableOp2lstm_2_while_lstm_cell_2_readvariableop_resource_0* 
_output_shapes
:
Ä*
dtype02+
)lstm_2/while/lstm_cell_2/ReadVariableOp_2±
.lstm_2/while/lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      20
.lstm_2/while/lstm_cell_2/strided_slice_2/stackµ
0lstm_2/while/lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  22
0lstm_2/while/lstm_cell_2/strided_slice_2/stack_1µ
0lstm_2/while/lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_2/while/lstm_cell_2/strided_slice_2/stack_2 
(lstm_2/while/lstm_cell_2/strided_slice_2StridedSlice1lstm_2/while/lstm_cell_2/ReadVariableOp_2:value:07lstm_2/while/lstm_cell_2/strided_slice_2/stack:output:09lstm_2/while/lstm_cell_2/strided_slice_2/stack_1:output:09lstm_2/while/lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2*
(lstm_2/while/lstm_cell_2/strided_slice_2Ú
!lstm_2/while/lstm_cell_2/MatMul_6MatMul"lstm_2/while/lstm_cell_2/mul_6:z:01lstm_2/while/lstm_cell_2/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2#
!lstm_2/while/lstm_cell_2/MatMul_6Ö
lstm_2/while/lstm_cell_2/add_2AddV2+lstm_2/while/lstm_cell_2/BiasAdd_2:output:0+lstm_2/while/lstm_cell_2/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2 
lstm_2/while/lstm_cell_2/add_2
lstm_2/while/lstm_cell_2/TanhTanh"lstm_2/while/lstm_cell_2/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/while/lstm_cell_2/TanhÃ
lstm_2/while/lstm_cell_2/mul_9Mul$lstm_2/while/lstm_cell_2/Sigmoid:y:0!lstm_2/while/lstm_cell_2/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2 
lstm_2/while/lstm_cell_2/mul_9Ä
lstm_2/while/lstm_cell_2/add_3AddV2"lstm_2/while/lstm_cell_2/mul_8:z:0"lstm_2/while/lstm_cell_2/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2 
lstm_2/while/lstm_cell_2/add_3Ë
)lstm_2/while/lstm_cell_2/ReadVariableOp_3ReadVariableOp2lstm_2_while_lstm_cell_2_readvariableop_resource_0* 
_output_shapes
:
Ä*
dtype02+
)lstm_2/while/lstm_cell_2/ReadVariableOp_3±
.lstm_2/while/lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  20
.lstm_2/while/lstm_cell_2/strided_slice_3/stackµ
0lstm_2/while/lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        22
0lstm_2/while/lstm_cell_2/strided_slice_3/stack_1µ
0lstm_2/while/lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      22
0lstm_2/while/lstm_cell_2/strided_slice_3/stack_2 
(lstm_2/while/lstm_cell_2/strided_slice_3StridedSlice1lstm_2/while/lstm_cell_2/ReadVariableOp_3:value:07lstm_2/while/lstm_cell_2/strided_slice_3/stack:output:09lstm_2/while/lstm_cell_2/strided_slice_3/stack_1:output:09lstm_2/while/lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2*
(lstm_2/while/lstm_cell_2/strided_slice_3Ú
!lstm_2/while/lstm_cell_2/MatMul_7MatMul"lstm_2/while/lstm_cell_2/mul_7:z:01lstm_2/while/lstm_cell_2/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2#
!lstm_2/while/lstm_cell_2/MatMul_7Ö
lstm_2/while/lstm_cell_2/add_4AddV2+lstm_2/while/lstm_cell_2/BiasAdd_3:output:0+lstm_2/while/lstm_cell_2/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2 
lstm_2/while/lstm_cell_2/add_4ª
"lstm_2/while/lstm_cell_2/Sigmoid_2Sigmoid"lstm_2/while/lstm_cell_2/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2$
"lstm_2/while/lstm_cell_2/Sigmoid_2¡
lstm_2/while/lstm_cell_2/Tanh_1Tanh"lstm_2/while/lstm_cell_2/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2!
lstm_2/while/lstm_cell_2/Tanh_1É
lstm_2/while/lstm_cell_2/mul_10Mul&lstm_2/while/lstm_cell_2/Sigmoid_2:y:0#lstm_2/while/lstm_cell_2/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2!
lstm_2/while/lstm_cell_2/mul_10
1lstm_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemlstm_2_while_placeholder_1lstm_2_while_placeholder#lstm_2/while/lstm_cell_2/mul_10:z:0*
_output_shapes
: *
element_dtype023
1lstm_2/while/TensorArrayV2Write/TensorListSetItemj
lstm_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_2/while/add/y
lstm_2/while/addAddV2lstm_2_while_placeholderlstm_2/while/add/y:output:0*
T0*
_output_shapes
: 2
lstm_2/while/addn
lstm_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_2/while/add_1/y
lstm_2/while/add_1AddV2&lstm_2_while_lstm_2_while_loop_counterlstm_2/while/add_1/y:output:0*
T0*
_output_shapes
: 2
lstm_2/while/add_1
lstm_2/while/IdentityIdentitylstm_2/while/add_1:z:0(^lstm_2/while/lstm_cell_2/ReadVariableOp*^lstm_2/while/lstm_cell_2/ReadVariableOp_1*^lstm_2/while/lstm_cell_2/ReadVariableOp_2*^lstm_2/while/lstm_cell_2/ReadVariableOp_3.^lstm_2/while/lstm_cell_2/split/ReadVariableOp0^lstm_2/while/lstm_cell_2/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity
lstm_2/while/Identity_1Identity,lstm_2_while_lstm_2_while_maximum_iterations(^lstm_2/while/lstm_cell_2/ReadVariableOp*^lstm_2/while/lstm_cell_2/ReadVariableOp_1*^lstm_2/while/lstm_cell_2/ReadVariableOp_2*^lstm_2/while/lstm_cell_2/ReadVariableOp_3.^lstm_2/while/lstm_cell_2/split/ReadVariableOp0^lstm_2/while/lstm_cell_2/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity_1
lstm_2/while/Identity_2Identitylstm_2/while/add:z:0(^lstm_2/while/lstm_cell_2/ReadVariableOp*^lstm_2/while/lstm_cell_2/ReadVariableOp_1*^lstm_2/while/lstm_cell_2/ReadVariableOp_2*^lstm_2/while/lstm_cell_2/ReadVariableOp_3.^lstm_2/while/lstm_cell_2/split/ReadVariableOp0^lstm_2/while/lstm_cell_2/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity_2²
lstm_2/while/Identity_3IdentityAlstm_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:0(^lstm_2/while/lstm_cell_2/ReadVariableOp*^lstm_2/while/lstm_cell_2/ReadVariableOp_1*^lstm_2/while/lstm_cell_2/ReadVariableOp_2*^lstm_2/while/lstm_cell_2/ReadVariableOp_3.^lstm_2/while/lstm_cell_2/split/ReadVariableOp0^lstm_2/while/lstm_cell_2/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
lstm_2/while/Identity_3¦
lstm_2/while/Identity_4Identity#lstm_2/while/lstm_cell_2/mul_10:z:0(^lstm_2/while/lstm_cell_2/ReadVariableOp*^lstm_2/while/lstm_cell_2/ReadVariableOp_1*^lstm_2/while/lstm_cell_2/ReadVariableOp_2*^lstm_2/while/lstm_cell_2/ReadVariableOp_3.^lstm_2/while/lstm_cell_2/split/ReadVariableOp0^lstm_2/while/lstm_cell_2/split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/while/Identity_4¥
lstm_2/while/Identity_5Identity"lstm_2/while/lstm_cell_2/add_3:z:0(^lstm_2/while/lstm_cell_2/ReadVariableOp*^lstm_2/while/lstm_cell_2/ReadVariableOp_1*^lstm_2/while/lstm_cell_2/ReadVariableOp_2*^lstm_2/while/lstm_cell_2/ReadVariableOp_3.^lstm_2/while/lstm_cell_2/split/ReadVariableOp0^lstm_2/while/lstm_cell_2/split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/while/Identity_5"7
lstm_2_while_identitylstm_2/while/Identity:output:0";
lstm_2_while_identity_1 lstm_2/while/Identity_1:output:0";
lstm_2_while_identity_2 lstm_2/while/Identity_2:output:0";
lstm_2_while_identity_3 lstm_2/while/Identity_3:output:0";
lstm_2_while_identity_4 lstm_2/while/Identity_4:output:0";
lstm_2_while_identity_5 lstm_2/while/Identity_5:output:0"L
#lstm_2_while_lstm_2_strided_slice_1%lstm_2_while_lstm_2_strided_slice_1_0"f
0lstm_2_while_lstm_cell_2_readvariableop_resource2lstm_2_while_lstm_cell_2_readvariableop_resource_0"v
8lstm_2_while_lstm_cell_2_split_1_readvariableop_resource:lstm_2_while_lstm_cell_2_split_1_readvariableop_resource_0"r
6lstm_2_while_lstm_cell_2_split_readvariableop_resource8lstm_2_while_lstm_cell_2_split_readvariableop_resource_0"Ä
_lstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensoralstm_2_while_tensorarrayv2read_tensorlistgetitem_lstm_2_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ: : :::2R
'lstm_2/while/lstm_cell_2/ReadVariableOp'lstm_2/while/lstm_cell_2/ReadVariableOp2V
)lstm_2/while/lstm_cell_2/ReadVariableOp_1)lstm_2/while/lstm_cell_2/ReadVariableOp_12V
)lstm_2/while/lstm_cell_2/ReadVariableOp_2)lstm_2/while/lstm_cell_2/ReadVariableOp_22V
)lstm_2/while/lstm_cell_2/ReadVariableOp_3)lstm_2/while/lstm_cell_2/ReadVariableOp_32^
-lstm_2/while/lstm_cell_2/split/ReadVariableOp-lstm_2/while/lstm_cell_2/split/ReadVariableOp2b
/lstm_2/while/lstm_cell_2/split_1/ReadVariableOp/lstm_2/while/lstm_cell_2/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ:

_output_shapes
: :

_output_shapes
: 
©
Æ
while_body_569081
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_05
1while_lstm_cell_2_split_readvariableop_resource_07
3while_lstm_cell_2_split_1_readvariableop_resource_0/
+while_lstm_cell_2_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor3
/while_lstm_cell_2_split_readvariableop_resource5
1while_lstm_cell_2_split_1_readvariableop_resource-
)while_lstm_cell_2_readvariableop_resource¢ while/lstm_cell_2/ReadVariableOp¢"while/lstm_cell_2/ReadVariableOp_1¢"while/lstm_cell_2/ReadVariableOp_2¢"while/lstm_cell_2/ReadVariableOp_3¢&while/lstm_cell_2/split/ReadVariableOp¢(while/lstm_cell_2/split_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÔ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem¦
!while/lstm_cell_2/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_2/ones_like/Shape
!while/lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2#
!while/lstm_cell_2/ones_like/ConstÍ
while/lstm_cell_2/ones_likeFill*while/lstm_cell_2/ones_like/Shape:output:0*while/lstm_cell_2/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_2/ones_like
#while/lstm_cell_2/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_2/ones_like_1/Shape
#while/lstm_cell_2/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#while/lstm_cell_2/ones_like_1/ConstÕ
while/lstm_cell_2/ones_like_1Fill,while/lstm_cell_2/ones_like_1/Shape:output:0,while/lstm_cell_2/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/ones_like_1À
while/lstm_cell_2/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_2/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_2/mulÄ
while/lstm_cell_2/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_2/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_2/mul_1Ä
while/lstm_cell_2/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_2/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_2/mul_2Ä
while/lstm_cell_2/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_2/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_2/mul_3t
while/lstm_cell_2/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_2/Const
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_2/split/split_dimÄ
&while/lstm_cell_2/split/ReadVariableOpReadVariableOp1while_lstm_cell_2_split_readvariableop_resource_0* 
_output_shapes
:
*
dtype02(
&while/lstm_cell_2/split/ReadVariableOp÷
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0.while/lstm_cell_2/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
Ä:
Ä:
Ä:
Ä*
	num_split2
while/lstm_cell_2/split®
while/lstm_cell_2/MatMulMatMulwhile/lstm_cell_2/mul:z:0 while/lstm_cell_2/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/MatMul´
while/lstm_cell_2/MatMul_1MatMulwhile/lstm_cell_2/mul_1:z:0 while/lstm_cell_2/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/MatMul_1´
while/lstm_cell_2/MatMul_2MatMulwhile/lstm_cell_2/mul_2:z:0 while/lstm_cell_2/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/MatMul_2´
while/lstm_cell_2/MatMul_3MatMulwhile/lstm_cell_2/mul_3:z:0 while/lstm_cell_2/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/MatMul_3x
while/lstm_cell_2/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_2/Const_1
#while/lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_2/split_1/split_dimÅ
(while/lstm_cell_2/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_2_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02*
(while/lstm_cell_2/split_1/ReadVariableOpë
while/lstm_cell_2/split_1Split,while/lstm_cell_2/split_1/split_dim:output:00while/lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ä:Ä:Ä:Ä*
	num_split2
while/lstm_cell_2/split_1¼
while/lstm_cell_2/BiasAddBiasAdd"while/lstm_cell_2/MatMul:product:0"while/lstm_cell_2/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/BiasAddÂ
while/lstm_cell_2/BiasAdd_1BiasAdd$while/lstm_cell_2/MatMul_1:product:0"while/lstm_cell_2/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/BiasAdd_1Â
while/lstm_cell_2/BiasAdd_2BiasAdd$while/lstm_cell_2/MatMul_2:product:0"while/lstm_cell_2/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/BiasAdd_2Â
while/lstm_cell_2/BiasAdd_3BiasAdd$while/lstm_cell_2/MatMul_3:product:0"while/lstm_cell_2/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/BiasAdd_3©
while/lstm_cell_2/mul_4Mulwhile_placeholder_2&while/lstm_cell_2/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/mul_4©
while/lstm_cell_2/mul_5Mulwhile_placeholder_2&while/lstm_cell_2/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/mul_5©
while/lstm_cell_2/mul_6Mulwhile_placeholder_2&while/lstm_cell_2/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/mul_6©
while/lstm_cell_2/mul_7Mulwhile_placeholder_2&while/lstm_cell_2/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/mul_7²
 while/lstm_cell_2/ReadVariableOpReadVariableOp+while_lstm_cell_2_readvariableop_resource_0* 
_output_shapes
:
Ä*
dtype02"
 while/lstm_cell_2/ReadVariableOp
%while/lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_2/strided_slice/stack£
'while/lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ä   2)
'while/lstm_cell_2/strided_slice/stack_1£
'while/lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_2/strided_slice/stack_2ê
while/lstm_cell_2/strided_sliceStridedSlice(while/lstm_cell_2/ReadVariableOp:value:0.while/lstm_cell_2/strided_slice/stack:output:00while/lstm_cell_2/strided_slice/stack_1:output:00while/lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2!
while/lstm_cell_2/strided_slice¼
while/lstm_cell_2/MatMul_4MatMulwhile/lstm_cell_2/mul_4:z:0(while/lstm_cell_2/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/MatMul_4´
while/lstm_cell_2/addAddV2"while/lstm_cell_2/BiasAdd:output:0$while/lstm_cell_2/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/add
while/lstm_cell_2/SigmoidSigmoidwhile/lstm_cell_2/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/Sigmoid¶
"while/lstm_cell_2/ReadVariableOp_1ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0* 
_output_shapes
:
Ä*
dtype02$
"while/lstm_cell_2/ReadVariableOp_1£
'while/lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ä   2)
'while/lstm_cell_2/strided_slice_1/stack§
)while/lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_2/strided_slice_1/stack_1§
)while/lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_2/strided_slice_1/stack_2ö
!while/lstm_cell_2/strided_slice_1StridedSlice*while/lstm_cell_2/ReadVariableOp_1:value:00while/lstm_cell_2/strided_slice_1/stack:output:02while/lstm_cell_2/strided_slice_1/stack_1:output:02while/lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2#
!while/lstm_cell_2/strided_slice_1¾
while/lstm_cell_2/MatMul_5MatMulwhile/lstm_cell_2/mul_5:z:0*while/lstm_cell_2/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/MatMul_5º
while/lstm_cell_2/add_1AddV2$while/lstm_cell_2/BiasAdd_1:output:0$while/lstm_cell_2/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/add_1
while/lstm_cell_2/Sigmoid_1Sigmoidwhile/lstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/Sigmoid_1¢
while/lstm_cell_2/mul_8Mulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/mul_8¶
"while/lstm_cell_2/ReadVariableOp_2ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0* 
_output_shapes
:
Ä*
dtype02$
"while/lstm_cell_2/ReadVariableOp_2£
'while/lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_2/strided_slice_2/stack§
)while/lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2+
)while/lstm_cell_2/strided_slice_2/stack_1§
)while/lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_2/strided_slice_2/stack_2ö
!while/lstm_cell_2/strided_slice_2StridedSlice*while/lstm_cell_2/ReadVariableOp_2:value:00while/lstm_cell_2/strided_slice_2/stack:output:02while/lstm_cell_2/strided_slice_2/stack_1:output:02while/lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2#
!while/lstm_cell_2/strided_slice_2¾
while/lstm_cell_2/MatMul_6MatMulwhile/lstm_cell_2/mul_6:z:0*while/lstm_cell_2/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/MatMul_6º
while/lstm_cell_2/add_2AddV2$while/lstm_cell_2/BiasAdd_2:output:0$while/lstm_cell_2/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/add_2
while/lstm_cell_2/TanhTanhwhile/lstm_cell_2/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/Tanh§
while/lstm_cell_2/mul_9Mulwhile/lstm_cell_2/Sigmoid:y:0while/lstm_cell_2/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/mul_9¨
while/lstm_cell_2/add_3AddV2while/lstm_cell_2/mul_8:z:0while/lstm_cell_2/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/add_3¶
"while/lstm_cell_2/ReadVariableOp_3ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0* 
_output_shapes
:
Ä*
dtype02$
"while/lstm_cell_2/ReadVariableOp_3£
'while/lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2)
'while/lstm_cell_2/strided_slice_3/stack§
)while/lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_2/strided_slice_3/stack_1§
)while/lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_2/strided_slice_3/stack_2ö
!while/lstm_cell_2/strided_slice_3StridedSlice*while/lstm_cell_2/ReadVariableOp_3:value:00while/lstm_cell_2/strided_slice_3/stack:output:02while/lstm_cell_2/strided_slice_3/stack_1:output:02while/lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2#
!while/lstm_cell_2/strided_slice_3¾
while/lstm_cell_2/MatMul_7MatMulwhile/lstm_cell_2/mul_7:z:0*while/lstm_cell_2/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/MatMul_7º
while/lstm_cell_2/add_4AddV2$while/lstm_cell_2/BiasAdd_3:output:0$while/lstm_cell_2/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/add_4
while/lstm_cell_2/Sigmoid_2Sigmoidwhile/lstm_cell_2/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/Sigmoid_2
while/lstm_cell_2/Tanh_1Tanhwhile/lstm_cell_2/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/Tanh_1­
while/lstm_cell_2/mul_10Mulwhile/lstm_cell_2/Sigmoid_2:y:0while/lstm_cell_2/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/mul_10à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Ä
while/IdentityIdentitywhile/add_1:z:0!^while/lstm_cell_2/ReadVariableOp#^while/lstm_cell_2/ReadVariableOp_1#^while/lstm_cell_2/ReadVariableOp_2#^while/lstm_cell_2/ReadVariableOp_3'^while/lstm_cell_2/split/ReadVariableOp)^while/lstm_cell_2/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity×
while/Identity_1Identitywhile_while_maximum_iterations!^while/lstm_cell_2/ReadVariableOp#^while/lstm_cell_2/ReadVariableOp_1#^while/lstm_cell_2/ReadVariableOp_2#^while/lstm_cell_2/ReadVariableOp_3'^while/lstm_cell_2/split/ReadVariableOp)^while/lstm_cell_2/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Æ
while/Identity_2Identitywhile/add:z:0!^while/lstm_cell_2/ReadVariableOp#^while/lstm_cell_2/ReadVariableOp_1#^while/lstm_cell_2/ReadVariableOp_2#^while/lstm_cell_2/ReadVariableOp_3'^while/lstm_cell_2/split/ReadVariableOp)^while/lstm_cell_2/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2ó
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^while/lstm_cell_2/ReadVariableOp#^while/lstm_cell_2/ReadVariableOp_1#^while/lstm_cell_2/ReadVariableOp_2#^while/lstm_cell_2/ReadVariableOp_3'^while/lstm_cell_2/split/ReadVariableOp)^while/lstm_cell_2/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3ç
while/Identity_4Identitywhile/lstm_cell_2/mul_10:z:0!^while/lstm_cell_2/ReadVariableOp#^while/lstm_cell_2/ReadVariableOp_1#^while/lstm_cell_2/ReadVariableOp_2#^while/lstm_cell_2/ReadVariableOp_3'^while/lstm_cell_2/split/ReadVariableOp)^while/lstm_cell_2/split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/Identity_4æ
while/Identity_5Identitywhile/lstm_cell_2/add_3:z:0!^while/lstm_cell_2/ReadVariableOp#^while/lstm_cell_2/ReadVariableOp_1#^while/lstm_cell_2/ReadVariableOp_2#^while/lstm_cell_2/ReadVariableOp_3'^while/lstm_cell_2/split/ReadVariableOp)^while/lstm_cell_2/split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_2_readvariableop_resource+while_lstm_cell_2_readvariableop_resource_0"h
1while_lstm_cell_2_split_1_readvariableop_resource3while_lstm_cell_2_split_1_readvariableop_resource_0"d
/while_lstm_cell_2_split_readvariableop_resource1while_lstm_cell_2_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ: : :::2D
 while/lstm_cell_2/ReadVariableOp while/lstm_cell_2/ReadVariableOp2H
"while/lstm_cell_2/ReadVariableOp_1"while/lstm_cell_2/ReadVariableOp_12H
"while/lstm_cell_2/ReadVariableOp_2"while/lstm_cell_2/ReadVariableOp_22H
"while/lstm_cell_2/ReadVariableOp_3"while/lstm_cell_2/ReadVariableOp_32P
&while/lstm_cell_2/split/ReadVariableOp&while/lstm_cell_2/split/ReadVariableOp2T
(while/lstm_cell_2/split_1/ReadVariableOp(while/lstm_cell_2/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ:

_output_shapes
: :

_output_shapes
: 
Ì
r
,__inference_embedding_2_layer_call_fn_570131

inputs
unknown
identity¢StatefulPartitionedCallï
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_2_layer_call_and_return_conditional_losses_5685302
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2

Identity"
identityIdentity:output:0**
_input_shapes
:ÿÿÿÿÿÿÿÿÿB:22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB
 
_user_specified_nameinputs
ø	
Ü
C__inference_dense_2_layer_call_and_return_conditional_losses_569258

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	Ä*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿÄ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ
 
_user_specified_nameinputs
ª
m
O__inference_spatial_dropout1d_2_layer_call_and_return_conditional_losses_567737

inputs

identity_1p
IdentityIdentityinputs*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1IdentityIdentity:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¯
Ã
while_cond_569080
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_569080___redundant_placeholder04
0while_while_cond_569080___redundant_placeholder14
0while_while_cond_569080___redundant_placeholder24
0while_while_cond_569080___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ:

_output_shapes
: :

_output_shapes
:


Ï
lstm_2_while_cond_569936*
&lstm_2_while_lstm_2_while_loop_counter0
,lstm_2_while_lstm_2_while_maximum_iterations
lstm_2_while_placeholder
lstm_2_while_placeholder_1
lstm_2_while_placeholder_2
lstm_2_while_placeholder_3,
(lstm_2_while_less_lstm_2_strided_slice_1B
>lstm_2_while_lstm_2_while_cond_569936___redundant_placeholder0B
>lstm_2_while_lstm_2_while_cond_569936___redundant_placeholder1B
>lstm_2_while_lstm_2_while_cond_569936___redundant_placeholder2B
>lstm_2_while_lstm_2_while_cond_569936___redundant_placeholder3
lstm_2_while_identity

lstm_2/while/LessLesslstm_2_while_placeholder(lstm_2_while_less_lstm_2_strided_slice_1*
T0*
_output_shapes
: 2
lstm_2/while/Lessr
lstm_2/while/IdentityIdentitylstm_2/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_2/while/Identity"7
lstm_2_while_identitylstm_2/while/Identity:output:0*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ:

_output_shapes
: :

_output_shapes
:
¯
Ã
while_cond_570387
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_570387___redundant_placeholder04
0while_while_cond_570387___redundant_placeholder14
0while_while_cond_570387___redundant_placeholder24
0while_while_cond_570387___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ:

_output_shapes
: :

_output_shapes
:
¾
÷
H__inference_sequential_4_layer_call_and_return_conditional_losses_569318

inputs
embedding_2_569301
lstm_2_569305
lstm_2_569307
lstm_2_569309
dense_2_569312
dense_2_569314
identity¢dense_2/StatefulPartitionedCall¢#embedding_2/StatefulPartitionedCall¢lstm_2/StatefulPartitionedCall¢+spatial_dropout1d_2/StatefulPartitionedCall
#embedding_2/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_2_569301*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_2_layer_call_and_return_conditional_losses_5685302%
#embedding_2/StatefulPartitionedCall¸
+spatial_dropout1d_2/StatefulPartitionedCallStatefulPartitionedCall,embedding_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_spatial_dropout1d_2_layer_call_and_return_conditional_losses_5685632-
+spatial_dropout1d_2/StatefulPartitionedCallÊ
lstm_2/StatefulPartitionedCallStatefulPartitionedCall4spatial_dropout1d_2/StatefulPartitionedCall:output:0lstm_2_569305lstm_2_569307lstm_2_569309*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_5689622 
lstm_2/StatefulPartitionedCall°
dense_2/StatefulPartitionedCallStatefulPartitionedCall'lstm_2/StatefulPartitionedCall:output:0dense_2_569312dense_2_569314*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_5692582!
dense_2/StatefulPartitionedCall
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0 ^dense_2/StatefulPartitionedCall$^embedding_2/StatefulPartitionedCall^lstm_2/StatefulPartitionedCall,^spatial_dropout1d_2/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿB::::::2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2@
lstm_2/StatefulPartitionedCalllstm_2/StatefulPartitionedCall2Z
+spatial_dropout1d_2/StatefulPartitionedCall+spatial_dropout1d_2/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB
 
_user_specified_nameinputs

m
4__inference_spatial_dropout1d_2_layer_call_fn_570163

inputs
identity¢StatefulPartitionedCallû
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_spatial_dropout1d_2_layer_call_and_return_conditional_losses_5677272
StatefulPartitionedCall¤
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
È
m
4__inference_spatial_dropout1d_2_layer_call_fn_570200

inputs
identity¢StatefulPartitionedCallê
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_spatial_dropout1d_2_layer_call_and_return_conditional_losses_5685632
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2

Identity"
identityIdentity:output:0*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿB22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB
 
_user_specified_nameinputs


'__inference_lstm_2_layer_call_fn_570865
inputs_0
unknown
	unknown_0
	unknown_1
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_5685072
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0


'__inference_lstm_2_layer_call_fn_571525

inputs
unknown
	unknown_0
	unknown_1
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_5692172
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿB:::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB
 
_user_specified_nameinputs
©
Æ
while_body_571367
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_05
1while_lstm_cell_2_split_readvariableop_resource_07
3while_lstm_cell_2_split_1_readvariableop_resource_0/
+while_lstm_cell_2_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor3
/while_lstm_cell_2_split_readvariableop_resource5
1while_lstm_cell_2_split_1_readvariableop_resource-
)while_lstm_cell_2_readvariableop_resource¢ while/lstm_cell_2/ReadVariableOp¢"while/lstm_cell_2/ReadVariableOp_1¢"while/lstm_cell_2/ReadVariableOp_2¢"while/lstm_cell_2/ReadVariableOp_3¢&while/lstm_cell_2/split/ReadVariableOp¢(while/lstm_cell_2/split_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÔ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem¦
!while/lstm_cell_2/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_2/ones_like/Shape
!while/lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2#
!while/lstm_cell_2/ones_like/ConstÍ
while/lstm_cell_2/ones_likeFill*while/lstm_cell_2/ones_like/Shape:output:0*while/lstm_cell_2/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_2/ones_like
#while/lstm_cell_2/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_2/ones_like_1/Shape
#while/lstm_cell_2/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#while/lstm_cell_2/ones_like_1/ConstÕ
while/lstm_cell_2/ones_like_1Fill,while/lstm_cell_2/ones_like_1/Shape:output:0,while/lstm_cell_2/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/ones_like_1À
while/lstm_cell_2/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_2/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_2/mulÄ
while/lstm_cell_2/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_2/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_2/mul_1Ä
while/lstm_cell_2/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_2/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_2/mul_2Ä
while/lstm_cell_2/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_2/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_2/mul_3t
while/lstm_cell_2/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_2/Const
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_2/split/split_dimÄ
&while/lstm_cell_2/split/ReadVariableOpReadVariableOp1while_lstm_cell_2_split_readvariableop_resource_0* 
_output_shapes
:
*
dtype02(
&while/lstm_cell_2/split/ReadVariableOp÷
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0.while/lstm_cell_2/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
Ä:
Ä:
Ä:
Ä*
	num_split2
while/lstm_cell_2/split®
while/lstm_cell_2/MatMulMatMulwhile/lstm_cell_2/mul:z:0 while/lstm_cell_2/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/MatMul´
while/lstm_cell_2/MatMul_1MatMulwhile/lstm_cell_2/mul_1:z:0 while/lstm_cell_2/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/MatMul_1´
while/lstm_cell_2/MatMul_2MatMulwhile/lstm_cell_2/mul_2:z:0 while/lstm_cell_2/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/MatMul_2´
while/lstm_cell_2/MatMul_3MatMulwhile/lstm_cell_2/mul_3:z:0 while/lstm_cell_2/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/MatMul_3x
while/lstm_cell_2/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_2/Const_1
#while/lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_2/split_1/split_dimÅ
(while/lstm_cell_2/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_2_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02*
(while/lstm_cell_2/split_1/ReadVariableOpë
while/lstm_cell_2/split_1Split,while/lstm_cell_2/split_1/split_dim:output:00while/lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ä:Ä:Ä:Ä*
	num_split2
while/lstm_cell_2/split_1¼
while/lstm_cell_2/BiasAddBiasAdd"while/lstm_cell_2/MatMul:product:0"while/lstm_cell_2/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/BiasAddÂ
while/lstm_cell_2/BiasAdd_1BiasAdd$while/lstm_cell_2/MatMul_1:product:0"while/lstm_cell_2/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/BiasAdd_1Â
while/lstm_cell_2/BiasAdd_2BiasAdd$while/lstm_cell_2/MatMul_2:product:0"while/lstm_cell_2/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/BiasAdd_2Â
while/lstm_cell_2/BiasAdd_3BiasAdd$while/lstm_cell_2/MatMul_3:product:0"while/lstm_cell_2/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/BiasAdd_3©
while/lstm_cell_2/mul_4Mulwhile_placeholder_2&while/lstm_cell_2/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/mul_4©
while/lstm_cell_2/mul_5Mulwhile_placeholder_2&while/lstm_cell_2/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/mul_5©
while/lstm_cell_2/mul_6Mulwhile_placeholder_2&while/lstm_cell_2/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/mul_6©
while/lstm_cell_2/mul_7Mulwhile_placeholder_2&while/lstm_cell_2/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/mul_7²
 while/lstm_cell_2/ReadVariableOpReadVariableOp+while_lstm_cell_2_readvariableop_resource_0* 
_output_shapes
:
Ä*
dtype02"
 while/lstm_cell_2/ReadVariableOp
%while/lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_2/strided_slice/stack£
'while/lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ä   2)
'while/lstm_cell_2/strided_slice/stack_1£
'while/lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_2/strided_slice/stack_2ê
while/lstm_cell_2/strided_sliceStridedSlice(while/lstm_cell_2/ReadVariableOp:value:0.while/lstm_cell_2/strided_slice/stack:output:00while/lstm_cell_2/strided_slice/stack_1:output:00while/lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2!
while/lstm_cell_2/strided_slice¼
while/lstm_cell_2/MatMul_4MatMulwhile/lstm_cell_2/mul_4:z:0(while/lstm_cell_2/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/MatMul_4´
while/lstm_cell_2/addAddV2"while/lstm_cell_2/BiasAdd:output:0$while/lstm_cell_2/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/add
while/lstm_cell_2/SigmoidSigmoidwhile/lstm_cell_2/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/Sigmoid¶
"while/lstm_cell_2/ReadVariableOp_1ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0* 
_output_shapes
:
Ä*
dtype02$
"while/lstm_cell_2/ReadVariableOp_1£
'while/lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ä   2)
'while/lstm_cell_2/strided_slice_1/stack§
)while/lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_2/strided_slice_1/stack_1§
)while/lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_2/strided_slice_1/stack_2ö
!while/lstm_cell_2/strided_slice_1StridedSlice*while/lstm_cell_2/ReadVariableOp_1:value:00while/lstm_cell_2/strided_slice_1/stack:output:02while/lstm_cell_2/strided_slice_1/stack_1:output:02while/lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2#
!while/lstm_cell_2/strided_slice_1¾
while/lstm_cell_2/MatMul_5MatMulwhile/lstm_cell_2/mul_5:z:0*while/lstm_cell_2/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/MatMul_5º
while/lstm_cell_2/add_1AddV2$while/lstm_cell_2/BiasAdd_1:output:0$while/lstm_cell_2/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/add_1
while/lstm_cell_2/Sigmoid_1Sigmoidwhile/lstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/Sigmoid_1¢
while/lstm_cell_2/mul_8Mulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/mul_8¶
"while/lstm_cell_2/ReadVariableOp_2ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0* 
_output_shapes
:
Ä*
dtype02$
"while/lstm_cell_2/ReadVariableOp_2£
'while/lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_2/strided_slice_2/stack§
)while/lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2+
)while/lstm_cell_2/strided_slice_2/stack_1§
)while/lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_2/strided_slice_2/stack_2ö
!while/lstm_cell_2/strided_slice_2StridedSlice*while/lstm_cell_2/ReadVariableOp_2:value:00while/lstm_cell_2/strided_slice_2/stack:output:02while/lstm_cell_2/strided_slice_2/stack_1:output:02while/lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2#
!while/lstm_cell_2/strided_slice_2¾
while/lstm_cell_2/MatMul_6MatMulwhile/lstm_cell_2/mul_6:z:0*while/lstm_cell_2/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/MatMul_6º
while/lstm_cell_2/add_2AddV2$while/lstm_cell_2/BiasAdd_2:output:0$while/lstm_cell_2/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/add_2
while/lstm_cell_2/TanhTanhwhile/lstm_cell_2/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/Tanh§
while/lstm_cell_2/mul_9Mulwhile/lstm_cell_2/Sigmoid:y:0while/lstm_cell_2/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/mul_9¨
while/lstm_cell_2/add_3AddV2while/lstm_cell_2/mul_8:z:0while/lstm_cell_2/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/add_3¶
"while/lstm_cell_2/ReadVariableOp_3ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0* 
_output_shapes
:
Ä*
dtype02$
"while/lstm_cell_2/ReadVariableOp_3£
'while/lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2)
'while/lstm_cell_2/strided_slice_3/stack§
)while/lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_2/strided_slice_3/stack_1§
)while/lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_2/strided_slice_3/stack_2ö
!while/lstm_cell_2/strided_slice_3StridedSlice*while/lstm_cell_2/ReadVariableOp_3:value:00while/lstm_cell_2/strided_slice_3/stack:output:02while/lstm_cell_2/strided_slice_3/stack_1:output:02while/lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2#
!while/lstm_cell_2/strided_slice_3¾
while/lstm_cell_2/MatMul_7MatMulwhile/lstm_cell_2/mul_7:z:0*while/lstm_cell_2/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/MatMul_7º
while/lstm_cell_2/add_4AddV2$while/lstm_cell_2/BiasAdd_3:output:0$while/lstm_cell_2/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/add_4
while/lstm_cell_2/Sigmoid_2Sigmoidwhile/lstm_cell_2/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/Sigmoid_2
while/lstm_cell_2/Tanh_1Tanhwhile/lstm_cell_2/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/Tanh_1­
while/lstm_cell_2/mul_10Mulwhile/lstm_cell_2/Sigmoid_2:y:0while/lstm_cell_2/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/mul_10à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Ä
while/IdentityIdentitywhile/add_1:z:0!^while/lstm_cell_2/ReadVariableOp#^while/lstm_cell_2/ReadVariableOp_1#^while/lstm_cell_2/ReadVariableOp_2#^while/lstm_cell_2/ReadVariableOp_3'^while/lstm_cell_2/split/ReadVariableOp)^while/lstm_cell_2/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity×
while/Identity_1Identitywhile_while_maximum_iterations!^while/lstm_cell_2/ReadVariableOp#^while/lstm_cell_2/ReadVariableOp_1#^while/lstm_cell_2/ReadVariableOp_2#^while/lstm_cell_2/ReadVariableOp_3'^while/lstm_cell_2/split/ReadVariableOp)^while/lstm_cell_2/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Æ
while/Identity_2Identitywhile/add:z:0!^while/lstm_cell_2/ReadVariableOp#^while/lstm_cell_2/ReadVariableOp_1#^while/lstm_cell_2/ReadVariableOp_2#^while/lstm_cell_2/ReadVariableOp_3'^while/lstm_cell_2/split/ReadVariableOp)^while/lstm_cell_2/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2ó
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^while/lstm_cell_2/ReadVariableOp#^while/lstm_cell_2/ReadVariableOp_1#^while/lstm_cell_2/ReadVariableOp_2#^while/lstm_cell_2/ReadVariableOp_3'^while/lstm_cell_2/split/ReadVariableOp)^while/lstm_cell_2/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3ç
while/Identity_4Identitywhile/lstm_cell_2/mul_10:z:0!^while/lstm_cell_2/ReadVariableOp#^while/lstm_cell_2/ReadVariableOp_1#^while/lstm_cell_2/ReadVariableOp_2#^while/lstm_cell_2/ReadVariableOp_3'^while/lstm_cell_2/split/ReadVariableOp)^while/lstm_cell_2/split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/Identity_4æ
while/Identity_5Identitywhile/lstm_cell_2/add_3:z:0!^while/lstm_cell_2/ReadVariableOp#^while/lstm_cell_2/ReadVariableOp_1#^while/lstm_cell_2/ReadVariableOp_2#^while/lstm_cell_2/ReadVariableOp_3'^while/lstm_cell_2/split/ReadVariableOp)^while/lstm_cell_2/split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_2_readvariableop_resource+while_lstm_cell_2_readvariableop_resource_0"h
1while_lstm_cell_2_split_1_readvariableop_resource3while_lstm_cell_2_split_1_readvariableop_resource_0"d
/while_lstm_cell_2_split_readvariableop_resource1while_lstm_cell_2_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ: : :::2D
 while/lstm_cell_2/ReadVariableOp while/lstm_cell_2/ReadVariableOp2H
"while/lstm_cell_2/ReadVariableOp_1"while/lstm_cell_2/ReadVariableOp_12H
"while/lstm_cell_2/ReadVariableOp_2"while/lstm_cell_2/ReadVariableOp_22H
"while/lstm_cell_2/ReadVariableOp_3"while/lstm_cell_2/ReadVariableOp_32P
&while/lstm_cell_2/split/ReadVariableOp&while/lstm_cell_2/split/ReadVariableOp2T
(while/lstm_cell_2/split_1/ReadVariableOp(while/lstm_cell_2/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ:

_output_shapes
: :

_output_shapes
: 
ßD
×
B__inference_lstm_2_layer_call_and_return_conditional_losses_568507

inputs
lstm_cell_2_568425
lstm_cell_2_568427
lstm_cell_2_568429
identity¢#lstm_cell_2/StatefulPartitionedCall¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ä2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ä2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ä2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ä2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ý
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2
#lstm_cell_2/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_2_568425lstm_cell_2_568427lstm_cell_2_568429*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_5680122%
#lstm_cell_2/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÄ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter¤
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_2_568425lstm_cell_2_568427lstm_cell_2_568429*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_568438*
condR
while_cond_568437*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÄ   22
0TensorArrayV2Stack/TensorListStack/element_shapeò
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÄ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¯
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÄ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_2/StatefulPartitionedCall^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::2J
#lstm_cell_2/StatefulPartitionedCall#lstm_cell_2/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Å
Ì
,__inference_lstm_cell_2_layer_call_fn_571811

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2¢StatefulPartitionedCallÅ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_5680122
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*[
_input_shapesJ
H:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ:::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ
"
_user_specified_name
states/1
Å
Ì
,__inference_lstm_cell_2_layer_call_fn_571794

inputs
states_0
states_1
unknown
	unknown_0
	unknown_1
identity

identity_1

identity_2¢StatefulPartitionedCallÅ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_5679282
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

Identity_1

Identity_2Identity StatefulPartitionedCall:output:2^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*[
_input_shapesJ
H:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ:::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ
"
_user_specified_name
states/1
©
Æ
while_body_570707
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_05
1while_lstm_cell_2_split_readvariableop_resource_07
3while_lstm_cell_2_split_1_readvariableop_resource_0/
+while_lstm_cell_2_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor3
/while_lstm_cell_2_split_readvariableop_resource5
1while_lstm_cell_2_split_1_readvariableop_resource-
)while_lstm_cell_2_readvariableop_resource¢ while/lstm_cell_2/ReadVariableOp¢"while/lstm_cell_2/ReadVariableOp_1¢"while/lstm_cell_2/ReadVariableOp_2¢"while/lstm_cell_2/ReadVariableOp_3¢&while/lstm_cell_2/split/ReadVariableOp¢(while/lstm_cell_2/split_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÔ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem¦
!while/lstm_cell_2/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_2/ones_like/Shape
!while/lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2#
!while/lstm_cell_2/ones_like/ConstÍ
while/lstm_cell_2/ones_likeFill*while/lstm_cell_2/ones_like/Shape:output:0*while/lstm_cell_2/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_2/ones_like
#while/lstm_cell_2/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_2/ones_like_1/Shape
#while/lstm_cell_2/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#while/lstm_cell_2/ones_like_1/ConstÕ
while/lstm_cell_2/ones_like_1Fill,while/lstm_cell_2/ones_like_1/Shape:output:0,while/lstm_cell_2/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/ones_like_1À
while/lstm_cell_2/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_2/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_2/mulÄ
while/lstm_cell_2/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_2/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_2/mul_1Ä
while/lstm_cell_2/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_2/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_2/mul_2Ä
while/lstm_cell_2/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0$while/lstm_cell_2/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_2/mul_3t
while/lstm_cell_2/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_2/Const
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_2/split/split_dimÄ
&while/lstm_cell_2/split/ReadVariableOpReadVariableOp1while_lstm_cell_2_split_readvariableop_resource_0* 
_output_shapes
:
*
dtype02(
&while/lstm_cell_2/split/ReadVariableOp÷
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0.while/lstm_cell_2/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
Ä:
Ä:
Ä:
Ä*
	num_split2
while/lstm_cell_2/split®
while/lstm_cell_2/MatMulMatMulwhile/lstm_cell_2/mul:z:0 while/lstm_cell_2/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/MatMul´
while/lstm_cell_2/MatMul_1MatMulwhile/lstm_cell_2/mul_1:z:0 while/lstm_cell_2/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/MatMul_1´
while/lstm_cell_2/MatMul_2MatMulwhile/lstm_cell_2/mul_2:z:0 while/lstm_cell_2/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/MatMul_2´
while/lstm_cell_2/MatMul_3MatMulwhile/lstm_cell_2/mul_3:z:0 while/lstm_cell_2/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/MatMul_3x
while/lstm_cell_2/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_2/Const_1
#while/lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_2/split_1/split_dimÅ
(while/lstm_cell_2/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_2_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02*
(while/lstm_cell_2/split_1/ReadVariableOpë
while/lstm_cell_2/split_1Split,while/lstm_cell_2/split_1/split_dim:output:00while/lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ä:Ä:Ä:Ä*
	num_split2
while/lstm_cell_2/split_1¼
while/lstm_cell_2/BiasAddBiasAdd"while/lstm_cell_2/MatMul:product:0"while/lstm_cell_2/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/BiasAddÂ
while/lstm_cell_2/BiasAdd_1BiasAdd$while/lstm_cell_2/MatMul_1:product:0"while/lstm_cell_2/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/BiasAdd_1Â
while/lstm_cell_2/BiasAdd_2BiasAdd$while/lstm_cell_2/MatMul_2:product:0"while/lstm_cell_2/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/BiasAdd_2Â
while/lstm_cell_2/BiasAdd_3BiasAdd$while/lstm_cell_2/MatMul_3:product:0"while/lstm_cell_2/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/BiasAdd_3©
while/lstm_cell_2/mul_4Mulwhile_placeholder_2&while/lstm_cell_2/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/mul_4©
while/lstm_cell_2/mul_5Mulwhile_placeholder_2&while/lstm_cell_2/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/mul_5©
while/lstm_cell_2/mul_6Mulwhile_placeholder_2&while/lstm_cell_2/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/mul_6©
while/lstm_cell_2/mul_7Mulwhile_placeholder_2&while/lstm_cell_2/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/mul_7²
 while/lstm_cell_2/ReadVariableOpReadVariableOp+while_lstm_cell_2_readvariableop_resource_0* 
_output_shapes
:
Ä*
dtype02"
 while/lstm_cell_2/ReadVariableOp
%while/lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_2/strided_slice/stack£
'while/lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ä   2)
'while/lstm_cell_2/strided_slice/stack_1£
'while/lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_2/strided_slice/stack_2ê
while/lstm_cell_2/strided_sliceStridedSlice(while/lstm_cell_2/ReadVariableOp:value:0.while/lstm_cell_2/strided_slice/stack:output:00while/lstm_cell_2/strided_slice/stack_1:output:00while/lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2!
while/lstm_cell_2/strided_slice¼
while/lstm_cell_2/MatMul_4MatMulwhile/lstm_cell_2/mul_4:z:0(while/lstm_cell_2/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/MatMul_4´
while/lstm_cell_2/addAddV2"while/lstm_cell_2/BiasAdd:output:0$while/lstm_cell_2/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/add
while/lstm_cell_2/SigmoidSigmoidwhile/lstm_cell_2/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/Sigmoid¶
"while/lstm_cell_2/ReadVariableOp_1ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0* 
_output_shapes
:
Ä*
dtype02$
"while/lstm_cell_2/ReadVariableOp_1£
'while/lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ä   2)
'while/lstm_cell_2/strided_slice_1/stack§
)while/lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_2/strided_slice_1/stack_1§
)while/lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_2/strided_slice_1/stack_2ö
!while/lstm_cell_2/strided_slice_1StridedSlice*while/lstm_cell_2/ReadVariableOp_1:value:00while/lstm_cell_2/strided_slice_1/stack:output:02while/lstm_cell_2/strided_slice_1/stack_1:output:02while/lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2#
!while/lstm_cell_2/strided_slice_1¾
while/lstm_cell_2/MatMul_5MatMulwhile/lstm_cell_2/mul_5:z:0*while/lstm_cell_2/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/MatMul_5º
while/lstm_cell_2/add_1AddV2$while/lstm_cell_2/BiasAdd_1:output:0$while/lstm_cell_2/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/add_1
while/lstm_cell_2/Sigmoid_1Sigmoidwhile/lstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/Sigmoid_1¢
while/lstm_cell_2/mul_8Mulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/mul_8¶
"while/lstm_cell_2/ReadVariableOp_2ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0* 
_output_shapes
:
Ä*
dtype02$
"while/lstm_cell_2/ReadVariableOp_2£
'while/lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_2/strided_slice_2/stack§
)while/lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2+
)while/lstm_cell_2/strided_slice_2/stack_1§
)while/lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_2/strided_slice_2/stack_2ö
!while/lstm_cell_2/strided_slice_2StridedSlice*while/lstm_cell_2/ReadVariableOp_2:value:00while/lstm_cell_2/strided_slice_2/stack:output:02while/lstm_cell_2/strided_slice_2/stack_1:output:02while/lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2#
!while/lstm_cell_2/strided_slice_2¾
while/lstm_cell_2/MatMul_6MatMulwhile/lstm_cell_2/mul_6:z:0*while/lstm_cell_2/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/MatMul_6º
while/lstm_cell_2/add_2AddV2$while/lstm_cell_2/BiasAdd_2:output:0$while/lstm_cell_2/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/add_2
while/lstm_cell_2/TanhTanhwhile/lstm_cell_2/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/Tanh§
while/lstm_cell_2/mul_9Mulwhile/lstm_cell_2/Sigmoid:y:0while/lstm_cell_2/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/mul_9¨
while/lstm_cell_2/add_3AddV2while/lstm_cell_2/mul_8:z:0while/lstm_cell_2/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/add_3¶
"while/lstm_cell_2/ReadVariableOp_3ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0* 
_output_shapes
:
Ä*
dtype02$
"while/lstm_cell_2/ReadVariableOp_3£
'while/lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2)
'while/lstm_cell_2/strided_slice_3/stack§
)while/lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_2/strided_slice_3/stack_1§
)while/lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_2/strided_slice_3/stack_2ö
!while/lstm_cell_2/strided_slice_3StridedSlice*while/lstm_cell_2/ReadVariableOp_3:value:00while/lstm_cell_2/strided_slice_3/stack:output:02while/lstm_cell_2/strided_slice_3/stack_1:output:02while/lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2#
!while/lstm_cell_2/strided_slice_3¾
while/lstm_cell_2/MatMul_7MatMulwhile/lstm_cell_2/mul_7:z:0*while/lstm_cell_2/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/MatMul_7º
while/lstm_cell_2/add_4AddV2$while/lstm_cell_2/BiasAdd_3:output:0$while/lstm_cell_2/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/add_4
while/lstm_cell_2/Sigmoid_2Sigmoidwhile/lstm_cell_2/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/Sigmoid_2
while/lstm_cell_2/Tanh_1Tanhwhile/lstm_cell_2/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/Tanh_1­
while/lstm_cell_2/mul_10Mulwhile/lstm_cell_2/Sigmoid_2:y:0while/lstm_cell_2/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/mul_10à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Ä
while/IdentityIdentitywhile/add_1:z:0!^while/lstm_cell_2/ReadVariableOp#^while/lstm_cell_2/ReadVariableOp_1#^while/lstm_cell_2/ReadVariableOp_2#^while/lstm_cell_2/ReadVariableOp_3'^while/lstm_cell_2/split/ReadVariableOp)^while/lstm_cell_2/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity×
while/Identity_1Identitywhile_while_maximum_iterations!^while/lstm_cell_2/ReadVariableOp#^while/lstm_cell_2/ReadVariableOp_1#^while/lstm_cell_2/ReadVariableOp_2#^while/lstm_cell_2/ReadVariableOp_3'^while/lstm_cell_2/split/ReadVariableOp)^while/lstm_cell_2/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Æ
while/Identity_2Identitywhile/add:z:0!^while/lstm_cell_2/ReadVariableOp#^while/lstm_cell_2/ReadVariableOp_1#^while/lstm_cell_2/ReadVariableOp_2#^while/lstm_cell_2/ReadVariableOp_3'^while/lstm_cell_2/split/ReadVariableOp)^while/lstm_cell_2/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2ó
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^while/lstm_cell_2/ReadVariableOp#^while/lstm_cell_2/ReadVariableOp_1#^while/lstm_cell_2/ReadVariableOp_2#^while/lstm_cell_2/ReadVariableOp_3'^while/lstm_cell_2/split/ReadVariableOp)^while/lstm_cell_2/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3ç
while/Identity_4Identitywhile/lstm_cell_2/mul_10:z:0!^while/lstm_cell_2/ReadVariableOp#^while/lstm_cell_2/ReadVariableOp_1#^while/lstm_cell_2/ReadVariableOp_2#^while/lstm_cell_2/ReadVariableOp_3'^while/lstm_cell_2/split/ReadVariableOp)^while/lstm_cell_2/split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/Identity_4æ
while/Identity_5Identitywhile/lstm_cell_2/add_3:z:0!^while/lstm_cell_2/ReadVariableOp#^while/lstm_cell_2/ReadVariableOp_1#^while/lstm_cell_2/ReadVariableOp_2#^while/lstm_cell_2/ReadVariableOp_3'^while/lstm_cell_2/split/ReadVariableOp)^while/lstm_cell_2/split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_2_readvariableop_resource+while_lstm_cell_2_readvariableop_resource_0"h
1while_lstm_cell_2_split_1_readvariableop_resource3while_lstm_cell_2_split_1_readvariableop_resource_0"d
/while_lstm_cell_2_split_readvariableop_resource1while_lstm_cell_2_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ: : :::2D
 while/lstm_cell_2/ReadVariableOp while/lstm_cell_2/ReadVariableOp2H
"while/lstm_cell_2/ReadVariableOp_1"while/lstm_cell_2/ReadVariableOp_12H
"while/lstm_cell_2/ReadVariableOp_2"while/lstm_cell_2/ReadVariableOp_22H
"while/lstm_cell_2/ReadVariableOp_3"while/lstm_cell_2/ReadVariableOp_32P
&while/lstm_cell_2/split/ReadVariableOp&while/lstm_cell_2/split/ReadVariableOp2T
(while/lstm_cell_2/split_1/ReadVariableOp(while/lstm_cell_2/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ:

_output_shapes
: :

_output_shapes
: 
÷

!__inference__wrapped_model_567674
embedding_2_input4
0sequential_4_embedding_2_embedding_lookup_567409A
=sequential_4_lstm_2_lstm_cell_2_split_readvariableop_resourceC
?sequential_4_lstm_2_lstm_cell_2_split_1_readvariableop_resource;
7sequential_4_lstm_2_lstm_cell_2_readvariableop_resource7
3sequential_4_dense_2_matmul_readvariableop_resource8
4sequential_4_dense_2_biasadd_readvariableop_resource
identity¢+sequential_4/dense_2/BiasAdd/ReadVariableOp¢*sequential_4/dense_2/MatMul/ReadVariableOp¢)sequential_4/embedding_2/embedding_lookup¢.sequential_4/lstm_2/lstm_cell_2/ReadVariableOp¢0sequential_4/lstm_2/lstm_cell_2/ReadVariableOp_1¢0sequential_4/lstm_2/lstm_cell_2/ReadVariableOp_2¢0sequential_4/lstm_2/lstm_cell_2/ReadVariableOp_3¢4sequential_4/lstm_2/lstm_cell_2/split/ReadVariableOp¢6sequential_4/lstm_2/lstm_cell_2/split_1/ReadVariableOp¢sequential_4/lstm_2/while
sequential_4/embedding_2/CastCastembedding_2_input*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2
sequential_4/embedding_2/Castû
)sequential_4/embedding_2/embedding_lookupResourceGather0sequential_4_embedding_2_embedding_lookup_567409!sequential_4/embedding_2/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*C
_class9
75loc:@sequential_4/embedding_2/embedding_lookup/567409*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB*
dtype02+
)sequential_4/embedding_2/embedding_lookupÒ
2sequential_4/embedding_2/embedding_lookup/IdentityIdentity2sequential_4/embedding_2/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*C
_class9
75loc:@sequential_4/embedding_2/embedding_lookup/567409*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB24
2sequential_4/embedding_2/embedding_lookup/Identityì
4sequential_4/embedding_2/embedding_lookup/Identity_1Identity;sequential_4/embedding_2/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB26
4sequential_4/embedding_2/embedding_lookup/Identity_1Ø
)sequential_4/spatial_dropout1d_2/IdentityIdentity=sequential_4/embedding_2/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2+
)sequential_4/spatial_dropout1d_2/Identity
sequential_4/lstm_2/ShapeShape2sequential_4/spatial_dropout1d_2/Identity:output:0*
T0*
_output_shapes
:2
sequential_4/lstm_2/Shape
'sequential_4/lstm_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'sequential_4/lstm_2/strided_slice/stack 
)sequential_4/lstm_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_4/lstm_2/strided_slice/stack_1 
)sequential_4/lstm_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)sequential_4/lstm_2/strided_slice/stack_2Ú
!sequential_4/lstm_2/strided_sliceStridedSlice"sequential_4/lstm_2/Shape:output:00sequential_4/lstm_2/strided_slice/stack:output:02sequential_4/lstm_2/strided_slice/stack_1:output:02sequential_4/lstm_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!sequential_4/lstm_2/strided_slice
sequential_4/lstm_2/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ä2!
sequential_4/lstm_2/zeros/mul/y¼
sequential_4/lstm_2/zeros/mulMul*sequential_4/lstm_2/strided_slice:output:0(sequential_4/lstm_2/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
sequential_4/lstm_2/zeros/mul
 sequential_4/lstm_2/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2"
 sequential_4/lstm_2/zeros/Less/y·
sequential_4/lstm_2/zeros/LessLess!sequential_4/lstm_2/zeros/mul:z:0)sequential_4/lstm_2/zeros/Less/y:output:0*
T0*
_output_shapes
: 2 
sequential_4/lstm_2/zeros/Less
"sequential_4/lstm_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ä2$
"sequential_4/lstm_2/zeros/packed/1Ó
 sequential_4/lstm_2/zeros/packedPack*sequential_4/lstm_2/strided_slice:output:0+sequential_4/lstm_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2"
 sequential_4/lstm_2/zeros/packed
sequential_4/lstm_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2!
sequential_4/lstm_2/zeros/ConstÆ
sequential_4/lstm_2/zerosFill)sequential_4/lstm_2/zeros/packed:output:0(sequential_4/lstm_2/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
sequential_4/lstm_2/zeros
!sequential_4/lstm_2/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ä2#
!sequential_4/lstm_2/zeros_1/mul/yÂ
sequential_4/lstm_2/zeros_1/mulMul*sequential_4/lstm_2/strided_slice:output:0*sequential_4/lstm_2/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2!
sequential_4/lstm_2/zeros_1/mul
"sequential_4/lstm_2/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2$
"sequential_4/lstm_2/zeros_1/Less/y¿
 sequential_4/lstm_2/zeros_1/LessLess#sequential_4/lstm_2/zeros_1/mul:z:0+sequential_4/lstm_2/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2"
 sequential_4/lstm_2/zeros_1/Less
$sequential_4/lstm_2/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ä2&
$sequential_4/lstm_2/zeros_1/packed/1Ù
"sequential_4/lstm_2/zeros_1/packedPack*sequential_4/lstm_2/strided_slice:output:0-sequential_4/lstm_2/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2$
"sequential_4/lstm_2/zeros_1/packed
!sequential_4/lstm_2/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2#
!sequential_4/lstm_2/zeros_1/ConstÎ
sequential_4/lstm_2/zeros_1Fill+sequential_4/lstm_2/zeros_1/packed:output:0*sequential_4/lstm_2/zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
sequential_4/lstm_2/zeros_1
"sequential_4/lstm_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2$
"sequential_4/lstm_2/transpose/permã
sequential_4/lstm_2/transpose	Transpose2sequential_4/spatial_dropout1d_2/Identity:output:0+sequential_4/lstm_2/transpose/perm:output:0*
T0*,
_output_shapes
:Bÿÿÿÿÿÿÿÿÿ2
sequential_4/lstm_2/transpose
sequential_4/lstm_2/Shape_1Shape!sequential_4/lstm_2/transpose:y:0*
T0*
_output_shapes
:2
sequential_4/lstm_2/Shape_1 
)sequential_4/lstm_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_4/lstm_2/strided_slice_1/stack¤
+sequential_4/lstm_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_4/lstm_2/strided_slice_1/stack_1¤
+sequential_4/lstm_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_4/lstm_2/strided_slice_1/stack_2æ
#sequential_4/lstm_2/strided_slice_1StridedSlice$sequential_4/lstm_2/Shape_1:output:02sequential_4/lstm_2/strided_slice_1/stack:output:04sequential_4/lstm_2/strided_slice_1/stack_1:output:04sequential_4/lstm_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#sequential_4/lstm_2/strided_slice_1­
/sequential_4/lstm_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ21
/sequential_4/lstm_2/TensorArrayV2/element_shape
!sequential_4/lstm_2/TensorArrayV2TensorListReserve8sequential_4/lstm_2/TensorArrayV2/element_shape:output:0,sequential_4/lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02#
!sequential_4/lstm_2/TensorArrayV2ç
Isequential_4/lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2K
Isequential_4/lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shapeÈ
;sequential_4/lstm_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor!sequential_4/lstm_2/transpose:y:0Rsequential_4/lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02=
;sequential_4/lstm_2/TensorArrayUnstack/TensorListFromTensor 
)sequential_4/lstm_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)sequential_4/lstm_2/strided_slice_2/stack¤
+sequential_4/lstm_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_4/lstm_2/strided_slice_2/stack_1¤
+sequential_4/lstm_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_4/lstm_2/strided_slice_2/stack_2õ
#sequential_4/lstm_2/strided_slice_2StridedSlice!sequential_4/lstm_2/transpose:y:02sequential_4/lstm_2/strided_slice_2/stack:output:04sequential_4/lstm_2/strided_slice_2/stack_1:output:04sequential_4/lstm_2/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2%
#sequential_4/lstm_2/strided_slice_2¾
/sequential_4/lstm_2/lstm_cell_2/ones_like/ShapeShape,sequential_4/lstm_2/strided_slice_2:output:0*
T0*
_output_shapes
:21
/sequential_4/lstm_2/lstm_cell_2/ones_like/Shape§
/sequential_4/lstm_2/lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?21
/sequential_4/lstm_2/lstm_cell_2/ones_like/Const
)sequential_4/lstm_2/lstm_cell_2/ones_likeFill8sequential_4/lstm_2/lstm_cell_2/ones_like/Shape:output:08sequential_4/lstm_2/lstm_cell_2/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)sequential_4/lstm_2/lstm_cell_2/ones_like¸
1sequential_4/lstm_2/lstm_cell_2/ones_like_1/ShapeShape"sequential_4/lstm_2/zeros:output:0*
T0*
_output_shapes
:23
1sequential_4/lstm_2/lstm_cell_2/ones_like_1/Shape«
1sequential_4/lstm_2/lstm_cell_2/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?23
1sequential_4/lstm_2/lstm_cell_2/ones_like_1/Const
+sequential_4/lstm_2/lstm_cell_2/ones_like_1Fill:sequential_4/lstm_2/lstm_cell_2/ones_like_1/Shape:output:0:sequential_4/lstm_2/lstm_cell_2/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2-
+sequential_4/lstm_2/lstm_cell_2/ones_like_1æ
#sequential_4/lstm_2/lstm_cell_2/mulMul,sequential_4/lstm_2/strided_slice_2:output:02sequential_4/lstm_2/lstm_cell_2/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2%
#sequential_4/lstm_2/lstm_cell_2/mulê
%sequential_4/lstm_2/lstm_cell_2/mul_1Mul,sequential_4/lstm_2/strided_slice_2:output:02sequential_4/lstm_2/lstm_cell_2/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%sequential_4/lstm_2/lstm_cell_2/mul_1ê
%sequential_4/lstm_2/lstm_cell_2/mul_2Mul,sequential_4/lstm_2/strided_slice_2:output:02sequential_4/lstm_2/lstm_cell_2/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%sequential_4/lstm_2/lstm_cell_2/mul_2ê
%sequential_4/lstm_2/lstm_cell_2/mul_3Mul,sequential_4/lstm_2/strided_slice_2:output:02sequential_4/lstm_2/lstm_cell_2/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%sequential_4/lstm_2/lstm_cell_2/mul_3
%sequential_4/lstm_2/lstm_cell_2/ConstConst*
_output_shapes
: *
dtype0*
value	B :2'
%sequential_4/lstm_2/lstm_cell_2/Const¤
/sequential_4/lstm_2/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :21
/sequential_4/lstm_2/lstm_cell_2/split/split_dimì
4sequential_4/lstm_2/lstm_cell_2/split/ReadVariableOpReadVariableOp=sequential_4_lstm_2_lstm_cell_2_split_readvariableop_resource* 
_output_shapes
:
*
dtype026
4sequential_4/lstm_2/lstm_cell_2/split/ReadVariableOp¯
%sequential_4/lstm_2/lstm_cell_2/splitSplit8sequential_4/lstm_2/lstm_cell_2/split/split_dim:output:0<sequential_4/lstm_2/lstm_cell_2/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
Ä:
Ä:
Ä:
Ä*
	num_split2'
%sequential_4/lstm_2/lstm_cell_2/splitæ
&sequential_4/lstm_2/lstm_cell_2/MatMulMatMul'sequential_4/lstm_2/lstm_cell_2/mul:z:0.sequential_4/lstm_2/lstm_cell_2/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2(
&sequential_4/lstm_2/lstm_cell_2/MatMulì
(sequential_4/lstm_2/lstm_cell_2/MatMul_1MatMul)sequential_4/lstm_2/lstm_cell_2/mul_1:z:0.sequential_4/lstm_2/lstm_cell_2/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2*
(sequential_4/lstm_2/lstm_cell_2/MatMul_1ì
(sequential_4/lstm_2/lstm_cell_2/MatMul_2MatMul)sequential_4/lstm_2/lstm_cell_2/mul_2:z:0.sequential_4/lstm_2/lstm_cell_2/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2*
(sequential_4/lstm_2/lstm_cell_2/MatMul_2ì
(sequential_4/lstm_2/lstm_cell_2/MatMul_3MatMul)sequential_4/lstm_2/lstm_cell_2/mul_3:z:0.sequential_4/lstm_2/lstm_cell_2/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2*
(sequential_4/lstm_2/lstm_cell_2/MatMul_3
'sequential_4/lstm_2/lstm_cell_2/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2)
'sequential_4/lstm_2/lstm_cell_2/Const_1¨
1sequential_4/lstm_2/lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 23
1sequential_4/lstm_2/lstm_cell_2/split_1/split_dimí
6sequential_4/lstm_2/lstm_cell_2/split_1/ReadVariableOpReadVariableOp?sequential_4_lstm_2_lstm_cell_2_split_1_readvariableop_resource*
_output_shapes	
:*
dtype028
6sequential_4/lstm_2/lstm_cell_2/split_1/ReadVariableOp£
'sequential_4/lstm_2/lstm_cell_2/split_1Split:sequential_4/lstm_2/lstm_cell_2/split_1/split_dim:output:0>sequential_4/lstm_2/lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ä:Ä:Ä:Ä*
	num_split2)
'sequential_4/lstm_2/lstm_cell_2/split_1ô
'sequential_4/lstm_2/lstm_cell_2/BiasAddBiasAdd0sequential_4/lstm_2/lstm_cell_2/MatMul:product:00sequential_4/lstm_2/lstm_cell_2/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2)
'sequential_4/lstm_2/lstm_cell_2/BiasAddú
)sequential_4/lstm_2/lstm_cell_2/BiasAdd_1BiasAdd2sequential_4/lstm_2/lstm_cell_2/MatMul_1:product:00sequential_4/lstm_2/lstm_cell_2/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2+
)sequential_4/lstm_2/lstm_cell_2/BiasAdd_1ú
)sequential_4/lstm_2/lstm_cell_2/BiasAdd_2BiasAdd2sequential_4/lstm_2/lstm_cell_2/MatMul_2:product:00sequential_4/lstm_2/lstm_cell_2/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2+
)sequential_4/lstm_2/lstm_cell_2/BiasAdd_2ú
)sequential_4/lstm_2/lstm_cell_2/BiasAdd_3BiasAdd2sequential_4/lstm_2/lstm_cell_2/MatMul_3:product:00sequential_4/lstm_2/lstm_cell_2/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2+
)sequential_4/lstm_2/lstm_cell_2/BiasAdd_3â
%sequential_4/lstm_2/lstm_cell_2/mul_4Mul"sequential_4/lstm_2/zeros:output:04sequential_4/lstm_2/lstm_cell_2/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2'
%sequential_4/lstm_2/lstm_cell_2/mul_4â
%sequential_4/lstm_2/lstm_cell_2/mul_5Mul"sequential_4/lstm_2/zeros:output:04sequential_4/lstm_2/lstm_cell_2/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2'
%sequential_4/lstm_2/lstm_cell_2/mul_5â
%sequential_4/lstm_2/lstm_cell_2/mul_6Mul"sequential_4/lstm_2/zeros:output:04sequential_4/lstm_2/lstm_cell_2/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2'
%sequential_4/lstm_2/lstm_cell_2/mul_6â
%sequential_4/lstm_2/lstm_cell_2/mul_7Mul"sequential_4/lstm_2/zeros:output:04sequential_4/lstm_2/lstm_cell_2/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2'
%sequential_4/lstm_2/lstm_cell_2/mul_7Ú
.sequential_4/lstm_2/lstm_cell_2/ReadVariableOpReadVariableOp7sequential_4_lstm_2_lstm_cell_2_readvariableop_resource* 
_output_shapes
:
Ä*
dtype020
.sequential_4/lstm_2/lstm_cell_2/ReadVariableOp»
3sequential_4/lstm_2/lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        25
3sequential_4/lstm_2/lstm_cell_2/strided_slice/stack¿
5sequential_4/lstm_2/lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ä   27
5sequential_4/lstm_2/lstm_cell_2/strided_slice/stack_1¿
5sequential_4/lstm_2/lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      27
5sequential_4/lstm_2/lstm_cell_2/strided_slice/stack_2¾
-sequential_4/lstm_2/lstm_cell_2/strided_sliceStridedSlice6sequential_4/lstm_2/lstm_cell_2/ReadVariableOp:value:0<sequential_4/lstm_2/lstm_cell_2/strided_slice/stack:output:0>sequential_4/lstm_2/lstm_cell_2/strided_slice/stack_1:output:0>sequential_4/lstm_2/lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2/
-sequential_4/lstm_2/lstm_cell_2/strided_sliceô
(sequential_4/lstm_2/lstm_cell_2/MatMul_4MatMul)sequential_4/lstm_2/lstm_cell_2/mul_4:z:06sequential_4/lstm_2/lstm_cell_2/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2*
(sequential_4/lstm_2/lstm_cell_2/MatMul_4ì
#sequential_4/lstm_2/lstm_cell_2/addAddV20sequential_4/lstm_2/lstm_cell_2/BiasAdd:output:02sequential_4/lstm_2/lstm_cell_2/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2%
#sequential_4/lstm_2/lstm_cell_2/add¹
'sequential_4/lstm_2/lstm_cell_2/SigmoidSigmoid'sequential_4/lstm_2/lstm_cell_2/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2)
'sequential_4/lstm_2/lstm_cell_2/SigmoidÞ
0sequential_4/lstm_2/lstm_cell_2/ReadVariableOp_1ReadVariableOp7sequential_4_lstm_2_lstm_cell_2_readvariableop_resource* 
_output_shapes
:
Ä*
dtype022
0sequential_4/lstm_2/lstm_cell_2/ReadVariableOp_1¿
5sequential_4/lstm_2/lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ä   27
5sequential_4/lstm_2/lstm_cell_2/strided_slice_1/stackÃ
7sequential_4/lstm_2/lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      29
7sequential_4/lstm_2/lstm_cell_2/strided_slice_1/stack_1Ã
7sequential_4/lstm_2/lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7sequential_4/lstm_2/lstm_cell_2/strided_slice_1/stack_2Ê
/sequential_4/lstm_2/lstm_cell_2/strided_slice_1StridedSlice8sequential_4/lstm_2/lstm_cell_2/ReadVariableOp_1:value:0>sequential_4/lstm_2/lstm_cell_2/strided_slice_1/stack:output:0@sequential_4/lstm_2/lstm_cell_2/strided_slice_1/stack_1:output:0@sequential_4/lstm_2/lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask21
/sequential_4/lstm_2/lstm_cell_2/strided_slice_1ö
(sequential_4/lstm_2/lstm_cell_2/MatMul_5MatMul)sequential_4/lstm_2/lstm_cell_2/mul_5:z:08sequential_4/lstm_2/lstm_cell_2/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2*
(sequential_4/lstm_2/lstm_cell_2/MatMul_5ò
%sequential_4/lstm_2/lstm_cell_2/add_1AddV22sequential_4/lstm_2/lstm_cell_2/BiasAdd_1:output:02sequential_4/lstm_2/lstm_cell_2/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2'
%sequential_4/lstm_2/lstm_cell_2/add_1¿
)sequential_4/lstm_2/lstm_cell_2/Sigmoid_1Sigmoid)sequential_4/lstm_2/lstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2+
)sequential_4/lstm_2/lstm_cell_2/Sigmoid_1Ý
%sequential_4/lstm_2/lstm_cell_2/mul_8Mul-sequential_4/lstm_2/lstm_cell_2/Sigmoid_1:y:0$sequential_4/lstm_2/zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2'
%sequential_4/lstm_2/lstm_cell_2/mul_8Þ
0sequential_4/lstm_2/lstm_cell_2/ReadVariableOp_2ReadVariableOp7sequential_4_lstm_2_lstm_cell_2_readvariableop_resource* 
_output_shapes
:
Ä*
dtype022
0sequential_4/lstm_2/lstm_cell_2/ReadVariableOp_2¿
5sequential_4/lstm_2/lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      27
5sequential_4/lstm_2/lstm_cell_2/strided_slice_2/stackÃ
7sequential_4/lstm_2/lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  29
7sequential_4/lstm_2/lstm_cell_2/strided_slice_2/stack_1Ã
7sequential_4/lstm_2/lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7sequential_4/lstm_2/lstm_cell_2/strided_slice_2/stack_2Ê
/sequential_4/lstm_2/lstm_cell_2/strided_slice_2StridedSlice8sequential_4/lstm_2/lstm_cell_2/ReadVariableOp_2:value:0>sequential_4/lstm_2/lstm_cell_2/strided_slice_2/stack:output:0@sequential_4/lstm_2/lstm_cell_2/strided_slice_2/stack_1:output:0@sequential_4/lstm_2/lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask21
/sequential_4/lstm_2/lstm_cell_2/strided_slice_2ö
(sequential_4/lstm_2/lstm_cell_2/MatMul_6MatMul)sequential_4/lstm_2/lstm_cell_2/mul_6:z:08sequential_4/lstm_2/lstm_cell_2/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2*
(sequential_4/lstm_2/lstm_cell_2/MatMul_6ò
%sequential_4/lstm_2/lstm_cell_2/add_2AddV22sequential_4/lstm_2/lstm_cell_2/BiasAdd_2:output:02sequential_4/lstm_2/lstm_cell_2/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2'
%sequential_4/lstm_2/lstm_cell_2/add_2²
$sequential_4/lstm_2/lstm_cell_2/TanhTanh)sequential_4/lstm_2/lstm_cell_2/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2&
$sequential_4/lstm_2/lstm_cell_2/Tanhß
%sequential_4/lstm_2/lstm_cell_2/mul_9Mul+sequential_4/lstm_2/lstm_cell_2/Sigmoid:y:0(sequential_4/lstm_2/lstm_cell_2/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2'
%sequential_4/lstm_2/lstm_cell_2/mul_9à
%sequential_4/lstm_2/lstm_cell_2/add_3AddV2)sequential_4/lstm_2/lstm_cell_2/mul_8:z:0)sequential_4/lstm_2/lstm_cell_2/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2'
%sequential_4/lstm_2/lstm_cell_2/add_3Þ
0sequential_4/lstm_2/lstm_cell_2/ReadVariableOp_3ReadVariableOp7sequential_4_lstm_2_lstm_cell_2_readvariableop_resource* 
_output_shapes
:
Ä*
dtype022
0sequential_4/lstm_2/lstm_cell_2/ReadVariableOp_3¿
5sequential_4/lstm_2/lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  27
5sequential_4/lstm_2/lstm_cell_2/strided_slice_3/stackÃ
7sequential_4/lstm_2/lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        29
7sequential_4/lstm_2/lstm_cell_2/strided_slice_3/stack_1Ã
7sequential_4/lstm_2/lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      29
7sequential_4/lstm_2/lstm_cell_2/strided_slice_3/stack_2Ê
/sequential_4/lstm_2/lstm_cell_2/strided_slice_3StridedSlice8sequential_4/lstm_2/lstm_cell_2/ReadVariableOp_3:value:0>sequential_4/lstm_2/lstm_cell_2/strided_slice_3/stack:output:0@sequential_4/lstm_2/lstm_cell_2/strided_slice_3/stack_1:output:0@sequential_4/lstm_2/lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask21
/sequential_4/lstm_2/lstm_cell_2/strided_slice_3ö
(sequential_4/lstm_2/lstm_cell_2/MatMul_7MatMul)sequential_4/lstm_2/lstm_cell_2/mul_7:z:08sequential_4/lstm_2/lstm_cell_2/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2*
(sequential_4/lstm_2/lstm_cell_2/MatMul_7ò
%sequential_4/lstm_2/lstm_cell_2/add_4AddV22sequential_4/lstm_2/lstm_cell_2/BiasAdd_3:output:02sequential_4/lstm_2/lstm_cell_2/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2'
%sequential_4/lstm_2/lstm_cell_2/add_4¿
)sequential_4/lstm_2/lstm_cell_2/Sigmoid_2Sigmoid)sequential_4/lstm_2/lstm_cell_2/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2+
)sequential_4/lstm_2/lstm_cell_2/Sigmoid_2¶
&sequential_4/lstm_2/lstm_cell_2/Tanh_1Tanh)sequential_4/lstm_2/lstm_cell_2/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2(
&sequential_4/lstm_2/lstm_cell_2/Tanh_1å
&sequential_4/lstm_2/lstm_cell_2/mul_10Mul-sequential_4/lstm_2/lstm_cell_2/Sigmoid_2:y:0*sequential_4/lstm_2/lstm_cell_2/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2(
&sequential_4/lstm_2/lstm_cell_2/mul_10·
1sequential_4/lstm_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÄ   23
1sequential_4/lstm_2/TensorArrayV2_1/element_shape
#sequential_4/lstm_2/TensorArrayV2_1TensorListReserve:sequential_4/lstm_2/TensorArrayV2_1/element_shape:output:0,sequential_4/lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02%
#sequential_4/lstm_2/TensorArrayV2_1v
sequential_4/lstm_2/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
sequential_4/lstm_2/time§
,sequential_4/lstm_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2.
,sequential_4/lstm_2/while/maximum_iterations
&sequential_4/lstm_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2(
&sequential_4/lstm_2/while/loop_counter
sequential_4/lstm_2/whileWhile/sequential_4/lstm_2/while/loop_counter:output:05sequential_4/lstm_2/while/maximum_iterations:output:0!sequential_4/lstm_2/time:output:0,sequential_4/lstm_2/TensorArrayV2_1:handle:0"sequential_4/lstm_2/zeros:output:0$sequential_4/lstm_2/zeros_1:output:0,sequential_4/lstm_2/strided_slice_1:output:0Ksequential_4/lstm_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0=sequential_4_lstm_2_lstm_cell_2_split_readvariableop_resource?sequential_4_lstm_2_lstm_cell_2_split_1_readvariableop_resource7sequential_4_lstm_2_lstm_cell_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ: : : : : *%
_read_only_resource_inputs
	
*1
body)R'
%sequential_4_lstm_2_while_body_567531*1
cond)R'
%sequential_4_lstm_2_while_cond_567530*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ: : : : : *
parallel_iterations 2
sequential_4/lstm_2/whileÝ
Dsequential_4/lstm_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÄ   2F
Dsequential_4/lstm_2/TensorArrayV2Stack/TensorListStack/element_shape¹
6sequential_4/lstm_2/TensorArrayV2Stack/TensorListStackTensorListStack"sequential_4/lstm_2/while:output:3Msequential_4/lstm_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:BÿÿÿÿÿÿÿÿÿÄ*
element_dtype028
6sequential_4/lstm_2/TensorArrayV2Stack/TensorListStack©
)sequential_4/lstm_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2+
)sequential_4/lstm_2/strided_slice_3/stack¤
+sequential_4/lstm_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2-
+sequential_4/lstm_2/strided_slice_3/stack_1¤
+sequential_4/lstm_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+sequential_4/lstm_2/strided_slice_3/stack_2
#sequential_4/lstm_2/strided_slice_3StridedSlice?sequential_4/lstm_2/TensorArrayV2Stack/TensorListStack:tensor:02sequential_4/lstm_2/strided_slice_3/stack:output:04sequential_4/lstm_2/strided_slice_3/stack_1:output:04sequential_4/lstm_2/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
shrink_axis_mask2%
#sequential_4/lstm_2/strided_slice_3¡
$sequential_4/lstm_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2&
$sequential_4/lstm_2/transpose_1/permö
sequential_4/lstm_2/transpose_1	Transpose?sequential_4/lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0-sequential_4/lstm_2/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿBÄ2!
sequential_4/lstm_2/transpose_1
sequential_4/lstm_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
sequential_4/lstm_2/runtimeÍ
*sequential_4/dense_2/MatMul/ReadVariableOpReadVariableOp3sequential_4_dense_2_matmul_readvariableop_resource*
_output_shapes
:	Ä*
dtype02,
*sequential_4/dense_2/MatMul/ReadVariableOpØ
sequential_4/dense_2/MatMulMatMul,sequential_4/lstm_2/strided_slice_3:output:02sequential_4/dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_4/dense_2/MatMulË
+sequential_4/dense_2/BiasAdd/ReadVariableOpReadVariableOp4sequential_4_dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02-
+sequential_4/dense_2/BiasAdd/ReadVariableOpÕ
sequential_4/dense_2/BiasAddBiasAdd%sequential_4/dense_2/MatMul:product:03sequential_4/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_4/dense_2/BiasAdd 
sequential_4/dense_2/SoftmaxSoftmax%sequential_4/dense_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sequential_4/dense_2/Softmax×
IdentityIdentity&sequential_4/dense_2/Softmax:softmax:0,^sequential_4/dense_2/BiasAdd/ReadVariableOp+^sequential_4/dense_2/MatMul/ReadVariableOp*^sequential_4/embedding_2/embedding_lookup/^sequential_4/lstm_2/lstm_cell_2/ReadVariableOp1^sequential_4/lstm_2/lstm_cell_2/ReadVariableOp_11^sequential_4/lstm_2/lstm_cell_2/ReadVariableOp_21^sequential_4/lstm_2/lstm_cell_2/ReadVariableOp_35^sequential_4/lstm_2/lstm_cell_2/split/ReadVariableOp7^sequential_4/lstm_2/lstm_cell_2/split_1/ReadVariableOp^sequential_4/lstm_2/while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿB::::::2Z
+sequential_4/dense_2/BiasAdd/ReadVariableOp+sequential_4/dense_2/BiasAdd/ReadVariableOp2X
*sequential_4/dense_2/MatMul/ReadVariableOp*sequential_4/dense_2/MatMul/ReadVariableOp2V
)sequential_4/embedding_2/embedding_lookup)sequential_4/embedding_2/embedding_lookup2`
.sequential_4/lstm_2/lstm_cell_2/ReadVariableOp.sequential_4/lstm_2/lstm_cell_2/ReadVariableOp2d
0sequential_4/lstm_2/lstm_cell_2/ReadVariableOp_10sequential_4/lstm_2/lstm_cell_2/ReadVariableOp_12d
0sequential_4/lstm_2/lstm_cell_2/ReadVariableOp_20sequential_4/lstm_2/lstm_cell_2/ReadVariableOp_22d
0sequential_4/lstm_2/lstm_cell_2/ReadVariableOp_30sequential_4/lstm_2/lstm_cell_2/ReadVariableOp_32l
4sequential_4/lstm_2/lstm_cell_2/split/ReadVariableOp4sequential_4/lstm_2/lstm_cell_2/split/ReadVariableOp2p
6sequential_4/lstm_2/lstm_cell_2/split_1/ReadVariableOp6sequential_4/lstm_2/lstm_cell_2/split_1/ReadVariableOp26
sequential_4/lstm_2/whilesequential_4/lstm_2/while:Z V
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB
+
_user_specified_nameembedding_2_input

´
B__inference_lstm_2_layer_call_and_return_conditional_losses_569217

inputs-
)lstm_cell_2_split_readvariableop_resource/
+lstm_cell_2_split_1_readvariableop_resource'
#lstm_cell_2_readvariableop_resource
identity¢lstm_cell_2/ReadVariableOp¢lstm_cell_2/ReadVariableOp_1¢lstm_cell_2/ReadVariableOp_2¢lstm_cell_2/ReadVariableOp_3¢ lstm_cell_2/split/ReadVariableOp¢"lstm_cell_2/split_1/ReadVariableOp¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ä2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ä2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ä2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ä2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:Bÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ý
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2
lstm_cell_2/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_2/ones_like/Shape
lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_2/ones_like/Constµ
lstm_cell_2/ones_likeFill$lstm_cell_2/ones_like/Shape:output:0$lstm_cell_2/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/ones_like|
lstm_cell_2/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_2/ones_like_1/Shape
lstm_cell_2/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_2/ones_like_1/Const½
lstm_cell_2/ones_like_1Fill&lstm_cell_2/ones_like_1/Shape:output:0&lstm_cell_2/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/ones_like_1
lstm_cell_2/mulMulstrided_slice_2:output:0lstm_cell_2/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/mul
lstm_cell_2/mul_1Mulstrided_slice_2:output:0lstm_cell_2/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/mul_1
lstm_cell_2/mul_2Mulstrided_slice_2:output:0lstm_cell_2/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/mul_2
lstm_cell_2/mul_3Mulstrided_slice_2:output:0lstm_cell_2/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/mul_3h
lstm_cell_2/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_2/Const|
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_2/split/split_dim°
 lstm_cell_2/split/ReadVariableOpReadVariableOp)lstm_cell_2_split_readvariableop_resource* 
_output_shapes
:
*
dtype02"
 lstm_cell_2/split/ReadVariableOpß
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0(lstm_cell_2/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
Ä:
Ä:
Ä:
Ä*
	num_split2
lstm_cell_2/split
lstm_cell_2/MatMulMatMullstm_cell_2/mul:z:0lstm_cell_2/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/MatMul
lstm_cell_2/MatMul_1MatMullstm_cell_2/mul_1:z:0lstm_cell_2/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/MatMul_1
lstm_cell_2/MatMul_2MatMullstm_cell_2/mul_2:z:0lstm_cell_2/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/MatMul_2
lstm_cell_2/MatMul_3MatMullstm_cell_2/mul_3:z:0lstm_cell_2/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/MatMul_3l
lstm_cell_2/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_2/Const_1
lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_2/split_1/split_dim±
"lstm_cell_2/split_1/ReadVariableOpReadVariableOp+lstm_cell_2_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02$
"lstm_cell_2/split_1/ReadVariableOpÓ
lstm_cell_2/split_1Split&lstm_cell_2/split_1/split_dim:output:0*lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ä:Ä:Ä:Ä*
	num_split2
lstm_cell_2/split_1¤
lstm_cell_2/BiasAddBiasAddlstm_cell_2/MatMul:product:0lstm_cell_2/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/BiasAddª
lstm_cell_2/BiasAdd_1BiasAddlstm_cell_2/MatMul_1:product:0lstm_cell_2/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/BiasAdd_1ª
lstm_cell_2/BiasAdd_2BiasAddlstm_cell_2/MatMul_2:product:0lstm_cell_2/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/BiasAdd_2ª
lstm_cell_2/BiasAdd_3BiasAddlstm_cell_2/MatMul_3:product:0lstm_cell_2/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/BiasAdd_3
lstm_cell_2/mul_4Mulzeros:output:0 lstm_cell_2/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/mul_4
lstm_cell_2/mul_5Mulzeros:output:0 lstm_cell_2/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/mul_5
lstm_cell_2/mul_6Mulzeros:output:0 lstm_cell_2/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/mul_6
lstm_cell_2/mul_7Mulzeros:output:0 lstm_cell_2/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/mul_7
lstm_cell_2/ReadVariableOpReadVariableOp#lstm_cell_2_readvariableop_resource* 
_output_shapes
:
Ä*
dtype02
lstm_cell_2/ReadVariableOp
lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_2/strided_slice/stack
!lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ä   2#
!lstm_cell_2/strided_slice/stack_1
!lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_2/strided_slice/stack_2Æ
lstm_cell_2/strided_sliceStridedSlice"lstm_cell_2/ReadVariableOp:value:0(lstm_cell_2/strided_slice/stack:output:0*lstm_cell_2/strided_slice/stack_1:output:0*lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2
lstm_cell_2/strided_slice¤
lstm_cell_2/MatMul_4MatMullstm_cell_2/mul_4:z:0"lstm_cell_2/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/MatMul_4
lstm_cell_2/addAddV2lstm_cell_2/BiasAdd:output:0lstm_cell_2/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/add}
lstm_cell_2/SigmoidSigmoidlstm_cell_2/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/Sigmoid¢
lstm_cell_2/ReadVariableOp_1ReadVariableOp#lstm_cell_2_readvariableop_resource* 
_output_shapes
:
Ä*
dtype02
lstm_cell_2/ReadVariableOp_1
!lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ä   2#
!lstm_cell_2/strided_slice_1/stack
#lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_2/strided_slice_1/stack_1
#lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_2/strided_slice_1/stack_2Ò
lstm_cell_2/strided_slice_1StridedSlice$lstm_cell_2/ReadVariableOp_1:value:0*lstm_cell_2/strided_slice_1/stack:output:0,lstm_cell_2/strided_slice_1/stack_1:output:0,lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2
lstm_cell_2/strided_slice_1¦
lstm_cell_2/MatMul_5MatMullstm_cell_2/mul_5:z:0$lstm_cell_2/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/MatMul_5¢
lstm_cell_2/add_1AddV2lstm_cell_2/BiasAdd_1:output:0lstm_cell_2/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/add_1
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/Sigmoid_1
lstm_cell_2/mul_8Mullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/mul_8¢
lstm_cell_2/ReadVariableOp_2ReadVariableOp#lstm_cell_2_readvariableop_resource* 
_output_shapes
:
Ä*
dtype02
lstm_cell_2/ReadVariableOp_2
!lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_2/strided_slice_2/stack
#lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2%
#lstm_cell_2/strided_slice_2/stack_1
#lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_2/strided_slice_2/stack_2Ò
lstm_cell_2/strided_slice_2StridedSlice$lstm_cell_2/ReadVariableOp_2:value:0*lstm_cell_2/strided_slice_2/stack:output:0,lstm_cell_2/strided_slice_2/stack_1:output:0,lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2
lstm_cell_2/strided_slice_2¦
lstm_cell_2/MatMul_6MatMullstm_cell_2/mul_6:z:0$lstm_cell_2/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/MatMul_6¢
lstm_cell_2/add_2AddV2lstm_cell_2/BiasAdd_2:output:0lstm_cell_2/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/add_2v
lstm_cell_2/TanhTanhlstm_cell_2/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/Tanh
lstm_cell_2/mul_9Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/mul_9
lstm_cell_2/add_3AddV2lstm_cell_2/mul_8:z:0lstm_cell_2/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/add_3¢
lstm_cell_2/ReadVariableOp_3ReadVariableOp#lstm_cell_2_readvariableop_resource* 
_output_shapes
:
Ä*
dtype02
lstm_cell_2/ReadVariableOp_3
!lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2#
!lstm_cell_2/strided_slice_3/stack
#lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_2/strided_slice_3/stack_1
#lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_2/strided_slice_3/stack_2Ò
lstm_cell_2/strided_slice_3StridedSlice$lstm_cell_2/ReadVariableOp_3:value:0*lstm_cell_2/strided_slice_3/stack:output:0,lstm_cell_2/strided_slice_3/stack_1:output:0,lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2
lstm_cell_2/strided_slice_3¦
lstm_cell_2/MatMul_7MatMullstm_cell_2/mul_7:z:0$lstm_cell_2/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/MatMul_7¢
lstm_cell_2/add_4AddV2lstm_cell_2/BiasAdd_3:output:0lstm_cell_2/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/add_4
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/Sigmoid_2z
lstm_cell_2/Tanh_1Tanhlstm_cell_2/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/Tanh_1
lstm_cell_2/mul_10Mullstm_cell_2/Sigmoid_2:y:0lstm_cell_2/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/mul_10
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÄ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterå
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_2_split_readvariableop_resource+lstm_cell_2_split_1_readvariableop_resource#lstm_cell_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_569081*
condR
while_cond_569080*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÄ   22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:BÿÿÿÿÿÿÿÿÿÄ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿBÄ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime·
IdentityIdentitystrided_slice_3:output:0^lstm_cell_2/ReadVariableOp^lstm_cell_2/ReadVariableOp_1^lstm_cell_2/ReadVariableOp_2^lstm_cell_2/ReadVariableOp_3!^lstm_cell_2/split/ReadVariableOp#^lstm_cell_2/split_1/ReadVariableOp^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿB:::28
lstm_cell_2/ReadVariableOplstm_cell_2/ReadVariableOp2<
lstm_cell_2/ReadVariableOp_1lstm_cell_2/ReadVariableOp_12<
lstm_cell_2/ReadVariableOp_2lstm_cell_2/ReadVariableOp_22<
lstm_cell_2/ReadVariableOp_3lstm_cell_2/ReadVariableOp_32D
 lstm_cell_2/split/ReadVariableOp lstm_cell_2/split/ReadVariableOp2H
"lstm_cell_2/split_1/ReadVariableOp"lstm_cell_2/split_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB
 
_user_specified_nameinputs
ª
m
O__inference_spatial_dropout1d_2_layer_call_and_return_conditional_losses_570158

inputs

identity_1p
IdentityIdentityinputs*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity

Identity_1IdentityIdentity:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¯
Ã
while_cond_568305
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_568305___redundant_placeholder04
0while_while_cond_568305___redundant_placeholder14
0while_while_cond_568305___redundant_placeholder24
0while_while_cond_568305___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ:

_output_shapes
: :

_output_shapes
:

P
4__inference_spatial_dropout1d_2_layer_call_fn_570168

inputs
identityã
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_spatial_dropout1d_2_layer_call_and_return_conditional_losses_5677372
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
t
ñ
"__inference__traced_restore_572006
file_prefix+
'assignvariableop_embedding_2_embeddings%
!assignvariableop_1_dense_2_kernel#
assignvariableop_2_dense_2_bias 
assignvariableop_3_adam_iter"
assignvariableop_4_adam_beta_1"
assignvariableop_5_adam_beta_2!
assignvariableop_6_adam_decay)
%assignvariableop_7_adam_learning_rate0
,assignvariableop_8_lstm_2_lstm_cell_2_kernel:
6assignvariableop_9_lstm_2_lstm_cell_2_recurrent_kernel/
+assignvariableop_10_lstm_2_lstm_cell_2_bias
assignvariableop_11_total
assignvariableop_12_count
assignvariableop_13_total_1
assignvariableop_14_count_15
1assignvariableop_15_adam_embedding_2_embeddings_m-
)assignvariableop_16_adam_dense_2_kernel_m+
'assignvariableop_17_adam_dense_2_bias_m8
4assignvariableop_18_adam_lstm_2_lstm_cell_2_kernel_mB
>assignvariableop_19_adam_lstm_2_lstm_cell_2_recurrent_kernel_m6
2assignvariableop_20_adam_lstm_2_lstm_cell_2_bias_m5
1assignvariableop_21_adam_embedding_2_embeddings_v-
)assignvariableop_22_adam_dense_2_kernel_v+
'assignvariableop_23_adam_dense_2_bias_v8
4assignvariableop_24_adam_lstm_2_lstm_cell_2_kernel_vB
>assignvariableop_25_adam_lstm_2_lstm_cell_2_recurrent_kernel_v6
2assignvariableop_26_adam_lstm_2_lstm_cell_2_bias_v
identity_28¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*¦
valueBB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_namesÆ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices¸
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapesr
p::::::::::::::::::::::::::::**
dtypes 
2	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity¦
AssignVariableOpAssignVariableOp'assignvariableop_embedding_2_embeddingsIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¦
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_2_kernelIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2¤
AssignVariableOp_2AssignVariableOpassignvariableop_2_dense_2_biasIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0	*
_output_shapes
:2

Identity_3¡
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_iterIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4£
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_1Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5£
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_beta_2Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6¢
AssignVariableOp_6AssignVariableOpassignvariableop_6_adam_decayIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7ª
AssignVariableOp_7AssignVariableOp%assignvariableop_7_adam_learning_rateIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8±
AssignVariableOp_8AssignVariableOp,assignvariableop_8_lstm_2_lstm_cell_2_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9»
AssignVariableOp_9AssignVariableOp6assignvariableop_9_lstm_2_lstm_cell_2_recurrent_kernelIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10³
AssignVariableOp_10AssignVariableOp+assignvariableop_10_lstm_2_lstm_cell_2_biasIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11¡
AssignVariableOp_11AssignVariableOpassignvariableop_11_totalIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12¡
AssignVariableOp_12AssignVariableOpassignvariableop_12_countIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13£
AssignVariableOp_13AssignVariableOpassignvariableop_13_total_1Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14£
AssignVariableOp_14AssignVariableOpassignvariableop_14_count_1Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15¹
AssignVariableOp_15AssignVariableOp1assignvariableop_15_adam_embedding_2_embeddings_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16±
AssignVariableOp_16AssignVariableOp)assignvariableop_16_adam_dense_2_kernel_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17¯
AssignVariableOp_17AssignVariableOp'assignvariableop_17_adam_dense_2_bias_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18¼
AssignVariableOp_18AssignVariableOp4assignvariableop_18_adam_lstm_2_lstm_cell_2_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19Æ
AssignVariableOp_19AssignVariableOp>assignvariableop_19_adam_lstm_2_lstm_cell_2_recurrent_kernel_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20º
AssignVariableOp_20AssignVariableOp2assignvariableop_20_adam_lstm_2_lstm_cell_2_bias_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21¹
AssignVariableOp_21AssignVariableOp1assignvariableop_21_adam_embedding_2_embeddings_vIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22±
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_dense_2_kernel_vIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23¯
AssignVariableOp_23AssignVariableOp'assignvariableop_23_adam_dense_2_bias_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24¼
AssignVariableOp_24AssignVariableOp4assignvariableop_24_adam_lstm_2_lstm_cell_2_kernel_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25Æ
AssignVariableOp_25AssignVariableOp>assignvariableop_25_adam_lstm_2_lstm_cell_2_recurrent_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26º
AssignVariableOp_26AssignVariableOp2assignvariableop_26_adam_lstm_2_lstm_cell_2_bias_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_269
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOp°
Identity_27Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_27£
Identity_28IdentityIdentity_27:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_28"#
identity_28Identity_28:output:0*
_input_shapesp
n: :::::::::::::::::::::::::::2$
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
AssignVariableOp_26AssignVariableOp_262(
AssignVariableOp_3AssignVariableOp_32(
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
?

__inference__traced_save_571915
file_prefix5
1savev2_embedding_2_embeddings_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop8
4savev2_lstm_2_lstm_cell_2_kernel_read_readvariableopB
>savev2_lstm_2_lstm_cell_2_recurrent_kernel_read_readvariableop6
2savev2_lstm_2_lstm_cell_2_bias_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop<
8savev2_adam_embedding_2_embeddings_m_read_readvariableop4
0savev2_adam_dense_2_kernel_m_read_readvariableop2
.savev2_adam_dense_2_bias_m_read_readvariableop?
;savev2_adam_lstm_2_lstm_cell_2_kernel_m_read_readvariableopI
Esavev2_adam_lstm_2_lstm_cell_2_recurrent_kernel_m_read_readvariableop=
9savev2_adam_lstm_2_lstm_cell_2_bias_m_read_readvariableop<
8savev2_adam_embedding_2_embeddings_v_read_readvariableop4
0savev2_adam_dense_2_kernel_v_read_readvariableop2
.savev2_adam_dense_2_bias_v_read_readvariableop?
;savev2_adam_lstm_2_lstm_cell_2_kernel_v_read_readvariableopI
Esavev2_adam_lstm_2_lstm_cell_2_recurrent_kernel_v_read_readvariableop=
9savev2_adam_lstm_2_lstm_cell_2_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilename
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*¦
valueBB:layer_with_weights-0/embeddings/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBVlayer_with_weights-0/embeddings/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_namesÀ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*K
valueBB@B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:01savev2_embedding_2_embeddings_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop4savev2_lstm_2_lstm_cell_2_kernel_read_readvariableop>savev2_lstm_2_lstm_cell_2_recurrent_kernel_read_readvariableop2savev2_lstm_2_lstm_cell_2_bias_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop8savev2_adam_embedding_2_embeddings_m_read_readvariableop0savev2_adam_dense_2_kernel_m_read_readvariableop.savev2_adam_dense_2_bias_m_read_readvariableop;savev2_adam_lstm_2_lstm_cell_2_kernel_m_read_readvariableopEsavev2_adam_lstm_2_lstm_cell_2_recurrent_kernel_m_read_readvariableop9savev2_adam_lstm_2_lstm_cell_2_bias_m_read_readvariableop8savev2_adam_embedding_2_embeddings_v_read_readvariableop0savev2_adam_dense_2_kernel_v_read_readvariableop.savev2_adam_dense_2_bias_v_read_readvariableop;savev2_adam_lstm_2_lstm_cell_2_kernel_v_read_readvariableopEsavev2_adam_lstm_2_lstm_cell_2_recurrent_kernel_v_read_readvariableop9savev2_adam_lstm_2_lstm_cell_2_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 **
dtypes 
2	2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*ß
_input_shapesÍ
Ê: :
À>:	Ä:: : : : : :
:
Ä:: : : : :
À>:	Ä::
:
Ä::
À>:	Ä::
:
Ä:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:&"
 
_output_shapes
:
À>:%!

_output_shapes
:	Ä: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :&	"
 
_output_shapes
:
:&
"
 
_output_shapes
:
Ä:!

_output_shapes	
::
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
: :&"
 
_output_shapes
:
À>:%!

_output_shapes
:	Ä: 

_output_shapes
::&"
 
_output_shapes
:
:&"
 
_output_shapes
:
Ä:!

_output_shapes	
::&"
 
_output_shapes
:
À>:%!

_output_shapes
:	Ä: 

_output_shapes
::&"
 
_output_shapes
:
:&"
 
_output_shapes
:
Ä:!

_output_shapes	
::

_output_shapes
: 

´
B__inference_lstm_2_layer_call_and_return_conditional_losses_571503

inputs-
)lstm_cell_2_split_readvariableop_resource/
+lstm_cell_2_split_1_readvariableop_resource'
#lstm_cell_2_readvariableop_resource
identity¢lstm_cell_2/ReadVariableOp¢lstm_cell_2/ReadVariableOp_1¢lstm_cell_2/ReadVariableOp_2¢lstm_cell_2/ReadVariableOp_3¢ lstm_cell_2/split/ReadVariableOp¢"lstm_cell_2/split_1/ReadVariableOp¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ä2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ä2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ä2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ä2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:Bÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ý
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2
lstm_cell_2/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_2/ones_like/Shape
lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_2/ones_like/Constµ
lstm_cell_2/ones_likeFill$lstm_cell_2/ones_like/Shape:output:0$lstm_cell_2/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/ones_like|
lstm_cell_2/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_2/ones_like_1/Shape
lstm_cell_2/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_2/ones_like_1/Const½
lstm_cell_2/ones_like_1Fill&lstm_cell_2/ones_like_1/Shape:output:0&lstm_cell_2/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/ones_like_1
lstm_cell_2/mulMulstrided_slice_2:output:0lstm_cell_2/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/mul
lstm_cell_2/mul_1Mulstrided_slice_2:output:0lstm_cell_2/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/mul_1
lstm_cell_2/mul_2Mulstrided_slice_2:output:0lstm_cell_2/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/mul_2
lstm_cell_2/mul_3Mulstrided_slice_2:output:0lstm_cell_2/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/mul_3h
lstm_cell_2/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_2/Const|
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_2/split/split_dim°
 lstm_cell_2/split/ReadVariableOpReadVariableOp)lstm_cell_2_split_readvariableop_resource* 
_output_shapes
:
*
dtype02"
 lstm_cell_2/split/ReadVariableOpß
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0(lstm_cell_2/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
Ä:
Ä:
Ä:
Ä*
	num_split2
lstm_cell_2/split
lstm_cell_2/MatMulMatMullstm_cell_2/mul:z:0lstm_cell_2/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/MatMul
lstm_cell_2/MatMul_1MatMullstm_cell_2/mul_1:z:0lstm_cell_2/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/MatMul_1
lstm_cell_2/MatMul_2MatMullstm_cell_2/mul_2:z:0lstm_cell_2/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/MatMul_2
lstm_cell_2/MatMul_3MatMullstm_cell_2/mul_3:z:0lstm_cell_2/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/MatMul_3l
lstm_cell_2/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_2/Const_1
lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_2/split_1/split_dim±
"lstm_cell_2/split_1/ReadVariableOpReadVariableOp+lstm_cell_2_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02$
"lstm_cell_2/split_1/ReadVariableOpÓ
lstm_cell_2/split_1Split&lstm_cell_2/split_1/split_dim:output:0*lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ä:Ä:Ä:Ä*
	num_split2
lstm_cell_2/split_1¤
lstm_cell_2/BiasAddBiasAddlstm_cell_2/MatMul:product:0lstm_cell_2/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/BiasAddª
lstm_cell_2/BiasAdd_1BiasAddlstm_cell_2/MatMul_1:product:0lstm_cell_2/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/BiasAdd_1ª
lstm_cell_2/BiasAdd_2BiasAddlstm_cell_2/MatMul_2:product:0lstm_cell_2/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/BiasAdd_2ª
lstm_cell_2/BiasAdd_3BiasAddlstm_cell_2/MatMul_3:product:0lstm_cell_2/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/BiasAdd_3
lstm_cell_2/mul_4Mulzeros:output:0 lstm_cell_2/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/mul_4
lstm_cell_2/mul_5Mulzeros:output:0 lstm_cell_2/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/mul_5
lstm_cell_2/mul_6Mulzeros:output:0 lstm_cell_2/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/mul_6
lstm_cell_2/mul_7Mulzeros:output:0 lstm_cell_2/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/mul_7
lstm_cell_2/ReadVariableOpReadVariableOp#lstm_cell_2_readvariableop_resource* 
_output_shapes
:
Ä*
dtype02
lstm_cell_2/ReadVariableOp
lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_2/strided_slice/stack
!lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ä   2#
!lstm_cell_2/strided_slice/stack_1
!lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_2/strided_slice/stack_2Æ
lstm_cell_2/strided_sliceStridedSlice"lstm_cell_2/ReadVariableOp:value:0(lstm_cell_2/strided_slice/stack:output:0*lstm_cell_2/strided_slice/stack_1:output:0*lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2
lstm_cell_2/strided_slice¤
lstm_cell_2/MatMul_4MatMullstm_cell_2/mul_4:z:0"lstm_cell_2/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/MatMul_4
lstm_cell_2/addAddV2lstm_cell_2/BiasAdd:output:0lstm_cell_2/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/add}
lstm_cell_2/SigmoidSigmoidlstm_cell_2/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/Sigmoid¢
lstm_cell_2/ReadVariableOp_1ReadVariableOp#lstm_cell_2_readvariableop_resource* 
_output_shapes
:
Ä*
dtype02
lstm_cell_2/ReadVariableOp_1
!lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ä   2#
!lstm_cell_2/strided_slice_1/stack
#lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_2/strided_slice_1/stack_1
#lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_2/strided_slice_1/stack_2Ò
lstm_cell_2/strided_slice_1StridedSlice$lstm_cell_2/ReadVariableOp_1:value:0*lstm_cell_2/strided_slice_1/stack:output:0,lstm_cell_2/strided_slice_1/stack_1:output:0,lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2
lstm_cell_2/strided_slice_1¦
lstm_cell_2/MatMul_5MatMullstm_cell_2/mul_5:z:0$lstm_cell_2/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/MatMul_5¢
lstm_cell_2/add_1AddV2lstm_cell_2/BiasAdd_1:output:0lstm_cell_2/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/add_1
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/Sigmoid_1
lstm_cell_2/mul_8Mullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/mul_8¢
lstm_cell_2/ReadVariableOp_2ReadVariableOp#lstm_cell_2_readvariableop_resource* 
_output_shapes
:
Ä*
dtype02
lstm_cell_2/ReadVariableOp_2
!lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_2/strided_slice_2/stack
#lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2%
#lstm_cell_2/strided_slice_2/stack_1
#lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_2/strided_slice_2/stack_2Ò
lstm_cell_2/strided_slice_2StridedSlice$lstm_cell_2/ReadVariableOp_2:value:0*lstm_cell_2/strided_slice_2/stack:output:0,lstm_cell_2/strided_slice_2/stack_1:output:0,lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2
lstm_cell_2/strided_slice_2¦
lstm_cell_2/MatMul_6MatMullstm_cell_2/mul_6:z:0$lstm_cell_2/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/MatMul_6¢
lstm_cell_2/add_2AddV2lstm_cell_2/BiasAdd_2:output:0lstm_cell_2/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/add_2v
lstm_cell_2/TanhTanhlstm_cell_2/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/Tanh
lstm_cell_2/mul_9Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/mul_9
lstm_cell_2/add_3AddV2lstm_cell_2/mul_8:z:0lstm_cell_2/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/add_3¢
lstm_cell_2/ReadVariableOp_3ReadVariableOp#lstm_cell_2_readvariableop_resource* 
_output_shapes
:
Ä*
dtype02
lstm_cell_2/ReadVariableOp_3
!lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2#
!lstm_cell_2/strided_slice_3/stack
#lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_2/strided_slice_3/stack_1
#lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_2/strided_slice_3/stack_2Ò
lstm_cell_2/strided_slice_3StridedSlice$lstm_cell_2/ReadVariableOp_3:value:0*lstm_cell_2/strided_slice_3/stack:output:0,lstm_cell_2/strided_slice_3/stack_1:output:0,lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2
lstm_cell_2/strided_slice_3¦
lstm_cell_2/MatMul_7MatMullstm_cell_2/mul_7:z:0$lstm_cell_2/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/MatMul_7¢
lstm_cell_2/add_4AddV2lstm_cell_2/BiasAdd_3:output:0lstm_cell_2/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/add_4
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/Sigmoid_2z
lstm_cell_2/Tanh_1Tanhlstm_cell_2/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/Tanh_1
lstm_cell_2/mul_10Mullstm_cell_2/Sigmoid_2:y:0lstm_cell_2/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/mul_10
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÄ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterå
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_2_split_readvariableop_resource+lstm_cell_2_split_1_readvariableop_resource#lstm_cell_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_571367*
condR
while_cond_571366*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÄ   22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:BÿÿÿÿÿÿÿÿÿÄ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿBÄ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime·
IdentityIdentitystrided_slice_3:output:0^lstm_cell_2/ReadVariableOp^lstm_cell_2/ReadVariableOp_1^lstm_cell_2/ReadVariableOp_2^lstm_cell_2/ReadVariableOp_3!^lstm_cell_2/split/ReadVariableOp#^lstm_cell_2/split_1/ReadVariableOp^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿB:::28
lstm_cell_2/ReadVariableOplstm_cell_2/ReadVariableOp2<
lstm_cell_2/ReadVariableOp_1lstm_cell_2/ReadVariableOp_12<
lstm_cell_2/ReadVariableOp_2lstm_cell_2/ReadVariableOp_22<
lstm_cell_2/ReadVariableOp_3lstm_cell_2/ReadVariableOp_32D
 lstm_cell_2/split/ReadVariableOp lstm_cell_2/split/ReadVariableOp2H
"lstm_cell_2/split_1/ReadVariableOp"lstm_cell_2/split_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB
 
_user_specified_nameinputs
Ê
â
H__inference_sequential_4_layer_call_and_return_conditional_losses_569811

inputs'
#embedding_2_embedding_lookup_5694014
0lstm_2_lstm_cell_2_split_readvariableop_resource6
2lstm_2_lstm_cell_2_split_1_readvariableop_resource.
*lstm_2_lstm_cell_2_readvariableop_resource*
&dense_2_matmul_readvariableop_resource+
'dense_2_biasadd_readvariableop_resource
identity¢dense_2/BiasAdd/ReadVariableOp¢dense_2/MatMul/ReadVariableOp¢embedding_2/embedding_lookup¢!lstm_2/lstm_cell_2/ReadVariableOp¢#lstm_2/lstm_cell_2/ReadVariableOp_1¢#lstm_2/lstm_cell_2/ReadVariableOp_2¢#lstm_2/lstm_cell_2/ReadVariableOp_3¢'lstm_2/lstm_cell_2/split/ReadVariableOp¢)lstm_2/lstm_cell_2/split_1/ReadVariableOp¢lstm_2/whileu
embedding_2/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2
embedding_2/Castº
embedding_2/embedding_lookupResourceGather#embedding_2_embedding_lookup_569401embedding_2/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*6
_class,
*(loc:@embedding_2/embedding_lookup/569401*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB*
dtype02
embedding_2/embedding_lookup
%embedding_2/embedding_lookup/IdentityIdentity%embedding_2/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*6
_class,
*(loc:@embedding_2/embedding_lookup/569401*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2'
%embedding_2/embedding_lookup/IdentityÅ
'embedding_2/embedding_lookup/Identity_1Identity.embedding_2/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2)
'embedding_2/embedding_lookup/Identity_1
spatial_dropout1d_2/ShapeShape0embedding_2/embedding_lookup/Identity_1:output:0*
T0*
_output_shapes
:2
spatial_dropout1d_2/Shape
'spatial_dropout1d_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'spatial_dropout1d_2/strided_slice/stack 
)spatial_dropout1d_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)spatial_dropout1d_2/strided_slice/stack_1 
)spatial_dropout1d_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)spatial_dropout1d_2/strided_slice/stack_2Ú
!spatial_dropout1d_2/strided_sliceStridedSlice"spatial_dropout1d_2/Shape:output:00spatial_dropout1d_2/strided_slice/stack:output:02spatial_dropout1d_2/strided_slice/stack_1:output:02spatial_dropout1d_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!spatial_dropout1d_2/strided_slice 
)spatial_dropout1d_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2+
)spatial_dropout1d_2/strided_slice_1/stack¤
+spatial_dropout1d_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+spatial_dropout1d_2/strided_slice_1/stack_1¤
+spatial_dropout1d_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+spatial_dropout1d_2/strided_slice_1/stack_2ä
#spatial_dropout1d_2/strided_slice_1StridedSlice"spatial_dropout1d_2/Shape:output:02spatial_dropout1d_2/strided_slice_1/stack:output:04spatial_dropout1d_2/strided_slice_1/stack_1:output:04spatial_dropout1d_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#spatial_dropout1d_2/strided_slice_1
!spatial_dropout1d_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2#
!spatial_dropout1d_2/dropout/ConstÞ
spatial_dropout1d_2/dropout/MulMul0embedding_2/embedding_lookup/Identity_1:output:0*spatial_dropout1d_2/dropout/Const:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2!
spatial_dropout1d_2/dropout/Mulª
2spatial_dropout1d_2/dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :24
2spatial_dropout1d_2/dropout/random_uniform/shape/1±
0spatial_dropout1d_2/dropout/random_uniform/shapePack*spatial_dropout1d_2/strided_slice:output:0;spatial_dropout1d_2/dropout/random_uniform/shape/1:output:0,spatial_dropout1d_2/strided_slice_1:output:0*
N*
T0*
_output_shapes
:22
0spatial_dropout1d_2/dropout/random_uniform/shape
8spatial_dropout1d_2/dropout/random_uniform/RandomUniformRandomUniform9spatial_dropout1d_2/dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype02:
8spatial_dropout1d_2/dropout/random_uniform/RandomUniform
*spatial_dropout1d_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2,
*spatial_dropout1d_2/dropout/GreaterEqual/y
(spatial_dropout1d_2/dropout/GreaterEqualGreaterEqualAspatial_dropout1d_2/dropout/random_uniform/RandomUniform:output:03spatial_dropout1d_2/dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2*
(spatial_dropout1d_2/dropout/GreaterEqualÈ
 spatial_dropout1d_2/dropout/CastCast,spatial_dropout1d_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2"
 spatial_dropout1d_2/dropout/CastÏ
!spatial_dropout1d_2/dropout/Mul_1Mul#spatial_dropout1d_2/dropout/Mul:z:0$spatial_dropout1d_2/dropout/Cast:y:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2#
!spatial_dropout1d_2/dropout/Mul_1q
lstm_2/ShapeShape%spatial_dropout1d_2/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
lstm_2/Shape
lstm_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_2/strided_slice/stack
lstm_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_2/strided_slice/stack_1
lstm_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_2/strided_slice/stack_2
lstm_2/strided_sliceStridedSlicelstm_2/Shape:output:0#lstm_2/strided_slice/stack:output:0%lstm_2/strided_slice/stack_1:output:0%lstm_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_2/strided_slicek
lstm_2/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ä2
lstm_2/zeros/mul/y
lstm_2/zeros/mulMullstm_2/strided_slice:output:0lstm_2/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_2/zeros/mulm
lstm_2/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_2/zeros/Less/y
lstm_2/zeros/LessLesslstm_2/zeros/mul:z:0lstm_2/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_2/zeros/Lessq
lstm_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ä2
lstm_2/zeros/packed/1
lstm_2/zeros/packedPacklstm_2/strided_slice:output:0lstm_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_2/zeros/packedm
lstm_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_2/zeros/Const
lstm_2/zerosFilllstm_2/zeros/packed:output:0lstm_2/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/zeroso
lstm_2/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ä2
lstm_2/zeros_1/mul/y
lstm_2/zeros_1/mulMullstm_2/strided_slice:output:0lstm_2/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_2/zeros_1/mulq
lstm_2/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_2/zeros_1/Less/y
lstm_2/zeros_1/LessLesslstm_2/zeros_1/mul:z:0lstm_2/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_2/zeros_1/Lessu
lstm_2/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ä2
lstm_2/zeros_1/packed/1¥
lstm_2/zeros_1/packedPacklstm_2/strided_slice:output:0 lstm_2/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_2/zeros_1/packedq
lstm_2/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_2/zeros_1/Const
lstm_2/zeros_1Filllstm_2/zeros_1/packed:output:0lstm_2/zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/zeros_1
lstm_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_2/transpose/perm¯
lstm_2/transpose	Transpose%spatial_dropout1d_2/dropout/Mul_1:z:0lstm_2/transpose/perm:output:0*
T0*,
_output_shapes
:Bÿÿÿÿÿÿÿÿÿ2
lstm_2/transposed
lstm_2/Shape_1Shapelstm_2/transpose:y:0*
T0*
_output_shapes
:2
lstm_2/Shape_1
lstm_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_2/strided_slice_1/stack
lstm_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_1/stack_1
lstm_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_1/stack_2
lstm_2/strided_slice_1StridedSlicelstm_2/Shape_1:output:0%lstm_2/strided_slice_1/stack:output:0'lstm_2/strided_slice_1/stack_1:output:0'lstm_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_2/strided_slice_1
"lstm_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"lstm_2/TensorArrayV2/element_shapeÎ
lstm_2/TensorArrayV2TensorListReserve+lstm_2/TensorArrayV2/element_shape:output:0lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_2/TensorArrayV2Í
<lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2>
<lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape
.lstm_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_2/transpose:y:0Elstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_2/TensorArrayUnstack/TensorListFromTensor
lstm_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_2/strided_slice_2/stack
lstm_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_2/stack_1
lstm_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_2/stack_2§
lstm_2/strided_slice_2StridedSlicelstm_2/transpose:y:0%lstm_2/strided_slice_2/stack:output:0'lstm_2/strided_slice_2/stack_1:output:0'lstm_2/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_2/strided_slice_2
"lstm_2/lstm_cell_2/ones_like/ShapeShapelstm_2/strided_slice_2:output:0*
T0*
_output_shapes
:2$
"lstm_2/lstm_cell_2/ones_like/Shape
"lstm_2/lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"lstm_2/lstm_cell_2/ones_like/ConstÑ
lstm_2/lstm_cell_2/ones_likeFill+lstm_2/lstm_cell_2/ones_like/Shape:output:0+lstm_2/lstm_cell_2/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_2/lstm_cell_2/ones_like
 lstm_2/lstm_cell_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2"
 lstm_2/lstm_cell_2/dropout/ConstÌ
lstm_2/lstm_cell_2/dropout/MulMul%lstm_2/lstm_cell_2/ones_like:output:0)lstm_2/lstm_cell_2/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
lstm_2/lstm_cell_2/dropout/Mul
 lstm_2/lstm_cell_2/dropout/ShapeShape%lstm_2/lstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2"
 lstm_2/lstm_cell_2/dropout/Shape
7lstm_2/lstm_cell_2/dropout/random_uniform/RandomUniformRandomUniform)lstm_2/lstm_cell_2/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2ùØ29
7lstm_2/lstm_cell_2/dropout/random_uniform/RandomUniform
)lstm_2/lstm_cell_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2+
)lstm_2/lstm_cell_2/dropout/GreaterEqual/y
'lstm_2/lstm_cell_2/dropout/GreaterEqualGreaterEqual@lstm_2/lstm_cell_2/dropout/random_uniform/RandomUniform:output:02lstm_2/lstm_cell_2/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2)
'lstm_2/lstm_cell_2/dropout/GreaterEqual¹
lstm_2/lstm_cell_2/dropout/CastCast+lstm_2/lstm_cell_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
lstm_2/lstm_cell_2/dropout/CastÇ
 lstm_2/lstm_cell_2/dropout/Mul_1Mul"lstm_2/lstm_cell_2/dropout/Mul:z:0#lstm_2/lstm_cell_2/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_2/lstm_cell_2/dropout/Mul_1
"lstm_2/lstm_cell_2/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"lstm_2/lstm_cell_2/dropout_1/ConstÒ
 lstm_2/lstm_cell_2/dropout_1/MulMul%lstm_2/lstm_cell_2/ones_like:output:0+lstm_2/lstm_cell_2/dropout_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_2/lstm_cell_2/dropout_1/Mul
"lstm_2/lstm_cell_2/dropout_1/ShapeShape%lstm_2/lstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm_2/lstm_cell_2/dropout_1/Shape
9lstm_2/lstm_cell_2/dropout_1/random_uniform/RandomUniformRandomUniform+lstm_2/lstm_cell_2/dropout_1/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2E2;
9lstm_2/lstm_cell_2/dropout_1/random_uniform/RandomUniform
+lstm_2/lstm_cell_2/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2-
+lstm_2/lstm_cell_2/dropout_1/GreaterEqual/y
)lstm_2/lstm_cell_2/dropout_1/GreaterEqualGreaterEqualBlstm_2/lstm_cell_2/dropout_1/random_uniform/RandomUniform:output:04lstm_2/lstm_cell_2/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)lstm_2/lstm_cell_2/dropout_1/GreaterEqual¿
!lstm_2/lstm_cell_2/dropout_1/CastCast-lstm_2/lstm_cell_2/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!lstm_2/lstm_cell_2/dropout_1/CastÏ
"lstm_2/lstm_cell_2/dropout_1/Mul_1Mul$lstm_2/lstm_cell_2/dropout_1/Mul:z:0%lstm_2/lstm_cell_2/dropout_1/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_2/lstm_cell_2/dropout_1/Mul_1
"lstm_2/lstm_cell_2/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"lstm_2/lstm_cell_2/dropout_2/ConstÒ
 lstm_2/lstm_cell_2/dropout_2/MulMul%lstm_2/lstm_cell_2/ones_like:output:0+lstm_2/lstm_cell_2/dropout_2/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_2/lstm_cell_2/dropout_2/Mul
"lstm_2/lstm_cell_2/dropout_2/ShapeShape%lstm_2/lstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm_2/lstm_cell_2/dropout_2/Shape
9lstm_2/lstm_cell_2/dropout_2/random_uniform/RandomUniformRandomUniform+lstm_2/lstm_cell_2/dropout_2/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2ê·ä2;
9lstm_2/lstm_cell_2/dropout_2/random_uniform/RandomUniform
+lstm_2/lstm_cell_2/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2-
+lstm_2/lstm_cell_2/dropout_2/GreaterEqual/y
)lstm_2/lstm_cell_2/dropout_2/GreaterEqualGreaterEqualBlstm_2/lstm_cell_2/dropout_2/random_uniform/RandomUniform:output:04lstm_2/lstm_cell_2/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)lstm_2/lstm_cell_2/dropout_2/GreaterEqual¿
!lstm_2/lstm_cell_2/dropout_2/CastCast-lstm_2/lstm_cell_2/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!lstm_2/lstm_cell_2/dropout_2/CastÏ
"lstm_2/lstm_cell_2/dropout_2/Mul_1Mul$lstm_2/lstm_cell_2/dropout_2/Mul:z:0%lstm_2/lstm_cell_2/dropout_2/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_2/lstm_cell_2/dropout_2/Mul_1
"lstm_2/lstm_cell_2/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"lstm_2/lstm_cell_2/dropout_3/ConstÒ
 lstm_2/lstm_cell_2/dropout_3/MulMul%lstm_2/lstm_cell_2/ones_like:output:0+lstm_2/lstm_cell_2/dropout_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_2/lstm_cell_2/dropout_3/Mul
"lstm_2/lstm_cell_2/dropout_3/ShapeShape%lstm_2/lstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2$
"lstm_2/lstm_cell_2/dropout_3/Shape
9lstm_2/lstm_cell_2/dropout_3/random_uniform/RandomUniformRandomUniform+lstm_2/lstm_cell_2/dropout_3/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2¤«2;
9lstm_2/lstm_cell_2/dropout_3/random_uniform/RandomUniform
+lstm_2/lstm_cell_2/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2-
+lstm_2/lstm_cell_2/dropout_3/GreaterEqual/y
)lstm_2/lstm_cell_2/dropout_3/GreaterEqualGreaterEqualBlstm_2/lstm_cell_2/dropout_3/random_uniform/RandomUniform:output:04lstm_2/lstm_cell_2/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)lstm_2/lstm_cell_2/dropout_3/GreaterEqual¿
!lstm_2/lstm_cell_2/dropout_3/CastCast-lstm_2/lstm_cell_2/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!lstm_2/lstm_cell_2/dropout_3/CastÏ
"lstm_2/lstm_cell_2/dropout_3/Mul_1Mul$lstm_2/lstm_cell_2/dropout_3/Mul:z:0%lstm_2/lstm_cell_2/dropout_3/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_2/lstm_cell_2/dropout_3/Mul_1
$lstm_2/lstm_cell_2/ones_like_1/ShapeShapelstm_2/zeros:output:0*
T0*
_output_shapes
:2&
$lstm_2/lstm_cell_2/ones_like_1/Shape
$lstm_2/lstm_cell_2/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2&
$lstm_2/lstm_cell_2/ones_like_1/ConstÙ
lstm_2/lstm_cell_2/ones_like_1Fill-lstm_2/lstm_cell_2/ones_like_1/Shape:output:0-lstm_2/lstm_cell_2/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2 
lstm_2/lstm_cell_2/ones_like_1
"lstm_2/lstm_cell_2/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"lstm_2/lstm_cell_2/dropout_4/ConstÔ
 lstm_2/lstm_cell_2/dropout_4/MulMul'lstm_2/lstm_cell_2/ones_like_1:output:0+lstm_2/lstm_cell_2/dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2"
 lstm_2/lstm_cell_2/dropout_4/Mul
"lstm_2/lstm_cell_2/dropout_4/ShapeShape'lstm_2/lstm_cell_2/ones_like_1:output:0*
T0*
_output_shapes
:2$
"lstm_2/lstm_cell_2/dropout_4/Shape
9lstm_2/lstm_cell_2/dropout_4/random_uniform/RandomUniformRandomUniform+lstm_2/lstm_cell_2/dropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
dtype0*
seed±ÿå)*
seed2³¯2;
9lstm_2/lstm_cell_2/dropout_4/random_uniform/RandomUniform
+lstm_2/lstm_cell_2/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2-
+lstm_2/lstm_cell_2/dropout_4/GreaterEqual/y
)lstm_2/lstm_cell_2/dropout_4/GreaterEqualGreaterEqualBlstm_2/lstm_cell_2/dropout_4/random_uniform/RandomUniform:output:04lstm_2/lstm_cell_2/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2+
)lstm_2/lstm_cell_2/dropout_4/GreaterEqual¿
!lstm_2/lstm_cell_2/dropout_4/CastCast-lstm_2/lstm_cell_2/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2#
!lstm_2/lstm_cell_2/dropout_4/CastÏ
"lstm_2/lstm_cell_2/dropout_4/Mul_1Mul$lstm_2/lstm_cell_2/dropout_4/Mul:z:0%lstm_2/lstm_cell_2/dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2$
"lstm_2/lstm_cell_2/dropout_4/Mul_1
"lstm_2/lstm_cell_2/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"lstm_2/lstm_cell_2/dropout_5/ConstÔ
 lstm_2/lstm_cell_2/dropout_5/MulMul'lstm_2/lstm_cell_2/ones_like_1:output:0+lstm_2/lstm_cell_2/dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2"
 lstm_2/lstm_cell_2/dropout_5/Mul
"lstm_2/lstm_cell_2/dropout_5/ShapeShape'lstm_2/lstm_cell_2/ones_like_1:output:0*
T0*
_output_shapes
:2$
"lstm_2/lstm_cell_2/dropout_5/Shape
9lstm_2/lstm_cell_2/dropout_5/random_uniform/RandomUniformRandomUniform+lstm_2/lstm_cell_2/dropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
dtype0*
seed±ÿå)*
seed2éÏ2;
9lstm_2/lstm_cell_2/dropout_5/random_uniform/RandomUniform
+lstm_2/lstm_cell_2/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2-
+lstm_2/lstm_cell_2/dropout_5/GreaterEqual/y
)lstm_2/lstm_cell_2/dropout_5/GreaterEqualGreaterEqualBlstm_2/lstm_cell_2/dropout_5/random_uniform/RandomUniform:output:04lstm_2/lstm_cell_2/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2+
)lstm_2/lstm_cell_2/dropout_5/GreaterEqual¿
!lstm_2/lstm_cell_2/dropout_5/CastCast-lstm_2/lstm_cell_2/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2#
!lstm_2/lstm_cell_2/dropout_5/CastÏ
"lstm_2/lstm_cell_2/dropout_5/Mul_1Mul$lstm_2/lstm_cell_2/dropout_5/Mul:z:0%lstm_2/lstm_cell_2/dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2$
"lstm_2/lstm_cell_2/dropout_5/Mul_1
"lstm_2/lstm_cell_2/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"lstm_2/lstm_cell_2/dropout_6/ConstÔ
 lstm_2/lstm_cell_2/dropout_6/MulMul'lstm_2/lstm_cell_2/ones_like_1:output:0+lstm_2/lstm_cell_2/dropout_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2"
 lstm_2/lstm_cell_2/dropout_6/Mul
"lstm_2/lstm_cell_2/dropout_6/ShapeShape'lstm_2/lstm_cell_2/ones_like_1:output:0*
T0*
_output_shapes
:2$
"lstm_2/lstm_cell_2/dropout_6/Shape
9lstm_2/lstm_cell_2/dropout_6/random_uniform/RandomUniformRandomUniform+lstm_2/lstm_cell_2/dropout_6/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
dtype0*
seed±ÿå)*
seed2¶ª2;
9lstm_2/lstm_cell_2/dropout_6/random_uniform/RandomUniform
+lstm_2/lstm_cell_2/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2-
+lstm_2/lstm_cell_2/dropout_6/GreaterEqual/y
)lstm_2/lstm_cell_2/dropout_6/GreaterEqualGreaterEqualBlstm_2/lstm_cell_2/dropout_6/random_uniform/RandomUniform:output:04lstm_2/lstm_cell_2/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2+
)lstm_2/lstm_cell_2/dropout_6/GreaterEqual¿
!lstm_2/lstm_cell_2/dropout_6/CastCast-lstm_2/lstm_cell_2/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2#
!lstm_2/lstm_cell_2/dropout_6/CastÏ
"lstm_2/lstm_cell_2/dropout_6/Mul_1Mul$lstm_2/lstm_cell_2/dropout_6/Mul:z:0%lstm_2/lstm_cell_2/dropout_6/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2$
"lstm_2/lstm_cell_2/dropout_6/Mul_1
"lstm_2/lstm_cell_2/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2$
"lstm_2/lstm_cell_2/dropout_7/ConstÔ
 lstm_2/lstm_cell_2/dropout_7/MulMul'lstm_2/lstm_cell_2/ones_like_1:output:0+lstm_2/lstm_cell_2/dropout_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2"
 lstm_2/lstm_cell_2/dropout_7/Mul
"lstm_2/lstm_cell_2/dropout_7/ShapeShape'lstm_2/lstm_cell_2/ones_like_1:output:0*
T0*
_output_shapes
:2$
"lstm_2/lstm_cell_2/dropout_7/Shape
9lstm_2/lstm_cell_2/dropout_7/random_uniform/RandomUniformRandomUniform+lstm_2/lstm_cell_2/dropout_7/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
dtype0*
seed±ÿå)*
seed2J2;
9lstm_2/lstm_cell_2/dropout_7/random_uniform/RandomUniform
+lstm_2/lstm_cell_2/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2-
+lstm_2/lstm_cell_2/dropout_7/GreaterEqual/y
)lstm_2/lstm_cell_2/dropout_7/GreaterEqualGreaterEqualBlstm_2/lstm_cell_2/dropout_7/random_uniform/RandomUniform:output:04lstm_2/lstm_cell_2/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2+
)lstm_2/lstm_cell_2/dropout_7/GreaterEqual¿
!lstm_2/lstm_cell_2/dropout_7/CastCast-lstm_2/lstm_cell_2/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2#
!lstm_2/lstm_cell_2/dropout_7/CastÏ
"lstm_2/lstm_cell_2/dropout_7/Mul_1Mul$lstm_2/lstm_cell_2/dropout_7/Mul:z:0%lstm_2/lstm_cell_2/dropout_7/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2$
"lstm_2/lstm_cell_2/dropout_7/Mul_1±
lstm_2/lstm_cell_2/mulMullstm_2/strided_slice_2:output:0$lstm_2/lstm_cell_2/dropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_2/lstm_cell_2/mul·
lstm_2/lstm_cell_2/mul_1Mullstm_2/strided_slice_2:output:0&lstm_2/lstm_cell_2/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_2/lstm_cell_2/mul_1·
lstm_2/lstm_cell_2/mul_2Mullstm_2/strided_slice_2:output:0&lstm_2/lstm_cell_2/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_2/lstm_cell_2/mul_2·
lstm_2/lstm_cell_2/mul_3Mullstm_2/strided_slice_2:output:0&lstm_2/lstm_cell_2/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_2/lstm_cell_2/mul_3v
lstm_2/lstm_cell_2/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_2/lstm_cell_2/Const
"lstm_2/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"lstm_2/lstm_cell_2/split/split_dimÅ
'lstm_2/lstm_cell_2/split/ReadVariableOpReadVariableOp0lstm_2_lstm_cell_2_split_readvariableop_resource* 
_output_shapes
:
*
dtype02)
'lstm_2/lstm_cell_2/split/ReadVariableOpû
lstm_2/lstm_cell_2/splitSplit+lstm_2/lstm_cell_2/split/split_dim:output:0/lstm_2/lstm_cell_2/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
Ä:
Ä:
Ä:
Ä*
	num_split2
lstm_2/lstm_cell_2/split²
lstm_2/lstm_cell_2/MatMulMatMullstm_2/lstm_cell_2/mul:z:0!lstm_2/lstm_cell_2/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/MatMul¸
lstm_2/lstm_cell_2/MatMul_1MatMullstm_2/lstm_cell_2/mul_1:z:0!lstm_2/lstm_cell_2/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/MatMul_1¸
lstm_2/lstm_cell_2/MatMul_2MatMullstm_2/lstm_cell_2/mul_2:z:0!lstm_2/lstm_cell_2/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/MatMul_2¸
lstm_2/lstm_cell_2/MatMul_3MatMullstm_2/lstm_cell_2/mul_3:z:0!lstm_2/lstm_cell_2/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/MatMul_3z
lstm_2/lstm_cell_2/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_2/lstm_cell_2/Const_1
$lstm_2/lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$lstm_2/lstm_cell_2/split_1/split_dimÆ
)lstm_2/lstm_cell_2/split_1/ReadVariableOpReadVariableOp2lstm_2_lstm_cell_2_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02+
)lstm_2/lstm_cell_2/split_1/ReadVariableOpï
lstm_2/lstm_cell_2/split_1Split-lstm_2/lstm_cell_2/split_1/split_dim:output:01lstm_2/lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ä:Ä:Ä:Ä*
	num_split2
lstm_2/lstm_cell_2/split_1À
lstm_2/lstm_cell_2/BiasAddBiasAdd#lstm_2/lstm_cell_2/MatMul:product:0#lstm_2/lstm_cell_2/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/BiasAddÆ
lstm_2/lstm_cell_2/BiasAdd_1BiasAdd%lstm_2/lstm_cell_2/MatMul_1:product:0#lstm_2/lstm_cell_2/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/BiasAdd_1Æ
lstm_2/lstm_cell_2/BiasAdd_2BiasAdd%lstm_2/lstm_cell_2/MatMul_2:product:0#lstm_2/lstm_cell_2/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/BiasAdd_2Æ
lstm_2/lstm_cell_2/BiasAdd_3BiasAdd%lstm_2/lstm_cell_2/MatMul_3:product:0#lstm_2/lstm_cell_2/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/BiasAdd_3­
lstm_2/lstm_cell_2/mul_4Mullstm_2/zeros:output:0&lstm_2/lstm_cell_2/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/mul_4­
lstm_2/lstm_cell_2/mul_5Mullstm_2/zeros:output:0&lstm_2/lstm_cell_2/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/mul_5­
lstm_2/lstm_cell_2/mul_6Mullstm_2/zeros:output:0&lstm_2/lstm_cell_2/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/mul_6­
lstm_2/lstm_cell_2/mul_7Mullstm_2/zeros:output:0&lstm_2/lstm_cell_2/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/mul_7³
!lstm_2/lstm_cell_2/ReadVariableOpReadVariableOp*lstm_2_lstm_cell_2_readvariableop_resource* 
_output_shapes
:
Ä*
dtype02#
!lstm_2/lstm_cell_2/ReadVariableOp¡
&lstm_2/lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&lstm_2/lstm_cell_2/strided_slice/stack¥
(lstm_2/lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ä   2*
(lstm_2/lstm_cell_2/strided_slice/stack_1¥
(lstm_2/lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(lstm_2/lstm_cell_2/strided_slice/stack_2ð
 lstm_2/lstm_cell_2/strided_sliceStridedSlice)lstm_2/lstm_cell_2/ReadVariableOp:value:0/lstm_2/lstm_cell_2/strided_slice/stack:output:01lstm_2/lstm_cell_2/strided_slice/stack_1:output:01lstm_2/lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2"
 lstm_2/lstm_cell_2/strided_sliceÀ
lstm_2/lstm_cell_2/MatMul_4MatMullstm_2/lstm_cell_2/mul_4:z:0)lstm_2/lstm_cell_2/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/MatMul_4¸
lstm_2/lstm_cell_2/addAddV2#lstm_2/lstm_cell_2/BiasAdd:output:0%lstm_2/lstm_cell_2/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/add
lstm_2/lstm_cell_2/SigmoidSigmoidlstm_2/lstm_cell_2/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/Sigmoid·
#lstm_2/lstm_cell_2/ReadVariableOp_1ReadVariableOp*lstm_2_lstm_cell_2_readvariableop_resource* 
_output_shapes
:
Ä*
dtype02%
#lstm_2/lstm_cell_2/ReadVariableOp_1¥
(lstm_2/lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ä   2*
(lstm_2/lstm_cell_2/strided_slice_1/stack©
*lstm_2/lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_2/lstm_cell_2/strided_slice_1/stack_1©
*lstm_2/lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_2/lstm_cell_2/strided_slice_1/stack_2ü
"lstm_2/lstm_cell_2/strided_slice_1StridedSlice+lstm_2/lstm_cell_2/ReadVariableOp_1:value:01lstm_2/lstm_cell_2/strided_slice_1/stack:output:03lstm_2/lstm_cell_2/strided_slice_1/stack_1:output:03lstm_2/lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2$
"lstm_2/lstm_cell_2/strided_slice_1Â
lstm_2/lstm_cell_2/MatMul_5MatMullstm_2/lstm_cell_2/mul_5:z:0+lstm_2/lstm_cell_2/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/MatMul_5¾
lstm_2/lstm_cell_2/add_1AddV2%lstm_2/lstm_cell_2/BiasAdd_1:output:0%lstm_2/lstm_cell_2/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/add_1
lstm_2/lstm_cell_2/Sigmoid_1Sigmoidlstm_2/lstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/Sigmoid_1©
lstm_2/lstm_cell_2/mul_8Mul lstm_2/lstm_cell_2/Sigmoid_1:y:0lstm_2/zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/mul_8·
#lstm_2/lstm_cell_2/ReadVariableOp_2ReadVariableOp*lstm_2_lstm_cell_2_readvariableop_resource* 
_output_shapes
:
Ä*
dtype02%
#lstm_2/lstm_cell_2/ReadVariableOp_2¥
(lstm_2/lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      2*
(lstm_2/lstm_cell_2/strided_slice_2/stack©
*lstm_2/lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2,
*lstm_2/lstm_cell_2/strided_slice_2/stack_1©
*lstm_2/lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_2/lstm_cell_2/strided_slice_2/stack_2ü
"lstm_2/lstm_cell_2/strided_slice_2StridedSlice+lstm_2/lstm_cell_2/ReadVariableOp_2:value:01lstm_2/lstm_cell_2/strided_slice_2/stack:output:03lstm_2/lstm_cell_2/strided_slice_2/stack_1:output:03lstm_2/lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2$
"lstm_2/lstm_cell_2/strided_slice_2Â
lstm_2/lstm_cell_2/MatMul_6MatMullstm_2/lstm_cell_2/mul_6:z:0+lstm_2/lstm_cell_2/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/MatMul_6¾
lstm_2/lstm_cell_2/add_2AddV2%lstm_2/lstm_cell_2/BiasAdd_2:output:0%lstm_2/lstm_cell_2/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/add_2
lstm_2/lstm_cell_2/TanhTanhlstm_2/lstm_cell_2/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/Tanh«
lstm_2/lstm_cell_2/mul_9Mullstm_2/lstm_cell_2/Sigmoid:y:0lstm_2/lstm_cell_2/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/mul_9¬
lstm_2/lstm_cell_2/add_3AddV2lstm_2/lstm_cell_2/mul_8:z:0lstm_2/lstm_cell_2/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/add_3·
#lstm_2/lstm_cell_2/ReadVariableOp_3ReadVariableOp*lstm_2_lstm_cell_2_readvariableop_resource* 
_output_shapes
:
Ä*
dtype02%
#lstm_2/lstm_cell_2/ReadVariableOp_3¥
(lstm_2/lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2*
(lstm_2/lstm_cell_2/strided_slice_3/stack©
*lstm_2/lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_2/lstm_cell_2/strided_slice_3/stack_1©
*lstm_2/lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_2/lstm_cell_2/strided_slice_3/stack_2ü
"lstm_2/lstm_cell_2/strided_slice_3StridedSlice+lstm_2/lstm_cell_2/ReadVariableOp_3:value:01lstm_2/lstm_cell_2/strided_slice_3/stack:output:03lstm_2/lstm_cell_2/strided_slice_3/stack_1:output:03lstm_2/lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2$
"lstm_2/lstm_cell_2/strided_slice_3Â
lstm_2/lstm_cell_2/MatMul_7MatMullstm_2/lstm_cell_2/mul_7:z:0+lstm_2/lstm_cell_2/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/MatMul_7¾
lstm_2/lstm_cell_2/add_4AddV2%lstm_2/lstm_cell_2/BiasAdd_3:output:0%lstm_2/lstm_cell_2/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/add_4
lstm_2/lstm_cell_2/Sigmoid_2Sigmoidlstm_2/lstm_cell_2/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/Sigmoid_2
lstm_2/lstm_cell_2/Tanh_1Tanhlstm_2/lstm_cell_2/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/Tanh_1±
lstm_2/lstm_cell_2/mul_10Mul lstm_2/lstm_cell_2/Sigmoid_2:y:0lstm_2/lstm_cell_2/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/mul_10
$lstm_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÄ   2&
$lstm_2/TensorArrayV2_1/element_shapeÔ
lstm_2/TensorArrayV2_1TensorListReserve-lstm_2/TensorArrayV2_1/element_shape:output:0lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_2/TensorArrayV2_1\
lstm_2/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_2/time
lstm_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2!
lstm_2/while/maximum_iterationsx
lstm_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_2/while/loop_counterÎ
lstm_2/whileWhile"lstm_2/while/loop_counter:output:0(lstm_2/while/maximum_iterations:output:0lstm_2/time:output:0lstm_2/TensorArrayV2_1:handle:0lstm_2/zeros:output:0lstm_2/zeros_1:output:0lstm_2/strided_slice_1:output:0>lstm_2/TensorArrayUnstack/TensorListFromTensor:output_handle:00lstm_2_lstm_cell_2_split_readvariableop_resource2lstm_2_lstm_cell_2_split_1_readvariableop_resource*lstm_2_lstm_cell_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ: : : : : *%
_read_only_resource_inputs
	
*$
bodyR
lstm_2_while_body_569604*$
condR
lstm_2_while_cond_569603*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ: : : : : *
parallel_iterations 2
lstm_2/whileÃ
7lstm_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÄ   29
7lstm_2/TensorArrayV2Stack/TensorListStack/element_shape
)lstm_2/TensorArrayV2Stack/TensorListStackTensorListStacklstm_2/while:output:3@lstm_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:BÿÿÿÿÿÿÿÿÿÄ*
element_dtype02+
)lstm_2/TensorArrayV2Stack/TensorListStack
lstm_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_2/strided_slice_3/stack
lstm_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_2/strided_slice_3/stack_1
lstm_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_3/stack_2Å
lstm_2/strided_slice_3StridedSlice2lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_2/strided_slice_3/stack:output:0'lstm_2/strided_slice_3/stack_1:output:0'lstm_2/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
shrink_axis_mask2
lstm_2/strided_slice_3
lstm_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_2/transpose_1/permÂ
lstm_2/transpose_1	Transpose2lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_2/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿBÄ2
lstm_2/transpose_1t
lstm_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_2/runtime¦
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	Ä*
dtype02
dense_2/MatMul/ReadVariableOp¤
dense_2/MatMulMatMullstm_2/strided_slice_3:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_2/MatMul¤
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_2/BiasAdd/ReadVariableOp¡
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_2/BiasAddy
dense_2/SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_2/SoftmaxÈ
IdentityIdentitydense_2/Softmax:softmax:0^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^embedding_2/embedding_lookup"^lstm_2/lstm_cell_2/ReadVariableOp$^lstm_2/lstm_cell_2/ReadVariableOp_1$^lstm_2/lstm_cell_2/ReadVariableOp_2$^lstm_2/lstm_cell_2/ReadVariableOp_3(^lstm_2/lstm_cell_2/split/ReadVariableOp*^lstm_2/lstm_cell_2/split_1/ReadVariableOp^lstm_2/while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿB::::::2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2<
embedding_2/embedding_lookupembedding_2/embedding_lookup2F
!lstm_2/lstm_cell_2/ReadVariableOp!lstm_2/lstm_cell_2/ReadVariableOp2J
#lstm_2/lstm_cell_2/ReadVariableOp_1#lstm_2/lstm_cell_2/ReadVariableOp_12J
#lstm_2/lstm_cell_2/ReadVariableOp_2#lstm_2/lstm_cell_2/ReadVariableOp_22J
#lstm_2/lstm_cell_2/ReadVariableOp_3#lstm_2/lstm_cell_2/ReadVariableOp_32R
'lstm_2/lstm_cell_2/split/ReadVariableOp'lstm_2/lstm_cell_2/split/ReadVariableOp2V
)lstm_2/lstm_cell_2/split_1/ReadVariableOp)lstm_2/lstm_cell_2/split_1/ReadVariableOp2
lstm_2/whilelstm_2/while:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB
 
_user_specified_nameinputs
¹Ç
â
H__inference_sequential_4_layer_call_and_return_conditional_losses_570080

inputs'
#embedding_2_embedding_lookup_5698154
0lstm_2_lstm_cell_2_split_readvariableop_resource6
2lstm_2_lstm_cell_2_split_1_readvariableop_resource.
*lstm_2_lstm_cell_2_readvariableop_resource*
&dense_2_matmul_readvariableop_resource+
'dense_2_biasadd_readvariableop_resource
identity¢dense_2/BiasAdd/ReadVariableOp¢dense_2/MatMul/ReadVariableOp¢embedding_2/embedding_lookup¢!lstm_2/lstm_cell_2/ReadVariableOp¢#lstm_2/lstm_cell_2/ReadVariableOp_1¢#lstm_2/lstm_cell_2/ReadVariableOp_2¢#lstm_2/lstm_cell_2/ReadVariableOp_3¢'lstm_2/lstm_cell_2/split/ReadVariableOp¢)lstm_2/lstm_cell_2/split_1/ReadVariableOp¢lstm_2/whileu
embedding_2/CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2
embedding_2/Castº
embedding_2/embedding_lookupResourceGather#embedding_2_embedding_lookup_569815embedding_2/Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0*6
_class,
*(loc:@embedding_2/embedding_lookup/569815*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB*
dtype02
embedding_2/embedding_lookup
%embedding_2/embedding_lookup/IdentityIdentity%embedding_2/embedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*6
_class,
*(loc:@embedding_2/embedding_lookup/569815*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2'
%embedding_2/embedding_lookup/IdentityÅ
'embedding_2/embedding_lookup/Identity_1Identity.embedding_2/embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2)
'embedding_2/embedding_lookup/Identity_1±
spatial_dropout1d_2/IdentityIdentity0embedding_2/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2
spatial_dropout1d_2/Identityq
lstm_2/ShapeShape%spatial_dropout1d_2/Identity:output:0*
T0*
_output_shapes
:2
lstm_2/Shape
lstm_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_2/strided_slice/stack
lstm_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_2/strided_slice/stack_1
lstm_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
lstm_2/strided_slice/stack_2
lstm_2/strided_sliceStridedSlicelstm_2/Shape:output:0#lstm_2/strided_slice/stack:output:0%lstm_2/strided_slice/stack_1:output:0%lstm_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_2/strided_slicek
lstm_2/zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ä2
lstm_2/zeros/mul/y
lstm_2/zeros/mulMullstm_2/strided_slice:output:0lstm_2/zeros/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_2/zeros/mulm
lstm_2/zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_2/zeros/Less/y
lstm_2/zeros/LessLesslstm_2/zeros/mul:z:0lstm_2/zeros/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_2/zeros/Lessq
lstm_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ä2
lstm_2/zeros/packed/1
lstm_2/zeros/packedPacklstm_2/strided_slice:output:0lstm_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_2/zeros/packedm
lstm_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_2/zeros/Const
lstm_2/zerosFilllstm_2/zeros/packed:output:0lstm_2/zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/zeroso
lstm_2/zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ä2
lstm_2/zeros_1/mul/y
lstm_2/zeros_1/mulMullstm_2/strided_slice:output:0lstm_2/zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
lstm_2/zeros_1/mulq
lstm_2/zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
lstm_2/zeros_1/Less/y
lstm_2/zeros_1/LessLesslstm_2/zeros_1/mul:z:0lstm_2/zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
lstm_2/zeros_1/Lessu
lstm_2/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ä2
lstm_2/zeros_1/packed/1¥
lstm_2/zeros_1/packedPacklstm_2/strided_slice:output:0 lstm_2/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
lstm_2/zeros_1/packedq
lstm_2/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_2/zeros_1/Const
lstm_2/zeros_1Filllstm_2/zeros_1/packed:output:0lstm_2/zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/zeros_1
lstm_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_2/transpose/perm¯
lstm_2/transpose	Transpose%spatial_dropout1d_2/Identity:output:0lstm_2/transpose/perm:output:0*
T0*,
_output_shapes
:Bÿÿÿÿÿÿÿÿÿ2
lstm_2/transposed
lstm_2/Shape_1Shapelstm_2/transpose:y:0*
T0*
_output_shapes
:2
lstm_2/Shape_1
lstm_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_2/strided_slice_1/stack
lstm_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_1/stack_1
lstm_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_1/stack_2
lstm_2/strided_slice_1StridedSlicelstm_2/Shape_1:output:0%lstm_2/strided_slice_1/stack:output:0'lstm_2/strided_slice_1/stack_1:output:0'lstm_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
lstm_2/strided_slice_1
"lstm_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2$
"lstm_2/TensorArrayV2/element_shapeÎ
lstm_2/TensorArrayV2TensorListReserve+lstm_2/TensorArrayV2/element_shape:output:0lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_2/TensorArrayV2Í
<lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2>
<lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape
.lstm_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorlstm_2/transpose:y:0Elstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type020
.lstm_2/TensorArrayUnstack/TensorListFromTensor
lstm_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
lstm_2/strided_slice_2/stack
lstm_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_2/stack_1
lstm_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_2/stack_2§
lstm_2/strided_slice_2StridedSlicelstm_2/transpose:y:0%lstm_2/strided_slice_2/stack:output:0'lstm_2/strided_slice_2/stack_1:output:0'lstm_2/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
lstm_2/strided_slice_2
"lstm_2/lstm_cell_2/ones_like/ShapeShapelstm_2/strided_slice_2:output:0*
T0*
_output_shapes
:2$
"lstm_2/lstm_cell_2/ones_like/Shape
"lstm_2/lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2$
"lstm_2/lstm_cell_2/ones_like/ConstÑ
lstm_2/lstm_cell_2/ones_likeFill+lstm_2/lstm_cell_2/ones_like/Shape:output:0+lstm_2/lstm_cell_2/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_2/lstm_cell_2/ones_like
$lstm_2/lstm_cell_2/ones_like_1/ShapeShapelstm_2/zeros:output:0*
T0*
_output_shapes
:2&
$lstm_2/lstm_cell_2/ones_like_1/Shape
$lstm_2/lstm_cell_2/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2&
$lstm_2/lstm_cell_2/ones_like_1/ConstÙ
lstm_2/lstm_cell_2/ones_like_1Fill-lstm_2/lstm_cell_2/ones_like_1/Shape:output:0-lstm_2/lstm_cell_2/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2 
lstm_2/lstm_cell_2/ones_like_1²
lstm_2/lstm_cell_2/mulMullstm_2/strided_slice_2:output:0%lstm_2/lstm_cell_2/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_2/lstm_cell_2/mul¶
lstm_2/lstm_cell_2/mul_1Mullstm_2/strided_slice_2:output:0%lstm_2/lstm_cell_2/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_2/lstm_cell_2/mul_1¶
lstm_2/lstm_cell_2/mul_2Mullstm_2/strided_slice_2:output:0%lstm_2/lstm_cell_2/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_2/lstm_cell_2/mul_2¶
lstm_2/lstm_cell_2/mul_3Mullstm_2/strided_slice_2:output:0%lstm_2/lstm_cell_2/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_2/lstm_cell_2/mul_3v
lstm_2/lstm_cell_2/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_2/lstm_cell_2/Const
"lstm_2/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2$
"lstm_2/lstm_cell_2/split/split_dimÅ
'lstm_2/lstm_cell_2/split/ReadVariableOpReadVariableOp0lstm_2_lstm_cell_2_split_readvariableop_resource* 
_output_shapes
:
*
dtype02)
'lstm_2/lstm_cell_2/split/ReadVariableOpû
lstm_2/lstm_cell_2/splitSplit+lstm_2/lstm_cell_2/split/split_dim:output:0/lstm_2/lstm_cell_2/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
Ä:
Ä:
Ä:
Ä*
	num_split2
lstm_2/lstm_cell_2/split²
lstm_2/lstm_cell_2/MatMulMatMullstm_2/lstm_cell_2/mul:z:0!lstm_2/lstm_cell_2/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/MatMul¸
lstm_2/lstm_cell_2/MatMul_1MatMullstm_2/lstm_cell_2/mul_1:z:0!lstm_2/lstm_cell_2/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/MatMul_1¸
lstm_2/lstm_cell_2/MatMul_2MatMullstm_2/lstm_cell_2/mul_2:z:0!lstm_2/lstm_cell_2/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/MatMul_2¸
lstm_2/lstm_cell_2/MatMul_3MatMullstm_2/lstm_cell_2/mul_3:z:0!lstm_2/lstm_cell_2/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/MatMul_3z
lstm_2/lstm_cell_2/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_2/lstm_cell_2/Const_1
$lstm_2/lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2&
$lstm_2/lstm_cell_2/split_1/split_dimÆ
)lstm_2/lstm_cell_2/split_1/ReadVariableOpReadVariableOp2lstm_2_lstm_cell_2_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02+
)lstm_2/lstm_cell_2/split_1/ReadVariableOpï
lstm_2/lstm_cell_2/split_1Split-lstm_2/lstm_cell_2/split_1/split_dim:output:01lstm_2/lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ä:Ä:Ä:Ä*
	num_split2
lstm_2/lstm_cell_2/split_1À
lstm_2/lstm_cell_2/BiasAddBiasAdd#lstm_2/lstm_cell_2/MatMul:product:0#lstm_2/lstm_cell_2/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/BiasAddÆ
lstm_2/lstm_cell_2/BiasAdd_1BiasAdd%lstm_2/lstm_cell_2/MatMul_1:product:0#lstm_2/lstm_cell_2/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/BiasAdd_1Æ
lstm_2/lstm_cell_2/BiasAdd_2BiasAdd%lstm_2/lstm_cell_2/MatMul_2:product:0#lstm_2/lstm_cell_2/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/BiasAdd_2Æ
lstm_2/lstm_cell_2/BiasAdd_3BiasAdd%lstm_2/lstm_cell_2/MatMul_3:product:0#lstm_2/lstm_cell_2/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/BiasAdd_3®
lstm_2/lstm_cell_2/mul_4Mullstm_2/zeros:output:0'lstm_2/lstm_cell_2/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/mul_4®
lstm_2/lstm_cell_2/mul_5Mullstm_2/zeros:output:0'lstm_2/lstm_cell_2/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/mul_5®
lstm_2/lstm_cell_2/mul_6Mullstm_2/zeros:output:0'lstm_2/lstm_cell_2/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/mul_6®
lstm_2/lstm_cell_2/mul_7Mullstm_2/zeros:output:0'lstm_2/lstm_cell_2/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/mul_7³
!lstm_2/lstm_cell_2/ReadVariableOpReadVariableOp*lstm_2_lstm_cell_2_readvariableop_resource* 
_output_shapes
:
Ä*
dtype02#
!lstm_2/lstm_cell_2/ReadVariableOp¡
&lstm_2/lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2(
&lstm_2/lstm_cell_2/strided_slice/stack¥
(lstm_2/lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ä   2*
(lstm_2/lstm_cell_2/strided_slice/stack_1¥
(lstm_2/lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2*
(lstm_2/lstm_cell_2/strided_slice/stack_2ð
 lstm_2/lstm_cell_2/strided_sliceStridedSlice)lstm_2/lstm_cell_2/ReadVariableOp:value:0/lstm_2/lstm_cell_2/strided_slice/stack:output:01lstm_2/lstm_cell_2/strided_slice/stack_1:output:01lstm_2/lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2"
 lstm_2/lstm_cell_2/strided_sliceÀ
lstm_2/lstm_cell_2/MatMul_4MatMullstm_2/lstm_cell_2/mul_4:z:0)lstm_2/lstm_cell_2/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/MatMul_4¸
lstm_2/lstm_cell_2/addAddV2#lstm_2/lstm_cell_2/BiasAdd:output:0%lstm_2/lstm_cell_2/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/add
lstm_2/lstm_cell_2/SigmoidSigmoidlstm_2/lstm_cell_2/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/Sigmoid·
#lstm_2/lstm_cell_2/ReadVariableOp_1ReadVariableOp*lstm_2_lstm_cell_2_readvariableop_resource* 
_output_shapes
:
Ä*
dtype02%
#lstm_2/lstm_cell_2/ReadVariableOp_1¥
(lstm_2/lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ä   2*
(lstm_2/lstm_cell_2/strided_slice_1/stack©
*lstm_2/lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_2/lstm_cell_2/strided_slice_1/stack_1©
*lstm_2/lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_2/lstm_cell_2/strided_slice_1/stack_2ü
"lstm_2/lstm_cell_2/strided_slice_1StridedSlice+lstm_2/lstm_cell_2/ReadVariableOp_1:value:01lstm_2/lstm_cell_2/strided_slice_1/stack:output:03lstm_2/lstm_cell_2/strided_slice_1/stack_1:output:03lstm_2/lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2$
"lstm_2/lstm_cell_2/strided_slice_1Â
lstm_2/lstm_cell_2/MatMul_5MatMullstm_2/lstm_cell_2/mul_5:z:0+lstm_2/lstm_cell_2/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/MatMul_5¾
lstm_2/lstm_cell_2/add_1AddV2%lstm_2/lstm_cell_2/BiasAdd_1:output:0%lstm_2/lstm_cell_2/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/add_1
lstm_2/lstm_cell_2/Sigmoid_1Sigmoidlstm_2/lstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/Sigmoid_1©
lstm_2/lstm_cell_2/mul_8Mul lstm_2/lstm_cell_2/Sigmoid_1:y:0lstm_2/zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/mul_8·
#lstm_2/lstm_cell_2/ReadVariableOp_2ReadVariableOp*lstm_2_lstm_cell_2_readvariableop_resource* 
_output_shapes
:
Ä*
dtype02%
#lstm_2/lstm_cell_2/ReadVariableOp_2¥
(lstm_2/lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      2*
(lstm_2/lstm_cell_2/strided_slice_2/stack©
*lstm_2/lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2,
*lstm_2/lstm_cell_2/strided_slice_2/stack_1©
*lstm_2/lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_2/lstm_cell_2/strided_slice_2/stack_2ü
"lstm_2/lstm_cell_2/strided_slice_2StridedSlice+lstm_2/lstm_cell_2/ReadVariableOp_2:value:01lstm_2/lstm_cell_2/strided_slice_2/stack:output:03lstm_2/lstm_cell_2/strided_slice_2/stack_1:output:03lstm_2/lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2$
"lstm_2/lstm_cell_2/strided_slice_2Â
lstm_2/lstm_cell_2/MatMul_6MatMullstm_2/lstm_cell_2/mul_6:z:0+lstm_2/lstm_cell_2/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/MatMul_6¾
lstm_2/lstm_cell_2/add_2AddV2%lstm_2/lstm_cell_2/BiasAdd_2:output:0%lstm_2/lstm_cell_2/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/add_2
lstm_2/lstm_cell_2/TanhTanhlstm_2/lstm_cell_2/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/Tanh«
lstm_2/lstm_cell_2/mul_9Mullstm_2/lstm_cell_2/Sigmoid:y:0lstm_2/lstm_cell_2/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/mul_9¬
lstm_2/lstm_cell_2/add_3AddV2lstm_2/lstm_cell_2/mul_8:z:0lstm_2/lstm_cell_2/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/add_3·
#lstm_2/lstm_cell_2/ReadVariableOp_3ReadVariableOp*lstm_2_lstm_cell_2_readvariableop_resource* 
_output_shapes
:
Ä*
dtype02%
#lstm_2/lstm_cell_2/ReadVariableOp_3¥
(lstm_2/lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2*
(lstm_2/lstm_cell_2/strided_slice_3/stack©
*lstm_2/lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2,
*lstm_2/lstm_cell_2/strided_slice_3/stack_1©
*lstm_2/lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2,
*lstm_2/lstm_cell_2/strided_slice_3/stack_2ü
"lstm_2/lstm_cell_2/strided_slice_3StridedSlice+lstm_2/lstm_cell_2/ReadVariableOp_3:value:01lstm_2/lstm_cell_2/strided_slice_3/stack:output:03lstm_2/lstm_cell_2/strided_slice_3/stack_1:output:03lstm_2/lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2$
"lstm_2/lstm_cell_2/strided_slice_3Â
lstm_2/lstm_cell_2/MatMul_7MatMullstm_2/lstm_cell_2/mul_7:z:0+lstm_2/lstm_cell_2/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/MatMul_7¾
lstm_2/lstm_cell_2/add_4AddV2%lstm_2/lstm_cell_2/BiasAdd_3:output:0%lstm_2/lstm_cell_2/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/add_4
lstm_2/lstm_cell_2/Sigmoid_2Sigmoidlstm_2/lstm_cell_2/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/Sigmoid_2
lstm_2/lstm_cell_2/Tanh_1Tanhlstm_2/lstm_cell_2/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/Tanh_1±
lstm_2/lstm_cell_2/mul_10Mul lstm_2/lstm_cell_2/Sigmoid_2:y:0lstm_2/lstm_cell_2/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_2/lstm_cell_2/mul_10
$lstm_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÄ   2&
$lstm_2/TensorArrayV2_1/element_shapeÔ
lstm_2/TensorArrayV2_1TensorListReserve-lstm_2/TensorArrayV2_1/element_shape:output:0lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
lstm_2/TensorArrayV2_1\
lstm_2/timeConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_2/time
lstm_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2!
lstm_2/while/maximum_iterationsx
lstm_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_2/while/loop_counterÎ
lstm_2/whileWhile"lstm_2/while/loop_counter:output:0(lstm_2/while/maximum_iterations:output:0lstm_2/time:output:0lstm_2/TensorArrayV2_1:handle:0lstm_2/zeros:output:0lstm_2/zeros_1:output:0lstm_2/strided_slice_1:output:0>lstm_2/TensorArrayUnstack/TensorListFromTensor:output_handle:00lstm_2_lstm_cell_2_split_readvariableop_resource2lstm_2_lstm_cell_2_split_1_readvariableop_resource*lstm_2_lstm_cell_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ: : : : : *%
_read_only_resource_inputs
	
*$
bodyR
lstm_2_while_body_569937*$
condR
lstm_2_while_cond_569936*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ: : : : : *
parallel_iterations 2
lstm_2/whileÃ
7lstm_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÄ   29
7lstm_2/TensorArrayV2Stack/TensorListStack/element_shape
)lstm_2/TensorArrayV2Stack/TensorListStackTensorListStacklstm_2/while:output:3@lstm_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:BÿÿÿÿÿÿÿÿÿÄ*
element_dtype02+
)lstm_2/TensorArrayV2Stack/TensorListStack
lstm_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
lstm_2/strided_slice_3/stack
lstm_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2 
lstm_2/strided_slice_3/stack_1
lstm_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2 
lstm_2/strided_slice_3/stack_2Å
lstm_2/strided_slice_3StridedSlice2lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0%lstm_2/strided_slice_3/stack:output:0'lstm_2/strided_slice_3/stack_1:output:0'lstm_2/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
shrink_axis_mask2
lstm_2/strided_slice_3
lstm_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
lstm_2/transpose_1/permÂ
lstm_2/transpose_1	Transpose2lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0 lstm_2/transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿBÄ2
lstm_2/transpose_1t
lstm_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2
lstm_2/runtime¦
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource*
_output_shapes
:	Ä*
dtype02
dense_2/MatMul/ReadVariableOp¤
dense_2/MatMulMatMullstm_2/strided_slice_3:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_2/MatMul¤
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_2/BiasAdd/ReadVariableOp¡
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_2/BiasAddy
dense_2/SoftmaxSoftmaxdense_2/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_2/SoftmaxÈ
IdentityIdentitydense_2/Softmax:softmax:0^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^embedding_2/embedding_lookup"^lstm_2/lstm_cell_2/ReadVariableOp$^lstm_2/lstm_cell_2/ReadVariableOp_1$^lstm_2/lstm_cell_2/ReadVariableOp_2$^lstm_2/lstm_cell_2/ReadVariableOp_3(^lstm_2/lstm_cell_2/split/ReadVariableOp*^lstm_2/lstm_cell_2/split_1/ReadVariableOp^lstm_2/while*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿB::::::2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2<
embedding_2/embedding_lookupembedding_2/embedding_lookup2F
!lstm_2/lstm_cell_2/ReadVariableOp!lstm_2/lstm_cell_2/ReadVariableOp2J
#lstm_2/lstm_cell_2/ReadVariableOp_1#lstm_2/lstm_cell_2/ReadVariableOp_12J
#lstm_2/lstm_cell_2/ReadVariableOp_2#lstm_2/lstm_cell_2/ReadVariableOp_22J
#lstm_2/lstm_cell_2/ReadVariableOp_3#lstm_2/lstm_cell_2/ReadVariableOp_32R
'lstm_2/lstm_cell_2/split/ReadVariableOp'lstm_2/lstm_cell_2/split/ReadVariableOp2V
)lstm_2/lstm_cell_2/split_1/ReadVariableOp)lstm_2/lstm_cell_2/split_1/ReadVariableOp2
lstm_2/whilelstm_2/while:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB
 
_user_specified_nameinputs
 ø
´
B__inference_lstm_2_layer_call_and_return_conditional_losses_571248

inputs-
)lstm_cell_2_split_readvariableop_resource/
+lstm_cell_2_split_1_readvariableop_resource'
#lstm_cell_2_readvariableop_resource
identity¢lstm_cell_2/ReadVariableOp¢lstm_cell_2/ReadVariableOp_1¢lstm_cell_2/ReadVariableOp_2¢lstm_cell_2/ReadVariableOp_3¢ lstm_cell_2/split/ReadVariableOp¢"lstm_cell_2/split_1/ReadVariableOp¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ä2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ä2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ä2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ä2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:Bÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ý
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2
lstm_cell_2/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_2/ones_like/Shape
lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_2/ones_like/Constµ
lstm_cell_2/ones_likeFill$lstm_cell_2/ones_like/Shape:output:0$lstm_cell_2/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/ones_like{
lstm_cell_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_2/dropout/Const°
lstm_cell_2/dropout/MulMullstm_cell_2/ones_like:output:0"lstm_cell_2/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/dropout/Mul
lstm_cell_2/dropout/ShapeShapelstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_2/dropout/Shapeø
0lstm_cell_2/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_2/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2Û22
0lstm_cell_2/dropout/random_uniform/RandomUniform
"lstm_cell_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2$
"lstm_cell_2/dropout/GreaterEqual/yï
 lstm_cell_2/dropout/GreaterEqualGreaterEqual9lstm_cell_2/dropout/random_uniform/RandomUniform:output:0+lstm_cell_2/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_cell_2/dropout/GreaterEqual¤
lstm_cell_2/dropout/CastCast$lstm_cell_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/dropout/Cast«
lstm_cell_2/dropout/Mul_1Mullstm_cell_2/dropout/Mul:z:0lstm_cell_2/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/dropout/Mul_1
lstm_cell_2/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_2/dropout_1/Const¶
lstm_cell_2/dropout_1/MulMullstm_cell_2/ones_like:output:0$lstm_cell_2/dropout_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/dropout_1/Mul
lstm_cell_2/dropout_1/ShapeShapelstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_2/dropout_1/Shapeþ
2lstm_cell_2/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_2/dropout_1/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2þÀ24
2lstm_cell_2/dropout_1/random_uniform/RandomUniform
$lstm_cell_2/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_2/dropout_1/GreaterEqual/y÷
"lstm_cell_2/dropout_1/GreaterEqualGreaterEqual;lstm_cell_2/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_2/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_cell_2/dropout_1/GreaterEqualª
lstm_cell_2/dropout_1/CastCast&lstm_cell_2/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/dropout_1/Cast³
lstm_cell_2/dropout_1/Mul_1Mullstm_cell_2/dropout_1/Mul:z:0lstm_cell_2/dropout_1/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/dropout_1/Mul_1
lstm_cell_2/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_2/dropout_2/Const¶
lstm_cell_2/dropout_2/MulMullstm_cell_2/ones_like:output:0$lstm_cell_2/dropout_2/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/dropout_2/Mul
lstm_cell_2/dropout_2/ShapeShapelstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_2/dropout_2/Shapeþ
2lstm_cell_2/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_2/dropout_2/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2¹§Ü24
2lstm_cell_2/dropout_2/random_uniform/RandomUniform
$lstm_cell_2/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_2/dropout_2/GreaterEqual/y÷
"lstm_cell_2/dropout_2/GreaterEqualGreaterEqual;lstm_cell_2/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_2/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_cell_2/dropout_2/GreaterEqualª
lstm_cell_2/dropout_2/CastCast&lstm_cell_2/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/dropout_2/Cast³
lstm_cell_2/dropout_2/Mul_1Mullstm_cell_2/dropout_2/Mul:z:0lstm_cell_2/dropout_2/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/dropout_2/Mul_1
lstm_cell_2/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_2/dropout_3/Const¶
lstm_cell_2/dropout_3/MulMullstm_cell_2/ones_like:output:0$lstm_cell_2/dropout_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/dropout_3/Mul
lstm_cell_2/dropout_3/ShapeShapelstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_2/dropout_3/Shapeþ
2lstm_cell_2/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_2/dropout_3/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2¸Ñð24
2lstm_cell_2/dropout_3/random_uniform/RandomUniform
$lstm_cell_2/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_2/dropout_3/GreaterEqual/y÷
"lstm_cell_2/dropout_3/GreaterEqualGreaterEqual;lstm_cell_2/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_2/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_cell_2/dropout_3/GreaterEqualª
lstm_cell_2/dropout_3/CastCast&lstm_cell_2/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/dropout_3/Cast³
lstm_cell_2/dropout_3/Mul_1Mullstm_cell_2/dropout_3/Mul:z:0lstm_cell_2/dropout_3/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/dropout_3/Mul_1|
lstm_cell_2/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_2/ones_like_1/Shape
lstm_cell_2/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_2/ones_like_1/Const½
lstm_cell_2/ones_like_1Fill&lstm_cell_2/ones_like_1/Shape:output:0&lstm_cell_2/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/ones_like_1
lstm_cell_2/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_2/dropout_4/Const¸
lstm_cell_2/dropout_4/MulMul lstm_cell_2/ones_like_1:output:0$lstm_cell_2/dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/dropout_4/Mul
lstm_cell_2/dropout_4/ShapeShape lstm_cell_2/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_2/dropout_4/Shapeþ
2lstm_cell_2/dropout_4/random_uniform/RandomUniformRandomUniform$lstm_cell_2/dropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
dtype0*
seed±ÿå)*
seed2â¾24
2lstm_cell_2/dropout_4/random_uniform/RandomUniform
$lstm_cell_2/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_2/dropout_4/GreaterEqual/y÷
"lstm_cell_2/dropout_4/GreaterEqualGreaterEqual;lstm_cell_2/dropout_4/random_uniform/RandomUniform:output:0-lstm_cell_2/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2$
"lstm_cell_2/dropout_4/GreaterEqualª
lstm_cell_2/dropout_4/CastCast&lstm_cell_2/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/dropout_4/Cast³
lstm_cell_2/dropout_4/Mul_1Mullstm_cell_2/dropout_4/Mul:z:0lstm_cell_2/dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/dropout_4/Mul_1
lstm_cell_2/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_2/dropout_5/Const¸
lstm_cell_2/dropout_5/MulMul lstm_cell_2/ones_like_1:output:0$lstm_cell_2/dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/dropout_5/Mul
lstm_cell_2/dropout_5/ShapeShape lstm_cell_2/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_2/dropout_5/Shapeþ
2lstm_cell_2/dropout_5/random_uniform/RandomUniformRandomUniform$lstm_cell_2/dropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
dtype0*
seed±ÿå)*
seed2¡24
2lstm_cell_2/dropout_5/random_uniform/RandomUniform
$lstm_cell_2/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_2/dropout_5/GreaterEqual/y÷
"lstm_cell_2/dropout_5/GreaterEqualGreaterEqual;lstm_cell_2/dropout_5/random_uniform/RandomUniform:output:0-lstm_cell_2/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2$
"lstm_cell_2/dropout_5/GreaterEqualª
lstm_cell_2/dropout_5/CastCast&lstm_cell_2/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/dropout_5/Cast³
lstm_cell_2/dropout_5/Mul_1Mullstm_cell_2/dropout_5/Mul:z:0lstm_cell_2/dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/dropout_5/Mul_1
lstm_cell_2/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_2/dropout_6/Const¸
lstm_cell_2/dropout_6/MulMul lstm_cell_2/ones_like_1:output:0$lstm_cell_2/dropout_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/dropout_6/Mul
lstm_cell_2/dropout_6/ShapeShape lstm_cell_2/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_2/dropout_6/Shapeþ
2lstm_cell_2/dropout_6/random_uniform/RandomUniformRandomUniform$lstm_cell_2/dropout_6/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
dtype0*
seed±ÿå)*
seed2¹Ñø24
2lstm_cell_2/dropout_6/random_uniform/RandomUniform
$lstm_cell_2/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_2/dropout_6/GreaterEqual/y÷
"lstm_cell_2/dropout_6/GreaterEqualGreaterEqual;lstm_cell_2/dropout_6/random_uniform/RandomUniform:output:0-lstm_cell_2/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2$
"lstm_cell_2/dropout_6/GreaterEqualª
lstm_cell_2/dropout_6/CastCast&lstm_cell_2/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/dropout_6/Cast³
lstm_cell_2/dropout_6/Mul_1Mullstm_cell_2/dropout_6/Mul:z:0lstm_cell_2/dropout_6/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/dropout_6/Mul_1
lstm_cell_2/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_2/dropout_7/Const¸
lstm_cell_2/dropout_7/MulMul lstm_cell_2/ones_like_1:output:0$lstm_cell_2/dropout_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/dropout_7/Mul
lstm_cell_2/dropout_7/ShapeShape lstm_cell_2/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_2/dropout_7/Shapeþ
2lstm_cell_2/dropout_7/random_uniform/RandomUniformRandomUniform$lstm_cell_2/dropout_7/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
dtype0*
seed±ÿå)*
seed2Ûß¿24
2lstm_cell_2/dropout_7/random_uniform/RandomUniform
$lstm_cell_2/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_2/dropout_7/GreaterEqual/y÷
"lstm_cell_2/dropout_7/GreaterEqualGreaterEqual;lstm_cell_2/dropout_7/random_uniform/RandomUniform:output:0-lstm_cell_2/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2$
"lstm_cell_2/dropout_7/GreaterEqualª
lstm_cell_2/dropout_7/CastCast&lstm_cell_2/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/dropout_7/Cast³
lstm_cell_2/dropout_7/Mul_1Mullstm_cell_2/dropout_7/Mul:z:0lstm_cell_2/dropout_7/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/dropout_7/Mul_1
lstm_cell_2/mulMulstrided_slice_2:output:0lstm_cell_2/dropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/mul
lstm_cell_2/mul_1Mulstrided_slice_2:output:0lstm_cell_2/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/mul_1
lstm_cell_2/mul_2Mulstrided_slice_2:output:0lstm_cell_2/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/mul_2
lstm_cell_2/mul_3Mulstrided_slice_2:output:0lstm_cell_2/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/mul_3h
lstm_cell_2/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_2/Const|
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_2/split/split_dim°
 lstm_cell_2/split/ReadVariableOpReadVariableOp)lstm_cell_2_split_readvariableop_resource* 
_output_shapes
:
*
dtype02"
 lstm_cell_2/split/ReadVariableOpß
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0(lstm_cell_2/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
Ä:
Ä:
Ä:
Ä*
	num_split2
lstm_cell_2/split
lstm_cell_2/MatMulMatMullstm_cell_2/mul:z:0lstm_cell_2/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/MatMul
lstm_cell_2/MatMul_1MatMullstm_cell_2/mul_1:z:0lstm_cell_2/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/MatMul_1
lstm_cell_2/MatMul_2MatMullstm_cell_2/mul_2:z:0lstm_cell_2/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/MatMul_2
lstm_cell_2/MatMul_3MatMullstm_cell_2/mul_3:z:0lstm_cell_2/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/MatMul_3l
lstm_cell_2/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_2/Const_1
lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_2/split_1/split_dim±
"lstm_cell_2/split_1/ReadVariableOpReadVariableOp+lstm_cell_2_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02$
"lstm_cell_2/split_1/ReadVariableOpÓ
lstm_cell_2/split_1Split&lstm_cell_2/split_1/split_dim:output:0*lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ä:Ä:Ä:Ä*
	num_split2
lstm_cell_2/split_1¤
lstm_cell_2/BiasAddBiasAddlstm_cell_2/MatMul:product:0lstm_cell_2/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/BiasAddª
lstm_cell_2/BiasAdd_1BiasAddlstm_cell_2/MatMul_1:product:0lstm_cell_2/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/BiasAdd_1ª
lstm_cell_2/BiasAdd_2BiasAddlstm_cell_2/MatMul_2:product:0lstm_cell_2/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/BiasAdd_2ª
lstm_cell_2/BiasAdd_3BiasAddlstm_cell_2/MatMul_3:product:0lstm_cell_2/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/BiasAdd_3
lstm_cell_2/mul_4Mulzeros:output:0lstm_cell_2/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/mul_4
lstm_cell_2/mul_5Mulzeros:output:0lstm_cell_2/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/mul_5
lstm_cell_2/mul_6Mulzeros:output:0lstm_cell_2/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/mul_6
lstm_cell_2/mul_7Mulzeros:output:0lstm_cell_2/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/mul_7
lstm_cell_2/ReadVariableOpReadVariableOp#lstm_cell_2_readvariableop_resource* 
_output_shapes
:
Ä*
dtype02
lstm_cell_2/ReadVariableOp
lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_2/strided_slice/stack
!lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ä   2#
!lstm_cell_2/strided_slice/stack_1
!lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_2/strided_slice/stack_2Æ
lstm_cell_2/strided_sliceStridedSlice"lstm_cell_2/ReadVariableOp:value:0(lstm_cell_2/strided_slice/stack:output:0*lstm_cell_2/strided_slice/stack_1:output:0*lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2
lstm_cell_2/strided_slice¤
lstm_cell_2/MatMul_4MatMullstm_cell_2/mul_4:z:0"lstm_cell_2/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/MatMul_4
lstm_cell_2/addAddV2lstm_cell_2/BiasAdd:output:0lstm_cell_2/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/add}
lstm_cell_2/SigmoidSigmoidlstm_cell_2/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/Sigmoid¢
lstm_cell_2/ReadVariableOp_1ReadVariableOp#lstm_cell_2_readvariableop_resource* 
_output_shapes
:
Ä*
dtype02
lstm_cell_2/ReadVariableOp_1
!lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ä   2#
!lstm_cell_2/strided_slice_1/stack
#lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_2/strided_slice_1/stack_1
#lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_2/strided_slice_1/stack_2Ò
lstm_cell_2/strided_slice_1StridedSlice$lstm_cell_2/ReadVariableOp_1:value:0*lstm_cell_2/strided_slice_1/stack:output:0,lstm_cell_2/strided_slice_1/stack_1:output:0,lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2
lstm_cell_2/strided_slice_1¦
lstm_cell_2/MatMul_5MatMullstm_cell_2/mul_5:z:0$lstm_cell_2/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/MatMul_5¢
lstm_cell_2/add_1AddV2lstm_cell_2/BiasAdd_1:output:0lstm_cell_2/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/add_1
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/Sigmoid_1
lstm_cell_2/mul_8Mullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/mul_8¢
lstm_cell_2/ReadVariableOp_2ReadVariableOp#lstm_cell_2_readvariableop_resource* 
_output_shapes
:
Ä*
dtype02
lstm_cell_2/ReadVariableOp_2
!lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_2/strided_slice_2/stack
#lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2%
#lstm_cell_2/strided_slice_2/stack_1
#lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_2/strided_slice_2/stack_2Ò
lstm_cell_2/strided_slice_2StridedSlice$lstm_cell_2/ReadVariableOp_2:value:0*lstm_cell_2/strided_slice_2/stack:output:0,lstm_cell_2/strided_slice_2/stack_1:output:0,lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2
lstm_cell_2/strided_slice_2¦
lstm_cell_2/MatMul_6MatMullstm_cell_2/mul_6:z:0$lstm_cell_2/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/MatMul_6¢
lstm_cell_2/add_2AddV2lstm_cell_2/BiasAdd_2:output:0lstm_cell_2/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/add_2v
lstm_cell_2/TanhTanhlstm_cell_2/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/Tanh
lstm_cell_2/mul_9Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/mul_9
lstm_cell_2/add_3AddV2lstm_cell_2/mul_8:z:0lstm_cell_2/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/add_3¢
lstm_cell_2/ReadVariableOp_3ReadVariableOp#lstm_cell_2_readvariableop_resource* 
_output_shapes
:
Ä*
dtype02
lstm_cell_2/ReadVariableOp_3
!lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2#
!lstm_cell_2/strided_slice_3/stack
#lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_2/strided_slice_3/stack_1
#lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_2/strided_slice_3/stack_2Ò
lstm_cell_2/strided_slice_3StridedSlice$lstm_cell_2/ReadVariableOp_3:value:0*lstm_cell_2/strided_slice_3/stack:output:0,lstm_cell_2/strided_slice_3/stack_1:output:0,lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2
lstm_cell_2/strided_slice_3¦
lstm_cell_2/MatMul_7MatMullstm_cell_2/mul_7:z:0$lstm_cell_2/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/MatMul_7¢
lstm_cell_2/add_4AddV2lstm_cell_2/BiasAdd_3:output:0lstm_cell_2/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/add_4
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/Sigmoid_2z
lstm_cell_2/Tanh_1Tanhlstm_cell_2/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/Tanh_1
lstm_cell_2/mul_10Mullstm_cell_2/Sigmoid_2:y:0lstm_cell_2/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/mul_10
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÄ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterå
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_2_split_readvariableop_resource+lstm_cell_2_split_1_readvariableop_resource#lstm_cell_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_571048*
condR
while_cond_571047*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÄ   22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:BÿÿÿÿÿÿÿÿÿÄ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿBÄ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime·
IdentityIdentitystrided_slice_3:output:0^lstm_cell_2/ReadVariableOp^lstm_cell_2/ReadVariableOp_1^lstm_cell_2/ReadVariableOp_2^lstm_cell_2/ReadVariableOp_3!^lstm_cell_2/split/ReadVariableOp#^lstm_cell_2/split_1/ReadVariableOp^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿB:::28
lstm_cell_2/ReadVariableOplstm_cell_2/ReadVariableOp2<
lstm_cell_2/ReadVariableOp_1lstm_cell_2/ReadVariableOp_12<
lstm_cell_2/ReadVariableOp_2lstm_cell_2/ReadVariableOp_22<
lstm_cell_2/ReadVariableOp_3lstm_cell_2/ReadVariableOp_32D
 lstm_cell_2/split/ReadVariableOp lstm_cell_2/split/ReadVariableOp2H
"lstm_cell_2/split_1/ReadVariableOp"lstm_cell_2/split_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB
 
_user_specified_nameinputs


'__inference_lstm_2_layer_call_fn_571514

inputs
unknown
	unknown_0
	unknown_1
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_5689622
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿB:::22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB
 
_user_specified_nameinputs

É
-__inference_sequential_4_layer_call_fn_569370
embedding_2_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity¢StatefulPartitionedCall·
StatefulPartitionedCallStatefulPartitionedCallembedding_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_5693552
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿB::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB
+
_user_specified_nameembedding_2_input

Ô
H__inference_sequential_4_layer_call_and_return_conditional_losses_569295
embedding_2_input
embedding_2_569278
lstm_2_569282
lstm_2_569284
lstm_2_569286
dense_2_569289
dense_2_569291
identity¢dense_2/StatefulPartitionedCall¢#embedding_2/StatefulPartitionedCall¢lstm_2/StatefulPartitionedCall
#embedding_2/StatefulPartitionedCallStatefulPartitionedCallembedding_2_inputembedding_2_569278*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_2_layer_call_and_return_conditional_losses_5685302%
#embedding_2/StatefulPartitionedCall 
#spatial_dropout1d_2/PartitionedCallPartitionedCall,embedding_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_spatial_dropout1d_2_layer_call_and_return_conditional_losses_5685682%
#spatial_dropout1d_2/PartitionedCallÂ
lstm_2/StatefulPartitionedCallStatefulPartitionedCall,spatial_dropout1d_2/PartitionedCall:output:0lstm_2_569282lstm_2_569284lstm_2_569286*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_5692172 
lstm_2/StatefulPartitionedCall°
dense_2/StatefulPartitionedCallStatefulPartitionedCall'lstm_2/StatefulPartitionedCall:output:0dense_2_569289dense_2_569291*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_5692582!
dense_2/StatefulPartitionedCallå
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0 ^dense_2/StatefulPartitionedCall$^embedding_2/StatefulPartitionedCall^lstm_2/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿB::::::2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2@
lstm_2/StatefulPartitionedCalllstm_2/StatefulPartitionedCall:Z V
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB
+
_user_specified_nameembedding_2_input
ß

H__inference_sequential_4_layer_call_and_return_conditional_losses_569275
embedding_2_input
embedding_2_568539
lstm_2_569240
lstm_2_569242
lstm_2_569244
dense_2_569269
dense_2_569271
identity¢dense_2/StatefulPartitionedCall¢#embedding_2/StatefulPartitionedCall¢lstm_2/StatefulPartitionedCall¢+spatial_dropout1d_2/StatefulPartitionedCall
#embedding_2/StatefulPartitionedCallStatefulPartitionedCallembedding_2_inputembedding_2_568539*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_2_layer_call_and_return_conditional_losses_5685302%
#embedding_2/StatefulPartitionedCall¸
+spatial_dropout1d_2/StatefulPartitionedCallStatefulPartitionedCall,embedding_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_spatial_dropout1d_2_layer_call_and_return_conditional_losses_5685632-
+spatial_dropout1d_2/StatefulPartitionedCallÊ
lstm_2/StatefulPartitionedCallStatefulPartitionedCall4spatial_dropout1d_2/StatefulPartitionedCall:output:0lstm_2_569240lstm_2_569242lstm_2_569244*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_5689622 
lstm_2/StatefulPartitionedCall°
dense_2/StatefulPartitionedCallStatefulPartitionedCall'lstm_2/StatefulPartitionedCall:output:0dense_2_569269dense_2_569271*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_5692582!
dense_2/StatefulPartitionedCall
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0 ^dense_2/StatefulPartitionedCall$^embedding_2/StatefulPartitionedCall^lstm_2/StatefulPartitionedCall,^spatial_dropout1d_2/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿB::::::2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2@
lstm_2/StatefulPartitionedCalllstm_2/StatefulPartitionedCall2Z
+spatial_dropout1d_2/StatefulPartitionedCall+spatial_dropout1d_2/StatefulPartitionedCall:Z V
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB
+
_user_specified_nameembedding_2_input
ßD
×
B__inference_lstm_2_layer_call_and_return_conditional_losses_568375

inputs
lstm_cell_2_568293
lstm_cell_2_568295
lstm_cell_2_568297
identity¢#lstm_cell_2/StatefulPartitionedCall¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ä2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ä2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ä2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ä2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ý
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2
#lstm_cell_2/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_2_568293lstm_cell_2_568295lstm_cell_2_568297*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_5679282%
#lstm_cell_2/StatefulPartitionedCall
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÄ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counter¤
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_2_568293lstm_cell_2_568295lstm_cell_2_568297*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_568306*
condR
while_cond_568305*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÄ   22
0TensorArrayV2Stack/TensorListStack/element_shapeò
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÄ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¯
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÄ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime
IdentityIdentitystrided_slice_3:output:0$^lstm_cell_2/StatefulPartitionedCall^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::2J
#lstm_cell_2/StatefulPartitionedCall#lstm_cell_2/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ø
´
B__inference_lstm_2_layer_call_and_return_conditional_losses_568962

inputs-
)lstm_cell_2_split_readvariableop_resource/
+lstm_cell_2_split_1_readvariableop_resource'
#lstm_cell_2_readvariableop_resource
identity¢lstm_cell_2/ReadVariableOp¢lstm_cell_2/ReadVariableOp_1¢lstm_cell_2/ReadVariableOp_2¢lstm_cell_2/ReadVariableOp_3¢ lstm_cell_2/split/ReadVariableOp¢"lstm_cell_2/split_1/ReadVariableOp¢whileD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ä2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ä2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ä2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ä2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm{
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:Bÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ý
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2
lstm_cell_2/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_2/ones_like/Shape
lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_2/ones_like/Constµ
lstm_cell_2/ones_likeFill$lstm_cell_2/ones_like/Shape:output:0$lstm_cell_2/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/ones_like{
lstm_cell_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_2/dropout/Const°
lstm_cell_2/dropout/MulMullstm_cell_2/ones_like:output:0"lstm_cell_2/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/dropout/Mul
lstm_cell_2/dropout/ShapeShapelstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_2/dropout/Shapeø
0lstm_cell_2/dropout/random_uniform/RandomUniformRandomUniform"lstm_cell_2/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2áÂ22
0lstm_cell_2/dropout/random_uniform/RandomUniform
"lstm_cell_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2$
"lstm_cell_2/dropout/GreaterEqual/yï
 lstm_cell_2/dropout/GreaterEqualGreaterEqual9lstm_cell_2/dropout/random_uniform/RandomUniform:output:0+lstm_cell_2/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 lstm_cell_2/dropout/GreaterEqual¤
lstm_cell_2/dropout/CastCast$lstm_cell_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/dropout/Cast«
lstm_cell_2/dropout/Mul_1Mullstm_cell_2/dropout/Mul:z:0lstm_cell_2/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/dropout/Mul_1
lstm_cell_2/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_2/dropout_1/Const¶
lstm_cell_2/dropout_1/MulMullstm_cell_2/ones_like:output:0$lstm_cell_2/dropout_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/dropout_1/Mul
lstm_cell_2/dropout_1/ShapeShapelstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_2/dropout_1/Shapeþ
2lstm_cell_2/dropout_1/random_uniform/RandomUniformRandomUniform$lstm_cell_2/dropout_1/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2Æ24
2lstm_cell_2/dropout_1/random_uniform/RandomUniform
$lstm_cell_2/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_2/dropout_1/GreaterEqual/y÷
"lstm_cell_2/dropout_1/GreaterEqualGreaterEqual;lstm_cell_2/dropout_1/random_uniform/RandomUniform:output:0-lstm_cell_2/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_cell_2/dropout_1/GreaterEqualª
lstm_cell_2/dropout_1/CastCast&lstm_cell_2/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/dropout_1/Cast³
lstm_cell_2/dropout_1/Mul_1Mullstm_cell_2/dropout_1/Mul:z:0lstm_cell_2/dropout_1/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/dropout_1/Mul_1
lstm_cell_2/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_2/dropout_2/Const¶
lstm_cell_2/dropout_2/MulMullstm_cell_2/ones_like:output:0$lstm_cell_2/dropout_2/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/dropout_2/Mul
lstm_cell_2/dropout_2/ShapeShapelstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_2/dropout_2/Shapeý
2lstm_cell_2/dropout_2/random_uniform/RandomUniformRandomUniform$lstm_cell_2/dropout_2/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2Åu24
2lstm_cell_2/dropout_2/random_uniform/RandomUniform
$lstm_cell_2/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_2/dropout_2/GreaterEqual/y÷
"lstm_cell_2/dropout_2/GreaterEqualGreaterEqual;lstm_cell_2/dropout_2/random_uniform/RandomUniform:output:0-lstm_cell_2/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_cell_2/dropout_2/GreaterEqualª
lstm_cell_2/dropout_2/CastCast&lstm_cell_2/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/dropout_2/Cast³
lstm_cell_2/dropout_2/Mul_1Mullstm_cell_2/dropout_2/Mul:z:0lstm_cell_2/dropout_2/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/dropout_2/Mul_1
lstm_cell_2/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_2/dropout_3/Const¶
lstm_cell_2/dropout_3/MulMullstm_cell_2/ones_like:output:0$lstm_cell_2/dropout_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/dropout_3/Mul
lstm_cell_2/dropout_3/ShapeShapelstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2
lstm_cell_2/dropout_3/Shapeþ
2lstm_cell_2/dropout_3/random_uniform/RandomUniformRandomUniform$lstm_cell_2/dropout_3/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2òð³24
2lstm_cell_2/dropout_3/random_uniform/RandomUniform
$lstm_cell_2/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_2/dropout_3/GreaterEqual/y÷
"lstm_cell_2/dropout_3/GreaterEqualGreaterEqual;lstm_cell_2/dropout_3/random_uniform/RandomUniform:output:0-lstm_cell_2/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2$
"lstm_cell_2/dropout_3/GreaterEqualª
lstm_cell_2/dropout_3/CastCast&lstm_cell_2/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/dropout_3/Cast³
lstm_cell_2/dropout_3/Mul_1Mullstm_cell_2/dropout_3/Mul:z:0lstm_cell_2/dropout_3/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/dropout_3/Mul_1|
lstm_cell_2/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_2/ones_like_1/Shape
lstm_cell_2/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_2/ones_like_1/Const½
lstm_cell_2/ones_like_1Fill&lstm_cell_2/ones_like_1/Shape:output:0&lstm_cell_2/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/ones_like_1
lstm_cell_2/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_2/dropout_4/Const¸
lstm_cell_2/dropout_4/MulMul lstm_cell_2/ones_like_1:output:0$lstm_cell_2/dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/dropout_4/Mul
lstm_cell_2/dropout_4/ShapeShape lstm_cell_2/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_2/dropout_4/Shapeþ
2lstm_cell_2/dropout_4/random_uniform/RandomUniformRandomUniform$lstm_cell_2/dropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
dtype0*
seed±ÿå)*
seed2Ñ24
2lstm_cell_2/dropout_4/random_uniform/RandomUniform
$lstm_cell_2/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_2/dropout_4/GreaterEqual/y÷
"lstm_cell_2/dropout_4/GreaterEqualGreaterEqual;lstm_cell_2/dropout_4/random_uniform/RandomUniform:output:0-lstm_cell_2/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2$
"lstm_cell_2/dropout_4/GreaterEqualª
lstm_cell_2/dropout_4/CastCast&lstm_cell_2/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/dropout_4/Cast³
lstm_cell_2/dropout_4/Mul_1Mullstm_cell_2/dropout_4/Mul:z:0lstm_cell_2/dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/dropout_4/Mul_1
lstm_cell_2/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_2/dropout_5/Const¸
lstm_cell_2/dropout_5/MulMul lstm_cell_2/ones_like_1:output:0$lstm_cell_2/dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/dropout_5/Mul
lstm_cell_2/dropout_5/ShapeShape lstm_cell_2/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_2/dropout_5/Shapeþ
2lstm_cell_2/dropout_5/random_uniform/RandomUniformRandomUniform$lstm_cell_2/dropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
dtype0*
seed±ÿå)*
seed224
2lstm_cell_2/dropout_5/random_uniform/RandomUniform
$lstm_cell_2/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_2/dropout_5/GreaterEqual/y÷
"lstm_cell_2/dropout_5/GreaterEqualGreaterEqual;lstm_cell_2/dropout_5/random_uniform/RandomUniform:output:0-lstm_cell_2/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2$
"lstm_cell_2/dropout_5/GreaterEqualª
lstm_cell_2/dropout_5/CastCast&lstm_cell_2/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/dropout_5/Cast³
lstm_cell_2/dropout_5/Mul_1Mullstm_cell_2/dropout_5/Mul:z:0lstm_cell_2/dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/dropout_5/Mul_1
lstm_cell_2/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_2/dropout_6/Const¸
lstm_cell_2/dropout_6/MulMul lstm_cell_2/ones_like_1:output:0$lstm_cell_2/dropout_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/dropout_6/Mul
lstm_cell_2/dropout_6/ShapeShape lstm_cell_2/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_2/dropout_6/Shapeþ
2lstm_cell_2/dropout_6/random_uniform/RandomUniformRandomUniform$lstm_cell_2/dropout_6/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
dtype0*
seed±ÿå)*
seed2ßÉÆ24
2lstm_cell_2/dropout_6/random_uniform/RandomUniform
$lstm_cell_2/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_2/dropout_6/GreaterEqual/y÷
"lstm_cell_2/dropout_6/GreaterEqualGreaterEqual;lstm_cell_2/dropout_6/random_uniform/RandomUniform:output:0-lstm_cell_2/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2$
"lstm_cell_2/dropout_6/GreaterEqualª
lstm_cell_2/dropout_6/CastCast&lstm_cell_2/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/dropout_6/Cast³
lstm_cell_2/dropout_6/Mul_1Mullstm_cell_2/dropout_6/Mul:z:0lstm_cell_2/dropout_6/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/dropout_6/Mul_1
lstm_cell_2/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
lstm_cell_2/dropout_7/Const¸
lstm_cell_2/dropout_7/MulMul lstm_cell_2/ones_like_1:output:0$lstm_cell_2/dropout_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/dropout_7/Mul
lstm_cell_2/dropout_7/ShapeShape lstm_cell_2/ones_like_1:output:0*
T0*
_output_shapes
:2
lstm_cell_2/dropout_7/Shapeþ
2lstm_cell_2/dropout_7/random_uniform/RandomUniformRandomUniform$lstm_cell_2/dropout_7/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
dtype0*
seed±ÿå)*
seed2ôº24
2lstm_cell_2/dropout_7/random_uniform/RandomUniform
$lstm_cell_2/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2&
$lstm_cell_2/dropout_7/GreaterEqual/y÷
"lstm_cell_2/dropout_7/GreaterEqualGreaterEqual;lstm_cell_2/dropout_7/random_uniform/RandomUniform:output:0-lstm_cell_2/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2$
"lstm_cell_2/dropout_7/GreaterEqualª
lstm_cell_2/dropout_7/CastCast&lstm_cell_2/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/dropout_7/Cast³
lstm_cell_2/dropout_7/Mul_1Mullstm_cell_2/dropout_7/Mul:z:0lstm_cell_2/dropout_7/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/dropout_7/Mul_1
lstm_cell_2/mulMulstrided_slice_2:output:0lstm_cell_2/dropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/mul
lstm_cell_2/mul_1Mulstrided_slice_2:output:0lstm_cell_2/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/mul_1
lstm_cell_2/mul_2Mulstrided_slice_2:output:0lstm_cell_2/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/mul_2
lstm_cell_2/mul_3Mulstrided_slice_2:output:0lstm_cell_2/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/mul_3h
lstm_cell_2/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_2/Const|
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_2/split/split_dim°
 lstm_cell_2/split/ReadVariableOpReadVariableOp)lstm_cell_2_split_readvariableop_resource* 
_output_shapes
:
*
dtype02"
 lstm_cell_2/split/ReadVariableOpß
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0(lstm_cell_2/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
Ä:
Ä:
Ä:
Ä*
	num_split2
lstm_cell_2/split
lstm_cell_2/MatMulMatMullstm_cell_2/mul:z:0lstm_cell_2/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/MatMul
lstm_cell_2/MatMul_1MatMullstm_cell_2/mul_1:z:0lstm_cell_2/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/MatMul_1
lstm_cell_2/MatMul_2MatMullstm_cell_2/mul_2:z:0lstm_cell_2/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/MatMul_2
lstm_cell_2/MatMul_3MatMullstm_cell_2/mul_3:z:0lstm_cell_2/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/MatMul_3l
lstm_cell_2/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_2/Const_1
lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_2/split_1/split_dim±
"lstm_cell_2/split_1/ReadVariableOpReadVariableOp+lstm_cell_2_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02$
"lstm_cell_2/split_1/ReadVariableOpÓ
lstm_cell_2/split_1Split&lstm_cell_2/split_1/split_dim:output:0*lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ä:Ä:Ä:Ä*
	num_split2
lstm_cell_2/split_1¤
lstm_cell_2/BiasAddBiasAddlstm_cell_2/MatMul:product:0lstm_cell_2/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/BiasAddª
lstm_cell_2/BiasAdd_1BiasAddlstm_cell_2/MatMul_1:product:0lstm_cell_2/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/BiasAdd_1ª
lstm_cell_2/BiasAdd_2BiasAddlstm_cell_2/MatMul_2:product:0lstm_cell_2/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/BiasAdd_2ª
lstm_cell_2/BiasAdd_3BiasAddlstm_cell_2/MatMul_3:product:0lstm_cell_2/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/BiasAdd_3
lstm_cell_2/mul_4Mulzeros:output:0lstm_cell_2/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/mul_4
lstm_cell_2/mul_5Mulzeros:output:0lstm_cell_2/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/mul_5
lstm_cell_2/mul_6Mulzeros:output:0lstm_cell_2/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/mul_6
lstm_cell_2/mul_7Mulzeros:output:0lstm_cell_2/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/mul_7
lstm_cell_2/ReadVariableOpReadVariableOp#lstm_cell_2_readvariableop_resource* 
_output_shapes
:
Ä*
dtype02
lstm_cell_2/ReadVariableOp
lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_2/strided_slice/stack
!lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ä   2#
!lstm_cell_2/strided_slice/stack_1
!lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_2/strided_slice/stack_2Æ
lstm_cell_2/strided_sliceStridedSlice"lstm_cell_2/ReadVariableOp:value:0(lstm_cell_2/strided_slice/stack:output:0*lstm_cell_2/strided_slice/stack_1:output:0*lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2
lstm_cell_2/strided_slice¤
lstm_cell_2/MatMul_4MatMullstm_cell_2/mul_4:z:0"lstm_cell_2/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/MatMul_4
lstm_cell_2/addAddV2lstm_cell_2/BiasAdd:output:0lstm_cell_2/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/add}
lstm_cell_2/SigmoidSigmoidlstm_cell_2/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/Sigmoid¢
lstm_cell_2/ReadVariableOp_1ReadVariableOp#lstm_cell_2_readvariableop_resource* 
_output_shapes
:
Ä*
dtype02
lstm_cell_2/ReadVariableOp_1
!lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ä   2#
!lstm_cell_2/strided_slice_1/stack
#lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_2/strided_slice_1/stack_1
#lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_2/strided_slice_1/stack_2Ò
lstm_cell_2/strided_slice_1StridedSlice$lstm_cell_2/ReadVariableOp_1:value:0*lstm_cell_2/strided_slice_1/stack:output:0,lstm_cell_2/strided_slice_1/stack_1:output:0,lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2
lstm_cell_2/strided_slice_1¦
lstm_cell_2/MatMul_5MatMullstm_cell_2/mul_5:z:0$lstm_cell_2/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/MatMul_5¢
lstm_cell_2/add_1AddV2lstm_cell_2/BiasAdd_1:output:0lstm_cell_2/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/add_1
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/Sigmoid_1
lstm_cell_2/mul_8Mullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/mul_8¢
lstm_cell_2/ReadVariableOp_2ReadVariableOp#lstm_cell_2_readvariableop_resource* 
_output_shapes
:
Ä*
dtype02
lstm_cell_2/ReadVariableOp_2
!lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_2/strided_slice_2/stack
#lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2%
#lstm_cell_2/strided_slice_2/stack_1
#lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_2/strided_slice_2/stack_2Ò
lstm_cell_2/strided_slice_2StridedSlice$lstm_cell_2/ReadVariableOp_2:value:0*lstm_cell_2/strided_slice_2/stack:output:0,lstm_cell_2/strided_slice_2/stack_1:output:0,lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2
lstm_cell_2/strided_slice_2¦
lstm_cell_2/MatMul_6MatMullstm_cell_2/mul_6:z:0$lstm_cell_2/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/MatMul_6¢
lstm_cell_2/add_2AddV2lstm_cell_2/BiasAdd_2:output:0lstm_cell_2/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/add_2v
lstm_cell_2/TanhTanhlstm_cell_2/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/Tanh
lstm_cell_2/mul_9Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/mul_9
lstm_cell_2/add_3AddV2lstm_cell_2/mul_8:z:0lstm_cell_2/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/add_3¢
lstm_cell_2/ReadVariableOp_3ReadVariableOp#lstm_cell_2_readvariableop_resource* 
_output_shapes
:
Ä*
dtype02
lstm_cell_2/ReadVariableOp_3
!lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2#
!lstm_cell_2/strided_slice_3/stack
#lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_2/strided_slice_3/stack_1
#lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_2/strided_slice_3/stack_2Ò
lstm_cell_2/strided_slice_3StridedSlice$lstm_cell_2/ReadVariableOp_3:value:0*lstm_cell_2/strided_slice_3/stack:output:0,lstm_cell_2/strided_slice_3/stack_1:output:0,lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2
lstm_cell_2/strided_slice_3¦
lstm_cell_2/MatMul_7MatMullstm_cell_2/mul_7:z:0$lstm_cell_2/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/MatMul_7¢
lstm_cell_2/add_4AddV2lstm_cell_2/BiasAdd_3:output:0lstm_cell_2/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/add_4
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/Sigmoid_2z
lstm_cell_2/Tanh_1Tanhlstm_cell_2/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/Tanh_1
lstm_cell_2/mul_10Mullstm_cell_2/Sigmoid_2:y:0lstm_cell_2/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/mul_10
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÄ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterå
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_2_split_readvariableop_resource+lstm_cell_2_split_1_readvariableop_resource#lstm_cell_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_568762*
condR
while_cond_568761*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÄ   22
0TensorArrayV2Stack/TensorListStack/element_shapeé
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:BÿÿÿÿÿÿÿÿÿÄ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¦
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿBÄ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime·
IdentityIdentitystrided_slice_3:output:0^lstm_cell_2/ReadVariableOp^lstm_cell_2/ReadVariableOp_1^lstm_cell_2/ReadVariableOp_2^lstm_cell_2/ReadVariableOp_3!^lstm_cell_2/split/ReadVariableOp#^lstm_cell_2/split_1/ReadVariableOp^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿB:::28
lstm_cell_2/ReadVariableOplstm_cell_2/ReadVariableOp2<
lstm_cell_2/ReadVariableOp_1lstm_cell_2/ReadVariableOp_12<
lstm_cell_2/ReadVariableOp_2lstm_cell_2/ReadVariableOp_22<
lstm_cell_2/ReadVariableOp_3lstm_cell_2/ReadVariableOp_32D
 lstm_cell_2/split/ReadVariableOp lstm_cell_2/split/ReadVariableOp2H
"lstm_cell_2/split_1/ReadVariableOp"lstm_cell_2/split_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB
 
_user_specified_nameinputs
æ
m
O__inference_spatial_dropout1d_2_layer_call_and_return_conditional_losses_570195

inputs

identity_1_
IdentityIdentityinputs*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2

Identityn

Identity_1IdentityIdentity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2

Identity_1"!

identity_1Identity_1:output:0*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿB:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB
 
_user_specified_nameinputs
¯
Ã
while_cond_568437
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_568437___redundant_placeholder04
0while_while_cond_568437___redundant_placeholder14
0while_while_cond_568437___redundant_placeholder24
0while_while_cond_568437___redundant_placeholder3
while_identity
p

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: 2

while/Less]
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: 2
while/Identity")
while_identitywhile/Identity:output:0*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ:

_output_shapes
: :

_output_shapes
:
«
n
O__inference_spatial_dropout1d_2_layer_call_and_return_conditional_losses_567727

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2
dropout/Const
dropout/MulMulinputsdropout/Const:output:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/Mul
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1Í
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shapeÐ
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2
dropout/GreaterEqual/yË
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/Mul_1{
IdentityIdentitydropout/Mul_1:z:0*
T0*=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*<
_input_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:e a
=
_output_shapes+
):'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ö
À
$__inference_signature_wrapper_569397
embedding_2_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallembedding_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_5676742
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿB::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB
+
_user_specified_nameembedding_2_input


'__inference_lstm_2_layer_call_fn_570854
inputs_0
unknown
	unknown_0
	unknown_1
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_5683752
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
O

G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_571777

inputs
states_0
states_1!
split_readvariableop_resource#
split_1_readvariableop_resource
readvariableop_resource
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢split/ReadVariableOp¢split_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	ones_like^
ones_like_1/ShapeShapestates_0*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like_1/Const
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
ones_like_1`
mulMulinputsones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
muld
mul_1Mulinputsones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_1d
mul_2Mulinputsones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_2d
mul_3Mulinputsones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_3P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource* 
_output_shapes
:
*
dtype02
split/ReadVariableOp¯
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
Ä:
Ä:
Ä:
Ä*
	num_split2
splitf
MatMulMatMulmul:z:0split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
MatMull
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

MatMul_1l
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

MatMul_2l
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

MatMul_3T
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:*
dtype02
split_1/ReadVariableOp£
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ä:Ä:Ä:Ä*
	num_split2	
split_1t
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2	
BiasAddz
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
	BiasAdd_1z
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
	BiasAdd_2z
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
	BiasAdd_3h
mul_4Mulstates_0ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
mul_4h
mul_5Mulstates_0ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
mul_5h
mul_6Mulstates_0ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
mul_6h
mul_7Mulstates_0ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
mul_7z
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ä*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ä   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2þ
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2
strided_slicet
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

MatMul_4l
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2	
Sigmoid~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ä*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ä   2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2
strided_slice_1v
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

MatMul_5r
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
	Sigmoid_1a
mul_8MulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
mul_8~
ReadVariableOp_2ReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ä*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2
strided_slice_2v
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

MatMul_6r
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
add_2R
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
Tanh_
mul_9MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
mul_9`
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
add_3~
ReadVariableOp_3ReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ä*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2
strided_slice_3/stack
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2
strided_slice_3v
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

MatMul_7r
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
add_4_
	Sigmoid_2Sigmoid	add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
	Sigmoid_2V
Tanh_1Tanh	add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
Tanh_1e
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
mul_10Ù
IdentityIdentity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

IdentityÝ

Identity_1Identity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

Identity_1Ü

Identity_2Identity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*[
_input_shapesJ
H:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ:::2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ
"
_user_specified_name
states/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ
"
_user_specified_name
states/1
Ô
n
O__inference_spatial_dropout1d_2_layer_call_and_return_conditional_losses_568563

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2
dropout/Constx
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2
dropout/Mul
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1Í
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shapeÐ
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2
dropout/GreaterEqual/yË
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2
dropout/Mul_1j
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2

Identity"
identityIdentity:output:0*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿB:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB
 
_user_specified_nameinputs
Ô
n
O__inference_spatial_dropout1d_2_layer_call_and_return_conditional_losses_570190

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slicex
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ì
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1c
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UUÕ?2
dropout/Constx
dropout/MulMulinputsdropout/Const:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2
dropout/Mul
dropout/random_uniform/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2 
dropout/random_uniform/shape/1Í
dropout/random_uniform/shapePackstrided_slice:output:0'dropout/random_uniform/shape/1:output:0strided_slice_1:output:0*
N*
T0*
_output_shapes
:2
dropout/random_uniform/shapeÐ
$dropout/random_uniform/RandomUniformRandomUniform%dropout/random_uniform/shape:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌÌ>2
dropout/GreaterEqual/yË
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*4
_output_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
dropout/Cast
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2
dropout/Mul_1j
IdentityIdentitydropout/Mul_1:z:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2

Identity"
identityIdentity:output:0*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿB:T P
,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB
 
_user_specified_nameinputs

É
-__inference_sequential_4_layer_call_fn_569333
embedding_2_input
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
identity¢StatefulPartitionedCall·
StatefulPartitionedCallStatefulPartitionedCallembedding_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_sequential_4_layer_call_and_return_conditional_losses_5693182
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿB::::::22
StatefulPartitionedCallStatefulPartitionedCall:Z V
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB
+
_user_specified_nameembedding_2_input
%

while_body_568306
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_lstm_cell_2_568330_0
while_lstm_cell_2_568332_0
while_lstm_cell_2_568334_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_lstm_cell_2_568330
while_lstm_cell_2_568332
while_lstm_cell_2_568334¢)while/lstm_cell_2/StatefulPartitionedCallÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÔ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItemÞ
)while/lstm_cell_2/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_2_568330_0while_lstm_cell_2_568332_0while_lstm_cell_2_568334_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_5679282+
)while/lstm_cell_2/StatefulPartitionedCallö
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder2while/lstm_cell_2/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1
while/IdentityIdentitywhile/add_1:z:0*^while/lstm_cell_2/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity
while/Identity_1Identitywhile_while_maximum_iterations*^while/lstm_cell_2/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_1
while/Identity_2Identitywhile/add:z:0*^while/lstm_cell_2/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_2¹
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^while/lstm_cell_2/StatefulPartitionedCall*
T0*
_output_shapes
: 2
while/Identity_3Ã
while/Identity_4Identity2while/lstm_cell_2/StatefulPartitionedCall:output:1*^while/lstm_cell_2/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/Identity_4Ã
while/Identity_5Identity2while/lstm_cell_2/StatefulPartitionedCall:output:2*^while/lstm_cell_2/StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"6
while_lstm_cell_2_568330while_lstm_cell_2_568330_0"6
while_lstm_cell_2_568332while_lstm_cell_2_568332_0"6
while_lstm_cell_2_568334while_lstm_cell_2_568334_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ: : :::2V
)while/lstm_cell_2/StatefulPartitionedCall)while/lstm_cell_2/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ:

_output_shapes
: :

_output_shapes
: 
øõ
Æ
while_body_570388
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_05
1while_lstm_cell_2_split_readvariableop_resource_07
3while_lstm_cell_2_split_1_readvariableop_resource_0/
+while_lstm_cell_2_readvariableop_resource_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor3
/while_lstm_cell_2_split_readvariableop_resource5
1while_lstm_cell_2_split_1_readvariableop_resource-
)while_lstm_cell_2_readvariableop_resource¢ while/lstm_cell_2/ReadVariableOp¢"while/lstm_cell_2/ReadVariableOp_1¢"while/lstm_cell_2/ReadVariableOp_2¢"while/lstm_cell_2/ReadVariableOp_3¢&while/lstm_cell_2/split/ReadVariableOp¢(while/lstm_cell_2/split_1/ReadVariableOpÃ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   29
7while/TensorArrayV2Read/TensorListGetItem/element_shapeÔ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02+
)while/TensorArrayV2Read/TensorListGetItem¦
!while/lstm_cell_2/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:2#
!while/lstm_cell_2/ones_like/Shape
!while/lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2#
!while/lstm_cell_2/ones_like/ConstÍ
while/lstm_cell_2/ones_likeFill*while/lstm_cell_2/ones_like/Shape:output:0*while/lstm_cell_2/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_2/ones_like
while/lstm_cell_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2!
while/lstm_cell_2/dropout/ConstÈ
while/lstm_cell_2/dropout/MulMul$while/lstm_cell_2/ones_like:output:0(while/lstm_cell_2/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_2/dropout/Mul
while/lstm_cell_2/dropout/ShapeShape$while/lstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2!
while/lstm_cell_2/dropout/Shape
6while/lstm_cell_2/dropout/random_uniform/RandomUniformRandomUniform(while/lstm_cell_2/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2¼¤28
6while/lstm_cell_2/dropout/random_uniform/RandomUniform
(while/lstm_cell_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2*
(while/lstm_cell_2/dropout/GreaterEqual/y
&while/lstm_cell_2/dropout/GreaterEqualGreaterEqual?while/lstm_cell_2/dropout/random_uniform/RandomUniform:output:01while/lstm_cell_2/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2(
&while/lstm_cell_2/dropout/GreaterEqual¶
while/lstm_cell_2/dropout/CastCast*while/lstm_cell_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2 
while/lstm_cell_2/dropout/CastÃ
while/lstm_cell_2/dropout/Mul_1Mul!while/lstm_cell_2/dropout/Mul:z:0"while/lstm_cell_2/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
while/lstm_cell_2/dropout/Mul_1
!while/lstm_cell_2/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_2/dropout_1/ConstÎ
while/lstm_cell_2/dropout_1/MulMul$while/lstm_cell_2/ones_like:output:0*while/lstm_cell_2/dropout_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
while/lstm_cell_2/dropout_1/Mul
!while/lstm_cell_2/dropout_1/ShapeShape$while/lstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_2/dropout_1/Shape
8while/lstm_cell_2/dropout_1/random_uniform/RandomUniformRandomUniform*while/lstm_cell_2/dropout_1/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2¾ãò2:
8while/lstm_cell_2/dropout_1/random_uniform/RandomUniform
*while/lstm_cell_2/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_2/dropout_1/GreaterEqual/y
(while/lstm_cell_2/dropout_1/GreaterEqualGreaterEqualAwhile/lstm_cell_2/dropout_1/random_uniform/RandomUniform:output:03while/lstm_cell_2/dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(while/lstm_cell_2/dropout_1/GreaterEqual¼
 while/lstm_cell_2/dropout_1/CastCast,while/lstm_cell_2/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 while/lstm_cell_2/dropout_1/CastË
!while/lstm_cell_2/dropout_1/Mul_1Mul#while/lstm_cell_2/dropout_1/Mul:z:0$while/lstm_cell_2/dropout_1/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!while/lstm_cell_2/dropout_1/Mul_1
!while/lstm_cell_2/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_2/dropout_2/ConstÎ
while/lstm_cell_2/dropout_2/MulMul$while/lstm_cell_2/ones_like:output:0*while/lstm_cell_2/dropout_2/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
while/lstm_cell_2/dropout_2/Mul
!while/lstm_cell_2/dropout_2/ShapeShape$while/lstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_2/dropout_2/Shape
8while/lstm_cell_2/dropout_2/random_uniform/RandomUniformRandomUniform*while/lstm_cell_2/dropout_2/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2Ìá2:
8while/lstm_cell_2/dropout_2/random_uniform/RandomUniform
*while/lstm_cell_2/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_2/dropout_2/GreaterEqual/y
(while/lstm_cell_2/dropout_2/GreaterEqualGreaterEqualAwhile/lstm_cell_2/dropout_2/random_uniform/RandomUniform:output:03while/lstm_cell_2/dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(while/lstm_cell_2/dropout_2/GreaterEqual¼
 while/lstm_cell_2/dropout_2/CastCast,while/lstm_cell_2/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 while/lstm_cell_2/dropout_2/CastË
!while/lstm_cell_2/dropout_2/Mul_1Mul#while/lstm_cell_2/dropout_2/Mul:z:0$while/lstm_cell_2/dropout_2/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!while/lstm_cell_2/dropout_2/Mul_1
!while/lstm_cell_2/dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_2/dropout_3/ConstÎ
while/lstm_cell_2/dropout_3/MulMul$while/lstm_cell_2/ones_like:output:0*while/lstm_cell_2/dropout_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2!
while/lstm_cell_2/dropout_3/Mul
!while/lstm_cell_2/dropout_3/ShapeShape$while/lstm_cell_2/ones_like:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_2/dropout_3/Shape
8while/lstm_cell_2/dropout_3/random_uniform/RandomUniformRandomUniform*while/lstm_cell_2/dropout_3/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2ø³2:
8while/lstm_cell_2/dropout_3/random_uniform/RandomUniform
*while/lstm_cell_2/dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_2/dropout_3/GreaterEqual/y
(while/lstm_cell_2/dropout_3/GreaterEqualGreaterEqualAwhile/lstm_cell_2/dropout_3/random_uniform/RandomUniform:output:03while/lstm_cell_2/dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2*
(while/lstm_cell_2/dropout_3/GreaterEqual¼
 while/lstm_cell_2/dropout_3/CastCast,while/lstm_cell_2/dropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2"
 while/lstm_cell_2/dropout_3/CastË
!while/lstm_cell_2/dropout_3/Mul_1Mul#while/lstm_cell_2/dropout_3/Mul:z:0$while/lstm_cell_2/dropout_3/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2#
!while/lstm_cell_2/dropout_3/Mul_1
#while/lstm_cell_2/ones_like_1/ShapeShapewhile_placeholder_2*
T0*
_output_shapes
:2%
#while/lstm_cell_2/ones_like_1/Shape
#while/lstm_cell_2/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2%
#while/lstm_cell_2/ones_like_1/ConstÕ
while/lstm_cell_2/ones_like_1Fill,while/lstm_cell_2/ones_like_1/Shape:output:0,while/lstm_cell_2/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/ones_like_1
!while/lstm_cell_2/dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_2/dropout_4/ConstÐ
while/lstm_cell_2/dropout_4/MulMul&while/lstm_cell_2/ones_like_1:output:0*while/lstm_cell_2/dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2!
while/lstm_cell_2/dropout_4/Mul
!while/lstm_cell_2/dropout_4/ShapeShape&while/lstm_cell_2/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_2/dropout_4/Shape
8while/lstm_cell_2/dropout_4/random_uniform/RandomUniformRandomUniform*while/lstm_cell_2/dropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
dtype0*
seed±ÿå)*
seed2¨Äø2:
8while/lstm_cell_2/dropout_4/random_uniform/RandomUniform
*while/lstm_cell_2/dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_2/dropout_4/GreaterEqual/y
(while/lstm_cell_2/dropout_4/GreaterEqualGreaterEqualAwhile/lstm_cell_2/dropout_4/random_uniform/RandomUniform:output:03while/lstm_cell_2/dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2*
(while/lstm_cell_2/dropout_4/GreaterEqual¼
 while/lstm_cell_2/dropout_4/CastCast,while/lstm_cell_2/dropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2"
 while/lstm_cell_2/dropout_4/CastË
!while/lstm_cell_2/dropout_4/Mul_1Mul#while/lstm_cell_2/dropout_4/Mul:z:0$while/lstm_cell_2/dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2#
!while/lstm_cell_2/dropout_4/Mul_1
!while/lstm_cell_2/dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_2/dropout_5/ConstÐ
while/lstm_cell_2/dropout_5/MulMul&while/lstm_cell_2/ones_like_1:output:0*while/lstm_cell_2/dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2!
while/lstm_cell_2/dropout_5/Mul
!while/lstm_cell_2/dropout_5/ShapeShape&while/lstm_cell_2/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_2/dropout_5/Shape
8while/lstm_cell_2/dropout_5/random_uniform/RandomUniformRandomUniform*while/lstm_cell_2/dropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
dtype0*
seed±ÿå)*
seed2´Î2:
8while/lstm_cell_2/dropout_5/random_uniform/RandomUniform
*while/lstm_cell_2/dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_2/dropout_5/GreaterEqual/y
(while/lstm_cell_2/dropout_5/GreaterEqualGreaterEqualAwhile/lstm_cell_2/dropout_5/random_uniform/RandomUniform:output:03while/lstm_cell_2/dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2*
(while/lstm_cell_2/dropout_5/GreaterEqual¼
 while/lstm_cell_2/dropout_5/CastCast,while/lstm_cell_2/dropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2"
 while/lstm_cell_2/dropout_5/CastË
!while/lstm_cell_2/dropout_5/Mul_1Mul#while/lstm_cell_2/dropout_5/Mul:z:0$while/lstm_cell_2/dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2#
!while/lstm_cell_2/dropout_5/Mul_1
!while/lstm_cell_2/dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_2/dropout_6/ConstÐ
while/lstm_cell_2/dropout_6/MulMul&while/lstm_cell_2/ones_like_1:output:0*while/lstm_cell_2/dropout_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2!
while/lstm_cell_2/dropout_6/Mul
!while/lstm_cell_2/dropout_6/ShapeShape&while/lstm_cell_2/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_2/dropout_6/Shape
8while/lstm_cell_2/dropout_6/random_uniform/RandomUniformRandomUniform*while/lstm_cell_2/dropout_6/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
dtype0*
seed±ÿå)*
seed2ëè2:
8while/lstm_cell_2/dropout_6/random_uniform/RandomUniform
*while/lstm_cell_2/dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_2/dropout_6/GreaterEqual/y
(while/lstm_cell_2/dropout_6/GreaterEqualGreaterEqualAwhile/lstm_cell_2/dropout_6/random_uniform/RandomUniform:output:03while/lstm_cell_2/dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2*
(while/lstm_cell_2/dropout_6/GreaterEqual¼
 while/lstm_cell_2/dropout_6/CastCast,while/lstm_cell_2/dropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2"
 while/lstm_cell_2/dropout_6/CastË
!while/lstm_cell_2/dropout_6/Mul_1Mul#while/lstm_cell_2/dropout_6/Mul:z:0$while/lstm_cell_2/dropout_6/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2#
!while/lstm_cell_2/dropout_6/Mul_1
!while/lstm_cell_2/dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2#
!while/lstm_cell_2/dropout_7/ConstÐ
while/lstm_cell_2/dropout_7/MulMul&while/lstm_cell_2/ones_like_1:output:0*while/lstm_cell_2/dropout_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2!
while/lstm_cell_2/dropout_7/Mul
!while/lstm_cell_2/dropout_7/ShapeShape&while/lstm_cell_2/ones_like_1:output:0*
T0*
_output_shapes
:2#
!while/lstm_cell_2/dropout_7/Shape
8while/lstm_cell_2/dropout_7/random_uniform/RandomUniformRandomUniform*while/lstm_cell_2/dropout_7/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
dtype0*
seed±ÿå)*
seed2ó~2:
8while/lstm_cell_2/dropout_7/random_uniform/RandomUniform
*while/lstm_cell_2/dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2,
*while/lstm_cell_2/dropout_7/GreaterEqual/y
(while/lstm_cell_2/dropout_7/GreaterEqualGreaterEqualAwhile/lstm_cell_2/dropout_7/random_uniform/RandomUniform:output:03while/lstm_cell_2/dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2*
(while/lstm_cell_2/dropout_7/GreaterEqual¼
 while/lstm_cell_2/dropout_7/CastCast,while/lstm_cell_2/dropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2"
 while/lstm_cell_2/dropout_7/CastË
!while/lstm_cell_2/dropout_7/Mul_1Mul#while/lstm_cell_2/dropout_7/Mul:z:0$while/lstm_cell_2/dropout_7/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2#
!while/lstm_cell_2/dropout_7/Mul_1¿
while/lstm_cell_2/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0#while/lstm_cell_2/dropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_2/mulÅ
while/lstm_cell_2/mul_1Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_2/dropout_1/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_2/mul_1Å
while/lstm_cell_2/mul_2Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_2/dropout_2/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_2/mul_2Å
while/lstm_cell_2/mul_3Mul0while/TensorArrayV2Read/TensorListGetItem:item:0%while/lstm_cell_2/dropout_3/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
while/lstm_cell_2/mul_3t
while/lstm_cell_2/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_2/Const
!while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2#
!while/lstm_cell_2/split/split_dimÄ
&while/lstm_cell_2/split/ReadVariableOpReadVariableOp1while_lstm_cell_2_split_readvariableop_resource_0* 
_output_shapes
:
*
dtype02(
&while/lstm_cell_2/split/ReadVariableOp÷
while/lstm_cell_2/splitSplit*while/lstm_cell_2/split/split_dim:output:0.while/lstm_cell_2/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
Ä:
Ä:
Ä:
Ä*
	num_split2
while/lstm_cell_2/split®
while/lstm_cell_2/MatMulMatMulwhile/lstm_cell_2/mul:z:0 while/lstm_cell_2/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/MatMul´
while/lstm_cell_2/MatMul_1MatMulwhile/lstm_cell_2/mul_1:z:0 while/lstm_cell_2/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/MatMul_1´
while/lstm_cell_2/MatMul_2MatMulwhile/lstm_cell_2/mul_2:z:0 while/lstm_cell_2/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/MatMul_2´
while/lstm_cell_2/MatMul_3MatMulwhile/lstm_cell_2/mul_3:z:0 while/lstm_cell_2/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/MatMul_3x
while/lstm_cell_2/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
while/lstm_cell_2/Const_1
#while/lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2%
#while/lstm_cell_2/split_1/split_dimÅ
(while/lstm_cell_2/split_1/ReadVariableOpReadVariableOp3while_lstm_cell_2_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02*
(while/lstm_cell_2/split_1/ReadVariableOpë
while/lstm_cell_2/split_1Split,while/lstm_cell_2/split_1/split_dim:output:00while/lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ä:Ä:Ä:Ä*
	num_split2
while/lstm_cell_2/split_1¼
while/lstm_cell_2/BiasAddBiasAdd"while/lstm_cell_2/MatMul:product:0"while/lstm_cell_2/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/BiasAddÂ
while/lstm_cell_2/BiasAdd_1BiasAdd$while/lstm_cell_2/MatMul_1:product:0"while/lstm_cell_2/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/BiasAdd_1Â
while/lstm_cell_2/BiasAdd_2BiasAdd$while/lstm_cell_2/MatMul_2:product:0"while/lstm_cell_2/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/BiasAdd_2Â
while/lstm_cell_2/BiasAdd_3BiasAdd$while/lstm_cell_2/MatMul_3:product:0"while/lstm_cell_2/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/BiasAdd_3¨
while/lstm_cell_2/mul_4Mulwhile_placeholder_2%while/lstm_cell_2/dropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/mul_4¨
while/lstm_cell_2/mul_5Mulwhile_placeholder_2%while/lstm_cell_2/dropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/mul_5¨
while/lstm_cell_2/mul_6Mulwhile_placeholder_2%while/lstm_cell_2/dropout_6/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/mul_6¨
while/lstm_cell_2/mul_7Mulwhile_placeholder_2%while/lstm_cell_2/dropout_7/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/mul_7²
 while/lstm_cell_2/ReadVariableOpReadVariableOp+while_lstm_cell_2_readvariableop_resource_0* 
_output_shapes
:
Ä*
dtype02"
 while/lstm_cell_2/ReadVariableOp
%while/lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2'
%while/lstm_cell_2/strided_slice/stack£
'while/lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ä   2)
'while/lstm_cell_2/strided_slice/stack_1£
'while/lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_2/strided_slice/stack_2ê
while/lstm_cell_2/strided_sliceStridedSlice(while/lstm_cell_2/ReadVariableOp:value:0.while/lstm_cell_2/strided_slice/stack:output:00while/lstm_cell_2/strided_slice/stack_1:output:00while/lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2!
while/lstm_cell_2/strided_slice¼
while/lstm_cell_2/MatMul_4MatMulwhile/lstm_cell_2/mul_4:z:0(while/lstm_cell_2/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/MatMul_4´
while/lstm_cell_2/addAddV2"while/lstm_cell_2/BiasAdd:output:0$while/lstm_cell_2/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/add
while/lstm_cell_2/SigmoidSigmoidwhile/lstm_cell_2/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/Sigmoid¶
"while/lstm_cell_2/ReadVariableOp_1ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0* 
_output_shapes
:
Ä*
dtype02$
"while/lstm_cell_2/ReadVariableOp_1£
'while/lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ä   2)
'while/lstm_cell_2/strided_slice_1/stack§
)while/lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_2/strided_slice_1/stack_1§
)while/lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_2/strided_slice_1/stack_2ö
!while/lstm_cell_2/strided_slice_1StridedSlice*while/lstm_cell_2/ReadVariableOp_1:value:00while/lstm_cell_2/strided_slice_1/stack:output:02while/lstm_cell_2/strided_slice_1/stack_1:output:02while/lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2#
!while/lstm_cell_2/strided_slice_1¾
while/lstm_cell_2/MatMul_5MatMulwhile/lstm_cell_2/mul_5:z:0*while/lstm_cell_2/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/MatMul_5º
while/lstm_cell_2/add_1AddV2$while/lstm_cell_2/BiasAdd_1:output:0$while/lstm_cell_2/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/add_1
while/lstm_cell_2/Sigmoid_1Sigmoidwhile/lstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/Sigmoid_1¢
while/lstm_cell_2/mul_8Mulwhile/lstm_cell_2/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/mul_8¶
"while/lstm_cell_2/ReadVariableOp_2ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0* 
_output_shapes
:
Ä*
dtype02$
"while/lstm_cell_2/ReadVariableOp_2£
'while/lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      2)
'while/lstm_cell_2/strided_slice_2/stack§
)while/lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2+
)while/lstm_cell_2/strided_slice_2/stack_1§
)while/lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_2/strided_slice_2/stack_2ö
!while/lstm_cell_2/strided_slice_2StridedSlice*while/lstm_cell_2/ReadVariableOp_2:value:00while/lstm_cell_2/strided_slice_2/stack:output:02while/lstm_cell_2/strided_slice_2/stack_1:output:02while/lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2#
!while/lstm_cell_2/strided_slice_2¾
while/lstm_cell_2/MatMul_6MatMulwhile/lstm_cell_2/mul_6:z:0*while/lstm_cell_2/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/MatMul_6º
while/lstm_cell_2/add_2AddV2$while/lstm_cell_2/BiasAdd_2:output:0$while/lstm_cell_2/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/add_2
while/lstm_cell_2/TanhTanhwhile/lstm_cell_2/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/Tanh§
while/lstm_cell_2/mul_9Mulwhile/lstm_cell_2/Sigmoid:y:0while/lstm_cell_2/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/mul_9¨
while/lstm_cell_2/add_3AddV2while/lstm_cell_2/mul_8:z:0while/lstm_cell_2/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/add_3¶
"while/lstm_cell_2/ReadVariableOp_3ReadVariableOp+while_lstm_cell_2_readvariableop_resource_0* 
_output_shapes
:
Ä*
dtype02$
"while/lstm_cell_2/ReadVariableOp_3£
'while/lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2)
'while/lstm_cell_2/strided_slice_3/stack§
)while/lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2+
)while/lstm_cell_2/strided_slice_3/stack_1§
)while/lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2+
)while/lstm_cell_2/strided_slice_3/stack_2ö
!while/lstm_cell_2/strided_slice_3StridedSlice*while/lstm_cell_2/ReadVariableOp_3:value:00while/lstm_cell_2/strided_slice_3/stack:output:02while/lstm_cell_2/strided_slice_3/stack_1:output:02while/lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2#
!while/lstm_cell_2/strided_slice_3¾
while/lstm_cell_2/MatMul_7MatMulwhile/lstm_cell_2/mul_7:z:0*while/lstm_cell_2/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/MatMul_7º
while/lstm_cell_2/add_4AddV2$while/lstm_cell_2/BiasAdd_3:output:0$while/lstm_cell_2/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/add_4
while/lstm_cell_2/Sigmoid_2Sigmoidwhile/lstm_cell_2/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/Sigmoid_2
while/lstm_cell_2/Tanh_1Tanhwhile/lstm_cell_2/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/Tanh_1­
while/lstm_cell_2/mul_10Mulwhile/lstm_cell_2/Sigmoid_2:y:0while/lstm_cell_2/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/lstm_cell_2/mul_10à
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell_2/mul_10:z:0*
_output_shapes
: *
element_dtype02,
*while/TensorArrayV2Write/TensorListSetItem\
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add/yi
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: 2
	while/add`
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2
while/add_1/yv
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: 2
while/add_1Ä
while/IdentityIdentitywhile/add_1:z:0!^while/lstm_cell_2/ReadVariableOp#^while/lstm_cell_2/ReadVariableOp_1#^while/lstm_cell_2/ReadVariableOp_2#^while/lstm_cell_2/ReadVariableOp_3'^while/lstm_cell_2/split/ReadVariableOp)^while/lstm_cell_2/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity×
while/Identity_1Identitywhile_while_maximum_iterations!^while/lstm_cell_2/ReadVariableOp#^while/lstm_cell_2/ReadVariableOp_1#^while/lstm_cell_2/ReadVariableOp_2#^while/lstm_cell_2/ReadVariableOp_3'^while/lstm_cell_2/split/ReadVariableOp)^while/lstm_cell_2/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_1Æ
while/Identity_2Identitywhile/add:z:0!^while/lstm_cell_2/ReadVariableOp#^while/lstm_cell_2/ReadVariableOp_1#^while/lstm_cell_2/ReadVariableOp_2#^while/lstm_cell_2/ReadVariableOp_3'^while/lstm_cell_2/split/ReadVariableOp)^while/lstm_cell_2/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_2ó
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^while/lstm_cell_2/ReadVariableOp#^while/lstm_cell_2/ReadVariableOp_1#^while/lstm_cell_2/ReadVariableOp_2#^while/lstm_cell_2/ReadVariableOp_3'^while/lstm_cell_2/split/ReadVariableOp)^while/lstm_cell_2/split_1/ReadVariableOp*
T0*
_output_shapes
: 2
while/Identity_3ç
while/Identity_4Identitywhile/lstm_cell_2/mul_10:z:0!^while/lstm_cell_2/ReadVariableOp#^while/lstm_cell_2/ReadVariableOp_1#^while/lstm_cell_2/ReadVariableOp_2#^while/lstm_cell_2/ReadVariableOp_3'^while/lstm_cell_2/split/ReadVariableOp)^while/lstm_cell_2/split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/Identity_4æ
while/Identity_5Identitywhile/lstm_cell_2/add_3:z:0!^while/lstm_cell_2/ReadVariableOp#^while/lstm_cell_2/ReadVariableOp_1#^while/lstm_cell_2/ReadVariableOp_2#^while/lstm_cell_2/ReadVariableOp_3'^while/lstm_cell_2/split/ReadVariableOp)^while/lstm_cell_2/split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
while/Identity_5")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"X
)while_lstm_cell_2_readvariableop_resource+while_lstm_cell_2_readvariableop_resource_0"h
1while_lstm_cell_2_split_1_readvariableop_resource3while_lstm_cell_2_split_1_readvariableop_resource_0"d
/while_lstm_cell_2_split_readvariableop_resource1while_lstm_cell_2_split_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"¨
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ: : :::2D
 while/lstm_cell_2/ReadVariableOp while/lstm_cell_2/ReadVariableOp2H
"while/lstm_cell_2/ReadVariableOp_1"while/lstm_cell_2/ReadVariableOp_12H
"while/lstm_cell_2/ReadVariableOp_2"while/lstm_cell_2/ReadVariableOp_22H
"while/lstm_cell_2/ReadVariableOp_3"while/lstm_cell_2/ReadVariableOp_32P
&while/lstm_cell_2/split/ReadVariableOp&while/lstm_cell_2/split/ReadVariableOp2T
(while/lstm_cell_2/split_1/ReadVariableOp(while/lstm_cell_2/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ:

_output_shapes
: :

_output_shapes
: 
¾
¶
B__inference_lstm_2_layer_call_and_return_conditional_losses_570843
inputs_0-
)lstm_cell_2_split_readvariableop_resource/
+lstm_cell_2_split_1_readvariableop_resource'
#lstm_cell_2_readvariableop_resource
identity¢lstm_cell_2/ReadVariableOp¢lstm_cell_2/ReadVariableOp_1¢lstm_cell_2/ReadVariableOp_2¢lstm_cell_2/ReadVariableOp_3¢ lstm_cell_2/split/ReadVariableOp¢"lstm_cell_2/split_1/ReadVariableOp¢whileF
ShapeShapeinputs_0*
T0*
_output_shapes
:2
Shapet
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice/stackx
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_1x
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice/stack_2â
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice]
zeros/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ä2
zeros/mul/yl
	zeros/mulMulstrided_slice:output:0zeros/mul/y:output:0*
T0*
_output_shapes
: 2
	zeros/mul_
zeros/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros/Less/yg

zeros/LessLesszeros/mul:z:0zeros/Less/y:output:0*
T0*
_output_shapes
: 2

zeros/Lessc
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ä2
zeros/packed/1
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros/packed_
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros/Constv
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
zerosa
zeros_1/mul/yConst*
_output_shapes
: *
dtype0*
value
B :Ä2
zeros_1/mul/yr
zeros_1/mulMulstrided_slice:output:0zeros_1/mul/y:output:0*
T0*
_output_shapes
: 2
zeros_1/mulc
zeros_1/Less/yConst*
_output_shapes
: *
dtype0*
value
B :è2
zeros_1/Less/yo
zeros_1/LessLesszeros_1/mul:z:0zeros_1/Less/y:output:0*
T0*
_output_shapes
: 2
zeros_1/Lessg
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ä2
zeros_1/packed/1
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:2
zeros_1/packedc
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    2
zeros_1/Const~
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2	
zeros_1u
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose/perm
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
	transposeO
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:2	
Shape_1x
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2î
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
TensorArrayV2/element_shape²
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2¿
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   27
5TensorArrayUnstack/TensorListFromTensor/element_shapeø
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type02)
'TensorArrayUnstack/TensorListFromTensorx
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ý
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
shrink_axis_mask2
strided_slice_2
lstm_cell_2/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:2
lstm_cell_2/ones_like/Shape
lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_2/ones_like/Constµ
lstm_cell_2/ones_likeFill$lstm_cell_2/ones_like/Shape:output:0$lstm_cell_2/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/ones_like|
lstm_cell_2/ones_like_1/ShapeShapezeros:output:0*
T0*
_output_shapes
:2
lstm_cell_2/ones_like_1/Shape
lstm_cell_2/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
lstm_cell_2/ones_like_1/Const½
lstm_cell_2/ones_like_1Fill&lstm_cell_2/ones_like_1/Shape:output:0&lstm_cell_2/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/ones_like_1
lstm_cell_2/mulMulstrided_slice_2:output:0lstm_cell_2/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/mul
lstm_cell_2/mul_1Mulstrided_slice_2:output:0lstm_cell_2/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/mul_1
lstm_cell_2/mul_2Mulstrided_slice_2:output:0lstm_cell_2/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/mul_2
lstm_cell_2/mul_3Mulstrided_slice_2:output:0lstm_cell_2/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
lstm_cell_2/mul_3h
lstm_cell_2/ConstConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_2/Const|
lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_2/split/split_dim°
 lstm_cell_2/split/ReadVariableOpReadVariableOp)lstm_cell_2_split_readvariableop_resource* 
_output_shapes
:
*
dtype02"
 lstm_cell_2/split/ReadVariableOpß
lstm_cell_2/splitSplit$lstm_cell_2/split/split_dim:output:0(lstm_cell_2/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
Ä:
Ä:
Ä:
Ä*
	num_split2
lstm_cell_2/split
lstm_cell_2/MatMulMatMullstm_cell_2/mul:z:0lstm_cell_2/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/MatMul
lstm_cell_2/MatMul_1MatMullstm_cell_2/mul_1:z:0lstm_cell_2/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/MatMul_1
lstm_cell_2/MatMul_2MatMullstm_cell_2/mul_2:z:0lstm_cell_2/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/MatMul_2
lstm_cell_2/MatMul_3MatMullstm_cell_2/mul_3:z:0lstm_cell_2/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/MatMul_3l
lstm_cell_2/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2
lstm_cell_2/Const_1
lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
lstm_cell_2/split_1/split_dim±
"lstm_cell_2/split_1/ReadVariableOpReadVariableOp+lstm_cell_2_split_1_readvariableop_resource*
_output_shapes	
:*
dtype02$
"lstm_cell_2/split_1/ReadVariableOpÓ
lstm_cell_2/split_1Split&lstm_cell_2/split_1/split_dim:output:0*lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ä:Ä:Ä:Ä*
	num_split2
lstm_cell_2/split_1¤
lstm_cell_2/BiasAddBiasAddlstm_cell_2/MatMul:product:0lstm_cell_2/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/BiasAddª
lstm_cell_2/BiasAdd_1BiasAddlstm_cell_2/MatMul_1:product:0lstm_cell_2/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/BiasAdd_1ª
lstm_cell_2/BiasAdd_2BiasAddlstm_cell_2/MatMul_2:product:0lstm_cell_2/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/BiasAdd_2ª
lstm_cell_2/BiasAdd_3BiasAddlstm_cell_2/MatMul_3:product:0lstm_cell_2/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/BiasAdd_3
lstm_cell_2/mul_4Mulzeros:output:0 lstm_cell_2/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/mul_4
lstm_cell_2/mul_5Mulzeros:output:0 lstm_cell_2/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/mul_5
lstm_cell_2/mul_6Mulzeros:output:0 lstm_cell_2/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/mul_6
lstm_cell_2/mul_7Mulzeros:output:0 lstm_cell_2/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/mul_7
lstm_cell_2/ReadVariableOpReadVariableOp#lstm_cell_2_readvariableop_resource* 
_output_shapes
:
Ä*
dtype02
lstm_cell_2/ReadVariableOp
lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2!
lstm_cell_2/strided_slice/stack
!lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ä   2#
!lstm_cell_2/strided_slice/stack_1
!lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_2/strided_slice/stack_2Æ
lstm_cell_2/strided_sliceStridedSlice"lstm_cell_2/ReadVariableOp:value:0(lstm_cell_2/strided_slice/stack:output:0*lstm_cell_2/strided_slice/stack_1:output:0*lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2
lstm_cell_2/strided_slice¤
lstm_cell_2/MatMul_4MatMullstm_cell_2/mul_4:z:0"lstm_cell_2/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/MatMul_4
lstm_cell_2/addAddV2lstm_cell_2/BiasAdd:output:0lstm_cell_2/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/add}
lstm_cell_2/SigmoidSigmoidlstm_cell_2/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/Sigmoid¢
lstm_cell_2/ReadVariableOp_1ReadVariableOp#lstm_cell_2_readvariableop_resource* 
_output_shapes
:
Ä*
dtype02
lstm_cell_2/ReadVariableOp_1
!lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ä   2#
!lstm_cell_2/strided_slice_1/stack
#lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_2/strided_slice_1/stack_1
#lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_2/strided_slice_1/stack_2Ò
lstm_cell_2/strided_slice_1StridedSlice$lstm_cell_2/ReadVariableOp_1:value:0*lstm_cell_2/strided_slice_1/stack:output:0,lstm_cell_2/strided_slice_1/stack_1:output:0,lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2
lstm_cell_2/strided_slice_1¦
lstm_cell_2/MatMul_5MatMullstm_cell_2/mul_5:z:0$lstm_cell_2/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/MatMul_5¢
lstm_cell_2/add_1AddV2lstm_cell_2/BiasAdd_1:output:0lstm_cell_2/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/add_1
lstm_cell_2/Sigmoid_1Sigmoidlstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/Sigmoid_1
lstm_cell_2/mul_8Mullstm_cell_2/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/mul_8¢
lstm_cell_2/ReadVariableOp_2ReadVariableOp#lstm_cell_2_readvariableop_resource* 
_output_shapes
:
Ä*
dtype02
lstm_cell_2/ReadVariableOp_2
!lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      2#
!lstm_cell_2/strided_slice_2/stack
#lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2%
#lstm_cell_2/strided_slice_2/stack_1
#lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_2/strided_slice_2/stack_2Ò
lstm_cell_2/strided_slice_2StridedSlice$lstm_cell_2/ReadVariableOp_2:value:0*lstm_cell_2/strided_slice_2/stack:output:0,lstm_cell_2/strided_slice_2/stack_1:output:0,lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2
lstm_cell_2/strided_slice_2¦
lstm_cell_2/MatMul_6MatMullstm_cell_2/mul_6:z:0$lstm_cell_2/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/MatMul_6¢
lstm_cell_2/add_2AddV2lstm_cell_2/BiasAdd_2:output:0lstm_cell_2/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/add_2v
lstm_cell_2/TanhTanhlstm_cell_2/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/Tanh
lstm_cell_2/mul_9Mullstm_cell_2/Sigmoid:y:0lstm_cell_2/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/mul_9
lstm_cell_2/add_3AddV2lstm_cell_2/mul_8:z:0lstm_cell_2/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/add_3¢
lstm_cell_2/ReadVariableOp_3ReadVariableOp#lstm_cell_2_readvariableop_resource* 
_output_shapes
:
Ä*
dtype02
lstm_cell_2/ReadVariableOp_3
!lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2#
!lstm_cell_2/strided_slice_3/stack
#lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2%
#lstm_cell_2/strided_slice_3/stack_1
#lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2%
#lstm_cell_2/strided_slice_3/stack_2Ò
lstm_cell_2/strided_slice_3StridedSlice$lstm_cell_2/ReadVariableOp_3:value:0*lstm_cell_2/strided_slice_3/stack:output:0,lstm_cell_2/strided_slice_3/stack_1:output:0,lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2
lstm_cell_2/strided_slice_3¦
lstm_cell_2/MatMul_7MatMullstm_cell_2/mul_7:z:0$lstm_cell_2/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/MatMul_7¢
lstm_cell_2/add_4AddV2lstm_cell_2/BiasAdd_3:output:0lstm_cell_2/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/add_4
lstm_cell_2/Sigmoid_2Sigmoidlstm_cell_2/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/Sigmoid_2z
lstm_cell_2/Tanh_1Tanhlstm_cell_2/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/Tanh_1
lstm_cell_2/mul_10Mullstm_cell_2/Sigmoid_2:y:0lstm_cell_2/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
lstm_cell_2/mul_10
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÄ   2
TensorArrayV2_1/element_shape¸
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type02
TensorArrayV2_1N
timeConst*
_output_shapes
: *
dtype0*
value	B : 2
time
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
while/maximum_iterationsj
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 2
while/loop_counterå
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0)lstm_cell_2_split_readvariableop_resource+lstm_cell_2_split_1_readvariableop_resource#lstm_cell_2_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_570707*
condR
while_cond_570706*M
output_shapes<
:: : : : :ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ: : : : : *
parallel_iterations 2
whileµ
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÄ   22
0TensorArrayV2Stack/TensorListStack/element_shapeò
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÄ*
element_dtype02$
"TensorArrayV2Stack/TensorListStack
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
shrink_axis_mask2
strided_slice_3y
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          2
transpose_1/perm¯
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÄ2
transpose_1f
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    2	
runtime·
IdentityIdentitystrided_slice_3:output:0^lstm_cell_2/ReadVariableOp^lstm_cell_2/ReadVariableOp_1^lstm_cell_2/ReadVariableOp_2^lstm_cell_2/ReadVariableOp_3!^lstm_cell_2/split/ReadVariableOp#^lstm_cell_2/split_1/ReadVariableOp^while*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::28
lstm_cell_2/ReadVariableOplstm_cell_2/ReadVariableOp2<
lstm_cell_2/ReadVariableOp_1lstm_cell_2/ReadVariableOp_12<
lstm_cell_2/ReadVariableOp_2lstm_cell_2/ReadVariableOp_22<
lstm_cell_2/ReadVariableOp_3lstm_cell_2/ReadVariableOp_32D
 lstm_cell_2/split/ReadVariableOp lstm_cell_2/split/ReadVariableOp2H
"lstm_cell_2/split_1/ReadVariableOp"lstm_cell_2/split_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
"
_user_specified_name
inputs/0
÷Ì

%sequential_4_lstm_2_while_body_567531D
@sequential_4_lstm_2_while_sequential_4_lstm_2_while_loop_counterJ
Fsequential_4_lstm_2_while_sequential_4_lstm_2_while_maximum_iterations)
%sequential_4_lstm_2_while_placeholder+
'sequential_4_lstm_2_while_placeholder_1+
'sequential_4_lstm_2_while_placeholder_2+
'sequential_4_lstm_2_while_placeholder_3C
?sequential_4_lstm_2_while_sequential_4_lstm_2_strided_slice_1_0
{sequential_4_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_4_lstm_2_tensorarrayunstack_tensorlistfromtensor_0I
Esequential_4_lstm_2_while_lstm_cell_2_split_readvariableop_resource_0K
Gsequential_4_lstm_2_while_lstm_cell_2_split_1_readvariableop_resource_0C
?sequential_4_lstm_2_while_lstm_cell_2_readvariableop_resource_0&
"sequential_4_lstm_2_while_identity(
$sequential_4_lstm_2_while_identity_1(
$sequential_4_lstm_2_while_identity_2(
$sequential_4_lstm_2_while_identity_3(
$sequential_4_lstm_2_while_identity_4(
$sequential_4_lstm_2_while_identity_5A
=sequential_4_lstm_2_while_sequential_4_lstm_2_strided_slice_1}
ysequential_4_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_4_lstm_2_tensorarrayunstack_tensorlistfromtensorG
Csequential_4_lstm_2_while_lstm_cell_2_split_readvariableop_resourceI
Esequential_4_lstm_2_while_lstm_cell_2_split_1_readvariableop_resourceA
=sequential_4_lstm_2_while_lstm_cell_2_readvariableop_resource¢4sequential_4/lstm_2/while/lstm_cell_2/ReadVariableOp¢6sequential_4/lstm_2/while/lstm_cell_2/ReadVariableOp_1¢6sequential_4/lstm_2/while/lstm_cell_2/ReadVariableOp_2¢6sequential_4/lstm_2/while/lstm_cell_2/ReadVariableOp_3¢:sequential_4/lstm_2/while/lstm_cell_2/split/ReadVariableOp¢<sequential_4/lstm_2/while/lstm_cell_2/split_1/ReadVariableOpë
Ksequential_4/lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   2M
Ksequential_4/lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeÌ
=sequential_4/lstm_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem{sequential_4_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_4_lstm_2_tensorarrayunstack_tensorlistfromtensor_0%sequential_4_lstm_2_while_placeholderTsequential_4/lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
element_dtype02?
=sequential_4/lstm_2/while/TensorArrayV2Read/TensorListGetItemâ
5sequential_4/lstm_2/while/lstm_cell_2/ones_like/ShapeShapeDsequential_4/lstm_2/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:27
5sequential_4/lstm_2/while/lstm_cell_2/ones_like/Shape³
5sequential_4/lstm_2/while/lstm_cell_2/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?27
5sequential_4/lstm_2/while/lstm_cell_2/ones_like/Const
/sequential_4/lstm_2/while/lstm_cell_2/ones_likeFill>sequential_4/lstm_2/while/lstm_cell_2/ones_like/Shape:output:0>sequential_4/lstm_2/while/lstm_cell_2/ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/sequential_4/lstm_2/while/lstm_cell_2/ones_likeÉ
7sequential_4/lstm_2/while/lstm_cell_2/ones_like_1/ShapeShape'sequential_4_lstm_2_while_placeholder_2*
T0*
_output_shapes
:29
7sequential_4/lstm_2/while/lstm_cell_2/ones_like_1/Shape·
7sequential_4/lstm_2/while/lstm_cell_2/ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?29
7sequential_4/lstm_2/while/lstm_cell_2/ones_like_1/Const¥
1sequential_4/lstm_2/while/lstm_cell_2/ones_like_1Fill@sequential_4/lstm_2/while/lstm_cell_2/ones_like_1/Shape:output:0@sequential_4/lstm_2/while/lstm_cell_2/ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ23
1sequential_4/lstm_2/while/lstm_cell_2/ones_like_1
)sequential_4/lstm_2/while/lstm_cell_2/mulMulDsequential_4/lstm_2/while/TensorArrayV2Read/TensorListGetItem:item:08sequential_4/lstm_2/while/lstm_cell_2/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2+
)sequential_4/lstm_2/while/lstm_cell_2/mul
+sequential_4/lstm_2/while/lstm_cell_2/mul_1MulDsequential_4/lstm_2/while/TensorArrayV2Read/TensorListGetItem:item:08sequential_4/lstm_2/while/lstm_cell_2/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+sequential_4/lstm_2/while/lstm_cell_2/mul_1
+sequential_4/lstm_2/while/lstm_cell_2/mul_2MulDsequential_4/lstm_2/while/TensorArrayV2Read/TensorListGetItem:item:08sequential_4/lstm_2/while/lstm_cell_2/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+sequential_4/lstm_2/while/lstm_cell_2/mul_2
+sequential_4/lstm_2/while/lstm_cell_2/mul_3MulDsequential_4/lstm_2/while/TensorArrayV2Read/TensorListGetItem:item:08sequential_4/lstm_2/while/lstm_cell_2/ones_like:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+sequential_4/lstm_2/while/lstm_cell_2/mul_3
+sequential_4/lstm_2/while/lstm_cell_2/ConstConst*
_output_shapes
: *
dtype0*
value	B :2-
+sequential_4/lstm_2/while/lstm_cell_2/Const°
5sequential_4/lstm_2/while/lstm_cell_2/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :27
5sequential_4/lstm_2/while/lstm_cell_2/split/split_dim
:sequential_4/lstm_2/while/lstm_cell_2/split/ReadVariableOpReadVariableOpEsequential_4_lstm_2_while_lstm_cell_2_split_readvariableop_resource_0* 
_output_shapes
:
*
dtype02<
:sequential_4/lstm_2/while/lstm_cell_2/split/ReadVariableOpÇ
+sequential_4/lstm_2/while/lstm_cell_2/splitSplit>sequential_4/lstm_2/while/lstm_cell_2/split/split_dim:output:0Bsequential_4/lstm_2/while/lstm_cell_2/split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
Ä:
Ä:
Ä:
Ä*
	num_split2-
+sequential_4/lstm_2/while/lstm_cell_2/splitþ
,sequential_4/lstm_2/while/lstm_cell_2/MatMulMatMul-sequential_4/lstm_2/while/lstm_cell_2/mul:z:04sequential_4/lstm_2/while/lstm_cell_2/split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2.
,sequential_4/lstm_2/while/lstm_cell_2/MatMul
.sequential_4/lstm_2/while/lstm_cell_2/MatMul_1MatMul/sequential_4/lstm_2/while/lstm_cell_2/mul_1:z:04sequential_4/lstm_2/while/lstm_cell_2/split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ20
.sequential_4/lstm_2/while/lstm_cell_2/MatMul_1
.sequential_4/lstm_2/while/lstm_cell_2/MatMul_2MatMul/sequential_4/lstm_2/while/lstm_cell_2/mul_2:z:04sequential_4/lstm_2/while/lstm_cell_2/split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ20
.sequential_4/lstm_2/while/lstm_cell_2/MatMul_2
.sequential_4/lstm_2/while/lstm_cell_2/MatMul_3MatMul/sequential_4/lstm_2/while/lstm_cell_2/mul_3:z:04sequential_4/lstm_2/while/lstm_cell_2/split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ20
.sequential_4/lstm_2/while/lstm_cell_2/MatMul_3 
-sequential_4/lstm_2/while/lstm_cell_2/Const_1Const*
_output_shapes
: *
dtype0*
value	B :2/
-sequential_4/lstm_2/while/lstm_cell_2/Const_1´
7sequential_4/lstm_2/while/lstm_cell_2/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 29
7sequential_4/lstm_2/while/lstm_cell_2/split_1/split_dim
<sequential_4/lstm_2/while/lstm_cell_2/split_1/ReadVariableOpReadVariableOpGsequential_4_lstm_2_while_lstm_cell_2_split_1_readvariableop_resource_0*
_output_shapes	
:*
dtype02>
<sequential_4/lstm_2/while/lstm_cell_2/split_1/ReadVariableOp»
-sequential_4/lstm_2/while/lstm_cell_2/split_1Split@sequential_4/lstm_2/while/lstm_cell_2/split_1/split_dim:output:0Dsequential_4/lstm_2/while/lstm_cell_2/split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ä:Ä:Ä:Ä*
	num_split2/
-sequential_4/lstm_2/while/lstm_cell_2/split_1
-sequential_4/lstm_2/while/lstm_cell_2/BiasAddBiasAdd6sequential_4/lstm_2/while/lstm_cell_2/MatMul:product:06sequential_4/lstm_2/while/lstm_cell_2/split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2/
-sequential_4/lstm_2/while/lstm_cell_2/BiasAdd
/sequential_4/lstm_2/while/lstm_cell_2/BiasAdd_1BiasAdd8sequential_4/lstm_2/while/lstm_cell_2/MatMul_1:product:06sequential_4/lstm_2/while/lstm_cell_2/split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ21
/sequential_4/lstm_2/while/lstm_cell_2/BiasAdd_1
/sequential_4/lstm_2/while/lstm_cell_2/BiasAdd_2BiasAdd8sequential_4/lstm_2/while/lstm_cell_2/MatMul_2:product:06sequential_4/lstm_2/while/lstm_cell_2/split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ21
/sequential_4/lstm_2/while/lstm_cell_2/BiasAdd_2
/sequential_4/lstm_2/while/lstm_cell_2/BiasAdd_3BiasAdd8sequential_4/lstm_2/while/lstm_cell_2/MatMul_3:product:06sequential_4/lstm_2/while/lstm_cell_2/split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ21
/sequential_4/lstm_2/while/lstm_cell_2/BiasAdd_3ù
+sequential_4/lstm_2/while/lstm_cell_2/mul_4Mul'sequential_4_lstm_2_while_placeholder_2:sequential_4/lstm_2/while/lstm_cell_2/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2-
+sequential_4/lstm_2/while/lstm_cell_2/mul_4ù
+sequential_4/lstm_2/while/lstm_cell_2/mul_5Mul'sequential_4_lstm_2_while_placeholder_2:sequential_4/lstm_2/while/lstm_cell_2/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2-
+sequential_4/lstm_2/while/lstm_cell_2/mul_5ù
+sequential_4/lstm_2/while/lstm_cell_2/mul_6Mul'sequential_4_lstm_2_while_placeholder_2:sequential_4/lstm_2/while/lstm_cell_2/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2-
+sequential_4/lstm_2/while/lstm_cell_2/mul_6ù
+sequential_4/lstm_2/while/lstm_cell_2/mul_7Mul'sequential_4_lstm_2_while_placeholder_2:sequential_4/lstm_2/while/lstm_cell_2/ones_like_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2-
+sequential_4/lstm_2/while/lstm_cell_2/mul_7î
4sequential_4/lstm_2/while/lstm_cell_2/ReadVariableOpReadVariableOp?sequential_4_lstm_2_while_lstm_cell_2_readvariableop_resource_0* 
_output_shapes
:
Ä*
dtype026
4sequential_4/lstm_2/while/lstm_cell_2/ReadVariableOpÇ
9sequential_4/lstm_2/while/lstm_cell_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2;
9sequential_4/lstm_2/while/lstm_cell_2/strided_slice/stackË
;sequential_4/lstm_2/while/lstm_cell_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ä   2=
;sequential_4/lstm_2/while/lstm_cell_2/strided_slice/stack_1Ë
;sequential_4/lstm_2/while/lstm_cell_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2=
;sequential_4/lstm_2/while/lstm_cell_2/strided_slice/stack_2â
3sequential_4/lstm_2/while/lstm_cell_2/strided_sliceStridedSlice<sequential_4/lstm_2/while/lstm_cell_2/ReadVariableOp:value:0Bsequential_4/lstm_2/while/lstm_cell_2/strided_slice/stack:output:0Dsequential_4/lstm_2/while/lstm_cell_2/strided_slice/stack_1:output:0Dsequential_4/lstm_2/while/lstm_cell_2/strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask25
3sequential_4/lstm_2/while/lstm_cell_2/strided_slice
.sequential_4/lstm_2/while/lstm_cell_2/MatMul_4MatMul/sequential_4/lstm_2/while/lstm_cell_2/mul_4:z:0<sequential_4/lstm_2/while/lstm_cell_2/strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ20
.sequential_4/lstm_2/while/lstm_cell_2/MatMul_4
)sequential_4/lstm_2/while/lstm_cell_2/addAddV26sequential_4/lstm_2/while/lstm_cell_2/BiasAdd:output:08sequential_4/lstm_2/while/lstm_cell_2/MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2+
)sequential_4/lstm_2/while/lstm_cell_2/addË
-sequential_4/lstm_2/while/lstm_cell_2/SigmoidSigmoid-sequential_4/lstm_2/while/lstm_cell_2/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2/
-sequential_4/lstm_2/while/lstm_cell_2/Sigmoidò
6sequential_4/lstm_2/while/lstm_cell_2/ReadVariableOp_1ReadVariableOp?sequential_4_lstm_2_while_lstm_cell_2_readvariableop_resource_0* 
_output_shapes
:
Ä*
dtype028
6sequential_4/lstm_2/while/lstm_cell_2/ReadVariableOp_1Ë
;sequential_4/lstm_2/while/lstm_cell_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ä   2=
;sequential_4/lstm_2/while/lstm_cell_2/strided_slice_1/stackÏ
=sequential_4/lstm_2/while/lstm_cell_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2?
=sequential_4/lstm_2/while/lstm_cell_2/strided_slice_1/stack_1Ï
=sequential_4/lstm_2/while/lstm_cell_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2?
=sequential_4/lstm_2/while/lstm_cell_2/strided_slice_1/stack_2î
5sequential_4/lstm_2/while/lstm_cell_2/strided_slice_1StridedSlice>sequential_4/lstm_2/while/lstm_cell_2/ReadVariableOp_1:value:0Dsequential_4/lstm_2/while/lstm_cell_2/strided_slice_1/stack:output:0Fsequential_4/lstm_2/while/lstm_cell_2/strided_slice_1/stack_1:output:0Fsequential_4/lstm_2/while/lstm_cell_2/strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask27
5sequential_4/lstm_2/while/lstm_cell_2/strided_slice_1
.sequential_4/lstm_2/while/lstm_cell_2/MatMul_5MatMul/sequential_4/lstm_2/while/lstm_cell_2/mul_5:z:0>sequential_4/lstm_2/while/lstm_cell_2/strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ20
.sequential_4/lstm_2/while/lstm_cell_2/MatMul_5
+sequential_4/lstm_2/while/lstm_cell_2/add_1AddV28sequential_4/lstm_2/while/lstm_cell_2/BiasAdd_1:output:08sequential_4/lstm_2/while/lstm_cell_2/MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2-
+sequential_4/lstm_2/while/lstm_cell_2/add_1Ñ
/sequential_4/lstm_2/while/lstm_cell_2/Sigmoid_1Sigmoid/sequential_4/lstm_2/while/lstm_cell_2/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ21
/sequential_4/lstm_2/while/lstm_cell_2/Sigmoid_1ò
+sequential_4/lstm_2/while/lstm_cell_2/mul_8Mul3sequential_4/lstm_2/while/lstm_cell_2/Sigmoid_1:y:0'sequential_4_lstm_2_while_placeholder_3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2-
+sequential_4/lstm_2/while/lstm_cell_2/mul_8ò
6sequential_4/lstm_2/while/lstm_cell_2/ReadVariableOp_2ReadVariableOp?sequential_4_lstm_2_while_lstm_cell_2_readvariableop_resource_0* 
_output_shapes
:
Ä*
dtype028
6sequential_4/lstm_2/while/lstm_cell_2/ReadVariableOp_2Ë
;sequential_4/lstm_2/while/lstm_cell_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      2=
;sequential_4/lstm_2/while/lstm_cell_2/strided_slice_2/stackÏ
=sequential_4/lstm_2/while/lstm_cell_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2?
=sequential_4/lstm_2/while/lstm_cell_2/strided_slice_2/stack_1Ï
=sequential_4/lstm_2/while/lstm_cell_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2?
=sequential_4/lstm_2/while/lstm_cell_2/strided_slice_2/stack_2î
5sequential_4/lstm_2/while/lstm_cell_2/strided_slice_2StridedSlice>sequential_4/lstm_2/while/lstm_cell_2/ReadVariableOp_2:value:0Dsequential_4/lstm_2/while/lstm_cell_2/strided_slice_2/stack:output:0Fsequential_4/lstm_2/while/lstm_cell_2/strided_slice_2/stack_1:output:0Fsequential_4/lstm_2/while/lstm_cell_2/strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask27
5sequential_4/lstm_2/while/lstm_cell_2/strided_slice_2
.sequential_4/lstm_2/while/lstm_cell_2/MatMul_6MatMul/sequential_4/lstm_2/while/lstm_cell_2/mul_6:z:0>sequential_4/lstm_2/while/lstm_cell_2/strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ20
.sequential_4/lstm_2/while/lstm_cell_2/MatMul_6
+sequential_4/lstm_2/while/lstm_cell_2/add_2AddV28sequential_4/lstm_2/while/lstm_cell_2/BiasAdd_2:output:08sequential_4/lstm_2/while/lstm_cell_2/MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2-
+sequential_4/lstm_2/while/lstm_cell_2/add_2Ä
*sequential_4/lstm_2/while/lstm_cell_2/TanhTanh/sequential_4/lstm_2/while/lstm_cell_2/add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2,
*sequential_4/lstm_2/while/lstm_cell_2/Tanh÷
+sequential_4/lstm_2/while/lstm_cell_2/mul_9Mul1sequential_4/lstm_2/while/lstm_cell_2/Sigmoid:y:0.sequential_4/lstm_2/while/lstm_cell_2/Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2-
+sequential_4/lstm_2/while/lstm_cell_2/mul_9ø
+sequential_4/lstm_2/while/lstm_cell_2/add_3AddV2/sequential_4/lstm_2/while/lstm_cell_2/mul_8:z:0/sequential_4/lstm_2/while/lstm_cell_2/mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2-
+sequential_4/lstm_2/while/lstm_cell_2/add_3ò
6sequential_4/lstm_2/while/lstm_cell_2/ReadVariableOp_3ReadVariableOp?sequential_4_lstm_2_while_lstm_cell_2_readvariableop_resource_0* 
_output_shapes
:
Ä*
dtype028
6sequential_4/lstm_2/while/lstm_cell_2/ReadVariableOp_3Ë
;sequential_4/lstm_2/while/lstm_cell_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2=
;sequential_4/lstm_2/while/lstm_cell_2/strided_slice_3/stackÏ
=sequential_4/lstm_2/while/lstm_cell_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2?
=sequential_4/lstm_2/while/lstm_cell_2/strided_slice_3/stack_1Ï
=sequential_4/lstm_2/while/lstm_cell_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2?
=sequential_4/lstm_2/while/lstm_cell_2/strided_slice_3/stack_2î
5sequential_4/lstm_2/while/lstm_cell_2/strided_slice_3StridedSlice>sequential_4/lstm_2/while/lstm_cell_2/ReadVariableOp_3:value:0Dsequential_4/lstm_2/while/lstm_cell_2/strided_slice_3/stack:output:0Fsequential_4/lstm_2/while/lstm_cell_2/strided_slice_3/stack_1:output:0Fsequential_4/lstm_2/while/lstm_cell_2/strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask27
5sequential_4/lstm_2/while/lstm_cell_2/strided_slice_3
.sequential_4/lstm_2/while/lstm_cell_2/MatMul_7MatMul/sequential_4/lstm_2/while/lstm_cell_2/mul_7:z:0>sequential_4/lstm_2/while/lstm_cell_2/strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ20
.sequential_4/lstm_2/while/lstm_cell_2/MatMul_7
+sequential_4/lstm_2/while/lstm_cell_2/add_4AddV28sequential_4/lstm_2/while/lstm_cell_2/BiasAdd_3:output:08sequential_4/lstm_2/while/lstm_cell_2/MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2-
+sequential_4/lstm_2/while/lstm_cell_2/add_4Ñ
/sequential_4/lstm_2/while/lstm_cell_2/Sigmoid_2Sigmoid/sequential_4/lstm_2/while/lstm_cell_2/add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ21
/sequential_4/lstm_2/while/lstm_cell_2/Sigmoid_2È
,sequential_4/lstm_2/while/lstm_cell_2/Tanh_1Tanh/sequential_4/lstm_2/while/lstm_cell_2/add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2.
,sequential_4/lstm_2/while/lstm_cell_2/Tanh_1ý
,sequential_4/lstm_2/while/lstm_cell_2/mul_10Mul3sequential_4/lstm_2/while/lstm_cell_2/Sigmoid_2:y:00sequential_4/lstm_2/while/lstm_cell_2/Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2.
,sequential_4/lstm_2/while/lstm_cell_2/mul_10Ä
>sequential_4/lstm_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem'sequential_4_lstm_2_while_placeholder_1%sequential_4_lstm_2_while_placeholder0sequential_4/lstm_2/while/lstm_cell_2/mul_10:z:0*
_output_shapes
: *
element_dtype02@
>sequential_4/lstm_2/while/TensorArrayV2Write/TensorListSetItem
sequential_4/lstm_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :2!
sequential_4/lstm_2/while/add/y¹
sequential_4/lstm_2/while/addAddV2%sequential_4_lstm_2_while_placeholder(sequential_4/lstm_2/while/add/y:output:0*
T0*
_output_shapes
: 2
sequential_4/lstm_2/while/add
!sequential_4/lstm_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :2#
!sequential_4/lstm_2/while/add_1/yÚ
sequential_4/lstm_2/while/add_1AddV2@sequential_4_lstm_2_while_sequential_4_lstm_2_while_loop_counter*sequential_4/lstm_2/while/add_1/y:output:0*
T0*
_output_shapes
: 2!
sequential_4/lstm_2/while/add_1ø
"sequential_4/lstm_2/while/IdentityIdentity#sequential_4/lstm_2/while/add_1:z:05^sequential_4/lstm_2/while/lstm_cell_2/ReadVariableOp7^sequential_4/lstm_2/while/lstm_cell_2/ReadVariableOp_17^sequential_4/lstm_2/while/lstm_cell_2/ReadVariableOp_27^sequential_4/lstm_2/while/lstm_cell_2/ReadVariableOp_3;^sequential_4/lstm_2/while/lstm_cell_2/split/ReadVariableOp=^sequential_4/lstm_2/while/lstm_cell_2/split_1/ReadVariableOp*
T0*
_output_shapes
: 2$
"sequential_4/lstm_2/while/Identity
$sequential_4/lstm_2/while/Identity_1IdentityFsequential_4_lstm_2_while_sequential_4_lstm_2_while_maximum_iterations5^sequential_4/lstm_2/while/lstm_cell_2/ReadVariableOp7^sequential_4/lstm_2/while/lstm_cell_2/ReadVariableOp_17^sequential_4/lstm_2/while/lstm_cell_2/ReadVariableOp_27^sequential_4/lstm_2/while/lstm_cell_2/ReadVariableOp_3;^sequential_4/lstm_2/while/lstm_cell_2/split/ReadVariableOp=^sequential_4/lstm_2/while/lstm_cell_2/split_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_4/lstm_2/while/Identity_1ú
$sequential_4/lstm_2/while/Identity_2Identity!sequential_4/lstm_2/while/add:z:05^sequential_4/lstm_2/while/lstm_cell_2/ReadVariableOp7^sequential_4/lstm_2/while/lstm_cell_2/ReadVariableOp_17^sequential_4/lstm_2/while/lstm_cell_2/ReadVariableOp_27^sequential_4/lstm_2/while/lstm_cell_2/ReadVariableOp_3;^sequential_4/lstm_2/while/lstm_cell_2/split/ReadVariableOp=^sequential_4/lstm_2/while/lstm_cell_2/split_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_4/lstm_2/while/Identity_2§
$sequential_4/lstm_2/while/Identity_3IdentityNsequential_4/lstm_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:05^sequential_4/lstm_2/while/lstm_cell_2/ReadVariableOp7^sequential_4/lstm_2/while/lstm_cell_2/ReadVariableOp_17^sequential_4/lstm_2/while/lstm_cell_2/ReadVariableOp_27^sequential_4/lstm_2/while/lstm_cell_2/ReadVariableOp_3;^sequential_4/lstm_2/while/lstm_cell_2/split/ReadVariableOp=^sequential_4/lstm_2/while/lstm_cell_2/split_1/ReadVariableOp*
T0*
_output_shapes
: 2&
$sequential_4/lstm_2/while/Identity_3
$sequential_4/lstm_2/while/Identity_4Identity0sequential_4/lstm_2/while/lstm_cell_2/mul_10:z:05^sequential_4/lstm_2/while/lstm_cell_2/ReadVariableOp7^sequential_4/lstm_2/while/lstm_cell_2/ReadVariableOp_17^sequential_4/lstm_2/while/lstm_cell_2/ReadVariableOp_27^sequential_4/lstm_2/while/lstm_cell_2/ReadVariableOp_3;^sequential_4/lstm_2/while/lstm_cell_2/split/ReadVariableOp=^sequential_4/lstm_2/while/lstm_cell_2/split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2&
$sequential_4/lstm_2/while/Identity_4
$sequential_4/lstm_2/while/Identity_5Identity/sequential_4/lstm_2/while/lstm_cell_2/add_3:z:05^sequential_4/lstm_2/while/lstm_cell_2/ReadVariableOp7^sequential_4/lstm_2/while/lstm_cell_2/ReadVariableOp_17^sequential_4/lstm_2/while/lstm_cell_2/ReadVariableOp_27^sequential_4/lstm_2/while/lstm_cell_2/ReadVariableOp_3;^sequential_4/lstm_2/while/lstm_cell_2/split/ReadVariableOp=^sequential_4/lstm_2/while/lstm_cell_2/split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2&
$sequential_4/lstm_2/while/Identity_5"Q
"sequential_4_lstm_2_while_identity+sequential_4/lstm_2/while/Identity:output:0"U
$sequential_4_lstm_2_while_identity_1-sequential_4/lstm_2/while/Identity_1:output:0"U
$sequential_4_lstm_2_while_identity_2-sequential_4/lstm_2/while/Identity_2:output:0"U
$sequential_4_lstm_2_while_identity_3-sequential_4/lstm_2/while/Identity_3:output:0"U
$sequential_4_lstm_2_while_identity_4-sequential_4/lstm_2/while/Identity_4:output:0"U
$sequential_4_lstm_2_while_identity_5-sequential_4/lstm_2/while/Identity_5:output:0"
=sequential_4_lstm_2_while_lstm_cell_2_readvariableop_resource?sequential_4_lstm_2_while_lstm_cell_2_readvariableop_resource_0"
Esequential_4_lstm_2_while_lstm_cell_2_split_1_readvariableop_resourceGsequential_4_lstm_2_while_lstm_cell_2_split_1_readvariableop_resource_0"
Csequential_4_lstm_2_while_lstm_cell_2_split_readvariableop_resourceEsequential_4_lstm_2_while_lstm_cell_2_split_readvariableop_resource_0"
=sequential_4_lstm_2_while_sequential_4_lstm_2_strided_slice_1?sequential_4_lstm_2_while_sequential_4_lstm_2_strided_slice_1_0"ø
ysequential_4_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_4_lstm_2_tensorarrayunstack_tensorlistfromtensor{sequential_4_lstm_2_while_tensorarrayv2read_tensorlistgetitem_sequential_4_lstm_2_tensorarrayunstack_tensorlistfromtensor_0*S
_input_shapesB
@: : : : :ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ: : :::2l
4sequential_4/lstm_2/while/lstm_cell_2/ReadVariableOp4sequential_4/lstm_2/while/lstm_cell_2/ReadVariableOp2p
6sequential_4/lstm_2/while/lstm_cell_2/ReadVariableOp_16sequential_4/lstm_2/while/lstm_cell_2/ReadVariableOp_12p
6sequential_4/lstm_2/while/lstm_cell_2/ReadVariableOp_26sequential_4/lstm_2/while/lstm_cell_2/ReadVariableOp_22p
6sequential_4/lstm_2/while/lstm_cell_2/ReadVariableOp_36sequential_4/lstm_2/while/lstm_cell_2/ReadVariableOp_32x
:sequential_4/lstm_2/while/lstm_cell_2/split/ReadVariableOp:sequential_4/lstm_2/while/lstm_cell_2/split/ReadVariableOp2|
<sequential_4/lstm_2/while/lstm_cell_2/split_1/ReadVariableOp<sequential_4/lstm_2/while/lstm_cell_2/split_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ:

_output_shapes
: :

_output_shapes
: 
ã	

G__inference_embedding_2_layer_call_and_return_conditional_losses_568530

inputs
embedding_lookup_568524
identity¢embedding_lookup]
CastCastinputs*

DstT0*

SrcT0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2
Castþ
embedding_lookupResourceGatherembedding_lookup_568524Cast:y:0",/job:localhost/replica:0/task:0/device:CPU:0*
Tindices0**
_class 
loc:@embedding_lookup/568524*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB*
dtype02
embedding_lookupî
embedding_lookup/IdentityIdentityembedding_lookup:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@embedding_lookup/568524*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2
embedding_lookup/Identity¡
embedding_lookup/Identity_1Identity"embedding_lookup/Identity:output:0*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2
embedding_lookup/Identity_1
IdentityIdentity$embedding_lookup/Identity_1:output:0^embedding_lookup*
T0*,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB2

Identity"
identityIdentity:output:0**
_input_shapes
:ÿÿÿÿÿÿÿÿÿB:2$
embedding_lookupembedding_lookup:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB
 
_user_specified_nameinputs

ÿ
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_567928

inputs

states
states_1!
split_readvariableop_resource#
split_1_readvariableop_resource
readvariableop_resource
identity

identity_1

identity_2¢ReadVariableOp¢ReadVariableOp_1¢ReadVariableOp_2¢ReadVariableOp_3¢split/ReadVariableOp¢split_1/ReadVariableOpX
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:2
ones_like/Shapeg
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like/Const
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	ones_likec
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/Const
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Mul`
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout/ShapeÔ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2¼¹2&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout/GreaterEqual/y¿
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Mul_1g
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_1/Const
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_1/Muld
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_1/ShapeÚ
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2ºù¯2(
&dropout_1/random_uniform/RandomUniformy
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout_1/GreaterEqual/yÇ
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_1/GreaterEqual
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_1/Cast
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_1/Mul_1g
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_2/Const
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_2/Muld
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_2/ShapeÚ
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2ý­2(
&dropout_2/random_uniform/RandomUniformy
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout_2/GreaterEqual/yÇ
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_2/GreaterEqual
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_2/Cast
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_2/Mul_1g
dropout_3/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_3/Const
dropout_3/MulMulones_like:output:0dropout_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_3/Muld
dropout_3/ShapeShapeones_like:output:0*
T0*
_output_shapes
:2
dropout_3/ShapeÚ
&dropout_3/random_uniform/RandomUniformRandomUniformdropout_3/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0*
seed±ÿå)*
seed2§Ñ2(
&dropout_3/random_uniform/RandomUniformy
dropout_3/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout_3/GreaterEqual/yÇ
dropout_3/GreaterEqualGreaterEqual/dropout_3/random_uniform/RandomUniform:output:0!dropout_3/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_3/GreaterEqual
dropout_3/CastCastdropout_3/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_3/Cast
dropout_3/Mul_1Muldropout_3/Mul:z:0dropout_3/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout_3/Mul_1\
ones_like_1/ShapeShapestates*
T0*
_output_shapes
:2
ones_like_1/Shapek
ones_like_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ?2
ones_like_1/Const
ones_like_1Fillones_like_1/Shape:output:0ones_like_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
ones_like_1g
dropout_4/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_4/Const
dropout_4/MulMulones_like_1:output:0dropout_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
dropout_4/Mulf
dropout_4/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_4/ShapeÚ
&dropout_4/random_uniform/RandomUniformRandomUniformdropout_4/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
dtype0*
seed±ÿå)*
seed2Æ¢Æ2(
&dropout_4/random_uniform/RandomUniformy
dropout_4/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout_4/GreaterEqual/yÇ
dropout_4/GreaterEqualGreaterEqual/dropout_4/random_uniform/RandomUniform:output:0!dropout_4/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
dropout_4/GreaterEqual
dropout_4/CastCastdropout_4/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
dropout_4/Cast
dropout_4/Mul_1Muldropout_4/Mul:z:0dropout_4/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
dropout_4/Mul_1g
dropout_5/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_5/Const
dropout_5/MulMulones_like_1:output:0dropout_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
dropout_5/Mulf
dropout_5/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_5/ShapeÚ
&dropout_5/random_uniform/RandomUniformRandomUniformdropout_5/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
dtype0*
seed±ÿå)*
seed2äÜ»2(
&dropout_5/random_uniform/RandomUniformy
dropout_5/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout_5/GreaterEqual/yÇ
dropout_5/GreaterEqualGreaterEqual/dropout_5/random_uniform/RandomUniform:output:0!dropout_5/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
dropout_5/GreaterEqual
dropout_5/CastCastdropout_5/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
dropout_5/Cast
dropout_5/Mul_1Muldropout_5/Mul:z:0dropout_5/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
dropout_5/Mul_1g
dropout_6/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_6/Const
dropout_6/MulMulones_like_1:output:0dropout_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
dropout_6/Mulf
dropout_6/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_6/ShapeÚ
&dropout_6/random_uniform/RandomUniformRandomUniformdropout_6/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
dtype0*
seed±ÿå)*
seed2ÏÃ·2(
&dropout_6/random_uniform/RandomUniformy
dropout_6/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout_6/GreaterEqual/yÇ
dropout_6/GreaterEqualGreaterEqual/dropout_6/random_uniform/RandomUniform:output:0!dropout_6/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
dropout_6/GreaterEqual
dropout_6/CastCastdropout_6/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
dropout_6/Cast
dropout_6/Mul_1Muldropout_6/Mul:z:0dropout_6/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
dropout_6/Mul_1g
dropout_7/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout_7/Const
dropout_7/MulMulones_like_1:output:0dropout_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
dropout_7/Mulf
dropout_7/ShapeShapeones_like_1:output:0*
T0*
_output_shapes
:2
dropout_7/ShapeÚ
&dropout_7/random_uniform/RandomUniformRandomUniformdropout_7/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*
dtype0*
seed±ÿå)*
seed2ë2(
&dropout_7/random_uniform/RandomUniformy
dropout_7/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *ÍÌL>2
dropout_7/GreaterEqual/yÇ
dropout_7/GreaterEqualGreaterEqual/dropout_7/random_uniform/RandomUniform:output:0!dropout_7/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
dropout_7/GreaterEqual
dropout_7/CastCastdropout_7/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
dropout_7/Cast
dropout_7/Mul_1Muldropout_7/Mul:z:0dropout_7/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
dropout_7/Mul_1_
mulMulinputsdropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mule
mul_1Mulinputsdropout_1/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_1e
mul_2Mulinputsdropout_2/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_2e
mul_3Mulinputsdropout_3/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mul_3P
ConstConst*
_output_shapes
: *
dtype0*
value	B :2
Constd
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :2
split/split_dim
split/ReadVariableOpReadVariableOpsplit_readvariableop_resource* 
_output_shapes
:
*
dtype02
split/ReadVariableOp¯
splitSplitsplit/split_dim:output:0split/ReadVariableOp:value:0*
T0*D
_output_shapes2
0:
Ä:
Ä:
Ä:
Ä*
	num_split2
splitf
MatMulMatMulmul:z:0split:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
MatMull
MatMul_1MatMul	mul_1:z:0split:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

MatMul_1l
MatMul_2MatMul	mul_2:z:0split:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

MatMul_2l
MatMul_3MatMul	mul_3:z:0split:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

MatMul_3T
Const_1Const*
_output_shapes
: *
dtype0*
value	B :2	
Const_1h
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 2
split_1/split_dim
split_1/ReadVariableOpReadVariableOpsplit_1_readvariableop_resource*
_output_shapes	
:*
dtype02
split_1/ReadVariableOp£
split_1Splitsplit_1/split_dim:output:0split_1/ReadVariableOp:value:0*
T0*0
_output_shapes
:Ä:Ä:Ä:Ä*
	num_split2	
split_1t
BiasAddBiasAddMatMul:product:0split_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2	
BiasAddz
	BiasAdd_1BiasAddMatMul_1:product:0split_1:output:1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
	BiasAdd_1z
	BiasAdd_2BiasAddMatMul_2:product:0split_1:output:2*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
	BiasAdd_2z
	BiasAdd_3BiasAddMatMul_3:product:0split_1:output:3*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
	BiasAdd_3e
mul_4Mulstatesdropout_4/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
mul_4e
mul_5Mulstatesdropout_5/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
mul_5e
mul_6Mulstatesdropout_6/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
mul_6e
mul_7Mulstatesdropout_7/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
mul_7z
ReadVariableOpReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ä*
dtype02
ReadVariableOp{
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    Ä   2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice/stack_2þ
strided_sliceStridedSliceReadVariableOp:value:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2
strided_slicet
MatMul_4MatMul	mul_4:z:0strided_slice:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

MatMul_4l
addAddV2BiasAdd:output:0MatMul_4:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
addY
SigmoidSigmoidadd:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2	
Sigmoid~
ReadVariableOp_1ReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ä*
dtype02
ReadVariableOp_1
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"    Ä   2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_1/stack_2
strided_slice_1StridedSliceReadVariableOp_1:value:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2
strided_slice_1v
MatMul_5MatMul	mul_5:z:0strided_slice_1:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

MatMul_5r
add_1AddV2BiasAdd_1:output:0MatMul_5:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
add_1_
	Sigmoid_1Sigmoid	add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
	Sigmoid_1a
mul_8MulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
mul_8~
ReadVariableOp_2ReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ä*
dtype02
ReadVariableOp_2
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"    L  2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_2/stack_2
strided_slice_2StridedSliceReadVariableOp_2:value:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2
strided_slice_2v
MatMul_6MatMul	mul_6:z:0strided_slice_2:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

MatMul_6r
add_2AddV2BiasAdd_2:output:0MatMul_6:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
add_2R
TanhTanh	add_2:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
Tanh_
mul_9MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
mul_9`
add_3AddV2	mul_8:z:0	mul_9:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
add_3~
ReadVariableOp_3ReadVariableOpreadvariableop_resource* 
_output_shapes
:
Ä*
dtype02
ReadVariableOp_3
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"    L  2
strided_slice_3/stack
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        2
strided_slice_3/stack_1
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      2
strided_slice_3/stack_2
strided_slice_3StridedSliceReadVariableOp_3:value:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0* 
_output_shapes
:
ÄÄ*

begin_mask*
end_mask2
strided_slice_3v
MatMul_7MatMul	mul_7:z:0strided_slice_3:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

MatMul_7r
add_4AddV2BiasAdd_3:output:0MatMul_7:product:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
add_4_
	Sigmoid_2Sigmoid	add_4:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
	Sigmoid_2V
Tanh_1Tanh	add_3:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
Tanh_1e
mul_10MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2
mul_10Ù
IdentityIdentity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

IdentityÝ

Identity_1Identity
mul_10:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

Identity_1Ü

Identity_2Identity	add_3:z:0^ReadVariableOp^ReadVariableOp_1^ReadVariableOp_2^ReadVariableOp_3^split/ReadVariableOp^split_1/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ2

Identity_2"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*[
_input_shapesJ
H:ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ:::2 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12$
ReadVariableOp_2ReadVariableOp_22$
ReadVariableOp_3ReadVariableOp_32,
split/ReadVariableOpsplit/ReadVariableOp20
split_1/ReadVariableOpsplit_1/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ
 
_user_specified_namestates:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ
 
_user_specified_namestates
æ
É
H__inference_sequential_4_layer_call_and_return_conditional_losses_569355

inputs
embedding_2_569338
lstm_2_569342
lstm_2_569344
lstm_2_569346
dense_2_569349
dense_2_569351
identity¢dense_2/StatefulPartitionedCall¢#embedding_2/StatefulPartitionedCall¢lstm_2/StatefulPartitionedCall
#embedding_2/StatefulPartitionedCallStatefulPartitionedCallinputsembedding_2_569338*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_embedding_2_layer_call_and_return_conditional_losses_5685302%
#embedding_2/StatefulPartitionedCall 
#spatial_dropout1d_2/PartitionedCallPartitionedCall,embedding_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:ÿÿÿÿÿÿÿÿÿB* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *X
fSRQ
O__inference_spatial_dropout1d_2_layer_call_and_return_conditional_losses_5685682%
#spatial_dropout1d_2/PartitionedCallÂ
lstm_2/StatefulPartitionedCallStatefulPartitionedCall,spatial_dropout1d_2/PartitionedCall:output:0lstm_2_569342lstm_2_569344lstm_2_569346*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_5692172 
lstm_2/StatefulPartitionedCall°
dense_2/StatefulPartitionedCallStatefulPartitionedCall'lstm_2/StatefulPartitionedCall:output:0dense_2_569349dense_2_569351*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_2_layer_call_and_return_conditional_losses_5692582!
dense_2/StatefulPartitionedCallå
IdentityIdentity(dense_2/StatefulPartitionedCall:output:0 ^dense_2/StatefulPartitionedCall$^embedding_2/StatefulPartitionedCall^lstm_2/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿB::::::2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2J
#embedding_2/StatefulPartitionedCall#embedding_2/StatefulPartitionedCall2@
lstm_2/StatefulPartitionedCalllstm_2/StatefulPartitionedCall:O K
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿB
 
_user_specified_nameinputs


Ï
lstm_2_while_cond_569603*
&lstm_2_while_lstm_2_while_loop_counter0
,lstm_2_while_lstm_2_while_maximum_iterations
lstm_2_while_placeholder
lstm_2_while_placeholder_1
lstm_2_while_placeholder_2
lstm_2_while_placeholder_3,
(lstm_2_while_less_lstm_2_strided_slice_1B
>lstm_2_while_lstm_2_while_cond_569603___redundant_placeholder0B
>lstm_2_while_lstm_2_while_cond_569603___redundant_placeholder1B
>lstm_2_while_lstm_2_while_cond_569603___redundant_placeholder2B
>lstm_2_while_lstm_2_while_cond_569603___redundant_placeholder3
lstm_2_while_identity

lstm_2/while/LessLesslstm_2_while_placeholder(lstm_2_while_less_lstm_2_strided_slice_1*
T0*
_output_shapes
: 2
lstm_2/while/Lessr
lstm_2/while/IdentityIdentitylstm_2/while/Less:z:0*
T0
*
_output_shapes
: 2
lstm_2/while/Identity"7
lstm_2_while_identitylstm_2/while/Identity:output:0*U
_input_shapesD
B: : : : :ÿÿÿÿÿÿÿÿÿÄ:ÿÿÿÿÿÿÿÿÿÄ: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ:.*
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÄ:

_output_shapes
: :

_output_shapes
:"±L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*¾
serving_defaultª
O
embedding_2_input:
#serving_default_embedding_2_input:0ÿÿÿÿÿÿÿÿÿB;
dense_20
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:ÖÖ
Ú*
layer_with_weights-0
layer-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
	optimizer
	variables
regularization_losses
trainable_variables
		keras_api


signatures
*b&call_and_return_all_conditional_losses
c__call__
d_default_save_signature"(
_tf_keras_sequentialî'{"class_name": "Sequential", "name": "sequential_4", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "sequential_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 66]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "embedding_2_input"}}, {"class_name": "Embedding", "config": {"name": "embedding_2", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 66]}, "dtype": "float32", "input_dim": 8000, "output_dim": 128, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 66}}, {"class_name": "SpatialDropout1D", "config": {"name": "spatial_dropout1d_2", "trainable": true, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}}, {"class_name": "LSTM", "config": {"name": "lstm_2", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 196, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.2, "recurrent_dropout": 0.2, "implementation": 1}}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 3, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 66]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Sequential", "config": {"name": "sequential_4", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 66]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "embedding_2_input"}}, {"class_name": "Embedding", "config": {"name": "embedding_2", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 66]}, "dtype": "float32", "input_dim": 8000, "output_dim": 128, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 66}}, {"class_name": "SpatialDropout1D", "config": {"name": "spatial_dropout1d_2", "trainable": true, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}}, {"class_name": "LSTM", "config": {"name": "lstm_2", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 196, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.2, "recurrent_dropout": 0.2, "implementation": 1}}, {"class_name": "Dense", "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 3, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}}]}}, "training_config": {"loss": "categorical_crossentropy", "metrics": [[{"class_name": "MeanMetricWrapper", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": 0.0010000000474974513, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}
©

embeddings
	variables
regularization_losses
trainable_variables
	keras_api
*e&call_and_return_all_conditional_losses
f__call__"
_tf_keras_layerð{"class_name": "Embedding", "name": "embedding_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": {"class_name": "__tuple__", "items": [null, 66]}, "stateful": false, "must_restore_from_config": false, "config": {"name": "embedding_2", "trainable": true, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 66]}, "dtype": "float32", "input_dim": 8000, "output_dim": 128, "embeddings_initializer": {"class_name": "RandomUniform", "config": {"minval": -0.05, "maxval": 0.05, "seed": null}}, "embeddings_regularizer": null, "activity_regularizer": null, "embeddings_constraint": null, "mask_zero": false, "input_length": 66}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 66]}}

	variables
regularization_losses
trainable_variables
	keras_api
*g&call_and_return_all_conditional_losses
h__call__"
_tf_keras_layeré{"class_name": "SpatialDropout1D", "name": "spatial_dropout1d_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "spatial_dropout1d_2", "trainable": true, "dtype": "float32", "rate": 0.4, "noise_shape": null, "seed": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}}
À
cell

state_spec
	variables
regularization_losses
trainable_variables
	keras_api
*i&call_and_return_all_conditional_losses
j__call__"

_tf_keras_rnn_layerù	{"class_name": "LSTM", "name": "lstm_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_2", "trainable": true, "dtype": "float32", "return_sequences": false, "return_state": false, "go_backwards": false, "stateful": false, "unroll": false, "time_major": false, "units": 196, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.2, "recurrent_dropout": 0.2, "implementation": 1}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, null, 128]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 66, 128]}}
ô

kernel
bias
	variables
regularization_losses
trainable_variables
	keras_api
*k&call_and_return_all_conditional_losses
l__call__"Ï
_tf_keras_layerµ{"class_name": "Dense", "name": "dense_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_2", "trainable": true, "dtype": "float32", "units": 3, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 196}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 196]}}
¿
 iter

!beta_1

"beta_2
	#decay
$learning_ratemVmWmX%mY&mZ'm[v\v]v^%v_&v`'va"
	optimizer
J
0
%1
&2
'3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
J
0
%1
&2
'3
4
5"
trackable_list_wrapper
Ê
(layer_regularization_losses
)metrics
	variables
*layer_metrics

+layers
regularization_losses
,non_trainable_variables
trainable_variables
c__call__
d_default_save_signature
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses"
_generic_user_object
,
mserving_default"
signature_map
*:(
À>2embedding_2/embeddings
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
­
-layer_regularization_losses
.metrics
	variables
/layer_metrics

0layers
regularization_losses
1non_trainable_variables
trainable_variables
f__call__
*e&call_and_return_all_conditional_losses
&e"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
2layer_regularization_losses
3metrics
	variables
4layer_metrics

5layers
regularization_losses
6non_trainable_variables
trainable_variables
h__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
©

%kernel
&recurrent_kernel
'bias
7	variables
8regularization_losses
9trainable_variables
:	keras_api
*n&call_and_return_all_conditional_losses
o__call__"î
_tf_keras_layerÔ{"class_name": "LSTMCell", "name": "lstm_cell_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "lstm_cell_2", "trainable": true, "dtype": "float32", "units": 196, "activation": "tanh", "recurrent_activation": "sigmoid", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "recurrent_initializer": {"class_name": "Orthogonal", "config": {"gain": 1.0, "seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "unit_forget_bias": true, "kernel_regularizer": null, "recurrent_regularizer": null, "bias_regularizer": null, "kernel_constraint": null, "recurrent_constraint": null, "bias_constraint": null, "dropout": 0.2, "recurrent_dropout": 0.2, "implementation": 1}}
 "
trackable_list_wrapper
5
%0
&1
'2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
%0
&1
'2"
trackable_list_wrapper
¹
;layer_regularization_losses
<metrics
	variables
=layer_metrics

>layers
regularization_losses

?states
@non_trainable_variables
trainable_variables
j__call__
*i&call_and_return_all_conditional_losses
&i"call_and_return_conditional_losses"
_generic_user_object
!:	Ä2dense_2/kernel
:2dense_2/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
­
Alayer_regularization_losses
Bmetrics
	variables
Clayer_metrics

Dlayers
regularization_losses
Enon_trainable_variables
trainable_variables
l__call__
*k&call_and_return_all_conditional_losses
&k"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
-:+
2lstm_2/lstm_cell_2/kernel
7:5
Ä2#lstm_2/lstm_cell_2/recurrent_kernel
&:$2lstm_2/lstm_cell_2/bias
 "
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
 "
trackable_dict_wrapper
<
0
1
2
3"
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
5
%0
&1
'2"
trackable_list_wrapper
 "
trackable_list_wrapper
5
%0
&1
'2"
trackable_list_wrapper
­
Hlayer_regularization_losses
Imetrics
7	variables
Jlayer_metrics

Klayers
8regularization_losses
Lnon_trainable_variables
9trainable_variables
o__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
'
0"
trackable_list_wrapper
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
»
	Mtotal
	Ncount
O	variables
P	keras_api"
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}
ÿ
	Qtotal
	Rcount
S
_fn_kwargs
T	variables
U	keras_api"¸
_tf_keras_metric{"class_name": "MeanMetricWrapper", "name": "accuracy", "dtype": "float32", "config": {"name": "accuracy", "dtype": "float32", "fn": "categorical_accuracy"}}
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
:  (2total
:  (2count
.
M0
N1"
trackable_list_wrapper
-
O	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
.
Q0
R1"
trackable_list_wrapper
-
T	variables"
_generic_user_object
/:-
À>2Adam/embedding_2/embeddings/m
&:$	Ä2Adam/dense_2/kernel/m
:2Adam/dense_2/bias/m
2:0
2 Adam/lstm_2/lstm_cell_2/kernel/m
<::
Ä2*Adam/lstm_2/lstm_cell_2/recurrent_kernel/m
+:)2Adam/lstm_2/lstm_cell_2/bias/m
/:-
À>2Adam/embedding_2/embeddings/v
&:$	Ä2Adam/dense_2/kernel/v
:2Adam/dense_2/bias/v
2:0
2 Adam/lstm_2/lstm_cell_2/kernel/v
<::
Ä2*Adam/lstm_2/lstm_cell_2/recurrent_kernel/v
+:)2Adam/lstm_2/lstm_cell_2/bias/v
î2ë
H__inference_sequential_4_layer_call_and_return_conditional_losses_569811
H__inference_sequential_4_layer_call_and_return_conditional_losses_569295
H__inference_sequential_4_layer_call_and_return_conditional_losses_569275
H__inference_sequential_4_layer_call_and_return_conditional_losses_570080À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2ÿ
-__inference_sequential_4_layer_call_fn_569370
-__inference_sequential_4_layer_call_fn_570097
-__inference_sequential_4_layer_call_fn_570114
-__inference_sequential_4_layer_call_fn_569333À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
é2æ
!__inference__wrapped_model_567674À
²
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *0¢-
+(
embedding_2_inputÿÿÿÿÿÿÿÿÿB
ñ2î
G__inference_embedding_2_layer_call_and_return_conditional_losses_570124¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ö2Ó
,__inference_embedding_2_layer_call_fn_570131¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
þ2û
O__inference_spatial_dropout1d_2_layer_call_and_return_conditional_losses_570153
O__inference_spatial_dropout1d_2_layer_call_and_return_conditional_losses_570158
O__inference_spatial_dropout1d_2_layer_call_and_return_conditional_losses_570190
O__inference_spatial_dropout1d_2_layer_call_and_return_conditional_losses_570195´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
4__inference_spatial_dropout1d_2_layer_call_fn_570200
4__inference_spatial_dropout1d_2_layer_call_fn_570168
4__inference_spatial_dropout1d_2_layer_call_fn_570205
4__inference_spatial_dropout1d_2_layer_call_fn_570163´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ë2è
B__inference_lstm_2_layer_call_and_return_conditional_losses_570588
B__inference_lstm_2_layer_call_and_return_conditional_losses_571248
B__inference_lstm_2_layer_call_and_return_conditional_losses_570843
B__inference_lstm_2_layer_call_and_return_conditional_losses_571503Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ÿ2ü
'__inference_lstm_2_layer_call_fn_570865
'__inference_lstm_2_layer_call_fn_571514
'__inference_lstm_2_layer_call_fn_571525
'__inference_lstm_2_layer_call_fn_570854Õ
Ì²È
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
í2ê
C__inference_dense_2_layer_call_and_return_conditional_losses_571536¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ò2Ï
(__inference_dense_2_layer_call_fn_571545¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÕBÒ
$__inference_signature_wrapper_569397embedding_2_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ö2Ó
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_571777
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_571693¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
 2
,__inference_lstm_cell_2_layer_call_fn_571794
,__inference_lstm_cell_2_layer_call_fn_571811¾
µ²±
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
!__inference__wrapped_model_567674w%'&:¢7
0¢-
+(
embedding_2_inputÿÿÿÿÿÿÿÿÿB
ª "1ª.
,
dense_2!
dense_2ÿÿÿÿÿÿÿÿÿ¤
C__inference_dense_2_layer_call_and_return_conditional_losses_571536]0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÄ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 |
(__inference_dense_2_layer_call_fn_571545P0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿÄ
ª "ÿÿÿÿÿÿÿÿÿ«
G__inference_embedding_2_layer_call_and_return_conditional_losses_570124`/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿB
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿB
 
,__inference_embedding_2_layer_call_fn_570131S/¢,
%¢"
 
inputsÿÿÿÿÿÿÿÿÿB
ª "ÿÿÿÿÿÿÿÿÿBÅ
B__inference_lstm_2_layer_call_and_return_conditional_losses_570588%'&P¢M
F¢C
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÄ
 Å
B__inference_lstm_2_layer_call_and_return_conditional_losses_570843%'&P¢M
F¢C
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÄ
 µ
B__inference_lstm_2_layer_call_and_return_conditional_losses_571248o%'&@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿB

 
p

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÄ
 µ
B__inference_lstm_2_layer_call_and_return_conditional_losses_571503o%'&@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿB

 
p 

 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÄ
 
'__inference_lstm_2_layer_call_fn_570854r%'&P¢M
F¢C
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p

 
ª "ÿÿÿÿÿÿÿÿÿÄ
'__inference_lstm_2_layer_call_fn_570865r%'&P¢M
F¢C
52
0-
inputs/0ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿÄ
'__inference_lstm_2_layer_call_fn_571514b%'&@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿB

 
p

 
ª "ÿÿÿÿÿÿÿÿÿÄ
'__inference_lstm_2_layer_call_fn_571525b%'&@¢=
6¢3
%"
inputsÿÿÿÿÿÿÿÿÿB

 
p 

 
ª "ÿÿÿÿÿÿÿÿÿÄÐ
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_571693%'&¢
y¢v
!
inputsÿÿÿÿÿÿÿÿÿ
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿÄ
# 
states/1ÿÿÿÿÿÿÿÿÿÄ
p
ª "v¢s
l¢i

0/0ÿÿÿÿÿÿÿÿÿÄ
GD
 
0/1/0ÿÿÿÿÿÿÿÿÿÄ
 
0/1/1ÿÿÿÿÿÿÿÿÿÄ
 Ð
G__inference_lstm_cell_2_layer_call_and_return_conditional_losses_571777%'&¢
y¢v
!
inputsÿÿÿÿÿÿÿÿÿ
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿÄ
# 
states/1ÿÿÿÿÿÿÿÿÿÄ
p 
ª "v¢s
l¢i

0/0ÿÿÿÿÿÿÿÿÿÄ
GD
 
0/1/0ÿÿÿÿÿÿÿÿÿÄ
 
0/1/1ÿÿÿÿÿÿÿÿÿÄ
 ¥
,__inference_lstm_cell_2_layer_call_fn_571794ô%'&¢
y¢v
!
inputsÿÿÿÿÿÿÿÿÿ
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿÄ
# 
states/1ÿÿÿÿÿÿÿÿÿÄ
p
ª "f¢c

0ÿÿÿÿÿÿÿÿÿÄ
C@

1/0ÿÿÿÿÿÿÿÿÿÄ

1/1ÿÿÿÿÿÿÿÿÿÄ¥
,__inference_lstm_cell_2_layer_call_fn_571811ô%'&¢
y¢v
!
inputsÿÿÿÿÿÿÿÿÿ
M¢J
# 
states/0ÿÿÿÿÿÿÿÿÿÄ
# 
states/1ÿÿÿÿÿÿÿÿÿÄ
p 
ª "f¢c

0ÿÿÿÿÿÿÿÿÿÄ
C@

1/0ÿÿÿÿÿÿÿÿÿÄ

1/1ÿÿÿÿÿÿÿÿÿÄ¿
H__inference_sequential_4_layer_call_and_return_conditional_losses_569275s%'&B¢?
8¢5
+(
embedding_2_inputÿÿÿÿÿÿÿÿÿB
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ¿
H__inference_sequential_4_layer_call_and_return_conditional_losses_569295s%'&B¢?
8¢5
+(
embedding_2_inputÿÿÿÿÿÿÿÿÿB
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ´
H__inference_sequential_4_layer_call_and_return_conditional_losses_569811h%'&7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿB
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ´
H__inference_sequential_4_layer_call_and_return_conditional_losses_570080h%'&7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿB
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 
-__inference_sequential_4_layer_call_fn_569333f%'&B¢?
8¢5
+(
embedding_2_inputÿÿÿÿÿÿÿÿÿB
p

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_4_layer_call_fn_569370f%'&B¢?
8¢5
+(
embedding_2_inputÿÿÿÿÿÿÿÿÿB
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_4_layer_call_fn_570097[%'&7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿB
p

 
ª "ÿÿÿÿÿÿÿÿÿ
-__inference_sequential_4_layer_call_fn_570114[%'&7¢4
-¢*
 
inputsÿÿÿÿÿÿÿÿÿB
p 

 
ª "ÿÿÿÿÿÿÿÿÿµ
$__inference_signature_wrapper_569397%'&O¢L
¢ 
EªB
@
embedding_2_input+(
embedding_2_inputÿÿÿÿÿÿÿÿÿB"1ª.
,
dense_2!
dense_2ÿÿÿÿÿÿÿÿÿÜ
O__inference_spatial_dropout1d_2_layer_call_and_return_conditional_losses_570153I¢F
?¢<
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª ";¢8
1.
0'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ü
O__inference_spatial_dropout1d_2_layer_call_and_return_conditional_losses_570158I¢F
?¢<
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª ";¢8
1.
0'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ¹
O__inference_spatial_dropout1d_2_layer_call_and_return_conditional_losses_570190f8¢5
.¢+
%"
inputsÿÿÿÿÿÿÿÿÿB
p
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿB
 ¹
O__inference_spatial_dropout1d_2_layer_call_and_return_conditional_losses_570195f8¢5
.¢+
%"
inputsÿÿÿÿÿÿÿÿÿB
p 
ª "*¢'
 
0ÿÿÿÿÿÿÿÿÿB
 ³
4__inference_spatial_dropout1d_2_layer_call_fn_570163{I¢F
?¢<
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª ".+'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ³
4__inference_spatial_dropout1d_2_layer_call_fn_570168{I¢F
?¢<
63
inputs'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª ".+'ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
4__inference_spatial_dropout1d_2_layer_call_fn_570200Y8¢5
.¢+
%"
inputsÿÿÿÿÿÿÿÿÿB
p
ª "ÿÿÿÿÿÿÿÿÿB
4__inference_spatial_dropout1d_2_layer_call_fn_570205Y8¢5
.¢+
%"
inputsÿÿÿÿÿÿÿÿÿB
p 
ª "ÿÿÿÿÿÿÿÿÿB