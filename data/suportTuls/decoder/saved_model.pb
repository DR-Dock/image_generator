ул
Ж█
B
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
B
AssignVariableOp
resource
value"dtype"
dtypetypeИ
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
└
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

·
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%╖╤8"&
exponential_avg_factorfloat%  А?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
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
=
Mul
x"T
y"T
z"T"
Ttype:
2	Р
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
.
Rsqrt
x"T
y"T"
Ttype:

2
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
╛
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
executor_typestring И
@
StaticRegexFullMatch	
input

output
"
patternstring
Ў
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
;
Sub
x"T
y"T
z"T"
Ttype:
2	
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.4.12v2.4.0-49-g85c8b2a817f8ДП
{
dense_26/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	
А* 
shared_namedense_26/kernel
t
#dense_26/kernel/Read/ReadVariableOpReadVariableOpdense_26/kernel*
_output_shapes
:	
А*
dtype0
s
dense_26/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*
shared_namedense_26/bias
l
!dense_26/bias/Read/ReadVariableOpReadVariableOpdense_26/bias*
_output_shapes	
:А*
dtype0
С
batch_normalization_23/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*-
shared_namebatch_normalization_23/gamma
К
0batch_normalization_23/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_23/gamma*
_output_shapes	
:А*
dtype0
П
batch_normalization_23/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*,
shared_namebatch_normalization_23/beta
И
/batch_normalization_23/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_23/beta*
_output_shapes	
:А*
dtype0
Э
"batch_normalization_23/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*3
shared_name$"batch_normalization_23/moving_mean
Ц
6batch_normalization_23/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_23/moving_mean*
_output_shapes	
:А*
dtype0
е
&batch_normalization_23/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:А*7
shared_name(&batch_normalization_23/moving_variance
Ю
:batch_normalization_23/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_23/moving_variance*
_output_shapes	
:А*
dtype0
Ц
conv2d_transpose_9/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:@ **
shared_nameconv2d_transpose_9/kernel
П
-conv2d_transpose_9/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_9/kernel*&
_output_shapes
:@ *
dtype0
Ж
conv2d_transpose_9/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*(
shared_nameconv2d_transpose_9/bias

+conv2d_transpose_9/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_9/bias*
_output_shapes
:@*
dtype0
Р
batch_normalization_24/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*-
shared_namebatch_normalization_24/gamma
Й
0batch_normalization_24/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_24/gamma*
_output_shapes
:@*
dtype0
О
batch_normalization_24/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*,
shared_namebatch_normalization_24/beta
З
/batch_normalization_24/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_24/beta*
_output_shapes
:@*
dtype0
Ь
"batch_normalization_24/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*3
shared_name$"batch_normalization_24/moving_mean
Х
6batch_normalization_24/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_24/moving_mean*
_output_shapes
:@*
dtype0
д
&batch_normalization_24/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:@*7
shared_name(&batch_normalization_24/moving_variance
Э
:batch_normalization_24/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_24/moving_variance*
_output_shapes
:@*
dtype0
Ш
conv2d_transpose_10/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: @*+
shared_nameconv2d_transpose_10/kernel
С
.conv2d_transpose_10/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_10/kernel*&
_output_shapes
: @*
dtype0
И
conv2d_transpose_10/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *)
shared_nameconv2d_transpose_10/bias
Б
,conv2d_transpose_10/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_10/bias*
_output_shapes
: *
dtype0
Р
batch_normalization_25/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *-
shared_namebatch_normalization_25/gamma
Й
0batch_normalization_25/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_25/gamma*
_output_shapes
: *
dtype0
О
batch_normalization_25/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape: *,
shared_namebatch_normalization_25/beta
З
/batch_normalization_25/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_25/beta*
_output_shapes
: *
dtype0
Ь
"batch_normalization_25/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape: *3
shared_name$"batch_normalization_25/moving_mean
Х
6batch_normalization_25/moving_mean/Read/ReadVariableOpReadVariableOp"batch_normalization_25/moving_mean*
_output_shapes
: *
dtype0
д
&batch_normalization_25/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape: *7
shared_name(&batch_normalization_25/moving_variance
Э
:batch_normalization_25/moving_variance/Read/ReadVariableOpReadVariableOp&batch_normalization_25/moving_variance*
_output_shapes
: *
dtype0
Ш
conv2d_transpose_11/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *+
shared_nameconv2d_transpose_11/kernel
С
.conv2d_transpose_11/kernel/Read/ReadVariableOpReadVariableOpconv2d_transpose_11/kernel*&
_output_shapes
: *
dtype0
И
conv2d_transpose_11/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_nameconv2d_transpose_11/bias
Б
,conv2d_transpose_11/bias/Read/ReadVariableOpReadVariableOpconv2d_transpose_11/bias*
_output_shapes
:*
dtype0

NoOpNoOp
ц5
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*б5
valueЧ5BФ5 BН5
╢
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
layer-10
layer_with_weights-6
layer-11
trainable_variables
regularization_losses
	variables
	keras_api

signatures
 
h

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
Ч
axis
	gamma
beta
moving_mean
moving_variance
trainable_variables
regularization_losses
	variables
 	keras_api
R
!trainable_variables
"regularization_losses
#	variables
$	keras_api
R
%trainable_variables
&regularization_losses
'	variables
(	keras_api
h

)kernel
*bias
+trainable_variables
,regularization_losses
-	variables
.	keras_api
Ч
/axis
	0gamma
1beta
2moving_mean
3moving_variance
4trainable_variables
5regularization_losses
6	variables
7	keras_api
R
8trainable_variables
9regularization_losses
:	variables
;	keras_api
h

<kernel
=bias
>trainable_variables
?regularization_losses
@	variables
A	keras_api
Ч
Baxis
	Cgamma
Dbeta
Emoving_mean
Fmoving_variance
Gtrainable_variables
Hregularization_losses
I	variables
J	keras_api
R
Ktrainable_variables
Lregularization_losses
M	variables
N	keras_api
h

Okernel
Pbias
Qtrainable_variables
Rregularization_losses
S	variables
T	keras_api
f
0
1
2
3
)4
*5
06
17
<8
=9
C10
D11
O12
P13
 
Ц
0
1
2
3
4
5
)6
*7
08
19
210
311
<12
=13
C14
D15
E16
F17
O18
P19
н

Ulayers
trainable_variables
Vlayer_regularization_losses
Wlayer_metrics
Xmetrics
Ynon_trainable_variables
regularization_losses
	variables
 
[Y
VARIABLE_VALUEdense_26/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEdense_26/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
н

Zlayers
trainable_variables
[layer_regularization_losses
\layer_metrics
]metrics
^non_trainable_variables
regularization_losses
	variables
 
ge
VARIABLE_VALUEbatch_normalization_23/gamma5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_23/beta4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_23/moving_mean;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_23/moving_variance?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

0
1
 

0
1
2
3
н

_layers
trainable_variables
`layer_regularization_losses
alayer_metrics
bmetrics
cnon_trainable_variables
regularization_losses
	variables
 
 
 
н

dlayers
!trainable_variables
elayer_regularization_losses
flayer_metrics
gmetrics
hnon_trainable_variables
"regularization_losses
#	variables
 
 
 
н

ilayers
%trainable_variables
jlayer_regularization_losses
klayer_metrics
lmetrics
mnon_trainable_variables
&regularization_losses
'	variables
ec
VARIABLE_VALUEconv2d_transpose_9/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
a_
VARIABLE_VALUEconv2d_transpose_9/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE

)0
*1
 

)0
*1
н

nlayers
+trainable_variables
olayer_regularization_losses
player_metrics
qmetrics
rnon_trainable_variables
,regularization_losses
-	variables
 
ge
VARIABLE_VALUEbatch_normalization_24/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_24/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_24/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_24/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

00
11
 

00
11
22
33
н

slayers
4trainable_variables
tlayer_regularization_losses
ulayer_metrics
vmetrics
wnon_trainable_variables
5regularization_losses
6	variables
 
 
 
н

xlayers
8trainable_variables
ylayer_regularization_losses
zlayer_metrics
{metrics
|non_trainable_variables
9regularization_losses
:	variables
fd
VARIABLE_VALUEconv2d_transpose_10/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEconv2d_transpose_10/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE

<0
=1
 

<0
=1
п

}layers
>trainable_variables
~layer_regularization_losses
layer_metrics
Аmetrics
Бnon_trainable_variables
?regularization_losses
@	variables
 
ge
VARIABLE_VALUEbatch_normalization_25/gamma5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUE
ec
VARIABLE_VALUEbatch_normalization_25/beta4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUE
sq
VARIABLE_VALUE"batch_normalization_25/moving_mean;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUE&batch_normalization_25/moving_variance?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUE

C0
D1
 

C0
D1
E2
F3
▓
Вlayers
Gtrainable_variables
 Гlayer_regularization_losses
Дlayer_metrics
Еmetrics
Жnon_trainable_variables
Hregularization_losses
I	variables
 
 
 
▓
Зlayers
Ktrainable_variables
 Иlayer_regularization_losses
Йlayer_metrics
Кmetrics
Лnon_trainable_variables
Lregularization_losses
M	variables
fd
VARIABLE_VALUEconv2d_transpose_11/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEconv2d_transpose_11/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE

O0
P1
 

O0
P1
▓
Мlayers
Qtrainable_variables
 Нlayer_regularization_losses
Оlayer_metrics
Пmetrics
Рnon_trainable_variables
Rregularization_losses
S	variables
V
0
1
2
3
4
5
6
7
	8

9
10
11
 
 
 
*
0
1
22
33
E4
F5
 
 
 
 
 
 
 
 
 

0
1
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
 
 
 
 
 
 
 
 

20
31
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
 
 
 

E0
F1
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
{
serving_default_input_11Placeholder*'
_output_shapes
:         
*
dtype0*
shape:         

╣
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_11dense_26/kerneldense_26/bias&batch_normalization_23/moving_variancebatch_normalization_23/gamma"batch_normalization_23/moving_meanbatch_normalization_23/betaconv2d_transpose_9/kernelconv2d_transpose_9/biasbatch_normalization_24/gammabatch_normalization_24/beta"batch_normalization_24/moving_mean&batch_normalization_24/moving_varianceconv2d_transpose_10/kernelconv2d_transpose_10/biasbatch_normalization_25/gammabatch_normalization_25/beta"batch_normalization_25/moving_mean&batch_normalization_25/moving_varianceconv2d_transpose_11/kernelconv2d_transpose_11/bias* 
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           *6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *.
f)R'
%__inference_signature_wrapper_2230612
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Х

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_26/kernel/Read/ReadVariableOp!dense_26/bias/Read/ReadVariableOp0batch_normalization_23/gamma/Read/ReadVariableOp/batch_normalization_23/beta/Read/ReadVariableOp6batch_normalization_23/moving_mean/Read/ReadVariableOp:batch_normalization_23/moving_variance/Read/ReadVariableOp-conv2d_transpose_9/kernel/Read/ReadVariableOp+conv2d_transpose_9/bias/Read/ReadVariableOp0batch_normalization_24/gamma/Read/ReadVariableOp/batch_normalization_24/beta/Read/ReadVariableOp6batch_normalization_24/moving_mean/Read/ReadVariableOp:batch_normalization_24/moving_variance/Read/ReadVariableOp.conv2d_transpose_10/kernel/Read/ReadVariableOp,conv2d_transpose_10/bias/Read/ReadVariableOp0batch_normalization_25/gamma/Read/ReadVariableOp/batch_normalization_25/beta/Read/ReadVariableOp6batch_normalization_25/moving_mean/Read/ReadVariableOp:batch_normalization_25/moving_variance/Read/ReadVariableOp.conv2d_transpose_11/kernel/Read/ReadVariableOp,conv2d_transpose_11/bias/Read/ReadVariableOpConst*!
Tin
2*
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
GPU 2J 8В *)
f$R"
 __inference__traced_save_2231412
А
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_26/kerneldense_26/biasbatch_normalization_23/gammabatch_normalization_23/beta"batch_normalization_23/moving_mean&batch_normalization_23/moving_varianceconv2d_transpose_9/kernelconv2d_transpose_9/biasbatch_normalization_24/gammabatch_normalization_24/beta"batch_normalization_24/moving_mean&batch_normalization_24/moving_varianceconv2d_transpose_10/kernelconv2d_transpose_10/biasbatch_normalization_25/gammabatch_normalization_25/beta"batch_normalization_25/moving_mean&batch_normalization_25/moving_varianceconv2d_transpose_11/kernelconv2d_transpose_11/bias* 
Tin
2*
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
GPU 2J 8В *,
f'R%
#__inference__traced_restore_2231482жС
б
л
8__inference_batch_normalization_24_layer_call_fn_2231198

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCall╡
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *\
fWRU
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_22298092
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           @::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
ф
К
S__inference_batch_normalization_23_layer_call_and_return_conditional_losses_2229691

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identityИвbatchnorm/ReadVariableOpвbatchnorm/ReadVariableOp_1вbatchnorm/ReadVariableOp_2вbatchnorm/mul/ReadVariableOpУ
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yЙ
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:А2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:А2
batchnorm/RsqrtЯ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype02
batchnorm/mul/ReadVariableOpЖ
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:         А2
batchnorm/mul_1Щ
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:А*
dtype02
batchnorm/ReadVariableOp_1Ж
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:А2
batchnorm/mul_2Щ
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:А*
dtype02
batchnorm/ReadVariableOp_2Д
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А2
batchnorm/subЖ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         А2
batchnorm/add_1▄
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         А::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╬
e
G__inference_dropout_29_layer_call_and_return_conditional_losses_2230128

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:         А2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╓
f
G__inference_dropout_31_layer_call_and_return_conditional_losses_2230285

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?2
dropout/ConstН
dropout/MulMulinputsdropout/Const:output:0*
T0*A
_output_shapes/
-:+                            2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╬
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*A
_output_shapes/
-:+                            *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=2
dropout/GreaterEqual/y╪
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+                            2
dropout/GreaterEqualЩ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+                            2
dropout/CastФ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*A
_output_shapes/
-:+                            2
dropout/Mul_1
IdentityIdentitydropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+                            :i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
у$
№
O__inference_conv2d_transpose_9_layer_call_and_return_conditional_losses_2229737

inputs,
(conv2d_transpose_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2т
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
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ь
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2	
stack/3В
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ь
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3│
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
:@ *
dtype02!
conv2d_transpose/ReadVariableOpЁ
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                           @*
paddingSAME*
strides
2
conv2d_transposeМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:@*
dtype02
BiasAdd/ReadVariableOpд
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           @2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+                           @2
Relu╗
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+                            ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
г
л
8__inference_batch_normalization_25_layer_call_fn_2231302

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCall╖
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *\
fWRU
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_22299892
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                            ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
у
Х
)__inference_decoder_layer_call_fn_2230999

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18
identityИвStatefulPartitionedCallБ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_decoder_layer_call_and_return_conditional_losses_22305222
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           2

Identity"
identityIdentity:output:0*v
_input_shapese
c:         
::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         

 
_user_specified_nameinputs
├
Ў
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_2229840

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           @::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
│
e
G__inference_dropout_30_layer_call_and_return_conditional_losses_2231228

inputs

identity_1t
IdentityIdentityinputs*
T0*A
_output_shapes/
-:+                           @2

IdentityГ

Identity_1IdentityIdentity:output:0*
T0*A
_output_shapes/
-:+                           @2

Identity_1"!

identity_1Identity_1:output:0*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
б
л
8__inference_batch_normalization_25_layer_call_fn_2231289

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCall╡
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *\
fWRU
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_22299582
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                            ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
╓
f
G__inference_dropout_30_layer_call_and_return_conditional_losses_2231223

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?2
dropout/ConstН
dropout/MulMulinputsdropout/Const:output:0*
T0*A
_output_shapes/
-:+                           @2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╬
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*A
_output_shapes/
-:+                           @*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=2
dropout/GreaterEqual/y╪
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+                           @2
dropout/GreaterEqualЩ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+                           @2
dropout/CastФ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*A
_output_shapes/
-:+                           @2
dropout/Mul_1
IdentityIdentitydropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
Б
H
,__inference_dropout_31_layer_call_fn_2231329

inputs
identity▀
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_dropout_31_layer_call_and_return_conditional_losses_22302902
PartitionedCallЖ
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+                            :i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
М
f
G__inference_dropout_29_layer_call_and_return_conditional_losses_2230123

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╡
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=2
dropout/GreaterEqual/y┐
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         А2
dropout/GreaterEqualА
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         А2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         А2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
▌
К
5__inference_conv2d_transpose_10_layer_call_fn_2229896

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallЪ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_conv2d_transpose_10_layer_call_and_return_conditional_losses_22298862
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+                           @::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
у
Ч
)__inference_decoder_layer_call_fn_2230465
input_11
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18
identityИвStatefulPartitionedCall¤
StatefulPartitionedCallStatefulPartitionedCallinput_11unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_decoder_layer_call_and_return_conditional_losses_22304222
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           2

Identity"
identityIdentity:output:0*v
_input_shapese
c:         
::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:         

"
_user_specified_name
input_11
г
л
8__inference_batch_normalization_24_layer_call_fn_2231211

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCall╖
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *\
fWRU
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_22298402
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           @::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
╜=
┬
D__inference_decoder_layer_call_and_return_conditional_losses_2230522

inputs
dense_26_2230470
dense_26_2230472"
batch_normalization_23_2230475"
batch_normalization_23_2230477"
batch_normalization_23_2230479"
batch_normalization_23_2230481
conv2d_transpose_9_2230486
conv2d_transpose_9_2230488"
batch_normalization_24_2230491"
batch_normalization_24_2230493"
batch_normalization_24_2230495"
batch_normalization_24_2230497
conv2d_transpose_10_2230501
conv2d_transpose_10_2230503"
batch_normalization_25_2230506"
batch_normalization_25_2230508"
batch_normalization_25_2230510"
batch_normalization_25_2230512
conv2d_transpose_11_2230516
conv2d_transpose_11_2230518
identityИв.batch_normalization_23/StatefulPartitionedCallв.batch_normalization_24/StatefulPartitionedCallв.batch_normalization_25/StatefulPartitionedCallв+conv2d_transpose_10/StatefulPartitionedCallв+conv2d_transpose_11/StatefulPartitionedCallв*conv2d_transpose_9/StatefulPartitionedCallв dense_26/StatefulPartitionedCallШ
 dense_26/StatefulPartitionedCallStatefulPartitionedCallinputsdense_26_2230470dense_26_2230472*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_26_layer_call_and_return_conditional_losses_22300602"
 dense_26/StatefulPartitionedCall┼
.batch_normalization_23/StatefulPartitionedCallStatefulPartitionedCall)dense_26/StatefulPartitionedCall:output:0batch_normalization_23_2230475batch_normalization_23_2230477batch_normalization_23_2230479batch_normalization_23_2230481*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *\
fWRU
S__inference_batch_normalization_23_layer_call_and_return_conditional_losses_222969120
.batch_normalization_23/StatefulPartitionedCallН
dropout_29/PartitionedCallPartitionedCall7batch_normalization_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_dropout_29_layer_call_and_return_conditional_losses_22301282
dropout_29/PartitionedCall¤
reshape_3/PartitionedCallPartitionedCall#dropout_29/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_reshape_3_layer_call_and_return_conditional_losses_22301552
reshape_3/PartitionedCall 
*conv2d_transpose_9/StatefulPartitionedCallStatefulPartitionedCall"reshape_3/PartitionedCall:output:0conv2d_transpose_9_2230486conv2d_transpose_9_2230488*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_conv2d_transpose_9_layer_call_and_return_conditional_losses_22297372,
*conv2d_transpose_9/StatefulPartitionedCallш
.batch_normalization_24/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_9/StatefulPartitionedCall:output:0batch_normalization_24_2230491batch_normalization_24_2230493batch_normalization_24_2230495batch_normalization_24_2230497*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *\
fWRU
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_222984020
.batch_normalization_24/StatefulPartitionedCallж
dropout_30/PartitionedCallPartitionedCall7batch_normalization_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_dropout_30_layer_call_and_return_conditional_losses_22302202
dropout_30/PartitionedCallЕ
+conv2d_transpose_10/StatefulPartitionedCallStatefulPartitionedCall#dropout_30/PartitionedCall:output:0conv2d_transpose_10_2230501conv2d_transpose_10_2230503*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_conv2d_transpose_10_layer_call_and_return_conditional_losses_22298862-
+conv2d_transpose_10/StatefulPartitionedCallщ
.batch_normalization_25/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_10/StatefulPartitionedCall:output:0batch_normalization_25_2230506batch_normalization_25_2230508batch_normalization_25_2230510batch_normalization_25_2230512*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *\
fWRU
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_222998920
.batch_normalization_25/StatefulPartitionedCallж
dropout_31/PartitionedCallPartitionedCall7batch_normalization_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_dropout_31_layer_call_and_return_conditional_losses_22302902
dropout_31/PartitionedCallЕ
+conv2d_transpose_11/StatefulPartitionedCallStatefulPartitionedCall#dropout_31/PartitionedCall:output:0conv2d_transpose_11_2230516conv2d_transpose_11_2230518*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_22300352-
+conv2d_transpose_11/StatefulPartitionedCallс
IdentityIdentity4conv2d_transpose_11/StatefulPartitionedCall:output:0/^batch_normalization_23/StatefulPartitionedCall/^batch_normalization_24/StatefulPartitionedCall/^batch_normalization_25/StatefulPartitionedCall,^conv2d_transpose_10/StatefulPartitionedCall,^conv2d_transpose_11/StatefulPartitionedCall+^conv2d_transpose_9/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           2

Identity"
identityIdentity:output:0*v
_input_shapese
c:         
::::::::::::::::::::2`
.batch_normalization_23/StatefulPartitionedCall.batch_normalization_23/StatefulPartitionedCall2`
.batch_normalization_24/StatefulPartitionedCall.batch_normalization_24/StatefulPartitionedCall2`
.batch_normalization_25/StatefulPartitionedCall.batch_normalization_25/StatefulPartitionedCall2Z
+conv2d_transpose_10/StatefulPartitionedCall+conv2d_transpose_10/StatefulPartitionedCall2Z
+conv2d_transpose_11/StatefulPartitionedCall+conv2d_transpose_11/StatefulPartitionedCall2X
*conv2d_transpose_9/StatefulPartitionedCall*conv2d_transpose_9/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall:O K
'
_output_shapes
:         

 
_user_specified_nameinputs
│
e
G__inference_dropout_30_layer_call_and_return_conditional_losses_2230220

inputs

identity_1t
IdentityIdentityinputs*
T0*A
_output_shapes/
-:+                           @2

IdentityГ

Identity_1IdentityIdentity:output:0*
T0*A
_output_shapes/
-:+                           @2

Identity_1"!

identity_1Identity_1:output:0*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
щ
b
F__inference_reshape_3_layer_call_and_return_conditional_losses_2230155

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : 2
Reshape/shape/3║
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapew
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:          2	
Reshapel
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:          2

Identity"
identityIdentity:output:0*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
└5
о

 __inference__traced_save_2231412
file_prefix.
*savev2_dense_26_kernel_read_readvariableop,
(savev2_dense_26_bias_read_readvariableop;
7savev2_batch_normalization_23_gamma_read_readvariableop:
6savev2_batch_normalization_23_beta_read_readvariableopA
=savev2_batch_normalization_23_moving_mean_read_readvariableopE
Asavev2_batch_normalization_23_moving_variance_read_readvariableop8
4savev2_conv2d_transpose_9_kernel_read_readvariableop6
2savev2_conv2d_transpose_9_bias_read_readvariableop;
7savev2_batch_normalization_24_gamma_read_readvariableop:
6savev2_batch_normalization_24_beta_read_readvariableopA
=savev2_batch_normalization_24_moving_mean_read_readvariableopE
Asavev2_batch_normalization_24_moving_variance_read_readvariableop9
5savev2_conv2d_transpose_10_kernel_read_readvariableop7
3savev2_conv2d_transpose_10_bias_read_readvariableop;
7savev2_batch_normalization_25_gamma_read_readvariableop:
6savev2_batch_normalization_25_beta_read_readvariableopA
=savev2_batch_normalization_25_moving_mean_read_readvariableopE
Asavev2_batch_normalization_25_moving_variance_read_readvariableop9
5savev2_conv2d_transpose_11_kernel_read_readvariableop7
3savev2_conv2d_transpose_11_bias_read_readvariableop
savev2_const

identity_1ИвMergeV2CheckpointsП
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
Const_1Л
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
ShardedFilename/shardж
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameЪ

SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*м	
valueв	BЯ	B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names▓
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*=
value4B2B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slices┐

SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_26_kernel_read_readvariableop(savev2_dense_26_bias_read_readvariableop7savev2_batch_normalization_23_gamma_read_readvariableop6savev2_batch_normalization_23_beta_read_readvariableop=savev2_batch_normalization_23_moving_mean_read_readvariableopAsavev2_batch_normalization_23_moving_variance_read_readvariableop4savev2_conv2d_transpose_9_kernel_read_readvariableop2savev2_conv2d_transpose_9_bias_read_readvariableop7savev2_batch_normalization_24_gamma_read_readvariableop6savev2_batch_normalization_24_beta_read_readvariableop=savev2_batch_normalization_24_moving_mean_read_readvariableopAsavev2_batch_normalization_24_moving_variance_read_readvariableop5savev2_conv2d_transpose_10_kernel_read_readvariableop3savev2_conv2d_transpose_10_bias_read_readvariableop7savev2_batch_normalization_25_gamma_read_readvariableop6savev2_batch_normalization_25_beta_read_readvariableop=savev2_batch_normalization_25_moving_mean_read_readvariableopAsavev2_batch_normalization_25_moving_variance_read_readvariableop5savev2_conv2d_transpose_11_kernel_read_readvariableop3savev2_conv2d_transpose_11_bias_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *#
dtypes
22
SaveV2║
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixesб
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

identity_1Identity_1:output:0*┐
_input_shapesн
к: :	
А:А:А:А:А:А:@ :@:@:@:@:@: @: : : : : : :: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	
А:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:!

_output_shapes	
:А:,(
&
_output_shapes
:@ : 

_output_shapes
:@: 	

_output_shapes
:@: 


_output_shapes
:@: 

_output_shapes
:@: 

_output_shapes
:@:,(
&
_output_shapes
: @: 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
: : 

_output_shapes
::

_output_shapes
: 
п0
╠
S__inference_batch_normalization_23_layer_call_and_return_conditional_losses_2229658

inputs
assignmovingavg_2229633
assignmovingavg_1_2229639)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identityИв#AssignMovingAvg/AssignSubVariableOpвAssignMovingAvg/ReadVariableOpв%AssignMovingAvg_1/AssignSubVariableOpв AssignMovingAvg_1/ReadVariableOpвbatchnorm/ReadVariableOpвbatchnorm/mul/ReadVariableOpК
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indicesР
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	А*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	А2
moments/StopGradientе
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:         А2
moments/SquaredDifferenceТ
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices│
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	А*
	keep_dims(2
moments/varianceБ
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:А*
squeeze_dims
 2
moments/SqueezeЙ
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:А*
squeeze_dims
 2
moments/Squeeze_1═
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0**
_class 
loc:@AssignMovingAvg/2229633*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2
AssignMovingAvg/decayХ
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_2229633*
_output_shapes	
:А*
dtype02 
AssignMovingAvg/ReadVariableOpє
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@AssignMovingAvg/2229633*
_output_shapes	
:А2
AssignMovingAvg/subъ
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@AssignMovingAvg/2229633*
_output_shapes	
:А2
AssignMovingAvg/mul▒
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_2229633AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0**
_class 
loc:@AssignMovingAvg/2229633*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp╙
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*,
_class"
 loc:@AssignMovingAvg_1/2229639*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2
AssignMovingAvg_1/decayЫ
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_2229639*
_output_shapes	
:А*
dtype02"
 AssignMovingAvg_1/ReadVariableOp¤
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/2229639*
_output_shapes	
:А2
AssignMovingAvg_1/subЇ
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/2229639*
_output_shapes	
:А2
AssignMovingAvg_1/mul╜
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_2229639AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*,
_class"
 loc:@AssignMovingAvg_1/2229639*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yГ
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:А2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:А2
batchnorm/RsqrtЯ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype02
batchnorm/mul/ReadVariableOpЖ
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:         А2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:А2
batchnorm/mul_2У
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype02
batchnorm/ReadVariableOpВ
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А2
batchnorm/subЖ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         А2
batchnorm/add_1┤
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         А::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
┐
л
8__inference_batch_normalization_23_layer_call_fn_2231101

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCallЮ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *\
fWRU
S__inference_batch_normalization_23_layer_call_and_return_conditional_losses_22296912
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         А::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
ЭB
▒	
D__inference_decoder_layer_call_and_return_conditional_losses_2230422

inputs
dense_26_2230370
dense_26_2230372"
batch_normalization_23_2230375"
batch_normalization_23_2230377"
batch_normalization_23_2230379"
batch_normalization_23_2230381
conv2d_transpose_9_2230386
conv2d_transpose_9_2230388"
batch_normalization_24_2230391"
batch_normalization_24_2230393"
batch_normalization_24_2230395"
batch_normalization_24_2230397
conv2d_transpose_10_2230401
conv2d_transpose_10_2230403"
batch_normalization_25_2230406"
batch_normalization_25_2230408"
batch_normalization_25_2230410"
batch_normalization_25_2230412
conv2d_transpose_11_2230416
conv2d_transpose_11_2230418
identityИв.batch_normalization_23/StatefulPartitionedCallв.batch_normalization_24/StatefulPartitionedCallв.batch_normalization_25/StatefulPartitionedCallв+conv2d_transpose_10/StatefulPartitionedCallв+conv2d_transpose_11/StatefulPartitionedCallв*conv2d_transpose_9/StatefulPartitionedCallв dense_26/StatefulPartitionedCallв"dropout_29/StatefulPartitionedCallв"dropout_30/StatefulPartitionedCallв"dropout_31/StatefulPartitionedCallШ
 dense_26/StatefulPartitionedCallStatefulPartitionedCallinputsdense_26_2230370dense_26_2230372*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_26_layer_call_and_return_conditional_losses_22300602"
 dense_26/StatefulPartitionedCall├
.batch_normalization_23/StatefulPartitionedCallStatefulPartitionedCall)dense_26/StatefulPartitionedCall:output:0batch_normalization_23_2230375batch_normalization_23_2230377batch_normalization_23_2230379batch_normalization_23_2230381*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *\
fWRU
S__inference_batch_normalization_23_layer_call_and_return_conditional_losses_222965820
.batch_normalization_23/StatefulPartitionedCallе
"dropout_29/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_dropout_29_layer_call_and_return_conditional_losses_22301232$
"dropout_29/StatefulPartitionedCallЕ
reshape_3/PartitionedCallPartitionedCall+dropout_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_reshape_3_layer_call_and_return_conditional_losses_22301552
reshape_3/PartitionedCall 
*conv2d_transpose_9/StatefulPartitionedCallStatefulPartitionedCall"reshape_3/PartitionedCall:output:0conv2d_transpose_9_2230386conv2d_transpose_9_2230388*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_conv2d_transpose_9_layer_call_and_return_conditional_losses_22297372,
*conv2d_transpose_9/StatefulPartitionedCallц
.batch_normalization_24/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_9/StatefulPartitionedCall:output:0batch_normalization_24_2230391batch_normalization_24_2230393batch_normalization_24_2230395batch_normalization_24_2230397*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *\
fWRU
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_222980920
.batch_normalization_24/StatefulPartitionedCallу
"dropout_30/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_24/StatefulPartitionedCall:output:0#^dropout_29/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_dropout_30_layer_call_and_return_conditional_losses_22302152$
"dropout_30/StatefulPartitionedCallН
+conv2d_transpose_10/StatefulPartitionedCallStatefulPartitionedCall+dropout_30/StatefulPartitionedCall:output:0conv2d_transpose_10_2230401conv2d_transpose_10_2230403*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_conv2d_transpose_10_layer_call_and_return_conditional_losses_22298862-
+conv2d_transpose_10/StatefulPartitionedCallч
.batch_normalization_25/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_10/StatefulPartitionedCall:output:0batch_normalization_25_2230406batch_normalization_25_2230408batch_normalization_25_2230410batch_normalization_25_2230412*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *\
fWRU
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_222995820
.batch_normalization_25/StatefulPartitionedCallу
"dropout_31/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_25/StatefulPartitionedCall:output:0#^dropout_30/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_dropout_31_layer_call_and_return_conditional_losses_22302852$
"dropout_31/StatefulPartitionedCallН
+conv2d_transpose_11/StatefulPartitionedCallStatefulPartitionedCall+dropout_31/StatefulPartitionedCall:output:0conv2d_transpose_11_2230416conv2d_transpose_11_2230418*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_22300352-
+conv2d_transpose_11/StatefulPartitionedCall╨
IdentityIdentity4conv2d_transpose_11/StatefulPartitionedCall:output:0/^batch_normalization_23/StatefulPartitionedCall/^batch_normalization_24/StatefulPartitionedCall/^batch_normalization_25/StatefulPartitionedCall,^conv2d_transpose_10/StatefulPartitionedCall,^conv2d_transpose_11/StatefulPartitionedCall+^conv2d_transpose_9/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall#^dropout_29/StatefulPartitionedCall#^dropout_30/StatefulPartitionedCall#^dropout_31/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           2

Identity"
identityIdentity:output:0*v
_input_shapese
c:         
::::::::::::::::::::2`
.batch_normalization_23/StatefulPartitionedCall.batch_normalization_23/StatefulPartitionedCall2`
.batch_normalization_24/StatefulPartitionedCall.batch_normalization_24/StatefulPartitionedCall2`
.batch_normalization_25/StatefulPartitionedCall.batch_normalization_25/StatefulPartitionedCall2Z
+conv2d_transpose_10/StatefulPartitionedCall+conv2d_transpose_10/StatefulPartitionedCall2Z
+conv2d_transpose_11/StatefulPartitionedCall+conv2d_transpose_11/StatefulPartitionedCall2X
*conv2d_transpose_9/StatefulPartitionedCall*conv2d_transpose_9/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2H
"dropout_29/StatefulPartitionedCall"dropout_29/StatefulPartitionedCall2H
"dropout_30/StatefulPartitionedCall"dropout_30/StatefulPartitionedCall2H
"dropout_31/StatefulPartitionedCall"dropout_31/StatefulPartitionedCall:O K
'
_output_shapes
:         

 
_user_specified_nameinputs
╧
Ъ
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_2231167

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1Р
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           @::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
зY
Я
#__inference__traced_restore_2231482
file_prefix$
 assignvariableop_dense_26_kernel$
 assignvariableop_1_dense_26_bias3
/assignvariableop_2_batch_normalization_23_gamma2
.assignvariableop_3_batch_normalization_23_beta9
5assignvariableop_4_batch_normalization_23_moving_mean=
9assignvariableop_5_batch_normalization_23_moving_variance0
,assignvariableop_6_conv2d_transpose_9_kernel.
*assignvariableop_7_conv2d_transpose_9_bias3
/assignvariableop_8_batch_normalization_24_gamma2
.assignvariableop_9_batch_normalization_24_beta:
6assignvariableop_10_batch_normalization_24_moving_mean>
:assignvariableop_11_batch_normalization_24_moving_variance2
.assignvariableop_12_conv2d_transpose_10_kernel0
,assignvariableop_13_conv2d_transpose_10_bias4
0assignvariableop_14_batch_normalization_25_gamma3
/assignvariableop_15_batch_normalization_25_beta:
6assignvariableop_16_batch_normalization_25_moving_mean>
:assignvariableop_17_batch_normalization_25_moving_variance2
.assignvariableop_18_conv2d_transpose_11_kernel0
,assignvariableop_19_conv2d_transpose_11_bias
identity_21ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_3вAssignVariableOp_4вAssignVariableOp_5вAssignVariableOp_6вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9а

RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*м	
valueв	BЯ	B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-1/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-1/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-1/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-5/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-5/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-5/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names╕
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*=
value4B2B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slicesФ
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*h
_output_shapesV
T:::::::::::::::::::::*#
dtypes
22
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

IdentityЯ
AssignVariableOpAssignVariableOp assignvariableop_dense_26_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1е
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_26_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2┤
AssignVariableOp_2AssignVariableOp/assignvariableop_2_batch_normalization_23_gammaIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3│
AssignVariableOp_3AssignVariableOp.assignvariableop_3_batch_normalization_23_betaIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4║
AssignVariableOp_4AssignVariableOp5assignvariableop_4_batch_normalization_23_moving_meanIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5╛
AssignVariableOp_5AssignVariableOp9assignvariableop_5_batch_normalization_23_moving_varianceIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6▒
AssignVariableOp_6AssignVariableOp,assignvariableop_6_conv2d_transpose_9_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7п
AssignVariableOp_7AssignVariableOp*assignvariableop_7_conv2d_transpose_9_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8┤
AssignVariableOp_8AssignVariableOp/assignvariableop_8_batch_normalization_24_gammaIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9│
AssignVariableOp_9AssignVariableOp.assignvariableop_9_batch_normalization_24_betaIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10╛
AssignVariableOp_10AssignVariableOp6assignvariableop_10_batch_normalization_24_moving_meanIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11┬
AssignVariableOp_11AssignVariableOp:assignvariableop_11_batch_normalization_24_moving_varianceIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12╢
AssignVariableOp_12AssignVariableOp.assignvariableop_12_conv2d_transpose_10_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13┤
AssignVariableOp_13AssignVariableOp,assignvariableop_13_conv2d_transpose_10_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14╕
AssignVariableOp_14AssignVariableOp0assignvariableop_14_batch_normalization_25_gammaIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15╖
AssignVariableOp_15AssignVariableOp/assignvariableop_15_batch_normalization_25_betaIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16╛
AssignVariableOp_16AssignVariableOp6assignvariableop_16_batch_normalization_25_moving_meanIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17┬
AssignVariableOp_17AssignVariableOp:assignvariableop_17_batch_normalization_25_moving_varianceIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18╢
AssignVariableOp_18AssignVariableOp.assignvariableop_18_conv2d_transpose_11_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19┤
AssignVariableOp_19AssignVariableOp,assignvariableop_19_conv2d_transpose_11_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_199
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpЦ
Identity_20Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_20Й
Identity_21IdentityIdentity_20:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
T0*
_output_shapes
: 2
Identity_21"#
identity_21Identity_21:output:0*e
_input_shapesT
R: ::::::::::::::::::::2$
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
AssignVariableOp_2AssignVariableOp_22(
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
ЄШ
є
D__inference_decoder_layer_call_and_return_conditional_losses_2230781

inputs+
'dense_26_matmul_readvariableop_resource,
(dense_26_biasadd_readvariableop_resource2
.batch_normalization_23_assignmovingavg_22306304
0batch_normalization_23_assignmovingavg_1_2230636@
<batch_normalization_23_batchnorm_mul_readvariableop_resource<
8batch_normalization_23_batchnorm_readvariableop_resource?
;conv2d_transpose_9_conv2d_transpose_readvariableop_resource6
2conv2d_transpose_9_biasadd_readvariableop_resource2
.batch_normalization_24_readvariableop_resource4
0batch_normalization_24_readvariableop_1_resourceC
?batch_normalization_24_fusedbatchnormv3_readvariableop_resourceE
Abatch_normalization_24_fusedbatchnormv3_readvariableop_1_resource@
<conv2d_transpose_10_conv2d_transpose_readvariableop_resource7
3conv2d_transpose_10_biasadd_readvariableop_resource2
.batch_normalization_25_readvariableop_resource4
0batch_normalization_25_readvariableop_1_resourceC
?batch_normalization_25_fusedbatchnormv3_readvariableop_resourceE
Abatch_normalization_25_fusedbatchnormv3_readvariableop_1_resource@
<conv2d_transpose_11_conv2d_transpose_readvariableop_resource7
3conv2d_transpose_11_biasadd_readvariableop_resource
identityИв:batch_normalization_23/AssignMovingAvg/AssignSubVariableOpв5batch_normalization_23/AssignMovingAvg/ReadVariableOpв<batch_normalization_23/AssignMovingAvg_1/AssignSubVariableOpв7batch_normalization_23/AssignMovingAvg_1/ReadVariableOpв/batch_normalization_23/batchnorm/ReadVariableOpв3batch_normalization_23/batchnorm/mul/ReadVariableOpв%batch_normalization_24/AssignNewValueв'batch_normalization_24/AssignNewValue_1в6batch_normalization_24/FusedBatchNormV3/ReadVariableOpв8batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_24/ReadVariableOpв'batch_normalization_24/ReadVariableOp_1в%batch_normalization_25/AssignNewValueв'batch_normalization_25/AssignNewValue_1в6batch_normalization_25/FusedBatchNormV3/ReadVariableOpв8batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_25/ReadVariableOpв'batch_normalization_25/ReadVariableOp_1в*conv2d_transpose_10/BiasAdd/ReadVariableOpв3conv2d_transpose_10/conv2d_transpose/ReadVariableOpв*conv2d_transpose_11/BiasAdd/ReadVariableOpв3conv2d_transpose_11/conv2d_transpose/ReadVariableOpв)conv2d_transpose_9/BiasAdd/ReadVariableOpв2conv2d_transpose_9/conv2d_transpose/ReadVariableOpвdense_26/BiasAdd/ReadVariableOpвdense_26/MatMul/ReadVariableOpй
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource*
_output_shapes
:	
А*
dtype02 
dense_26/MatMul/ReadVariableOpП
dense_26/MatMulMatMulinputs&dense_26/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_26/MatMulи
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02!
dense_26/BiasAdd/ReadVariableOpж
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_26/BiasAddt
dense_26/ReluReludense_26/BiasAdd:output:0*
T0*(
_output_shapes
:         А2
dense_26/Relu╕
5batch_normalization_23/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 27
5batch_normalization_23/moments/mean/reduction_indicesъ
#batch_normalization_23/moments/meanMeandense_26/Relu:activations:0>batch_normalization_23/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	А*
	keep_dims(2%
#batch_normalization_23/moments/mean┬
+batch_normalization_23/moments/StopGradientStopGradient,batch_normalization_23/moments/mean:output:0*
T0*
_output_shapes
:	А2-
+batch_normalization_23/moments/StopGradient 
0batch_normalization_23/moments/SquaredDifferenceSquaredDifferencedense_26/Relu:activations:04batch_normalization_23/moments/StopGradient:output:0*
T0*(
_output_shapes
:         А22
0batch_normalization_23/moments/SquaredDifference└
9batch_normalization_23/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2;
9batch_normalization_23/moments/variance/reduction_indicesП
'batch_normalization_23/moments/varianceMean4batch_normalization_23/moments/SquaredDifference:z:0Bbatch_normalization_23/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	А*
	keep_dims(2)
'batch_normalization_23/moments/variance╞
&batch_normalization_23/moments/SqueezeSqueeze,batch_normalization_23/moments/mean:output:0*
T0*
_output_shapes	
:А*
squeeze_dims
 2(
&batch_normalization_23/moments/Squeeze╬
(batch_normalization_23/moments/Squeeze_1Squeeze0batch_normalization_23/moments/variance:output:0*
T0*
_output_shapes	
:А*
squeeze_dims
 2*
(batch_normalization_23/moments/Squeeze_1Т
,batch_normalization_23/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*A
_class7
53loc:@batch_normalization_23/AssignMovingAvg/2230630*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2.
,batch_normalization_23/AssignMovingAvg/decay┌
5batch_normalization_23/AssignMovingAvg/ReadVariableOpReadVariableOp.batch_normalization_23_assignmovingavg_2230630*
_output_shapes	
:А*
dtype027
5batch_normalization_23/AssignMovingAvg/ReadVariableOpц
*batch_normalization_23/AssignMovingAvg/subSub=batch_normalization_23/AssignMovingAvg/ReadVariableOp:value:0/batch_normalization_23/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*A
_class7
53loc:@batch_normalization_23/AssignMovingAvg/2230630*
_output_shapes	
:А2,
*batch_normalization_23/AssignMovingAvg/sub▌
*batch_normalization_23/AssignMovingAvg/mulMul.batch_normalization_23/AssignMovingAvg/sub:z:05batch_normalization_23/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*A
_class7
53loc:@batch_normalization_23/AssignMovingAvg/2230630*
_output_shapes	
:А2,
*batch_normalization_23/AssignMovingAvg/mul╗
:batch_normalization_23/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp.batch_normalization_23_assignmovingavg_2230630.batch_normalization_23/AssignMovingAvg/mul:z:06^batch_normalization_23/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*A
_class7
53loc:@batch_normalization_23/AssignMovingAvg/2230630*
_output_shapes
 *
dtype02<
:batch_normalization_23/AssignMovingAvg/AssignSubVariableOpШ
.batch_normalization_23/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*C
_class9
75loc:@batch_normalization_23/AssignMovingAvg_1/2230636*
_output_shapes
: *
dtype0*
valueB
 *
╫#<20
.batch_normalization_23/AssignMovingAvg_1/decayр
7batch_normalization_23/AssignMovingAvg_1/ReadVariableOpReadVariableOp0batch_normalization_23_assignmovingavg_1_2230636*
_output_shapes	
:А*
dtype029
7batch_normalization_23/AssignMovingAvg_1/ReadVariableOpЁ
,batch_normalization_23/AssignMovingAvg_1/subSub?batch_normalization_23/AssignMovingAvg_1/ReadVariableOp:value:01batch_normalization_23/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*C
_class9
75loc:@batch_normalization_23/AssignMovingAvg_1/2230636*
_output_shapes	
:А2.
,batch_normalization_23/AssignMovingAvg_1/subч
,batch_normalization_23/AssignMovingAvg_1/mulMul0batch_normalization_23/AssignMovingAvg_1/sub:z:07batch_normalization_23/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*C
_class9
75loc:@batch_normalization_23/AssignMovingAvg_1/2230636*
_output_shapes	
:А2.
,batch_normalization_23/AssignMovingAvg_1/mul╟
<batch_normalization_23/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp0batch_normalization_23_assignmovingavg_1_22306360batch_normalization_23/AssignMovingAvg_1/mul:z:08^batch_normalization_23/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*C
_class9
75loc:@batch_normalization_23/AssignMovingAvg_1/2230636*
_output_shapes
 *
dtype02>
<batch_normalization_23/AssignMovingAvg_1/AssignSubVariableOpХ
&batch_normalization_23/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2(
&batch_normalization_23/batchnorm/add/y▀
$batch_normalization_23/batchnorm/addAddV21batch_normalization_23/moments/Squeeze_1:output:0/batch_normalization_23/batchnorm/add/y:output:0*
T0*
_output_shapes	
:А2&
$batch_normalization_23/batchnorm/addй
&batch_normalization_23/batchnorm/RsqrtRsqrt(batch_normalization_23/batchnorm/add:z:0*
T0*
_output_shapes	
:А2(
&batch_normalization_23/batchnorm/Rsqrtф
3batch_normalization_23/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_23_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype025
3batch_normalization_23/batchnorm/mul/ReadVariableOpт
$batch_normalization_23/batchnorm/mulMul*batch_normalization_23/batchnorm/Rsqrt:y:0;batch_normalization_23/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2&
$batch_normalization_23/batchnorm/mul╤
&batch_normalization_23/batchnorm/mul_1Muldense_26/Relu:activations:0(batch_normalization_23/batchnorm/mul:z:0*
T0*(
_output_shapes
:         А2(
&batch_normalization_23/batchnorm/mul_1╪
&batch_normalization_23/batchnorm/mul_2Mul/batch_normalization_23/moments/Squeeze:output:0(batch_normalization_23/batchnorm/mul:z:0*
T0*
_output_shapes	
:А2(
&batch_normalization_23/batchnorm/mul_2╪
/batch_normalization_23/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_23_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype021
/batch_normalization_23/batchnorm/ReadVariableOp▐
$batch_normalization_23/batchnorm/subSub7batch_normalization_23/batchnorm/ReadVariableOp:value:0*batch_normalization_23/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А2&
$batch_normalization_23/batchnorm/subт
&batch_normalization_23/batchnorm/add_1AddV2*batch_normalization_23/batchnorm/mul_1:z:0(batch_normalization_23/batchnorm/sub:z:0*
T0*(
_output_shapes
:         А2(
&batch_normalization_23/batchnorm/add_1y
dropout_29/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?2
dropout_29/dropout/Const╣
dropout_29/dropout/MulMul*batch_normalization_23/batchnorm/add_1:z:0!dropout_29/dropout/Const:output:0*
T0*(
_output_shapes
:         А2
dropout_29/dropout/MulО
dropout_29/dropout/ShapeShape*batch_normalization_23/batchnorm/add_1:z:0*
T0*
_output_shapes
:2
dropout_29/dropout/Shape╓
/dropout_29/dropout/random_uniform/RandomUniformRandomUniform!dropout_29/dropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype021
/dropout_29/dropout/random_uniform/RandomUniformЛ
!dropout_29/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=2#
!dropout_29/dropout/GreaterEqual/yы
dropout_29/dropout/GreaterEqualGreaterEqual8dropout_29/dropout/random_uniform/RandomUniform:output:0*dropout_29/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         А2!
dropout_29/dropout/GreaterEqualб
dropout_29/dropout/CastCast#dropout_29/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         А2
dropout_29/dropout/Castз
dropout_29/dropout/Mul_1Muldropout_29/dropout/Mul:z:0dropout_29/dropout/Cast:y:0*
T0*(
_output_shapes
:         А2
dropout_29/dropout/Mul_1n
reshape_3/ShapeShapedropout_29/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
reshape_3/ShapeИ
reshape_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_3/strided_slice/stackМ
reshape_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_3/strided_slice/stack_1М
reshape_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_3/strided_slice/stack_2Ю
reshape_3/strided_sliceStridedSlicereshape_3/Shape:output:0&reshape_3/strided_slice/stack:output:0(reshape_3/strided_slice/stack_1:output:0(reshape_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_3/strided_slicex
reshape_3/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_3/Reshape/shape/1x
reshape_3/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_3/Reshape/shape/2x
reshape_3/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : 2
reshape_3/Reshape/shape/3Ў
reshape_3/Reshape/shapePack reshape_3/strided_slice:output:0"reshape_3/Reshape/shape/1:output:0"reshape_3/Reshape/shape/2:output:0"reshape_3/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_3/Reshape/shapeл
reshape_3/ReshapeReshapedropout_29/dropout/Mul_1:z:0 reshape_3/Reshape/shape:output:0*
T0*/
_output_shapes
:          2
reshape_3/Reshape~
conv2d_transpose_9/ShapeShapereshape_3/Reshape:output:0*
T0*
_output_shapes
:2
conv2d_transpose_9/ShapeЪ
&conv2d_transpose_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose_9/strided_slice/stackЮ
(conv2d_transpose_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_9/strided_slice/stack_1Ю
(conv2d_transpose_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_9/strided_slice/stack_2╘
 conv2d_transpose_9/strided_sliceStridedSlice!conv2d_transpose_9/Shape:output:0/conv2d_transpose_9/strided_slice/stack:output:01conv2d_transpose_9/strided_slice/stack_1:output:01conv2d_transpose_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 conv2d_transpose_9/strided_slicez
conv2d_transpose_9/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_9/stack/1z
conv2d_transpose_9/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_9/stack/2z
conv2d_transpose_9/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_9/stack/3Д
conv2d_transpose_9/stackPack)conv2d_transpose_9/strided_slice:output:0#conv2d_transpose_9/stack/1:output:0#conv2d_transpose_9/stack/2:output:0#conv2d_transpose_9/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_9/stackЮ
(conv2d_transpose_9/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_9/strided_slice_1/stackв
*conv2d_transpose_9/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_9/strided_slice_1/stack_1в
*conv2d_transpose_9/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_9/strided_slice_1/stack_2▐
"conv2d_transpose_9/strided_slice_1StridedSlice!conv2d_transpose_9/stack:output:01conv2d_transpose_9/strided_slice_1/stack:output:03conv2d_transpose_9/strided_slice_1/stack_1:output:03conv2d_transpose_9/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_9/strided_slice_1ь
2conv2d_transpose_9/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_9_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@ *
dtype024
2conv2d_transpose_9/conv2d_transpose/ReadVariableOp╛
#conv2d_transpose_9/conv2d_transposeConv2DBackpropInput!conv2d_transpose_9/stack:output:0:conv2d_transpose_9/conv2d_transpose/ReadVariableOp:value:0reshape_3/Reshape:output:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2%
#conv2d_transpose_9/conv2d_transpose┼
)conv2d_transpose_9/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)conv2d_transpose_9/BiasAdd/ReadVariableOp▐
conv2d_transpose_9/BiasAddBiasAdd,conv2d_transpose_9/conv2d_transpose:output:01conv2d_transpose_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
conv2d_transpose_9/BiasAddЩ
conv2d_transpose_9/ReluRelu#conv2d_transpose_9/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
conv2d_transpose_9/Relu╣
%batch_normalization_24/ReadVariableOpReadVariableOp.batch_normalization_24_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_24/ReadVariableOp┐
'batch_normalization_24/ReadVariableOp_1ReadVariableOp0batch_normalization_24_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_24/ReadVariableOp_1ь
6batch_normalization_24/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_24_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_24/FusedBatchNormV3/ReadVariableOpЄ
8batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_24_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1Б
'batch_normalization_24/FusedBatchNormV3FusedBatchNormV3%conv2d_transpose_9/Relu:activations:0-batch_normalization_24/ReadVariableOp:value:0/batch_normalization_24/ReadVariableOp_1:value:0>batch_normalization_24/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2)
'batch_normalization_24/FusedBatchNormV3╖
%batch_normalization_24/AssignNewValueAssignVariableOp?batch_normalization_24_fusedbatchnormv3_readvariableop_resource4batch_normalization_24/FusedBatchNormV3:batch_mean:07^batch_normalization_24/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*R
_classH
FDloc:@batch_normalization_24/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02'
%batch_normalization_24/AssignNewValue┼
'batch_normalization_24/AssignNewValue_1AssignVariableOpAbatch_normalization_24_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_24/FusedBatchNormV3:batch_variance:09^batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*T
_classJ
HFloc:@batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02)
'batch_normalization_24/AssignNewValue_1y
dropout_30/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?2
dropout_30/dropout/Const┴
dropout_30/dropout/MulMul+batch_normalization_24/FusedBatchNormV3:y:0!dropout_30/dropout/Const:output:0*
T0*/
_output_shapes
:         @2
dropout_30/dropout/MulП
dropout_30/dropout/ShapeShape+batch_normalization_24/FusedBatchNormV3:y:0*
T0*
_output_shapes
:2
dropout_30/dropout/Shape▌
/dropout_30/dropout/random_uniform/RandomUniformRandomUniform!dropout_30/dropout/Shape:output:0*
T0*/
_output_shapes
:         @*
dtype021
/dropout_30/dropout/random_uniform/RandomUniformЛ
!dropout_30/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=2#
!dropout_30/dropout/GreaterEqual/yЄ
dropout_30/dropout/GreaterEqualGreaterEqual8dropout_30/dropout/random_uniform/RandomUniform:output:0*dropout_30/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:         @2!
dropout_30/dropout/GreaterEqualи
dropout_30/dropout/CastCast#dropout_30/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:         @2
dropout_30/dropout/Castо
dropout_30/dropout/Mul_1Muldropout_30/dropout/Mul:z:0dropout_30/dropout/Cast:y:0*
T0*/
_output_shapes
:         @2
dropout_30/dropout/Mul_1В
conv2d_transpose_10/ShapeShapedropout_30/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
conv2d_transpose_10/ShapeЬ
'conv2d_transpose_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_10/strided_slice/stackа
)conv2d_transpose_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_10/strided_slice/stack_1а
)conv2d_transpose_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_10/strided_slice/stack_2┌
!conv2d_transpose_10/strided_sliceStridedSlice"conv2d_transpose_10/Shape:output:00conv2d_transpose_10/strided_slice/stack:output:02conv2d_transpose_10/strided_slice/stack_1:output:02conv2d_transpose_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_10/strided_slice|
conv2d_transpose_10/stack/1Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_10/stack/1|
conv2d_transpose_10/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_10/stack/2|
conv2d_transpose_10/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_10/stack/3К
conv2d_transpose_10/stackPack*conv2d_transpose_10/strided_slice:output:0$conv2d_transpose_10/stack/1:output:0$conv2d_transpose_10/stack/2:output:0$conv2d_transpose_10/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_10/stackа
)conv2d_transpose_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_10/strided_slice_1/stackд
+conv2d_transpose_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_10/strided_slice_1/stack_1д
+conv2d_transpose_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_10/strided_slice_1/stack_2ф
#conv2d_transpose_10/strided_slice_1StridedSlice"conv2d_transpose_10/stack:output:02conv2d_transpose_10/strided_slice_1/stack:output:04conv2d_transpose_10/strided_slice_1/stack_1:output:04conv2d_transpose_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_10/strided_slice_1я
3conv2d_transpose_10/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_10_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype025
3conv2d_transpose_10/conv2d_transpose/ReadVariableOp─
$conv2d_transpose_10/conv2d_transposeConv2DBackpropInput"conv2d_transpose_10/stack:output:0;conv2d_transpose_10/conv2d_transpose/ReadVariableOp:value:0dropout_30/dropout/Mul_1:z:0*
T0*/
_output_shapes
:            *
paddingSAME*
strides
2&
$conv2d_transpose_10/conv2d_transpose╚
*conv2d_transpose_10/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02,
*conv2d_transpose_10/BiasAdd/ReadVariableOpт
conv2d_transpose_10/BiasAddBiasAdd-conv2d_transpose_10/conv2d_transpose:output:02conv2d_transpose_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:            2
conv2d_transpose_10/BiasAddЬ
conv2d_transpose_10/ReluRelu$conv2d_transpose_10/BiasAdd:output:0*
T0*/
_output_shapes
:            2
conv2d_transpose_10/Relu╣
%batch_normalization_25/ReadVariableOpReadVariableOp.batch_normalization_25_readvariableop_resource*
_output_shapes
: *
dtype02'
%batch_normalization_25/ReadVariableOp┐
'batch_normalization_25/ReadVariableOp_1ReadVariableOp0batch_normalization_25_readvariableop_1_resource*
_output_shapes
: *
dtype02)
'batch_normalization_25/ReadVariableOp_1ь
6batch_normalization_25/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_25_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype028
6batch_normalization_25/FusedBatchNormV3/ReadVariableOpЄ
8batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_25_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02:
8batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1В
'batch_normalization_25/FusedBatchNormV3FusedBatchNormV3&conv2d_transpose_10/Relu:activations:0-batch_normalization_25/ReadVariableOp:value:0/batch_normalization_25/ReadVariableOp_1:value:0>batch_normalization_25/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:            : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<2)
'batch_normalization_25/FusedBatchNormV3╖
%batch_normalization_25/AssignNewValueAssignVariableOp?batch_normalization_25_fusedbatchnormv3_readvariableop_resource4batch_normalization_25/FusedBatchNormV3:batch_mean:07^batch_normalization_25/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*R
_classH
FDloc:@batch_normalization_25/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02'
%batch_normalization_25/AssignNewValue┼
'batch_normalization_25/AssignNewValue_1AssignVariableOpAbatch_normalization_25_fusedbatchnormv3_readvariableop_1_resource8batch_normalization_25/FusedBatchNormV3:batch_variance:09^batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*T
_classJ
HFloc:@batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02)
'batch_normalization_25/AssignNewValue_1y
dropout_31/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?2
dropout_31/dropout/Const┴
dropout_31/dropout/MulMul+batch_normalization_25/FusedBatchNormV3:y:0!dropout_31/dropout/Const:output:0*
T0*/
_output_shapes
:            2
dropout_31/dropout/MulП
dropout_31/dropout/ShapeShape+batch_normalization_25/FusedBatchNormV3:y:0*
T0*
_output_shapes
:2
dropout_31/dropout/Shape▌
/dropout_31/dropout/random_uniform/RandomUniformRandomUniform!dropout_31/dropout/Shape:output:0*
T0*/
_output_shapes
:            *
dtype021
/dropout_31/dropout/random_uniform/RandomUniformЛ
!dropout_31/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=2#
!dropout_31/dropout/GreaterEqual/yЄ
dropout_31/dropout/GreaterEqualGreaterEqual8dropout_31/dropout/random_uniform/RandomUniform:output:0*dropout_31/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:            2!
dropout_31/dropout/GreaterEqualи
dropout_31/dropout/CastCast#dropout_31/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:            2
dropout_31/dropout/Castо
dropout_31/dropout/Mul_1Muldropout_31/dropout/Mul:z:0dropout_31/dropout/Cast:y:0*
T0*/
_output_shapes
:            2
dropout_31/dropout/Mul_1В
conv2d_transpose_11/ShapeShapedropout_31/dropout/Mul_1:z:0*
T0*
_output_shapes
:2
conv2d_transpose_11/ShapeЬ
'conv2d_transpose_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_11/strided_slice/stackа
)conv2d_transpose_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_11/strided_slice/stack_1а
)conv2d_transpose_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_11/strided_slice/stack_2┌
!conv2d_transpose_11/strided_sliceStridedSlice"conv2d_transpose_11/Shape:output:00conv2d_transpose_11/strided_slice/stack:output:02conv2d_transpose_11/strided_slice/stack_1:output:02conv2d_transpose_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_11/strided_slice|
conv2d_transpose_11/stack/1Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_11/stack/1|
conv2d_transpose_11/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_11/stack/2|
conv2d_transpose_11/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_11/stack/3К
conv2d_transpose_11/stackPack*conv2d_transpose_11/strided_slice:output:0$conv2d_transpose_11/stack/1:output:0$conv2d_transpose_11/stack/2:output:0$conv2d_transpose_11/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_11/stackа
)conv2d_transpose_11/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_11/strided_slice_1/stackд
+conv2d_transpose_11/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_11/strided_slice_1/stack_1д
+conv2d_transpose_11/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_11/strided_slice_1/stack_2ф
#conv2d_transpose_11/strided_slice_1StridedSlice"conv2d_transpose_11/stack:output:02conv2d_transpose_11/strided_slice_1/stack:output:04conv2d_transpose_11/strided_slice_1/stack_1:output:04conv2d_transpose_11/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_11/strided_slice_1я
3conv2d_transpose_11/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_11_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype025
3conv2d_transpose_11/conv2d_transpose/ReadVariableOp─
$conv2d_transpose_11/conv2d_transposeConv2DBackpropInput"conv2d_transpose_11/stack:output:0;conv2d_transpose_11/conv2d_transpose/ReadVariableOp:value:0dropout_31/dropout/Mul_1:z:0*
T0*/
_output_shapes
:           *
paddingSAME*
strides
2&
$conv2d_transpose_11/conv2d_transpose╚
*conv2d_transpose_11/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*conv2d_transpose_11/BiasAdd/ReadVariableOpт
conv2d_transpose_11/BiasAddBiasAdd-conv2d_transpose_11/conv2d_transpose:output:02conv2d_transpose_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:           2
conv2d_transpose_11/BiasAddЬ
conv2d_transpose_11/ReluRelu$conv2d_transpose_11/BiasAdd:output:0*
T0*/
_output_shapes
:           2
conv2d_transpose_11/ReluЄ

IdentityIdentity&conv2d_transpose_11/Relu:activations:0;^batch_normalization_23/AssignMovingAvg/AssignSubVariableOp6^batch_normalization_23/AssignMovingAvg/ReadVariableOp=^batch_normalization_23/AssignMovingAvg_1/AssignSubVariableOp8^batch_normalization_23/AssignMovingAvg_1/ReadVariableOp0^batch_normalization_23/batchnorm/ReadVariableOp4^batch_normalization_23/batchnorm/mul/ReadVariableOp&^batch_normalization_24/AssignNewValue(^batch_normalization_24/AssignNewValue_17^batch_normalization_24/FusedBatchNormV3/ReadVariableOp9^batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_24/ReadVariableOp(^batch_normalization_24/ReadVariableOp_1&^batch_normalization_25/AssignNewValue(^batch_normalization_25/AssignNewValue_17^batch_normalization_25/FusedBatchNormV3/ReadVariableOp9^batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_25/ReadVariableOp(^batch_normalization_25/ReadVariableOp_1+^conv2d_transpose_10/BiasAdd/ReadVariableOp4^conv2d_transpose_10/conv2d_transpose/ReadVariableOp+^conv2d_transpose_11/BiasAdd/ReadVariableOp4^conv2d_transpose_11/conv2d_transpose/ReadVariableOp*^conv2d_transpose_9/BiasAdd/ReadVariableOp3^conv2d_transpose_9/conv2d_transpose/ReadVariableOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp*
T0*/
_output_shapes
:           2

Identity"
identityIdentity:output:0*v
_input_shapese
c:         
::::::::::::::::::::2x
:batch_normalization_23/AssignMovingAvg/AssignSubVariableOp:batch_normalization_23/AssignMovingAvg/AssignSubVariableOp2n
5batch_normalization_23/AssignMovingAvg/ReadVariableOp5batch_normalization_23/AssignMovingAvg/ReadVariableOp2|
<batch_normalization_23/AssignMovingAvg_1/AssignSubVariableOp<batch_normalization_23/AssignMovingAvg_1/AssignSubVariableOp2r
7batch_normalization_23/AssignMovingAvg_1/ReadVariableOp7batch_normalization_23/AssignMovingAvg_1/ReadVariableOp2b
/batch_normalization_23/batchnorm/ReadVariableOp/batch_normalization_23/batchnorm/ReadVariableOp2j
3batch_normalization_23/batchnorm/mul/ReadVariableOp3batch_normalization_23/batchnorm/mul/ReadVariableOp2N
%batch_normalization_24/AssignNewValue%batch_normalization_24/AssignNewValue2R
'batch_normalization_24/AssignNewValue_1'batch_normalization_24/AssignNewValue_12p
6batch_normalization_24/FusedBatchNormV3/ReadVariableOp6batch_normalization_24/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_24/FusedBatchNormV3/ReadVariableOp_18batch_normalization_24/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_24/ReadVariableOp%batch_normalization_24/ReadVariableOp2R
'batch_normalization_24/ReadVariableOp_1'batch_normalization_24/ReadVariableOp_12N
%batch_normalization_25/AssignNewValue%batch_normalization_25/AssignNewValue2R
'batch_normalization_25/AssignNewValue_1'batch_normalization_25/AssignNewValue_12p
6batch_normalization_25/FusedBatchNormV3/ReadVariableOp6batch_normalization_25/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_25/FusedBatchNormV3/ReadVariableOp_18batch_normalization_25/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_25/ReadVariableOp%batch_normalization_25/ReadVariableOp2R
'batch_normalization_25/ReadVariableOp_1'batch_normalization_25/ReadVariableOp_12X
*conv2d_transpose_10/BiasAdd/ReadVariableOp*conv2d_transpose_10/BiasAdd/ReadVariableOp2j
3conv2d_transpose_10/conv2d_transpose/ReadVariableOp3conv2d_transpose_10/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_11/BiasAdd/ReadVariableOp*conv2d_transpose_11/BiasAdd/ReadVariableOp2j
3conv2d_transpose_11/conv2d_transpose/ReadVariableOp3conv2d_transpose_11/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_9/BiasAdd/ReadVariableOp)conv2d_transpose_9/BiasAdd/ReadVariableOp2h
2conv2d_transpose_9/conv2d_transpose/ReadVariableOp2conv2d_transpose_9/conv2d_transpose/ReadVariableOp2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp:O K
'
_output_shapes
:         

 
_user_specified_nameinputs
╓
f
G__inference_dropout_30_layer_call_and_return_conditional_losses_2230215

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?2
dropout/ConstН
dropout/MulMulinputsdropout/Const:output:0*
T0*A
_output_shapes/
-:+                           @2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╬
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*A
_output_shapes/
-:+                           @*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=2
dropout/GreaterEqual/y╪
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+                           @2
dropout/GreaterEqualЩ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+                           @2
dropout/CastФ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*A
_output_shapes/
-:+                           @2
dropout/Mul_1
IdentityIdentitydropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
├
Ў
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_2231276

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                            ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
▌
К
5__inference_conv2d_transpose_11_layer_call_fn_2230045

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallЪ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_22300352
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+                            ::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
├
Ў
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_2229989

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                            ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
х┐
▀
D__inference_decoder_layer_call_and_return_conditional_losses_2230909

inputs+
'dense_26_matmul_readvariableop_resource,
(dense_26_biasadd_readvariableop_resource<
8batch_normalization_23_batchnorm_readvariableop_resource@
<batch_normalization_23_batchnorm_mul_readvariableop_resource>
:batch_normalization_23_batchnorm_readvariableop_1_resource>
:batch_normalization_23_batchnorm_readvariableop_2_resource?
;conv2d_transpose_9_conv2d_transpose_readvariableop_resource6
2conv2d_transpose_9_biasadd_readvariableop_resource2
.batch_normalization_24_readvariableop_resource4
0batch_normalization_24_readvariableop_1_resourceC
?batch_normalization_24_fusedbatchnormv3_readvariableop_resourceE
Abatch_normalization_24_fusedbatchnormv3_readvariableop_1_resource@
<conv2d_transpose_10_conv2d_transpose_readvariableop_resource7
3conv2d_transpose_10_biasadd_readvariableop_resource2
.batch_normalization_25_readvariableop_resource4
0batch_normalization_25_readvariableop_1_resourceC
?batch_normalization_25_fusedbatchnormv3_readvariableop_resourceE
Abatch_normalization_25_fusedbatchnormv3_readvariableop_1_resource@
<conv2d_transpose_11_conv2d_transpose_readvariableop_resource7
3conv2d_transpose_11_biasadd_readvariableop_resource
identityИв/batch_normalization_23/batchnorm/ReadVariableOpв1batch_normalization_23/batchnorm/ReadVariableOp_1в1batch_normalization_23/batchnorm/ReadVariableOp_2в3batch_normalization_23/batchnorm/mul/ReadVariableOpв6batch_normalization_24/FusedBatchNormV3/ReadVariableOpв8batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_24/ReadVariableOpв'batch_normalization_24/ReadVariableOp_1в6batch_normalization_25/FusedBatchNormV3/ReadVariableOpв8batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1в%batch_normalization_25/ReadVariableOpв'batch_normalization_25/ReadVariableOp_1в*conv2d_transpose_10/BiasAdd/ReadVariableOpв3conv2d_transpose_10/conv2d_transpose/ReadVariableOpв*conv2d_transpose_11/BiasAdd/ReadVariableOpв3conv2d_transpose_11/conv2d_transpose/ReadVariableOpв)conv2d_transpose_9/BiasAdd/ReadVariableOpв2conv2d_transpose_9/conv2d_transpose/ReadVariableOpвdense_26/BiasAdd/ReadVariableOpвdense_26/MatMul/ReadVariableOpй
dense_26/MatMul/ReadVariableOpReadVariableOp'dense_26_matmul_readvariableop_resource*
_output_shapes
:	
А*
dtype02 
dense_26/MatMul/ReadVariableOpП
dense_26/MatMulMatMulinputs&dense_26/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_26/MatMulи
dense_26/BiasAdd/ReadVariableOpReadVariableOp(dense_26_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02!
dense_26/BiasAdd/ReadVariableOpж
dense_26/BiasAddBiasAdddense_26/MatMul:product:0'dense_26/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
dense_26/BiasAddt
dense_26/ReluReludense_26/BiasAdd:output:0*
T0*(
_output_shapes
:         А2
dense_26/Relu╪
/batch_normalization_23/batchnorm/ReadVariableOpReadVariableOp8batch_normalization_23_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype021
/batch_normalization_23/batchnorm/ReadVariableOpХ
&batch_normalization_23/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2(
&batch_normalization_23/batchnorm/add/yх
$batch_normalization_23/batchnorm/addAddV27batch_normalization_23/batchnorm/ReadVariableOp:value:0/batch_normalization_23/batchnorm/add/y:output:0*
T0*
_output_shapes	
:А2&
$batch_normalization_23/batchnorm/addй
&batch_normalization_23/batchnorm/RsqrtRsqrt(batch_normalization_23/batchnorm/add:z:0*
T0*
_output_shapes	
:А2(
&batch_normalization_23/batchnorm/Rsqrtф
3batch_normalization_23/batchnorm/mul/ReadVariableOpReadVariableOp<batch_normalization_23_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype025
3batch_normalization_23/batchnorm/mul/ReadVariableOpт
$batch_normalization_23/batchnorm/mulMul*batch_normalization_23/batchnorm/Rsqrt:y:0;batch_normalization_23/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2&
$batch_normalization_23/batchnorm/mul╤
&batch_normalization_23/batchnorm/mul_1Muldense_26/Relu:activations:0(batch_normalization_23/batchnorm/mul:z:0*
T0*(
_output_shapes
:         А2(
&batch_normalization_23/batchnorm/mul_1▐
1batch_normalization_23/batchnorm/ReadVariableOp_1ReadVariableOp:batch_normalization_23_batchnorm_readvariableop_1_resource*
_output_shapes	
:А*
dtype023
1batch_normalization_23/batchnorm/ReadVariableOp_1т
&batch_normalization_23/batchnorm/mul_2Mul9batch_normalization_23/batchnorm/ReadVariableOp_1:value:0(batch_normalization_23/batchnorm/mul:z:0*
T0*
_output_shapes	
:А2(
&batch_normalization_23/batchnorm/mul_2▐
1batch_normalization_23/batchnorm/ReadVariableOp_2ReadVariableOp:batch_normalization_23_batchnorm_readvariableop_2_resource*
_output_shapes	
:А*
dtype023
1batch_normalization_23/batchnorm/ReadVariableOp_2р
$batch_normalization_23/batchnorm/subSub9batch_normalization_23/batchnorm/ReadVariableOp_2:value:0*batch_normalization_23/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А2&
$batch_normalization_23/batchnorm/subт
&batch_normalization_23/batchnorm/add_1AddV2*batch_normalization_23/batchnorm/mul_1:z:0(batch_normalization_23/batchnorm/sub:z:0*
T0*(
_output_shapes
:         А2(
&batch_normalization_23/batchnorm/add_1Х
dropout_29/IdentityIdentity*batch_normalization_23/batchnorm/add_1:z:0*
T0*(
_output_shapes
:         А2
dropout_29/Identityn
reshape_3/ShapeShapedropout_29/Identity:output:0*
T0*
_output_shapes
:2
reshape_3/ShapeИ
reshape_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
reshape_3/strided_slice/stackМ
reshape_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_3/strided_slice/stack_1М
reshape_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2!
reshape_3/strided_slice/stack_2Ю
reshape_3/strided_sliceStridedSlicereshape_3/Shape:output:0&reshape_3/strided_slice/stack:output:0(reshape_3/strided_slice/stack_1:output:0(reshape_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
reshape_3/strided_slicex
reshape_3/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_3/Reshape/shape/1x
reshape_3/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
reshape_3/Reshape/shape/2x
reshape_3/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : 2
reshape_3/Reshape/shape/3Ў
reshape_3/Reshape/shapePack reshape_3/strided_slice:output:0"reshape_3/Reshape/shape/1:output:0"reshape_3/Reshape/shape/2:output:0"reshape_3/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
reshape_3/Reshape/shapeл
reshape_3/ReshapeReshapedropout_29/Identity:output:0 reshape_3/Reshape/shape:output:0*
T0*/
_output_shapes
:          2
reshape_3/Reshape~
conv2d_transpose_9/ShapeShapereshape_3/Reshape:output:0*
T0*
_output_shapes
:2
conv2d_transpose_9/ShapeЪ
&conv2d_transpose_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2(
&conv2d_transpose_9/strided_slice/stackЮ
(conv2d_transpose_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_9/strided_slice/stack_1Ю
(conv2d_transpose_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2*
(conv2d_transpose_9/strided_slice/stack_2╘
 conv2d_transpose_9/strided_sliceStridedSlice!conv2d_transpose_9/Shape:output:0/conv2d_transpose_9/strided_slice/stack:output:01conv2d_transpose_9/strided_slice/stack_1:output:01conv2d_transpose_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2"
 conv2d_transpose_9/strided_slicez
conv2d_transpose_9/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_9/stack/1z
conv2d_transpose_9/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_9/stack/2z
conv2d_transpose_9/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2
conv2d_transpose_9/stack/3Д
conv2d_transpose_9/stackPack)conv2d_transpose_9/strided_slice:output:0#conv2d_transpose_9/stack/1:output:0#conv2d_transpose_9/stack/2:output:0#conv2d_transpose_9/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_9/stackЮ
(conv2d_transpose_9/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2*
(conv2d_transpose_9/strided_slice_1/stackв
*conv2d_transpose_9/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_9/strided_slice_1/stack_1в
*conv2d_transpose_9/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2,
*conv2d_transpose_9/strided_slice_1/stack_2▐
"conv2d_transpose_9/strided_slice_1StridedSlice!conv2d_transpose_9/stack:output:01conv2d_transpose_9/strided_slice_1/stack:output:03conv2d_transpose_9/strided_slice_1/stack_1:output:03conv2d_transpose_9/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2$
"conv2d_transpose_9/strided_slice_1ь
2conv2d_transpose_9/conv2d_transpose/ReadVariableOpReadVariableOp;conv2d_transpose_9_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@ *
dtype024
2conv2d_transpose_9/conv2d_transpose/ReadVariableOp╛
#conv2d_transpose_9/conv2d_transposeConv2DBackpropInput!conv2d_transpose_9/stack:output:0:conv2d_transpose_9/conv2d_transpose/ReadVariableOp:value:0reshape_3/Reshape:output:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2%
#conv2d_transpose_9/conv2d_transpose┼
)conv2d_transpose_9/BiasAdd/ReadVariableOpReadVariableOp2conv2d_transpose_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype02+
)conv2d_transpose_9/BiasAdd/ReadVariableOp▐
conv2d_transpose_9/BiasAddBiasAdd,conv2d_transpose_9/conv2d_transpose:output:01conv2d_transpose_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2
conv2d_transpose_9/BiasAddЩ
conv2d_transpose_9/ReluRelu#conv2d_transpose_9/BiasAdd:output:0*
T0*/
_output_shapes
:         @2
conv2d_transpose_9/Relu╣
%batch_normalization_24/ReadVariableOpReadVariableOp.batch_normalization_24_readvariableop_resource*
_output_shapes
:@*
dtype02'
%batch_normalization_24/ReadVariableOp┐
'batch_normalization_24/ReadVariableOp_1ReadVariableOp0batch_normalization_24_readvariableop_1_resource*
_output_shapes
:@*
dtype02)
'batch_normalization_24/ReadVariableOp_1ь
6batch_normalization_24/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_24_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype028
6batch_normalization_24/FusedBatchNormV3/ReadVariableOpЄ
8batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_24_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02:
8batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1є
'batch_normalization_24/FusedBatchNormV3FusedBatchNormV3%conv2d_transpose_9/Relu:activations:0-batch_normalization_24/ReadVariableOp:value:0/batch_normalization_24/ReadVariableOp_1:value:0>batch_normalization_24/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
is_training( 2)
'batch_normalization_24/FusedBatchNormV3Э
dropout_30/IdentityIdentity+batch_normalization_24/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         @2
dropout_30/IdentityВ
conv2d_transpose_10/ShapeShapedropout_30/Identity:output:0*
T0*
_output_shapes
:2
conv2d_transpose_10/ShapeЬ
'conv2d_transpose_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_10/strided_slice/stackа
)conv2d_transpose_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_10/strided_slice/stack_1а
)conv2d_transpose_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_10/strided_slice/stack_2┌
!conv2d_transpose_10/strided_sliceStridedSlice"conv2d_transpose_10/Shape:output:00conv2d_transpose_10/strided_slice/stack:output:02conv2d_transpose_10/strided_slice/stack_1:output:02conv2d_transpose_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_10/strided_slice|
conv2d_transpose_10/stack/1Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_10/stack/1|
conv2d_transpose_10/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_10/stack/2|
conv2d_transpose_10/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_10/stack/3К
conv2d_transpose_10/stackPack*conv2d_transpose_10/strided_slice:output:0$conv2d_transpose_10/stack/1:output:0$conv2d_transpose_10/stack/2:output:0$conv2d_transpose_10/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_10/stackа
)conv2d_transpose_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_10/strided_slice_1/stackд
+conv2d_transpose_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_10/strided_slice_1/stack_1д
+conv2d_transpose_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_10/strided_slice_1/stack_2ф
#conv2d_transpose_10/strided_slice_1StridedSlice"conv2d_transpose_10/stack:output:02conv2d_transpose_10/strided_slice_1/stack:output:04conv2d_transpose_10/strided_slice_1/stack_1:output:04conv2d_transpose_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_10/strided_slice_1я
3conv2d_transpose_10/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_10_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype025
3conv2d_transpose_10/conv2d_transpose/ReadVariableOp─
$conv2d_transpose_10/conv2d_transposeConv2DBackpropInput"conv2d_transpose_10/stack:output:0;conv2d_transpose_10/conv2d_transpose/ReadVariableOp:value:0dropout_30/Identity:output:0*
T0*/
_output_shapes
:            *
paddingSAME*
strides
2&
$conv2d_transpose_10/conv2d_transpose╚
*conv2d_transpose_10/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype02,
*conv2d_transpose_10/BiasAdd/ReadVariableOpт
conv2d_transpose_10/BiasAddBiasAdd-conv2d_transpose_10/conv2d_transpose:output:02conv2d_transpose_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:            2
conv2d_transpose_10/BiasAddЬ
conv2d_transpose_10/ReluRelu$conv2d_transpose_10/BiasAdd:output:0*
T0*/
_output_shapes
:            2
conv2d_transpose_10/Relu╣
%batch_normalization_25/ReadVariableOpReadVariableOp.batch_normalization_25_readvariableop_resource*
_output_shapes
: *
dtype02'
%batch_normalization_25/ReadVariableOp┐
'batch_normalization_25/ReadVariableOp_1ReadVariableOp0batch_normalization_25_readvariableop_1_resource*
_output_shapes
: *
dtype02)
'batch_normalization_25/ReadVariableOp_1ь
6batch_normalization_25/FusedBatchNormV3/ReadVariableOpReadVariableOp?batch_normalization_25_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype028
6batch_normalization_25/FusedBatchNormV3/ReadVariableOpЄ
8batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpAbatch_normalization_25_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02:
8batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1Ї
'batch_normalization_25/FusedBatchNormV3FusedBatchNormV3&conv2d_transpose_10/Relu:activations:0-batch_normalization_25/ReadVariableOp:value:0/batch_normalization_25/ReadVariableOp_1:value:0>batch_normalization_25/FusedBatchNormV3/ReadVariableOp:value:0@batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:            : : : : :*
epsilon%oГ:*
is_training( 2)
'batch_normalization_25/FusedBatchNormV3Э
dropout_31/IdentityIdentity+batch_normalization_25/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:            2
dropout_31/IdentityВ
conv2d_transpose_11/ShapeShapedropout_31/Identity:output:0*
T0*
_output_shapes
:2
conv2d_transpose_11/ShapeЬ
'conv2d_transpose_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2)
'conv2d_transpose_11/strided_slice/stackа
)conv2d_transpose_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_11/strided_slice/stack_1а
)conv2d_transpose_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2+
)conv2d_transpose_11/strided_slice/stack_2┌
!conv2d_transpose_11/strided_sliceStridedSlice"conv2d_transpose_11/Shape:output:00conv2d_transpose_11/strided_slice/stack:output:02conv2d_transpose_11/strided_slice/stack_1:output:02conv2d_transpose_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2#
!conv2d_transpose_11/strided_slice|
conv2d_transpose_11/stack/1Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_11/stack/1|
conv2d_transpose_11/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2
conv2d_transpose_11/stack/2|
conv2d_transpose_11/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2
conv2d_transpose_11/stack/3К
conv2d_transpose_11/stackPack*conv2d_transpose_11/strided_slice:output:0$conv2d_transpose_11/stack/1:output:0$conv2d_transpose_11/stack/2:output:0$conv2d_transpose_11/stack/3:output:0*
N*
T0*
_output_shapes
:2
conv2d_transpose_11/stackа
)conv2d_transpose_11/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 2+
)conv2d_transpose_11/strided_slice_1/stackд
+conv2d_transpose_11/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_11/strided_slice_1/stack_1д
+conv2d_transpose_11/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2-
+conv2d_transpose_11/strided_slice_1/stack_2ф
#conv2d_transpose_11/strided_slice_1StridedSlice"conv2d_transpose_11/stack:output:02conv2d_transpose_11/strided_slice_1/stack:output:04conv2d_transpose_11/strided_slice_1/stack_1:output:04conv2d_transpose_11/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2%
#conv2d_transpose_11/strided_slice_1я
3conv2d_transpose_11/conv2d_transpose/ReadVariableOpReadVariableOp<conv2d_transpose_11_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype025
3conv2d_transpose_11/conv2d_transpose/ReadVariableOp─
$conv2d_transpose_11/conv2d_transposeConv2DBackpropInput"conv2d_transpose_11/stack:output:0;conv2d_transpose_11/conv2d_transpose/ReadVariableOp:value:0dropout_31/Identity:output:0*
T0*/
_output_shapes
:           *
paddingSAME*
strides
2&
$conv2d_transpose_11/conv2d_transpose╚
*conv2d_transpose_11/BiasAdd/ReadVariableOpReadVariableOp3conv2d_transpose_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02,
*conv2d_transpose_11/BiasAdd/ReadVariableOpт
conv2d_transpose_11/BiasAddBiasAdd-conv2d_transpose_11/conv2d_transpose:output:02conv2d_transpose_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:           2
conv2d_transpose_11/BiasAddЬ
conv2d_transpose_11/ReluRelu$conv2d_transpose_11/BiasAdd:output:0*
T0*/
_output_shapes
:           2
conv2d_transpose_11/Relu╚
IdentityIdentity&conv2d_transpose_11/Relu:activations:00^batch_normalization_23/batchnorm/ReadVariableOp2^batch_normalization_23/batchnorm/ReadVariableOp_12^batch_normalization_23/batchnorm/ReadVariableOp_24^batch_normalization_23/batchnorm/mul/ReadVariableOp7^batch_normalization_24/FusedBatchNormV3/ReadVariableOp9^batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_24/ReadVariableOp(^batch_normalization_24/ReadVariableOp_17^batch_normalization_25/FusedBatchNormV3/ReadVariableOp9^batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1&^batch_normalization_25/ReadVariableOp(^batch_normalization_25/ReadVariableOp_1+^conv2d_transpose_10/BiasAdd/ReadVariableOp4^conv2d_transpose_10/conv2d_transpose/ReadVariableOp+^conv2d_transpose_11/BiasAdd/ReadVariableOp4^conv2d_transpose_11/conv2d_transpose/ReadVariableOp*^conv2d_transpose_9/BiasAdd/ReadVariableOp3^conv2d_transpose_9/conv2d_transpose/ReadVariableOp ^dense_26/BiasAdd/ReadVariableOp^dense_26/MatMul/ReadVariableOp*
T0*/
_output_shapes
:           2

Identity"
identityIdentity:output:0*v
_input_shapese
c:         
::::::::::::::::::::2b
/batch_normalization_23/batchnorm/ReadVariableOp/batch_normalization_23/batchnorm/ReadVariableOp2f
1batch_normalization_23/batchnorm/ReadVariableOp_11batch_normalization_23/batchnorm/ReadVariableOp_12f
1batch_normalization_23/batchnorm/ReadVariableOp_21batch_normalization_23/batchnorm/ReadVariableOp_22j
3batch_normalization_23/batchnorm/mul/ReadVariableOp3batch_normalization_23/batchnorm/mul/ReadVariableOp2p
6batch_normalization_24/FusedBatchNormV3/ReadVariableOp6batch_normalization_24/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_24/FusedBatchNormV3/ReadVariableOp_18batch_normalization_24/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_24/ReadVariableOp%batch_normalization_24/ReadVariableOp2R
'batch_normalization_24/ReadVariableOp_1'batch_normalization_24/ReadVariableOp_12p
6batch_normalization_25/FusedBatchNormV3/ReadVariableOp6batch_normalization_25/FusedBatchNormV3/ReadVariableOp2t
8batch_normalization_25/FusedBatchNormV3/ReadVariableOp_18batch_normalization_25/FusedBatchNormV3/ReadVariableOp_12N
%batch_normalization_25/ReadVariableOp%batch_normalization_25/ReadVariableOp2R
'batch_normalization_25/ReadVariableOp_1'batch_normalization_25/ReadVariableOp_12X
*conv2d_transpose_10/BiasAdd/ReadVariableOp*conv2d_transpose_10/BiasAdd/ReadVariableOp2j
3conv2d_transpose_10/conv2d_transpose/ReadVariableOp3conv2d_transpose_10/conv2d_transpose/ReadVariableOp2X
*conv2d_transpose_11/BiasAdd/ReadVariableOp*conv2d_transpose_11/BiasAdd/ReadVariableOp2j
3conv2d_transpose_11/conv2d_transpose/ReadVariableOp3conv2d_transpose_11/conv2d_transpose/ReadVariableOp2V
)conv2d_transpose_9/BiasAdd/ReadVariableOp)conv2d_transpose_9/BiasAdd/ReadVariableOp2h
2conv2d_transpose_9/conv2d_transpose/ReadVariableOp2conv2d_transpose_9/conv2d_transpose/ReadVariableOp2B
dense_26/BiasAdd/ReadVariableOpdense_26/BiasAdd/ReadVariableOp2@
dense_26/MatMul/ReadVariableOpdense_26/MatMul/ReadVariableOp:O K
'
_output_shapes
:         

 
_user_specified_nameinputs
ф
К
S__inference_batch_normalization_23_layer_call_and_return_conditional_losses_2231075

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identityИвbatchnorm/ReadVariableOpвbatchnorm/ReadVariableOp_1вbatchnorm/ReadVariableOp_2вbatchnorm/mul/ReadVariableOpУ
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yЙ
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:А2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:А2
batchnorm/RsqrtЯ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype02
batchnorm/mul/ReadVariableOpЖ
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:         А2
batchnorm/mul_1Щ
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:А*
dtype02
batchnorm/ReadVariableOp_1Ж
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:А2
batchnorm/mul_2Щ
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:А*
dtype02
batchnorm/ReadVariableOp_2Д
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А2
batchnorm/subЖ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         А2
batchnorm/add_1▄
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         А::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
ф$
¤
P__inference_conv2d_transpose_10_layer_call_and_return_conditional_losses_2229886

inputs,
(conv2d_transpose_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2т
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
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ь
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2	
stack/3В
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ь
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3│
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02!
conv2d_transpose/ReadVariableOpЁ
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                            *
paddingSAME*
strides
2
conv2d_transposeМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype02
BiasAdd/ReadVariableOpд
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                            2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+                            2
Relu╗
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+                           @::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
│
e
G__inference_dropout_31_layer_call_and_return_conditional_losses_2231319

inputs

identity_1t
IdentityIdentityinputs*
T0*A
_output_shapes/
-:+                            2

IdentityГ

Identity_1IdentityIdentity:output:0*
T0*A
_output_shapes/
-:+                            2

Identity_1"!

identity_1Identity_1:output:0*@
_input_shapes/
-:+                            :i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
╧
Ъ
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_2229809

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1Р
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           @::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
р

*__inference_dense_26_layer_call_fn_2231019

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallЎ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_26_layer_call_and_return_conditional_losses_22300602
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*.
_input_shapes
:         
::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         

 
_user_specified_nameinputs
М
f
G__inference_dropout_29_layer_call_and_return_conditional_losses_2231113

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:         А2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╡
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:         А*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=2
dropout/GreaterEqual/y┐
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:         А2
dropout/GreaterEqualА
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:         А2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:         А2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╧
Ъ
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_2229958

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1Р
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                            ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
█
Й
4__inference_conv2d_transpose_9_layer_call_fn_2229747

inputs
unknown
	unknown_0
identityИвStatefulPartitionedCallЩ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_conv2d_transpose_9_layer_call_and_return_conditional_losses_22297372
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+                            ::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
щ
Ч
)__inference_decoder_layer_call_fn_2230565
input_11
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18
identityИвStatefulPartitionedCallГ
StatefulPartitionedCallStatefulPartitionedCallinput_11unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_decoder_layer_call_and_return_conditional_losses_22305222
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           2

Identity"
identityIdentity:output:0*v
_input_shapese
c:         
::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:         

"
_user_specified_name
input_11
Б
H
,__inference_dropout_30_layer_call_fn_2231238

inputs
identity▀
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_dropout_30_layer_call_and_return_conditional_losses_22302202
PartitionedCallЖ
IdentityIdentityPartitionedCall:output:0*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+                           @:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
и
e
,__inference_dropout_29_layer_call_fn_2231123

inputs
identityИвStatefulPartitionedCall▐
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_dropout_29_layer_call_and_return_conditional_losses_22301232
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*'
_input_shapes
:         А22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
щ
b
F__inference_reshape_3_layer_call_and_return_conditional_losses_2231142

inputs
identityD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2т
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_sliced
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/1d
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2
Reshape/shape/2d
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : 2
Reshape/shape/3║
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2
Reshape/shapew
ReshapeReshapeinputsReshape/shape:output:0*
T0*/
_output_shapes
:          2	
Reshapel
IdentityIdentityReshape:output:0*
T0*/
_output_shapes
:          2

Identity"
identityIdentity:output:0*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
гB
│	
D__inference_decoder_layer_call_and_return_conditional_losses_2230309
input_11
dense_26_2230071
dense_26_2230073"
batch_normalization_23_2230102"
batch_normalization_23_2230104"
batch_normalization_23_2230106"
batch_normalization_23_2230108
conv2d_transpose_9_2230163
conv2d_transpose_9_2230165"
batch_normalization_24_2230194"
batch_normalization_24_2230196"
batch_normalization_24_2230198"
batch_normalization_24_2230200
conv2d_transpose_10_2230233
conv2d_transpose_10_2230235"
batch_normalization_25_2230264"
batch_normalization_25_2230266"
batch_normalization_25_2230268"
batch_normalization_25_2230270
conv2d_transpose_11_2230303
conv2d_transpose_11_2230305
identityИв.batch_normalization_23/StatefulPartitionedCallв.batch_normalization_24/StatefulPartitionedCallв.batch_normalization_25/StatefulPartitionedCallв+conv2d_transpose_10/StatefulPartitionedCallв+conv2d_transpose_11/StatefulPartitionedCallв*conv2d_transpose_9/StatefulPartitionedCallв dense_26/StatefulPartitionedCallв"dropout_29/StatefulPartitionedCallв"dropout_30/StatefulPartitionedCallв"dropout_31/StatefulPartitionedCallЪ
 dense_26/StatefulPartitionedCallStatefulPartitionedCallinput_11dense_26_2230071dense_26_2230073*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_26_layer_call_and_return_conditional_losses_22300602"
 dense_26/StatefulPartitionedCall├
.batch_normalization_23/StatefulPartitionedCallStatefulPartitionedCall)dense_26/StatefulPartitionedCall:output:0batch_normalization_23_2230102batch_normalization_23_2230104batch_normalization_23_2230106batch_normalization_23_2230108*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *\
fWRU
S__inference_batch_normalization_23_layer_call_and_return_conditional_losses_222965820
.batch_normalization_23/StatefulPartitionedCallе
"dropout_29/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_dropout_29_layer_call_and_return_conditional_losses_22301232$
"dropout_29/StatefulPartitionedCallЕ
reshape_3/PartitionedCallPartitionedCall+dropout_29/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_reshape_3_layer_call_and_return_conditional_losses_22301552
reshape_3/PartitionedCall 
*conv2d_transpose_9/StatefulPartitionedCallStatefulPartitionedCall"reshape_3/PartitionedCall:output:0conv2d_transpose_9_2230163conv2d_transpose_9_2230165*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_conv2d_transpose_9_layer_call_and_return_conditional_losses_22297372,
*conv2d_transpose_9/StatefulPartitionedCallц
.batch_normalization_24/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_9/StatefulPartitionedCall:output:0batch_normalization_24_2230194batch_normalization_24_2230196batch_normalization_24_2230198batch_normalization_24_2230200*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *\
fWRU
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_222980920
.batch_normalization_24/StatefulPartitionedCallу
"dropout_30/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_24/StatefulPartitionedCall:output:0#^dropout_29/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_dropout_30_layer_call_and_return_conditional_losses_22302152$
"dropout_30/StatefulPartitionedCallН
+conv2d_transpose_10/StatefulPartitionedCallStatefulPartitionedCall+dropout_30/StatefulPartitionedCall:output:0conv2d_transpose_10_2230233conv2d_transpose_10_2230235*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_conv2d_transpose_10_layer_call_and_return_conditional_losses_22298862-
+conv2d_transpose_10/StatefulPartitionedCallч
.batch_normalization_25/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_10/StatefulPartitionedCall:output:0batch_normalization_25_2230264batch_normalization_25_2230266batch_normalization_25_2230268batch_normalization_25_2230270*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *\
fWRU
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_222995820
.batch_normalization_25/StatefulPartitionedCallу
"dropout_31/StatefulPartitionedCallStatefulPartitionedCall7batch_normalization_25/StatefulPartitionedCall:output:0#^dropout_30/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_dropout_31_layer_call_and_return_conditional_losses_22302852$
"dropout_31/StatefulPartitionedCallН
+conv2d_transpose_11/StatefulPartitionedCallStatefulPartitionedCall+dropout_31/StatefulPartitionedCall:output:0conv2d_transpose_11_2230303conv2d_transpose_11_2230305*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_22300352-
+conv2d_transpose_11/StatefulPartitionedCall╨
IdentityIdentity4conv2d_transpose_11/StatefulPartitionedCall:output:0/^batch_normalization_23/StatefulPartitionedCall/^batch_normalization_24/StatefulPartitionedCall/^batch_normalization_25/StatefulPartitionedCall,^conv2d_transpose_10/StatefulPartitionedCall,^conv2d_transpose_11/StatefulPartitionedCall+^conv2d_transpose_9/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall#^dropout_29/StatefulPartitionedCall#^dropout_30/StatefulPartitionedCall#^dropout_31/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           2

Identity"
identityIdentity:output:0*v
_input_shapese
c:         
::::::::::::::::::::2`
.batch_normalization_23/StatefulPartitionedCall.batch_normalization_23/StatefulPartitionedCall2`
.batch_normalization_24/StatefulPartitionedCall.batch_normalization_24/StatefulPartitionedCall2`
.batch_normalization_25/StatefulPartitionedCall.batch_normalization_25/StatefulPartitionedCall2Z
+conv2d_transpose_10/StatefulPartitionedCall+conv2d_transpose_10/StatefulPartitionedCall2Z
+conv2d_transpose_11/StatefulPartitionedCall+conv2d_transpose_11/StatefulPartitionedCall2X
*conv2d_transpose_9/StatefulPartitionedCall*conv2d_transpose_9/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall2H
"dropout_29/StatefulPartitionedCall"dropout_29/StatefulPartitionedCall2H
"dropout_30/StatefulPartitionedCall"dropout_30/StatefulPartitionedCall2H
"dropout_31/StatefulPartitionedCall"dropout_31/StatefulPartitionedCall:Q M
'
_output_shapes
:         

"
_user_specified_name
input_11
╜
л
8__inference_batch_normalization_23_layer_call_fn_2231088

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identityИвStatefulPartitionedCallЬ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *\
fWRU
S__inference_batch_normalization_23_layer_call_and_return_conditional_losses_22296582
StatefulPartitionedCallП
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         А::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
ї	
▐
E__inference_dense_26_layer_call_and_return_conditional_losses_2230060

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         А2
ReluШ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*.
_input_shapes
:         
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         

 
_user_specified_nameinputs
├=
─
D__inference_decoder_layer_call_and_return_conditional_losses_2230364
input_11
dense_26_2230312
dense_26_2230314"
batch_normalization_23_2230317"
batch_normalization_23_2230319"
batch_normalization_23_2230321"
batch_normalization_23_2230323
conv2d_transpose_9_2230328
conv2d_transpose_9_2230330"
batch_normalization_24_2230333"
batch_normalization_24_2230335"
batch_normalization_24_2230337"
batch_normalization_24_2230339
conv2d_transpose_10_2230343
conv2d_transpose_10_2230345"
batch_normalization_25_2230348"
batch_normalization_25_2230350"
batch_normalization_25_2230352"
batch_normalization_25_2230354
conv2d_transpose_11_2230358
conv2d_transpose_11_2230360
identityИв.batch_normalization_23/StatefulPartitionedCallв.batch_normalization_24/StatefulPartitionedCallв.batch_normalization_25/StatefulPartitionedCallв+conv2d_transpose_10/StatefulPartitionedCallв+conv2d_transpose_11/StatefulPartitionedCallв*conv2d_transpose_9/StatefulPartitionedCallв dense_26/StatefulPartitionedCallЪ
 dense_26/StatefulPartitionedCallStatefulPartitionedCallinput_11dense_26_2230312dense_26_2230314*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_dense_26_layer_call_and_return_conditional_losses_22300602"
 dense_26/StatefulPartitionedCall┼
.batch_normalization_23/StatefulPartitionedCallStatefulPartitionedCall)dense_26/StatefulPartitionedCall:output:0batch_normalization_23_2230317batch_normalization_23_2230319batch_normalization_23_2230321batch_normalization_23_2230323*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *\
fWRU
S__inference_batch_normalization_23_layer_call_and_return_conditional_losses_222969120
.batch_normalization_23/StatefulPartitionedCallН
dropout_29/PartitionedCallPartitionedCall7batch_normalization_23/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_dropout_29_layer_call_and_return_conditional_losses_22301282
dropout_29/PartitionedCall¤
reshape_3/PartitionedCallPartitionedCall#dropout_29/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_reshape_3_layer_call_and_return_conditional_losses_22301552
reshape_3/PartitionedCall 
*conv2d_transpose_9/StatefulPartitionedCallStatefulPartitionedCall"reshape_3/PartitionedCall:output:0conv2d_transpose_9_2230328conv2d_transpose_9_2230330*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *X
fSRQ
O__inference_conv2d_transpose_9_layer_call_and_return_conditional_losses_22297372,
*conv2d_transpose_9/StatefulPartitionedCallш
.batch_normalization_24/StatefulPartitionedCallStatefulPartitionedCall3conv2d_transpose_9/StatefulPartitionedCall:output:0batch_normalization_24_2230333batch_normalization_24_2230335batch_normalization_24_2230337batch_normalization_24_2230339*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *\
fWRU
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_222984020
.batch_normalization_24/StatefulPartitionedCallж
dropout_30/PartitionedCallPartitionedCall7batch_normalization_24/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_dropout_30_layer_call_and_return_conditional_losses_22302202
dropout_30/PartitionedCallЕ
+conv2d_transpose_10/StatefulPartitionedCallStatefulPartitionedCall#dropout_30/PartitionedCall:output:0conv2d_transpose_10_2230343conv2d_transpose_10_2230345*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_conv2d_transpose_10_layer_call_and_return_conditional_losses_22298862-
+conv2d_transpose_10/StatefulPartitionedCallщ
.batch_normalization_25/StatefulPartitionedCallStatefulPartitionedCall4conv2d_transpose_10/StatefulPartitionedCall:output:0batch_normalization_25_2230348batch_normalization_25_2230350batch_normalization_25_2230352batch_normalization_25_2230354*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            *&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *\
fWRU
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_222998920
.batch_normalization_25/StatefulPartitionedCallж
dropout_31/PartitionedCallPartitionedCall7batch_normalization_25/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_dropout_31_layer_call_and_return_conditional_losses_22302902
dropout_31/PartitionedCallЕ
+conv2d_transpose_11/StatefulPartitionedCallStatefulPartitionedCall#dropout_31/PartitionedCall:output:0conv2d_transpose_11_2230358conv2d_transpose_11_2230360*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *Y
fTRR
P__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_22300352-
+conv2d_transpose_11/StatefulPartitionedCallс
IdentityIdentity4conv2d_transpose_11/StatefulPartitionedCall:output:0/^batch_normalization_23/StatefulPartitionedCall/^batch_normalization_24/StatefulPartitionedCall/^batch_normalization_25/StatefulPartitionedCall,^conv2d_transpose_10/StatefulPartitionedCall,^conv2d_transpose_11/StatefulPartitionedCall+^conv2d_transpose_9/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           2

Identity"
identityIdentity:output:0*v
_input_shapese
c:         
::::::::::::::::::::2`
.batch_normalization_23/StatefulPartitionedCall.batch_normalization_23/StatefulPartitionedCall2`
.batch_normalization_24/StatefulPartitionedCall.batch_normalization_24/StatefulPartitionedCall2`
.batch_normalization_25/StatefulPartitionedCall.batch_normalization_25/StatefulPartitionedCall2Z
+conv2d_transpose_10/StatefulPartitionedCall+conv2d_transpose_10/StatefulPartitionedCall2Z
+conv2d_transpose_11/StatefulPartitionedCall+conv2d_transpose_11/StatefulPartitionedCall2X
*conv2d_transpose_9/StatefulPartitionedCall*conv2d_transpose_9/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall:Q M
'
_output_shapes
:         

"
_user_specified_name
input_11
Я
У
%__inference_signature_wrapper_2230612
input_11
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18
identityИвStatefulPartitionedCall╧
StatefulPartitionedCallStatefulPartitionedCallinput_11unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:           *6
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *+
f&R$
"__inference__wrapped_model_22295622
StatefulPartitionedCallЦ
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:           2

Identity"
identityIdentity:output:0*v
_input_shapese
c:         
::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:Q M
'
_output_shapes
:         

"
_user_specified_name
input_11
▌
Х
)__inference_decoder_layer_call_fn_2230954

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18
identityИвStatefulPartitionedCall√
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18* 
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           *0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_decoder_layer_call_and_return_conditional_losses_22304222
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           2

Identity"
identityIdentity:output:0*v
_input_shapese
c:         
::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         

 
_user_specified_nameinputs
│
e
G__inference_dropout_31_layer_call_and_return_conditional_losses_2230290

inputs

identity_1t
IdentityIdentityinputs*
T0*A
_output_shapes/
-:+                            2

IdentityГ

Identity_1IdentityIdentity:output:0*
T0*A
_output_shapes/
-:+                            2

Identity_1"!

identity_1Identity_1:output:0*@
_input_shapes/
-:+                            :i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
п0
╠
S__inference_batch_normalization_23_layer_call_and_return_conditional_losses_2231055

inputs
assignmovingavg_2231030
assignmovingavg_1_2231036)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identityИв#AssignMovingAvg/AssignSubVariableOpвAssignMovingAvg/ReadVariableOpв%AssignMovingAvg_1/AssignSubVariableOpв AssignMovingAvg_1/ReadVariableOpвbatchnorm/ReadVariableOpвbatchnorm/mul/ReadVariableOpК
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indicesР
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	А*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	А2
moments/StopGradientе
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:         А2
moments/SquaredDifferenceТ
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices│
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	А*
	keep_dims(2
moments/varianceБ
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:А*
squeeze_dims
 2
moments/SqueezeЙ
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:А*
squeeze_dims
 2
moments/Squeeze_1═
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0**
_class 
loc:@AssignMovingAvg/2231030*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2
AssignMovingAvg/decayХ
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_2231030*
_output_shapes	
:А*
dtype02 
AssignMovingAvg/ReadVariableOpє
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@AssignMovingAvg/2231030*
_output_shapes	
:А2
AssignMovingAvg/subъ
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@AssignMovingAvg/2231030*
_output_shapes	
:А2
AssignMovingAvg/mul▒
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_2231030AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0**
_class 
loc:@AssignMovingAvg/2231030*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOp╙
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*,
_class"
 loc:@AssignMovingAvg_1/2231036*
_output_shapes
: *
dtype0*
valueB
 *
╫#<2
AssignMovingAvg_1/decayЫ
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_2231036*
_output_shapes	
:А*
dtype02"
 AssignMovingAvg_1/ReadVariableOp¤
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/2231036*
_output_shapes	
:А2
AssignMovingAvg_1/subЇ
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*,
_class"
 loc:@AssignMovingAvg_1/2231036*
_output_shapes	
:А2
AssignMovingAvg_1/mul╜
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_2231036AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*,
_class"
 loc:@AssignMovingAvg_1/2231036*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:2
batchnorm/add/yГ
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:А2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:А2
batchnorm/RsqrtЯ
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype02
batchnorm/mul/ReadVariableOpЖ
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:         А2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:А2
batchnorm/mul_2У
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype02
batchnorm/ReadVariableOpВ
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А2
batchnorm/subЖ
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:         А2
batchnorm/add_1┤
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:         А::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
Ь
H
,__inference_dropout_29_layer_call_fn_2231128

inputs
identity╞
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:         А* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_dropout_29_layer_call_and_return_conditional_losses_22301282
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
и
G
+__inference_reshape_3_layer_call_fn_2231147

inputs
identity╠
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:          * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *O
fJRH
F__inference_reshape_3_layer_call_and_return_conditional_losses_22301552
PartitionedCallt
IdentityIdentityPartitionedCall:output:0*
T0*/
_output_shapes
:          2

Identity"
identityIdentity:output:0*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╬
e
G__inference_dropout_29_layer_call_and_return_conditional_losses_2231118

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:         А2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:         А2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:         А:P L
(
_output_shapes
:         А
 
_user_specified_nameinputs
╧
Ъ
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_2231258

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвAssignNewValueвAssignNewValue_1вFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
: *
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
: *
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ъ
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                            : : : : :*
epsilon%oГ:*
exponential_avg_factor%
╫#<2
FusedBatchNormV3н
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue╗
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1Р
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                            ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
ї	
▐
E__inference_dense_26_layer_call_and_return_conditional_losses_2231010

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpО
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	
А*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
MatMulН
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02
BiasAdd/ReadVariableOpВ
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2	
BiasAddY
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:         А2
ReluШ
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*(
_output_shapes
:         А2

Identity"
identityIdentity:output:0*.
_input_shapes
:         
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         

 
_user_specified_nameinputs
├
Ў
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_2231185

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identityИвFusedBatchNormV3/ReadVariableOpв!FusedBatchNormV3/ReadVariableOp_1вReadVariableOpвReadVariableOp_1t
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:@*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:@*
dtype02
ReadVariableOp_1з
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02!
FusedBatchNormV3/ReadVariableOpн
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1▄
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+                           @:@:@:@:@:*
epsilon%oГ:*
is_training( 2
FusedBatchNormV3ь
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+                           @::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_1:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
╓
f
G__inference_dropout_31_layer_call_and_return_conditional_losses_2231314

inputs
identityИc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?2
dropout/ConstН
dropout/MulMulinputsdropout/Const:output:0*
T0*A
_output_shapes/
-:+                            2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shape╬
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*A
_output_shapes/
-:+                            *
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=2
dropout/GreaterEqual/y╪
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*A
_output_shapes/
-:+                            2
dropout/GreaterEqualЩ
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*A
_output_shapes/
-:+                            2
dropout/CastФ
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*A
_output_shapes/
-:+                            2
dropout/Mul_1
IdentityIdentitydropout/Mul_1:z:0*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+                            :i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
ф$
¤
P__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_2230035

inputs,
(conv2d_transpose_readvariableop_resource#
biasadd_readvariableop_resource
identityИвBiasAdd/ReadVariableOpвconv2d_transpose/ReadVariableOpD
ShapeShapeinputs*
T0*
_output_shapes
:2
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
strided_slice/stack_2т
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
valueB:2
strided_slice_1/stack|
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_1|
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_1/stack_2ь
strided_slice_1StridedSliceShape:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_1x
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack|
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_1|
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_2/stack_2ь
strided_slice_2StridedSliceShape:output:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_2P
mul/yConst*
_output_shapes
: *
dtype0*
value	B :2
mul/y\
mulMulstrided_slice_1:output:0mul/y:output:0*
T0*
_output_shapes
: 2
mulT
mul_1/yConst*
_output_shapes
: *
dtype0*
value	B :2	
mul_1/yb
mul_1Mulstrided_slice_2:output:0mul_1/y:output:0*
T0*
_output_shapes
: 2
mul_1T
stack/3Const*
_output_shapes
: *
dtype0*
value	B :2	
stack/3В
stackPackstrided_slice:output:0mul:z:0	mul_1:z:0stack/3:output:0*
N*
T0*
_output_shapes
:2
stackx
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB: 2
strided_slice_3/stack|
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_1|
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2
strided_slice_3/stack_2ь
strided_slice_3StridedSlicestack:output:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2
strided_slice_3│
conv2d_transpose/ReadVariableOpReadVariableOp(conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02!
conv2d_transpose/ReadVariableOpЁ
conv2d_transposeConv2DBackpropInputstack:output:0'conv2d_transpose/ReadVariableOp:value:0inputs*
T0*A
_output_shapes/
-:+                           *
paddingSAME*
strides
2
conv2d_transposeМ
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOpд
BiasAddBiasAddconv2d_transpose:output:0BiasAdd/ReadVariableOp:value:0*
T0*A
_output_shapes/
-:+                           2	
BiasAddr
ReluReluBiasAdd:output:0*
T0*A
_output_shapes/
-:+                           2
Relu╗
IdentityIdentityRelu:activations:0^BiasAdd/ReadVariableOp ^conv2d_transpose/ReadVariableOp*
T0*A
_output_shapes/
-:+                           2

Identity"
identityIdentity:output:0*H
_input_shapes7
5:+                            ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2B
conv2d_transpose/ReadVariableOpconv2d_transpose/ReadVariableOp:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs
Ф┘
 
"__inference__wrapped_model_2229562
input_113
/decoder_dense_26_matmul_readvariableop_resource4
0decoder_dense_26_biasadd_readvariableop_resourceD
@decoder_batch_normalization_23_batchnorm_readvariableop_resourceH
Ddecoder_batch_normalization_23_batchnorm_mul_readvariableop_resourceF
Bdecoder_batch_normalization_23_batchnorm_readvariableop_1_resourceF
Bdecoder_batch_normalization_23_batchnorm_readvariableop_2_resourceG
Cdecoder_conv2d_transpose_9_conv2d_transpose_readvariableop_resource>
:decoder_conv2d_transpose_9_biasadd_readvariableop_resource:
6decoder_batch_normalization_24_readvariableop_resource<
8decoder_batch_normalization_24_readvariableop_1_resourceK
Gdecoder_batch_normalization_24_fusedbatchnormv3_readvariableop_resourceM
Idecoder_batch_normalization_24_fusedbatchnormv3_readvariableop_1_resourceH
Ddecoder_conv2d_transpose_10_conv2d_transpose_readvariableop_resource?
;decoder_conv2d_transpose_10_biasadd_readvariableop_resource:
6decoder_batch_normalization_25_readvariableop_resource<
8decoder_batch_normalization_25_readvariableop_1_resourceK
Gdecoder_batch_normalization_25_fusedbatchnormv3_readvariableop_resourceM
Idecoder_batch_normalization_25_fusedbatchnormv3_readvariableop_1_resourceH
Ddecoder_conv2d_transpose_11_conv2d_transpose_readvariableop_resource?
;decoder_conv2d_transpose_11_biasadd_readvariableop_resource
identityИв7decoder/batch_normalization_23/batchnorm/ReadVariableOpв9decoder/batch_normalization_23/batchnorm/ReadVariableOp_1в9decoder/batch_normalization_23/batchnorm/ReadVariableOp_2в;decoder/batch_normalization_23/batchnorm/mul/ReadVariableOpв>decoder/batch_normalization_24/FusedBatchNormV3/ReadVariableOpв@decoder/batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1в-decoder/batch_normalization_24/ReadVariableOpв/decoder/batch_normalization_24/ReadVariableOp_1в>decoder/batch_normalization_25/FusedBatchNormV3/ReadVariableOpв@decoder/batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1в-decoder/batch_normalization_25/ReadVariableOpв/decoder/batch_normalization_25/ReadVariableOp_1в2decoder/conv2d_transpose_10/BiasAdd/ReadVariableOpв;decoder/conv2d_transpose_10/conv2d_transpose/ReadVariableOpв2decoder/conv2d_transpose_11/BiasAdd/ReadVariableOpв;decoder/conv2d_transpose_11/conv2d_transpose/ReadVariableOpв1decoder/conv2d_transpose_9/BiasAdd/ReadVariableOpв:decoder/conv2d_transpose_9/conv2d_transpose/ReadVariableOpв'decoder/dense_26/BiasAdd/ReadVariableOpв&decoder/dense_26/MatMul/ReadVariableOp┴
&decoder/dense_26/MatMul/ReadVariableOpReadVariableOp/decoder_dense_26_matmul_readvariableop_resource*
_output_shapes
:	
А*
dtype02(
&decoder/dense_26/MatMul/ReadVariableOpй
decoder/dense_26/MatMulMatMulinput_11.decoder/dense_26/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
decoder/dense_26/MatMul└
'decoder/dense_26/BiasAdd/ReadVariableOpReadVariableOp0decoder_dense_26_biasadd_readvariableop_resource*
_output_shapes	
:А*
dtype02)
'decoder/dense_26/BiasAdd/ReadVariableOp╞
decoder/dense_26/BiasAddBiasAdd!decoder/dense_26/MatMul:product:0/decoder/dense_26/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:         А2
decoder/dense_26/BiasAddМ
decoder/dense_26/ReluRelu!decoder/dense_26/BiasAdd:output:0*
T0*(
_output_shapes
:         А2
decoder/dense_26/ReluЁ
7decoder/batch_normalization_23/batchnorm/ReadVariableOpReadVariableOp@decoder_batch_normalization_23_batchnorm_readvariableop_resource*
_output_shapes	
:А*
dtype029
7decoder/batch_normalization_23/batchnorm/ReadVariableOpе
.decoder/batch_normalization_23/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *oГ:20
.decoder/batch_normalization_23/batchnorm/add/yЕ
,decoder/batch_normalization_23/batchnorm/addAddV2?decoder/batch_normalization_23/batchnorm/ReadVariableOp:value:07decoder/batch_normalization_23/batchnorm/add/y:output:0*
T0*
_output_shapes	
:А2.
,decoder/batch_normalization_23/batchnorm/add┴
.decoder/batch_normalization_23/batchnorm/RsqrtRsqrt0decoder/batch_normalization_23/batchnorm/add:z:0*
T0*
_output_shapes	
:А20
.decoder/batch_normalization_23/batchnorm/Rsqrt№
;decoder/batch_normalization_23/batchnorm/mul/ReadVariableOpReadVariableOpDdecoder_batch_normalization_23_batchnorm_mul_readvariableop_resource*
_output_shapes	
:А*
dtype02=
;decoder/batch_normalization_23/batchnorm/mul/ReadVariableOpВ
,decoder/batch_normalization_23/batchnorm/mulMul2decoder/batch_normalization_23/batchnorm/Rsqrt:y:0Cdecoder/batch_normalization_23/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:А2.
,decoder/batch_normalization_23/batchnorm/mulё
.decoder/batch_normalization_23/batchnorm/mul_1Mul#decoder/dense_26/Relu:activations:00decoder/batch_normalization_23/batchnorm/mul:z:0*
T0*(
_output_shapes
:         А20
.decoder/batch_normalization_23/batchnorm/mul_1Ў
9decoder/batch_normalization_23/batchnorm/ReadVariableOp_1ReadVariableOpBdecoder_batch_normalization_23_batchnorm_readvariableop_1_resource*
_output_shapes	
:А*
dtype02;
9decoder/batch_normalization_23/batchnorm/ReadVariableOp_1В
.decoder/batch_normalization_23/batchnorm/mul_2MulAdecoder/batch_normalization_23/batchnorm/ReadVariableOp_1:value:00decoder/batch_normalization_23/batchnorm/mul:z:0*
T0*
_output_shapes	
:А20
.decoder/batch_normalization_23/batchnorm/mul_2Ў
9decoder/batch_normalization_23/batchnorm/ReadVariableOp_2ReadVariableOpBdecoder_batch_normalization_23_batchnorm_readvariableop_2_resource*
_output_shapes	
:А*
dtype02;
9decoder/batch_normalization_23/batchnorm/ReadVariableOp_2А
,decoder/batch_normalization_23/batchnorm/subSubAdecoder/batch_normalization_23/batchnorm/ReadVariableOp_2:value:02decoder/batch_normalization_23/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:А2.
,decoder/batch_normalization_23/batchnorm/subВ
.decoder/batch_normalization_23/batchnorm/add_1AddV22decoder/batch_normalization_23/batchnorm/mul_1:z:00decoder/batch_normalization_23/batchnorm/sub:z:0*
T0*(
_output_shapes
:         А20
.decoder/batch_normalization_23/batchnorm/add_1н
decoder/dropout_29/IdentityIdentity2decoder/batch_normalization_23/batchnorm/add_1:z:0*
T0*(
_output_shapes
:         А2
decoder/dropout_29/IdentityЖ
decoder/reshape_3/ShapeShape$decoder/dropout_29/Identity:output:0*
T0*
_output_shapes
:2
decoder/reshape_3/ShapeШ
%decoder/reshape_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 2'
%decoder/reshape_3/strided_slice/stackЬ
'decoder/reshape_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:2)
'decoder/reshape_3/strided_slice/stack_1Ь
'decoder/reshape_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:2)
'decoder/reshape_3/strided_slice/stack_2╬
decoder/reshape_3/strided_sliceStridedSlice decoder/reshape_3/Shape:output:0.decoder/reshape_3/strided_slice/stack:output:00decoder/reshape_3/strided_slice/stack_1:output:00decoder/reshape_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2!
decoder/reshape_3/strided_sliceИ
!decoder/reshape_3/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :2#
!decoder/reshape_3/Reshape/shape/1И
!decoder/reshape_3/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :2#
!decoder/reshape_3/Reshape/shape/2И
!decoder/reshape_3/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B : 2#
!decoder/reshape_3/Reshape/shape/3ж
decoder/reshape_3/Reshape/shapePack(decoder/reshape_3/strided_slice:output:0*decoder/reshape_3/Reshape/shape/1:output:0*decoder/reshape_3/Reshape/shape/2:output:0*decoder/reshape_3/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:2!
decoder/reshape_3/Reshape/shape╦
decoder/reshape_3/ReshapeReshape$decoder/dropout_29/Identity:output:0(decoder/reshape_3/Reshape/shape:output:0*
T0*/
_output_shapes
:          2
decoder/reshape_3/ReshapeЦ
 decoder/conv2d_transpose_9/ShapeShape"decoder/reshape_3/Reshape:output:0*
T0*
_output_shapes
:2"
 decoder/conv2d_transpose_9/Shapeк
.decoder/conv2d_transpose_9/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 20
.decoder/conv2d_transpose_9/strided_slice/stackо
0decoder/conv2d_transpose_9/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:22
0decoder/conv2d_transpose_9/strided_slice/stack_1о
0decoder/conv2d_transpose_9/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:22
0decoder/conv2d_transpose_9/strided_slice/stack_2Д
(decoder/conv2d_transpose_9/strided_sliceStridedSlice)decoder/conv2d_transpose_9/Shape:output:07decoder/conv2d_transpose_9/strided_slice/stack:output:09decoder/conv2d_transpose_9/strided_slice/stack_1:output:09decoder/conv2d_transpose_9/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2*
(decoder/conv2d_transpose_9/strided_sliceК
"decoder/conv2d_transpose_9/stack/1Const*
_output_shapes
: *
dtype0*
value	B :2$
"decoder/conv2d_transpose_9/stack/1К
"decoder/conv2d_transpose_9/stack/2Const*
_output_shapes
: *
dtype0*
value	B :2$
"decoder/conv2d_transpose_9/stack/2К
"decoder/conv2d_transpose_9/stack/3Const*
_output_shapes
: *
dtype0*
value	B :@2$
"decoder/conv2d_transpose_9/stack/3┤
 decoder/conv2d_transpose_9/stackPack1decoder/conv2d_transpose_9/strided_slice:output:0+decoder/conv2d_transpose_9/stack/1:output:0+decoder/conv2d_transpose_9/stack/2:output:0+decoder/conv2d_transpose_9/stack/3:output:0*
N*
T0*
_output_shapes
:2"
 decoder/conv2d_transpose_9/stackо
0decoder/conv2d_transpose_9/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 22
0decoder/conv2d_transpose_9/strided_slice_1/stack▓
2decoder/conv2d_transpose_9/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:24
2decoder/conv2d_transpose_9/strided_slice_1/stack_1▓
2decoder/conv2d_transpose_9/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:24
2decoder/conv2d_transpose_9/strided_slice_1/stack_2О
*decoder/conv2d_transpose_9/strided_slice_1StridedSlice)decoder/conv2d_transpose_9/stack:output:09decoder/conv2d_transpose_9/strided_slice_1/stack:output:0;decoder/conv2d_transpose_9/strided_slice_1/stack_1:output:0;decoder/conv2d_transpose_9/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2,
*decoder/conv2d_transpose_9/strided_slice_1Д
:decoder/conv2d_transpose_9/conv2d_transpose/ReadVariableOpReadVariableOpCdecoder_conv2d_transpose_9_conv2d_transpose_readvariableop_resource*&
_output_shapes
:@ *
dtype02<
:decoder/conv2d_transpose_9/conv2d_transpose/ReadVariableOpц
+decoder/conv2d_transpose_9/conv2d_transposeConv2DBackpropInput)decoder/conv2d_transpose_9/stack:output:0Bdecoder/conv2d_transpose_9/conv2d_transpose/ReadVariableOp:value:0"decoder/reshape_3/Reshape:output:0*
T0*/
_output_shapes
:         @*
paddingSAME*
strides
2-
+decoder/conv2d_transpose_9/conv2d_transpose▌
1decoder/conv2d_transpose_9/BiasAdd/ReadVariableOpReadVariableOp:decoder_conv2d_transpose_9_biasadd_readvariableop_resource*
_output_shapes
:@*
dtype023
1decoder/conv2d_transpose_9/BiasAdd/ReadVariableOp■
"decoder/conv2d_transpose_9/BiasAddBiasAdd4decoder/conv2d_transpose_9/conv2d_transpose:output:09decoder/conv2d_transpose_9/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:         @2$
"decoder/conv2d_transpose_9/BiasAdd▒
decoder/conv2d_transpose_9/ReluRelu+decoder/conv2d_transpose_9/BiasAdd:output:0*
T0*/
_output_shapes
:         @2!
decoder/conv2d_transpose_9/Relu╤
-decoder/batch_normalization_24/ReadVariableOpReadVariableOp6decoder_batch_normalization_24_readvariableop_resource*
_output_shapes
:@*
dtype02/
-decoder/batch_normalization_24/ReadVariableOp╫
/decoder/batch_normalization_24/ReadVariableOp_1ReadVariableOp8decoder_batch_normalization_24_readvariableop_1_resource*
_output_shapes
:@*
dtype021
/decoder/batch_normalization_24/ReadVariableOp_1Д
>decoder/batch_normalization_24/FusedBatchNormV3/ReadVariableOpReadVariableOpGdecoder_batch_normalization_24_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:@*
dtype02@
>decoder/batch_normalization_24/FusedBatchNormV3/ReadVariableOpК
@decoder/batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpIdecoder_batch_normalization_24_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:@*
dtype02B
@decoder/batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1л
/decoder/batch_normalization_24/FusedBatchNormV3FusedBatchNormV3-decoder/conv2d_transpose_9/Relu:activations:05decoder/batch_normalization_24/ReadVariableOp:value:07decoder/batch_normalization_24/ReadVariableOp_1:value:0Fdecoder/batch_normalization_24/FusedBatchNormV3/ReadVariableOp:value:0Hdecoder/batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:         @:@:@:@:@:*
epsilon%oГ:*
is_training( 21
/decoder/batch_normalization_24/FusedBatchNormV3╡
decoder/dropout_30/IdentityIdentity3decoder/batch_normalization_24/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:         @2
decoder/dropout_30/IdentityЪ
!decoder/conv2d_transpose_10/ShapeShape$decoder/dropout_30/Identity:output:0*
T0*
_output_shapes
:2#
!decoder/conv2d_transpose_10/Shapeм
/decoder/conv2d_transpose_10/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/decoder/conv2d_transpose_10/strided_slice/stack░
1decoder/conv2d_transpose_10/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1decoder/conv2d_transpose_10/strided_slice/stack_1░
1decoder/conv2d_transpose_10/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1decoder/conv2d_transpose_10/strided_slice/stack_2К
)decoder/conv2d_transpose_10/strided_sliceStridedSlice*decoder/conv2d_transpose_10/Shape:output:08decoder/conv2d_transpose_10/strided_slice/stack:output:0:decoder/conv2d_transpose_10/strided_slice/stack_1:output:0:decoder/conv2d_transpose_10/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)decoder/conv2d_transpose_10/strided_sliceМ
#decoder/conv2d_transpose_10/stack/1Const*
_output_shapes
: *
dtype0*
value	B : 2%
#decoder/conv2d_transpose_10/stack/1М
#decoder/conv2d_transpose_10/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2%
#decoder/conv2d_transpose_10/stack/2М
#decoder/conv2d_transpose_10/stack/3Const*
_output_shapes
: *
dtype0*
value	B : 2%
#decoder/conv2d_transpose_10/stack/3║
!decoder/conv2d_transpose_10/stackPack2decoder/conv2d_transpose_10/strided_slice:output:0,decoder/conv2d_transpose_10/stack/1:output:0,decoder/conv2d_transpose_10/stack/2:output:0,decoder/conv2d_transpose_10/stack/3:output:0*
N*
T0*
_output_shapes
:2#
!decoder/conv2d_transpose_10/stack░
1decoder/conv2d_transpose_10/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1decoder/conv2d_transpose_10/strided_slice_1/stack┤
3decoder/conv2d_transpose_10/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3decoder/conv2d_transpose_10/strided_slice_1/stack_1┤
3decoder/conv2d_transpose_10/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3decoder/conv2d_transpose_10/strided_slice_1/stack_2Ф
+decoder/conv2d_transpose_10/strided_slice_1StridedSlice*decoder/conv2d_transpose_10/stack:output:0:decoder/conv2d_transpose_10/strided_slice_1/stack:output:0<decoder/conv2d_transpose_10/strided_slice_1/stack_1:output:0<decoder/conv2d_transpose_10/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+decoder/conv2d_transpose_10/strided_slice_1З
;decoder/conv2d_transpose_10/conv2d_transpose/ReadVariableOpReadVariableOpDdecoder_conv2d_transpose_10_conv2d_transpose_readvariableop_resource*&
_output_shapes
: @*
dtype02=
;decoder/conv2d_transpose_10/conv2d_transpose/ReadVariableOpь
,decoder/conv2d_transpose_10/conv2d_transposeConv2DBackpropInput*decoder/conv2d_transpose_10/stack:output:0Cdecoder/conv2d_transpose_10/conv2d_transpose/ReadVariableOp:value:0$decoder/dropout_30/Identity:output:0*
T0*/
_output_shapes
:            *
paddingSAME*
strides
2.
,decoder/conv2d_transpose_10/conv2d_transposeр
2decoder/conv2d_transpose_10/BiasAdd/ReadVariableOpReadVariableOp;decoder_conv2d_transpose_10_biasadd_readvariableop_resource*
_output_shapes
: *
dtype024
2decoder/conv2d_transpose_10/BiasAdd/ReadVariableOpВ
#decoder/conv2d_transpose_10/BiasAddBiasAdd5decoder/conv2d_transpose_10/conv2d_transpose:output:0:decoder/conv2d_transpose_10/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:            2%
#decoder/conv2d_transpose_10/BiasAdd┤
 decoder/conv2d_transpose_10/ReluRelu,decoder/conv2d_transpose_10/BiasAdd:output:0*
T0*/
_output_shapes
:            2"
 decoder/conv2d_transpose_10/Relu╤
-decoder/batch_normalization_25/ReadVariableOpReadVariableOp6decoder_batch_normalization_25_readvariableop_resource*
_output_shapes
: *
dtype02/
-decoder/batch_normalization_25/ReadVariableOp╫
/decoder/batch_normalization_25/ReadVariableOp_1ReadVariableOp8decoder_batch_normalization_25_readvariableop_1_resource*
_output_shapes
: *
dtype021
/decoder/batch_normalization_25/ReadVariableOp_1Д
>decoder/batch_normalization_25/FusedBatchNormV3/ReadVariableOpReadVariableOpGdecoder_batch_normalization_25_fusedbatchnormv3_readvariableop_resource*
_output_shapes
: *
dtype02@
>decoder/batch_normalization_25/FusedBatchNormV3/ReadVariableOpК
@decoder/batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpIdecoder_batch_normalization_25_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
: *
dtype02B
@decoder/batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1м
/decoder/batch_normalization_25/FusedBatchNormV3FusedBatchNormV3.decoder/conv2d_transpose_10/Relu:activations:05decoder/batch_normalization_25/ReadVariableOp:value:07decoder/batch_normalization_25/ReadVariableOp_1:value:0Fdecoder/batch_normalization_25/FusedBatchNormV3/ReadVariableOp:value:0Hdecoder/batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:            : : : : :*
epsilon%oГ:*
is_training( 21
/decoder/batch_normalization_25/FusedBatchNormV3╡
decoder/dropout_31/IdentityIdentity3decoder/batch_normalization_25/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:            2
decoder/dropout_31/IdentityЪ
!decoder/conv2d_transpose_11/ShapeShape$decoder/dropout_31/Identity:output:0*
T0*
_output_shapes
:2#
!decoder/conv2d_transpose_11/Shapeм
/decoder/conv2d_transpose_11/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 21
/decoder/conv2d_transpose_11/strided_slice/stack░
1decoder/conv2d_transpose_11/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:23
1decoder/conv2d_transpose_11/strided_slice/stack_1░
1decoder/conv2d_transpose_11/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:23
1decoder/conv2d_transpose_11/strided_slice/stack_2К
)decoder/conv2d_transpose_11/strided_sliceStridedSlice*decoder/conv2d_transpose_11/Shape:output:08decoder/conv2d_transpose_11/strided_slice/stack:output:0:decoder/conv2d_transpose_11/strided_slice/stack_1:output:0:decoder/conv2d_transpose_11/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2+
)decoder/conv2d_transpose_11/strided_sliceМ
#decoder/conv2d_transpose_11/stack/1Const*
_output_shapes
: *
dtype0*
value	B : 2%
#decoder/conv2d_transpose_11/stack/1М
#decoder/conv2d_transpose_11/stack/2Const*
_output_shapes
: *
dtype0*
value	B : 2%
#decoder/conv2d_transpose_11/stack/2М
#decoder/conv2d_transpose_11/stack/3Const*
_output_shapes
: *
dtype0*
value	B :2%
#decoder/conv2d_transpose_11/stack/3║
!decoder/conv2d_transpose_11/stackPack2decoder/conv2d_transpose_11/strided_slice:output:0,decoder/conv2d_transpose_11/stack/1:output:0,decoder/conv2d_transpose_11/stack/2:output:0,decoder/conv2d_transpose_11/stack/3:output:0*
N*
T0*
_output_shapes
:2#
!decoder/conv2d_transpose_11/stack░
1decoder/conv2d_transpose_11/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 23
1decoder/conv2d_transpose_11/strided_slice_1/stack┤
3decoder/conv2d_transpose_11/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:25
3decoder/conv2d_transpose_11/strided_slice_1/stack_1┤
3decoder/conv2d_transpose_11/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:25
3decoder/conv2d_transpose_11/strided_slice_1/stack_2Ф
+decoder/conv2d_transpose_11/strided_slice_1StridedSlice*decoder/conv2d_transpose_11/stack:output:0:decoder/conv2d_transpose_11/strided_slice_1/stack:output:0<decoder/conv2d_transpose_11/strided_slice_1/stack_1:output:0<decoder/conv2d_transpose_11/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask2-
+decoder/conv2d_transpose_11/strided_slice_1З
;decoder/conv2d_transpose_11/conv2d_transpose/ReadVariableOpReadVariableOpDdecoder_conv2d_transpose_11_conv2d_transpose_readvariableop_resource*&
_output_shapes
: *
dtype02=
;decoder/conv2d_transpose_11/conv2d_transpose/ReadVariableOpь
,decoder/conv2d_transpose_11/conv2d_transposeConv2DBackpropInput*decoder/conv2d_transpose_11/stack:output:0Cdecoder/conv2d_transpose_11/conv2d_transpose/ReadVariableOp:value:0$decoder/dropout_31/Identity:output:0*
T0*/
_output_shapes
:           *
paddingSAME*
strides
2.
,decoder/conv2d_transpose_11/conv2d_transposeр
2decoder/conv2d_transpose_11/BiasAdd/ReadVariableOpReadVariableOp;decoder_conv2d_transpose_11_biasadd_readvariableop_resource*
_output_shapes
:*
dtype024
2decoder/conv2d_transpose_11/BiasAdd/ReadVariableOpВ
#decoder/conv2d_transpose_11/BiasAddBiasAdd5decoder/conv2d_transpose_11/conv2d_transpose:output:0:decoder/conv2d_transpose_11/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:           2%
#decoder/conv2d_transpose_11/BiasAdd┤
 decoder/conv2d_transpose_11/ReluRelu,decoder/conv2d_transpose_11/BiasAdd:output:0*
T0*/
_output_shapes
:           2"
 decoder/conv2d_transpose_11/ReluЁ	
IdentityIdentity.decoder/conv2d_transpose_11/Relu:activations:08^decoder/batch_normalization_23/batchnorm/ReadVariableOp:^decoder/batch_normalization_23/batchnorm/ReadVariableOp_1:^decoder/batch_normalization_23/batchnorm/ReadVariableOp_2<^decoder/batch_normalization_23/batchnorm/mul/ReadVariableOp?^decoder/batch_normalization_24/FusedBatchNormV3/ReadVariableOpA^decoder/batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1.^decoder/batch_normalization_24/ReadVariableOp0^decoder/batch_normalization_24/ReadVariableOp_1?^decoder/batch_normalization_25/FusedBatchNormV3/ReadVariableOpA^decoder/batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1.^decoder/batch_normalization_25/ReadVariableOp0^decoder/batch_normalization_25/ReadVariableOp_13^decoder/conv2d_transpose_10/BiasAdd/ReadVariableOp<^decoder/conv2d_transpose_10/conv2d_transpose/ReadVariableOp3^decoder/conv2d_transpose_11/BiasAdd/ReadVariableOp<^decoder/conv2d_transpose_11/conv2d_transpose/ReadVariableOp2^decoder/conv2d_transpose_9/BiasAdd/ReadVariableOp;^decoder/conv2d_transpose_9/conv2d_transpose/ReadVariableOp(^decoder/dense_26/BiasAdd/ReadVariableOp'^decoder/dense_26/MatMul/ReadVariableOp*
T0*/
_output_shapes
:           2

Identity"
identityIdentity:output:0*v
_input_shapese
c:         
::::::::::::::::::::2r
7decoder/batch_normalization_23/batchnorm/ReadVariableOp7decoder/batch_normalization_23/batchnorm/ReadVariableOp2v
9decoder/batch_normalization_23/batchnorm/ReadVariableOp_19decoder/batch_normalization_23/batchnorm/ReadVariableOp_12v
9decoder/batch_normalization_23/batchnorm/ReadVariableOp_29decoder/batch_normalization_23/batchnorm/ReadVariableOp_22z
;decoder/batch_normalization_23/batchnorm/mul/ReadVariableOp;decoder/batch_normalization_23/batchnorm/mul/ReadVariableOp2А
>decoder/batch_normalization_24/FusedBatchNormV3/ReadVariableOp>decoder/batch_normalization_24/FusedBatchNormV3/ReadVariableOp2Д
@decoder/batch_normalization_24/FusedBatchNormV3/ReadVariableOp_1@decoder/batch_normalization_24/FusedBatchNormV3/ReadVariableOp_12^
-decoder/batch_normalization_24/ReadVariableOp-decoder/batch_normalization_24/ReadVariableOp2b
/decoder/batch_normalization_24/ReadVariableOp_1/decoder/batch_normalization_24/ReadVariableOp_12А
>decoder/batch_normalization_25/FusedBatchNormV3/ReadVariableOp>decoder/batch_normalization_25/FusedBatchNormV3/ReadVariableOp2Д
@decoder/batch_normalization_25/FusedBatchNormV3/ReadVariableOp_1@decoder/batch_normalization_25/FusedBatchNormV3/ReadVariableOp_12^
-decoder/batch_normalization_25/ReadVariableOp-decoder/batch_normalization_25/ReadVariableOp2b
/decoder/batch_normalization_25/ReadVariableOp_1/decoder/batch_normalization_25/ReadVariableOp_12h
2decoder/conv2d_transpose_10/BiasAdd/ReadVariableOp2decoder/conv2d_transpose_10/BiasAdd/ReadVariableOp2z
;decoder/conv2d_transpose_10/conv2d_transpose/ReadVariableOp;decoder/conv2d_transpose_10/conv2d_transpose/ReadVariableOp2h
2decoder/conv2d_transpose_11/BiasAdd/ReadVariableOp2decoder/conv2d_transpose_11/BiasAdd/ReadVariableOp2z
;decoder/conv2d_transpose_11/conv2d_transpose/ReadVariableOp;decoder/conv2d_transpose_11/conv2d_transpose/ReadVariableOp2f
1decoder/conv2d_transpose_9/BiasAdd/ReadVariableOp1decoder/conv2d_transpose_9/BiasAdd/ReadVariableOp2x
:decoder/conv2d_transpose_9/conv2d_transpose/ReadVariableOp:decoder/conv2d_transpose_9/conv2d_transpose/ReadVariableOp2R
'decoder/dense_26/BiasAdd/ReadVariableOp'decoder/dense_26/BiasAdd/ReadVariableOp2P
&decoder/dense_26/MatMul/ReadVariableOp&decoder/dense_26/MatMul/ReadVariableOp:Q M
'
_output_shapes
:         

"
_user_specified_name
input_11
М
e
,__inference_dropout_30_layer_call_fn_2231233

inputs
identityИвStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                           @* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_dropout_30_layer_call_and_return_conditional_losses_22302152
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                           @2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+                           @22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                           @
 
_user_specified_nameinputs
М
e
,__inference_dropout_31_layer_call_fn_2231324

inputs
identityИвStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+                            * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В *P
fKRI
G__inference_dropout_31_layer_call_and_return_conditional_losses_22302852
StatefulPartitionedCallи
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+                            2

Identity"
identityIdentity:output:0*@
_input_shapes/
-:+                            22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+                            
 
_user_specified_nameinputs"▒L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*└
serving_defaultм
=
input_111
serving_default_input_11:0         
O
conv2d_transpose_118
StatefulPartitionedCall:0           tensorflow/serving/predict:▄Б
ўg
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
layer-10
layer_with_weights-6
layer-11
trainable_variables
regularization_losses
	variables
	keras_api

signatures
+С&call_and_return_all_conditional_losses
Т__call__
У_default_save_signature"фc
_tf_keras_network╚c{"class_name": "Functional", "name": "decoder", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "decoder", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 10]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_11"}, "name": "input_11", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "dense_26", "trainable": true, "dtype": "float32", "units": 2048, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_26", "inbound_nodes": [[["input_11", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_23", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_23", "inbound_nodes": [[["dense_26", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_29", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}, "name": "dropout_29", "inbound_nodes": [[["batch_normalization_23", 0, 0, {}]]]}, {"class_name": "Reshape", "config": {"name": "reshape_3", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [8, 8, 32]}}, "name": "reshape_3", "inbound_nodes": [[["dropout_29", 0, 0, {}]]]}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_9", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_9", "inbound_nodes": [[["reshape_3", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_24", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_24", "inbound_nodes": [[["conv2d_transpose_9", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_30", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}, "name": "dropout_30", "inbound_nodes": [[["batch_normalization_24", 0, 0, {}]]]}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_10", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_10", "inbound_nodes": [[["dropout_30", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_25", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_25", "inbound_nodes": [[["conv2d_transpose_10", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_31", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}, "name": "dropout_31", "inbound_nodes": [[["batch_normalization_25", 0, 0, {}]]]}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_11", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_11", "inbound_nodes": [[["dropout_31", 0, 0, {}]]]}], "input_layers": [["input_11", 0, 0]], "output_layers": [["conv2d_transpose_11", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 10]}, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 10]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "decoder", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 10]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_11"}, "name": "input_11", "inbound_nodes": []}, {"class_name": "Dense", "config": {"name": "dense_26", "trainable": true, "dtype": "float32", "units": 2048, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_26", "inbound_nodes": [[["input_11", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_23", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_23", "inbound_nodes": [[["dense_26", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_29", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}, "name": "dropout_29", "inbound_nodes": [[["batch_normalization_23", 0, 0, {}]]]}, {"class_name": "Reshape", "config": {"name": "reshape_3", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [8, 8, 32]}}, "name": "reshape_3", "inbound_nodes": [[["dropout_29", 0, 0, {}]]]}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_9", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_9", "inbound_nodes": [[["reshape_3", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_24", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_24", "inbound_nodes": [[["conv2d_transpose_9", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_30", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}, "name": "dropout_30", "inbound_nodes": [[["batch_normalization_24", 0, 0, {}]]]}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_10", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_10", "inbound_nodes": [[["dropout_30", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_25", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_25", "inbound_nodes": [[["conv2d_transpose_10", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout_31", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}, "name": "dropout_31", "inbound_nodes": [[["batch_normalization_25", 0, 0, {}]]]}, {"class_name": "Conv2DTranspose", "config": {"name": "conv2d_transpose_11", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "name": "conv2d_transpose_11", "inbound_nodes": [[["dropout_31", 0, 0, {}]]]}], "input_layers": [["input_11", 0, 0]], "output_layers": [["conv2d_transpose_11", 0, 0]]}}}
э"ъ
_tf_keras_input_layer╩{"class_name": "InputLayer", "name": "input_11", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 10]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 10]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_11"}}
Ў

kernel
bias
trainable_variables
regularization_losses
	variables
	keras_api
+Ф&call_and_return_all_conditional_losses
Х__call__"╧
_tf_keras_layer╡{"class_name": "Dense", "name": "dense_26", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_26", "trainable": true, "dtype": "float32", "units": 2048, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 10}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10]}}
║	
axis
	gamma
beta
moving_mean
moving_variance
trainable_variables
regularization_losses
	variables
 	keras_api
+Ц&call_and_return_all_conditional_losses
Ч__call__"ф
_tf_keras_layer╩{"class_name": "BatchNormalization", "name": "batch_normalization_23", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_23", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 2048}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 2048]}}
щ
!trainable_variables
"regularization_losses
#	variables
$	keras_api
+Ш&call_and_return_all_conditional_losses
Щ__call__"╪
_tf_keras_layer╛{"class_name": "Dropout", "name": "dropout_29", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_29", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
·
%trainable_variables
&regularization_losses
'	variables
(	keras_api
+Ъ&call_and_return_all_conditional_losses
Ы__call__"щ
_tf_keras_layer╧{"class_name": "Reshape", "name": "reshape_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "reshape_3", "trainable": true, "dtype": "float32", "target_shape": {"class_name": "__tuple__", "items": [8, 8, 32]}}}
з


)kernel
*bias
+trainable_variables
,regularization_losses
-	variables
.	keras_api
+Ь&call_and_return_all_conditional_losses
Э__call__"А	
_tf_keras_layerц{"class_name": "Conv2DTranspose", "name": "conv2d_transpose_9", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_transpose_9", "trainable": true, "dtype": "float32", "filters": 64, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 8, 32]}}
╛	
/axis
	0gamma
1beta
2moving_mean
3moving_variance
4trainable_variables
5regularization_losses
6	variables
7	keras_api
+Ю&call_and_return_all_conditional_losses
Я__call__"ш
_tf_keras_layer╬{"class_name": "BatchNormalization", "name": "batch_normalization_24", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_24", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 64]}}
щ
8trainable_variables
9regularization_losses
:	variables
;	keras_api
+а&call_and_return_all_conditional_losses
б__call__"╪
_tf_keras_layer╛{"class_name": "Dropout", "name": "dropout_30", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_30", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
л


<kernel
=bias
>trainable_variables
?regularization_losses
@	variables
A	keras_api
+в&call_and_return_all_conditional_losses
г__call__"Д	
_tf_keras_layerъ{"class_name": "Conv2DTranspose", "name": "conv2d_transpose_10", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_transpose_10", "trainable": true, "dtype": "float32", "filters": 32, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [2, 2]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 64}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 16, 16, 64]}}
╛	
Baxis
	Cgamma
Dbeta
Emoving_mean
Fmoving_variance
Gtrainable_variables
Hregularization_losses
I	variables
J	keras_api
+д&call_and_return_all_conditional_losses
е__call__"ш
_tf_keras_layer╬{"class_name": "BatchNormalization", "name": "batch_normalization_25", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_25", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": null, "gamma_regularizer": null, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 32]}}
щ
Ktrainable_variables
Lregularization_losses
M	variables
N	keras_api
+ж&call_and_return_all_conditional_losses
з__call__"╪
_tf_keras_layer╛{"class_name": "Dropout", "name": "dropout_31", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout_31", "trainable": true, "dtype": "float32", "rate": 0.1, "noise_shape": null, "seed": null}}
к


Okernel
Pbias
Qtrainable_variables
Rregularization_losses
S	variables
T	keras_api
+и&call_and_return_all_conditional_losses
й__call__"Г	
_tf_keras_layerщ{"class_name": "Conv2DTranspose", "name": "conv2d_transpose_11", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_transpose_11", "trainable": true, "dtype": "float32", "filters": 3, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "same", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "relu", "use_bias": true, "kernel_initializer": {"class_name": "GlorotUniform", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null, "output_padding": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"-1": 32}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 32, 32, 32]}}
Ж
0
1
2
3
)4
*5
06
17
<8
=9
C10
D11
O12
P13"
trackable_list_wrapper
 "
trackable_list_wrapper
╢
0
1
2
3
4
5
)6
*7
08
19
210
311
<12
=13
C14
D15
E16
F17
O18
P19"
trackable_list_wrapper
╬

Ulayers
trainable_variables
Vlayer_regularization_losses
Wlayer_metrics
Xmetrics
Ynon_trainable_variables
regularization_losses
	variables
Т__call__
У_default_save_signature
+С&call_and_return_all_conditional_losses
'С"call_and_return_conditional_losses"
_generic_user_object
-
кserving_default"
signature_map
": 	
А2dense_26/kernel
:А2dense_26/bias
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
░

Zlayers
trainable_variables
[layer_regularization_losses
\layer_metrics
]metrics
^non_trainable_variables
regularization_losses
	variables
Х__call__
+Ф&call_and_return_all_conditional_losses
'Ф"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
+:)А2batch_normalization_23/gamma
*:(А2batch_normalization_23/beta
3:1А (2"batch_normalization_23/moving_mean
7:5А (2&batch_normalization_23/moving_variance
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
░

_layers
trainable_variables
`layer_regularization_losses
alayer_metrics
bmetrics
cnon_trainable_variables
regularization_losses
	variables
Ч__call__
+Ц&call_and_return_all_conditional_losses
'Ц"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░

dlayers
!trainable_variables
elayer_regularization_losses
flayer_metrics
gmetrics
hnon_trainable_variables
"regularization_losses
#	variables
Щ__call__
+Ш&call_and_return_all_conditional_losses
'Ш"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░

ilayers
%trainable_variables
jlayer_regularization_losses
klayer_metrics
lmetrics
mnon_trainable_variables
&regularization_losses
'	variables
Ы__call__
+Ъ&call_and_return_all_conditional_losses
'Ъ"call_and_return_conditional_losses"
_generic_user_object
3:1@ 2conv2d_transpose_9/kernel
%:#@2conv2d_transpose_9/bias
.
)0
*1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
)0
*1"
trackable_list_wrapper
░

nlayers
+trainable_variables
olayer_regularization_losses
player_metrics
qmetrics
rnon_trainable_variables
,regularization_losses
-	variables
Э__call__
+Ь&call_and_return_all_conditional_losses
'Ь"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(@2batch_normalization_24/gamma
):'@2batch_normalization_24/beta
2:0@ (2"batch_normalization_24/moving_mean
6:4@ (2&batch_normalization_24/moving_variance
.
00
11"
trackable_list_wrapper
 "
trackable_list_wrapper
<
00
11
22
33"
trackable_list_wrapper
░

slayers
4trainable_variables
tlayer_regularization_losses
ulayer_metrics
vmetrics
wnon_trainable_variables
5regularization_losses
6	variables
Я__call__
+Ю&call_and_return_all_conditional_losses
'Ю"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
░

xlayers
8trainable_variables
ylayer_regularization_losses
zlayer_metrics
{metrics
|non_trainable_variables
9regularization_losses
:	variables
б__call__
+а&call_and_return_all_conditional_losses
'а"call_and_return_conditional_losses"
_generic_user_object
4:2 @2conv2d_transpose_10/kernel
&:$ 2conv2d_transpose_10/bias
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
▓

}layers
>trainable_variables
~layer_regularization_losses
layer_metrics
Аmetrics
Бnon_trainable_variables
?regularization_losses
@	variables
г__call__
+в&call_and_return_all_conditional_losses
'в"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:( 2batch_normalization_25/gamma
):' 2batch_normalization_25/beta
2:0  (2"batch_normalization_25/moving_mean
6:4  (2&batch_normalization_25/moving_variance
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
<
C0
D1
E2
F3"
trackable_list_wrapper
╡
Вlayers
Gtrainable_variables
 Гlayer_regularization_losses
Дlayer_metrics
Еmetrics
Жnon_trainable_variables
Hregularization_losses
I	variables
е__call__
+д&call_and_return_all_conditional_losses
'д"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
╡
Зlayers
Ktrainable_variables
 Иlayer_regularization_losses
Йlayer_metrics
Кmetrics
Лnon_trainable_variables
Lregularization_losses
M	variables
з__call__
+ж&call_and_return_all_conditional_losses
'ж"call_and_return_conditional_losses"
_generic_user_object
4:2 2conv2d_transpose_11/kernel
&:$2conv2d_transpose_11/bias
.
O0
P1"
trackable_list_wrapper
 "
trackable_list_wrapper
.
O0
P1"
trackable_list_wrapper
╡
Мlayers
Qtrainable_variables
 Нlayer_regularization_losses
Оlayer_metrics
Пmetrics
Рnon_trainable_variables
Rregularization_losses
S	variables
й__call__
+и&call_and_return_all_conditional_losses
'и"call_and_return_conditional_losses"
_generic_user_object
v
0
1
2
3
4
5
6
7
	8

9
10
11"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
J
0
1
22
33
E4
F5"
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
.
0
1"
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
.
20
31"
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
.
E0
F1"
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
▐2█
D__inference_decoder_layer_call_and_return_conditional_losses_2230909
D__inference_decoder_layer_call_and_return_conditional_losses_2230781
D__inference_decoder_layer_call_and_return_conditional_losses_2230309
D__inference_decoder_layer_call_and_return_conditional_losses_2230364└
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
Є2я
)__inference_decoder_layer_call_fn_2230465
)__inference_decoder_layer_call_fn_2230999
)__inference_decoder_layer_call_fn_2230954
)__inference_decoder_layer_call_fn_2230565└
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
с2▐
"__inference__wrapped_model_2229562╖
Л▓З
FullArgSpec
argsЪ 
varargsjargs
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *'в$
"К
input_11         

я2ь
E__inference_dense_26_layer_call_and_return_conditional_losses_2231010в
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
╘2╤
*__inference_dense_26_layer_call_fn_2231019в
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
ф2с
S__inference_batch_normalization_23_layer_call_and_return_conditional_losses_2231075
S__inference_batch_normalization_23_layer_call_and_return_conditional_losses_2231055┤
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
о2л
8__inference_batch_normalization_23_layer_call_fn_2231088
8__inference_batch_normalization_23_layer_call_fn_2231101┤
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
╠2╔
G__inference_dropout_29_layer_call_and_return_conditional_losses_2231118
G__inference_dropout_29_layer_call_and_return_conditional_losses_2231113┤
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
Ц2У
,__inference_dropout_29_layer_call_fn_2231123
,__inference_dropout_29_layer_call_fn_2231128┤
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
Ё2э
F__inference_reshape_3_layer_call_and_return_conditional_losses_2231142в
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
╒2╥
+__inference_reshape_3_layer_call_fn_2231147в
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
о2л
O__inference_conv2d_transpose_9_layer_call_and_return_conditional_losses_2229737╫
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
annotationsк *7в4
2К/+                            
У2Р
4__inference_conv2d_transpose_9_layer_call_fn_2229747╫
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
annotationsк *7в4
2К/+                            
ф2с
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_2231167
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_2231185┤
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
о2л
8__inference_batch_normalization_24_layer_call_fn_2231211
8__inference_batch_normalization_24_layer_call_fn_2231198┤
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
╠2╔
G__inference_dropout_30_layer_call_and_return_conditional_losses_2231228
G__inference_dropout_30_layer_call_and_return_conditional_losses_2231223┤
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
Ц2У
,__inference_dropout_30_layer_call_fn_2231238
,__inference_dropout_30_layer_call_fn_2231233┤
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
п2м
P__inference_conv2d_transpose_10_layer_call_and_return_conditional_losses_2229886╫
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
annotationsк *7в4
2К/+                           @
Ф2С
5__inference_conv2d_transpose_10_layer_call_fn_2229896╫
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
annotationsк *7в4
2К/+                           @
ф2с
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_2231276
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_2231258┤
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
о2л
8__inference_batch_normalization_25_layer_call_fn_2231289
8__inference_batch_normalization_25_layer_call_fn_2231302┤
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
╠2╔
G__inference_dropout_31_layer_call_and_return_conditional_losses_2231314
G__inference_dropout_31_layer_call_and_return_conditional_losses_2231319┤
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
Ц2У
,__inference_dropout_31_layer_call_fn_2231324
,__inference_dropout_31_layer_call_fn_2231329┤
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
п2м
P__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_2230035╫
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
annotationsк *7в4
2К/+                            
Ф2С
5__inference_conv2d_transpose_11_layer_call_fn_2230045╫
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
annotationsк *7в4
2К/+                            
═B╩
%__inference_signature_wrapper_2230612input_11"Ф
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
 ├
"__inference__wrapped_model_2229562Ь)*0123<=CDEFOP1в.
'в$
"К
input_11         

к "QкN
L
conv2d_transpose_115К2
conv2d_transpose_11           ╗
S__inference_batch_normalization_23_layer_call_and_return_conditional_losses_2231055d4в1
*в'
!К
inputs         А
p
к "&в#
К
0         А
Ъ ╗
S__inference_batch_normalization_23_layer_call_and_return_conditional_losses_2231075d4в1
*в'
!К
inputs         А
p 
к "&в#
К
0         А
Ъ У
8__inference_batch_normalization_23_layer_call_fn_2231088W4в1
*в'
!К
inputs         А
p
к "К         АУ
8__inference_batch_normalization_23_layer_call_fn_2231101W4в1
*в'
!К
inputs         А
p 
к "К         Аю
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_2231167Ц0123MвJ
Cв@
:К7
inputs+                           @
p
к "?в<
5К2
0+                           @
Ъ ю
S__inference_batch_normalization_24_layer_call_and_return_conditional_losses_2231185Ц0123MвJ
Cв@
:К7
inputs+                           @
p 
к "?в<
5К2
0+                           @
Ъ ╞
8__inference_batch_normalization_24_layer_call_fn_2231198Й0123MвJ
Cв@
:К7
inputs+                           @
p
к "2К/+                           @╞
8__inference_batch_normalization_24_layer_call_fn_2231211Й0123MвJ
Cв@
:К7
inputs+                           @
p 
к "2К/+                           @ю
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_2231258ЦCDEFMвJ
Cв@
:К7
inputs+                            
p
к "?в<
5К2
0+                            
Ъ ю
S__inference_batch_normalization_25_layer_call_and_return_conditional_losses_2231276ЦCDEFMвJ
Cв@
:К7
inputs+                            
p 
к "?в<
5К2
0+                            
Ъ ╞
8__inference_batch_normalization_25_layer_call_fn_2231289ЙCDEFMвJ
Cв@
:К7
inputs+                            
p
к "2К/+                            ╞
8__inference_batch_normalization_25_layer_call_fn_2231302ЙCDEFMвJ
Cв@
:К7
inputs+                            
p 
к "2К/+                            х
P__inference_conv2d_transpose_10_layer_call_and_return_conditional_losses_2229886Р<=IвF
?в<
:К7
inputs+                           @
к "?в<
5К2
0+                            
Ъ ╜
5__inference_conv2d_transpose_10_layer_call_fn_2229896Г<=IвF
?в<
:К7
inputs+                           @
к "2К/+                            х
P__inference_conv2d_transpose_11_layer_call_and_return_conditional_losses_2230035РOPIвF
?в<
:К7
inputs+                            
к "?в<
5К2
0+                           
Ъ ╜
5__inference_conv2d_transpose_11_layer_call_fn_2230045ГOPIвF
?в<
:К7
inputs+                            
к "2К/+                           ф
O__inference_conv2d_transpose_9_layer_call_and_return_conditional_losses_2229737Р)*IвF
?в<
:К7
inputs+                            
к "?в<
5К2
0+                           @
Ъ ╝
4__inference_conv2d_transpose_9_layer_call_fn_2229747Г)*IвF
?в<
:К7
inputs+                            
к "2К/+                           @█
D__inference_decoder_layer_call_and_return_conditional_losses_2230309Т)*0123<=CDEFOP9в6
/в,
"К
input_11         

p

 
к "?в<
5К2
0+                           
Ъ █
D__inference_decoder_layer_call_and_return_conditional_losses_2230364Т)*0123<=CDEFOP9в6
/в,
"К
input_11         

p 

 
к "?в<
5К2
0+                           
Ъ ╞
D__inference_decoder_layer_call_and_return_conditional_losses_2230781~)*0123<=CDEFOP7в4
-в*
 К
inputs         

p

 
к "-в*
#К 
0           
Ъ ╞
D__inference_decoder_layer_call_and_return_conditional_losses_2230909~)*0123<=CDEFOP7в4
-в*
 К
inputs         

p 

 
к "-в*
#К 
0           
Ъ │
)__inference_decoder_layer_call_fn_2230465Е)*0123<=CDEFOP9в6
/в,
"К
input_11         

p

 
к "2К/+                           │
)__inference_decoder_layer_call_fn_2230565Е)*0123<=CDEFOP9в6
/в,
"К
input_11         

p 

 
к "2К/+                           ▒
)__inference_decoder_layer_call_fn_2230954Г)*0123<=CDEFOP7в4
-в*
 К
inputs         

p

 
к "2К/+                           ▒
)__inference_decoder_layer_call_fn_2230999Г)*0123<=CDEFOP7в4
-в*
 К
inputs         

p 

 
к "2К/+                           ж
E__inference_dense_26_layer_call_and_return_conditional_losses_2231010]/в,
%в"
 К
inputs         

к "&в#
К
0         А
Ъ ~
*__inference_dense_26_layer_call_fn_2231019P/в,
%в"
 К
inputs         

к "К         Ай
G__inference_dropout_29_layer_call_and_return_conditional_losses_2231113^4в1
*в'
!К
inputs         А
p
к "&в#
К
0         А
Ъ й
G__inference_dropout_29_layer_call_and_return_conditional_losses_2231118^4в1
*в'
!К
inputs         А
p 
к "&в#
К
0         А
Ъ Б
,__inference_dropout_29_layer_call_fn_2231123Q4в1
*в'
!К
inputs         А
p
к "К         АБ
,__inference_dropout_29_layer_call_fn_2231128Q4в1
*в'
!К
inputs         А
p 
к "К         А▄
G__inference_dropout_30_layer_call_and_return_conditional_losses_2231223РMвJ
Cв@
:К7
inputs+                           @
p
к "?в<
5К2
0+                           @
Ъ ▄
G__inference_dropout_30_layer_call_and_return_conditional_losses_2231228РMвJ
Cв@
:К7
inputs+                           @
p 
к "?в<
5К2
0+                           @
Ъ ┤
,__inference_dropout_30_layer_call_fn_2231233ГMвJ
Cв@
:К7
inputs+                           @
p
к "2К/+                           @┤
,__inference_dropout_30_layer_call_fn_2231238ГMвJ
Cв@
:К7
inputs+                           @
p 
к "2К/+                           @▄
G__inference_dropout_31_layer_call_and_return_conditional_losses_2231314РMвJ
Cв@
:К7
inputs+                            
p
к "?в<
5К2
0+                            
Ъ ▄
G__inference_dropout_31_layer_call_and_return_conditional_losses_2231319РMвJ
Cв@
:К7
inputs+                            
p 
к "?в<
5К2
0+                            
Ъ ┤
,__inference_dropout_31_layer_call_fn_2231324ГMвJ
Cв@
:К7
inputs+                            
p
к "2К/+                            ┤
,__inference_dropout_31_layer_call_fn_2231329ГMвJ
Cв@
:К7
inputs+                            
p 
к "2К/+                            л
F__inference_reshape_3_layer_call_and_return_conditional_losses_2231142a0в-
&в#
!К
inputs         А
к "-в*
#К 
0          
Ъ Г
+__inference_reshape_3_layer_call_fn_2231147T0в-
&в#
!К
inputs         А
к " К          ╥
%__inference_signature_wrapper_2230612и)*0123<=CDEFOP=в:
в 
3к0
.
input_11"К
input_11         
"QкN
L
conv2d_transpose_115К2
conv2d_transpose_11           