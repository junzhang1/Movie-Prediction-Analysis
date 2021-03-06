*------------------------------------------------------------*;
* EM Version: 14.2;
* SAS Release: 9.04.01M4P110916;
* Host: vandrew10-092;
* Project Path: \\andrew.ad.cmu.edu\users\users21\svelicha\Documents\My SAS Files\Final project;
* Project Name: Final_project;
* Diagram Id: EMWS1;
* Diagram Name: final;
* Generated by: svelicha;
* Date: 11DEC2017:15:28:03;
*------------------------------------------------------------*;
*------------------------------------------------------------*;
* Macro Variables;
*------------------------------------------------------------*;
%let EM_PROJECT =;
%let EM_PROJECTNAME =;
%let EM_WSNAME =;
%let EM_WSDESCRIPTION =final;
%let EM_SUMMARY =WORK.SUMMARY;
%let EM_NUMTASKS =SINGLE;
%let EM_EDITMODE =R;
%let EM_DEBUGVAL =;
%let EM_ACTION =run;
*------------------------------------------------------------*;
%macro em_usedatatable;
%if ^%symexist(EM_USEDATATABLE) %then %do;
%let EM_USEDATATABLE = Y;
%end;
%if "&EM_USEDATATABLE" ne "N" %then %do;
*------------------------------------------------------------*;
* Data Tables;
*------------------------------------------------------------*;
*------------------------------------------------------------*;
%end;
%mend em_usedatatable;
%em_usedatatable;
*------------------------------------------------------------*;
* Create workspace data set;
*------------------------------------------------------------*;
data workspace;
length property $64 value $200;
property= 'PROJECTLOCATION';
value= "&EM_PROJECT";
output;
property= 'PROJECTNAME';
value= "&EM_PROJECTNAME";
output;
property= 'WORKSPACENAME';
value= "&EM_WSNAME";
output;
property= 'WORKSPACEDESCRIPTION';
value= "&EM_WSDESCRIPTION";
output;
property= 'SUMMARYDATASET';
value= "&EM_SUMMARY";
output;
property= 'NUMTASKS';
value= "&EM_NUMTASKS";
output;
property= 'EDITMODE';
value= "&EM_EDITMODE";
output;
property= 'DEBUG';
value= "&EM_DEBUGVAL";
output;
run;
*------------------------------------------------------------*;
* Create nodes data set;
*------------------------------------------------------------*;
data nodes;
length id $12 component $32 description $64 X 8 Y 8 diagramID $32 parentID $32;
id= "Tree4";
component="DecisionTree";
description= "Decision Tree (3)";
diagramID="_ROOT_";
parentID="";
X=794;
Y=597;
output;
id= "Part3";
component="Partition";
description= "Data Partition (3)";
diagramID="_ROOT_";
parentID="";
X=572;
Y=531;
output;
id= "Impt2";
component="Impute";
description= "Impute (2)";
diagramID="_ROOT_";
parentID="";
X=389;
Y=536;
output;
id= "FIMPORT5";
component="FileImport";
description= "File Import (5)";
diagramID="_ROOT_";
parentID="";
X=197;
Y=531;
output;
id= "EMCODE3";
component="SASCode";
description= "SAS Code (3)";
diagramID="_ROOT_";
parentID="";
X=1003;
Y=607;
output;
run;
*------------------------------------------------------------*;
* Variable Attributes for Tree4;
*------------------------------------------------------------*;
data WORK.Tree4_VariableAttribute;
length Variable $64 AttributeName $32 AttributeValue $64;
Variable='movieID';
AttributeName="USE";
AttributeValue='D';
Output;
Variable='title';
AttributeName="USE";
AttributeValue='Y';
Output;
Variable='userID';
AttributeName="USE";
AttributeValue='D';
Output;
run;
*------------------------------------------------------------*;
* Decmeta Data Set for Tree4;
*------------------------------------------------------------*;
data WORK.Tree4_like_DM;
  length   _TYPE_                           $ 32
           VARIABLE                         $ 32
           LABEL                            $ 256
           LEVEL                            $ 32
           EVENT                            $ 32
           ORDER                            $ 10
           FORMAT                           $ 32
           TYPE                             $ 1
           COST                             $ 32
           USE                              $ 1
           ;

  label    _TYPE_="Type"
           VARIABLE="Variable"
           LABEL="Label"
           LEVEL="Measurement Level"
           EVENT="Target Event"
           ORDER="Order"
           FORMAT="Format"
           TYPE="Type"
           COST="Cost"
           USE="Use"
           ;
_TYPE_="MATRIX";
VARIABLE="";
LABEL="";
LEVEL="PROFIT";
EVENT="";
ORDER="";
FORMAT="";
TYPE="";
COST="";
USE="N";
output;
_TYPE_="TARGET";
VARIABLE="like";
LABEL="";
LEVEL="BINARY";
EVENT="1";
ORDER="";
FORMAT="BEST12.0";
TYPE="N";
COST="";
USE="";
output;
_TYPE_="DECISION";
VARIABLE="DECISION1";
LABEL="1";
LEVEL="";
EVENT="";
ORDER="";
FORMAT="";
TYPE="N";
COST="";
USE="Y";
output;
_TYPE_="DECISION";
VARIABLE="DECISION2";
LABEL="0";
LEVEL="";
EVENT="";
ORDER="";
FORMAT="";
TYPE="N";
COST="";
USE="Y";
output;
_TYPE_="DATAPRIOR";
VARIABLE="DATAPRIOR";
LABEL="Data Prior";
LEVEL="";
EVENT="";
ORDER="";
FORMAT="";
TYPE="N";
COST="";
USE="N";
output;
_TYPE_="TRAINPRIOR";
VARIABLE="TRAINPRIOR";
LABEL="Training Prior";
LEVEL="";
EVENT="";
ORDER="";
FORMAT="";
TYPE="N";
COST="";
USE="N";
output;
_TYPE_="DECPRIOR";
VARIABLE="DECPRIOR";
LABEL="Decision Prior";
LEVEL="";
EVENT="";
ORDER="";
FORMAT="";
TYPE="N";
COST="";
USE="N";
output;
_TYPE_="PREDICTED";
VARIABLE="P_like1";
LABEL="Predicted: like=1";
LEVEL="1";
EVENT="";
ORDER="";
FORMAT="";
TYPE="N";
COST="";
USE="";
output;
_TYPE_="RESIDUAL";
VARIABLE="R_like1";
LABEL="Residual: like=1";
LEVEL="1";
EVENT="";
ORDER="";
FORMAT="";
TYPE="N";
COST="";
USE="";
output;
_TYPE_="PREDICTED";
VARIABLE="P_like0";
LABEL="Predicted: like=0";
LEVEL="0";
EVENT="";
ORDER="";
FORMAT="";
TYPE="N";
COST="";
USE="";
output;
_TYPE_="RESIDUAL";
VARIABLE="R_like0";
LABEL="Residual: like=0";
LEVEL="0";
EVENT="";
ORDER="";
FORMAT="";
TYPE="N";
COST="";
USE="";
output;
_TYPE_="FROM";
VARIABLE="F_like";
LABEL="From: like";
LEVEL="";
EVENT="";
ORDER="";
FORMAT="";
TYPE="C";
COST="";
USE="";
output;
_TYPE_="INTO";
VARIABLE="I_like";
LABEL="Into: like";
LEVEL="";
EVENT="";
ORDER="";
FORMAT="";
TYPE="C";
COST="";
USE="";
output;
;
run;
*------------------------------------------------------------*;
* Decdata Data Set for Tree4;
*------------------------------------------------------------*;
data WORK.Tree4_like_DD;
  length   like                             $ 32
           COUNT                              8
           DATAPRIOR                          8
           TRAINPRIOR                         8
           DECPRIOR                           8
           DECISION1                          8
           DECISION2                          8
           ;

  label    COUNT="Level Counts"
           DATAPRIOR="Data Proportions"
           TRAINPRIOR="Training Proportions"
           DECPRIOR="Decision Priors"
           DECISION1="1"
           DECISION2="0"
           ;
  format   COUNT 10.
           ;
like="1";
COUNT=38460;
DATAPRIOR=0.5764474887;
TRAINPRIOR=0.57644748872135;
DECPRIOR=.;
DECISION1=1;
DECISION2=0;
output;
like="0";
COUNT=28259;
DATAPRIOR=0.4235525113;
TRAINPRIOR=0.42355251127864;
DECPRIOR=.;
DECISION1=0;
DECISION2=1;
output;
;
run;
*------------------------------------------------------------*;
* USERTRAINCODE File for Tree4;
*------------------------------------------------------------*;
data _null_;
if symget('sysscp')=:'WIN' then dsep='\';
else if symget('sysscp')=:'DNT' then dsep='\';
else dsep = '/';
filepath = pathname('work')!!dsep!!"Tree4_USERTRAINCODE.sas";
call symput('DSPATH', filepath);
run;
data _null_;
filename dspath "&dspath";
file dspath;
run;
*------------------------------------------------------------*;
* EMNOTES File for Tree4;
*------------------------------------------------------------*;
data _null_;
if symget('sysscp')=:'WIN' then dsep='\';
else if symget('sysscp')=:'DNT' then dsep='\';
else dsep = '/';
filepath = pathname('work')!!dsep!!"Tree4_EMNOTES.txt";
call symput('DSPATH', filepath);
run;
data _null_;
filename dspath "&dspath" encoding="utf-8" NOBOM;
file dspath;
run;
*------------------------------------------------------------*;
* EMNOTES File for Part3;
*------------------------------------------------------------*;
data _null_;
if symget('sysscp')=:'WIN' then dsep='\';
else if symget('sysscp')=:'DNT' then dsep='\';
else dsep = '/';
filepath = pathname('work')!!dsep!!"Part3_EMNOTES.txt";
call symput('DSPATH', filepath);
run;
data _null_;
filename dspath "&dspath" encoding="utf-8" NOBOM;
file dspath;
run;
*------------------------------------------------------------*;
* Variable Attributes for Impt2;
*------------------------------------------------------------*;
data WORK.Impt2_VariableAttribute;
length Variable $64 AttributeName $32 AttributeValue $64;
Variable='Action_avg';
AttributeName="METHOD";
AttributeValue='CONSTANT';
Output;
Variable='Adventure_avg';
AttributeName="METHOD";
AttributeValue='CONSTANT';
Output;
Variable='Animation_avg';
AttributeName="METHOD";
AttributeValue='CONSTANT';
Output;
Variable='Children_avg';
AttributeName="METHOD";
AttributeValue='CONSTANT';
Output;
Variable='Comedy_avg';
AttributeName="METHOD";
AttributeValue='CONSTANT';
Output;
Variable='Crime_avg';
AttributeName="METHOD";
AttributeValue='CONSTANT';
Output;
Variable='Documentary_avg';
AttributeName="METHOD";
AttributeValue='CONSTANT';
Output;
Variable='Drama_avg';
AttributeName="METHOD";
AttributeValue='CONSTANT';
Output;
Variable='Fantasy_avg';
AttributeName="METHOD";
AttributeValue='CONSTANT';
Output;
Variable='FilmNoir_avg';
AttributeName="METHOD";
AttributeValue='CONSTANT';
Output;
Variable='Horror_avg';
AttributeName="METHOD";
AttributeValue='CONSTANT';
Output;
Variable='Musical_avg';
AttributeName="METHOD";
AttributeValue='CONSTANT';
Output;
Variable='Mystery_avg';
AttributeName="METHOD";
AttributeValue='CONSTANT';
Output;
Variable='Romance_avg';
AttributeName="METHOD";
AttributeValue='CONSTANT';
Output;
Variable='SciFi_avg';
AttributeName="METHOD";
AttributeValue='CONSTANT';
Output;
Variable='Thriller_avg';
AttributeName="METHOD";
AttributeValue='CONSTANT';
Output;
Variable='War_avg';
AttributeName="METHOD";
AttributeValue='CONSTANT';
Output;
Variable='Western_avg';
AttributeName="METHOD";
AttributeValue='CONSTANT';
Output;
run;
*------------------------------------------------------------*;
* EMNOTES File for Impt2;
*------------------------------------------------------------*;
data _null_;
if symget('sysscp')=:'WIN' then dsep='\';
else if symget('sysscp')=:'DNT' then dsep='\';
else dsep = '/';
filepath = pathname('work')!!dsep!!"Impt2_EMNOTES.txt";
call symput('DSPATH', filepath);
run;
data _null_;
filename dspath "&dspath" encoding="utf-8" NOBOM;
file dspath;
run;
*------------------------------------------------------------*;
* Variable Attributes for FIMPORT5;
*------------------------------------------------------------*;
data WORK.FIMPORT5_VariableAttribute;
length Variable $64 AttributeName $32 AttributeValue $64;
Variable='Action';
AttributeName="LEVEL";
AttributeValue='BINARY';
Output;
Variable='Adventure';
AttributeName="LEVEL";
AttributeValue='BINARY';
Output;
Variable='Animation';
AttributeName="LEVEL";
AttributeValue='BINARY';
Output;
Variable='Childrens';
AttributeName="LEVEL";
AttributeValue='BINARY';
Output;
Variable='Comedy';
AttributeName="LEVEL";
AttributeValue='BINARY';
Output;
Variable='Crime';
AttributeName="LEVEL";
AttributeValue='BINARY';
Output;
Variable='Documentary';
AttributeName="LEVEL";
AttributeValue='BINARY';
Output;
Variable='Drama';
AttributeName="LEVEL";
AttributeValue='BINARY';
Output;
Variable='Fantasy';
AttributeName="LEVEL";
AttributeValue='BINARY';
Output;
Variable='FilmNoir';
AttributeName="LEVEL";
AttributeValue='BINARY';
Output;
Variable='Horror';
AttributeName="LEVEL";
AttributeValue='BINARY';
Output;
Variable='Musical';
AttributeName="LEVEL";
AttributeValue='BINARY';
Output;
Variable='Mystery';
AttributeName="LEVEL";
AttributeValue='BINARY';
Output;
Variable='Romance';
AttributeName="LEVEL";
AttributeValue='BINARY';
Output;
Variable='SciFi';
AttributeName="LEVEL";
AttributeValue='BINARY';
Output;
Variable='Thriller';
AttributeName="LEVEL";
AttributeValue='BINARY';
Output;
Variable='War';
AttributeName="LEVEL";
AttributeValue='BINARY';
Output;
Variable='Western';
AttributeName="LEVEL";
AttributeValue='BINARY';
Output;
Variable='age';
AttributeName="LEVEL";
AttributeValue='NOMINAL';
Output;
Variable='gender';
AttributeName="LEVEL";
AttributeValue='BINARY';
Output;
Variable='like';
AttributeName="ROLE";
AttributeValue='TARGET';
Output;
Variable='like';
AttributeName="LEVEL";
AttributeValue='BINARY';
Output;
Variable='movieID';
AttributeName="ROLE";
AttributeValue='ID';
Output;
Variable='movieID';
AttributeName="LEVEL";
AttributeValue='NOMINAL';
Output;
Variable='movie_avg_ratings';
AttributeName="ROLE";
AttributeValue='REJECTED';
Output;
Variable='movie_popularity';
AttributeName="ROLE";
AttributeValue='REJECTED';
Output;
Variable='occupation';
AttributeName="LEVEL";
AttributeValue='NOMINAL';
Output;
Variable='ratings';
AttributeName="ROLE";
AttributeValue='REJECTED';
Output;
Variable='title';
AttributeName="ROLE";
AttributeValue='REJECTED';
Output;
Variable='userID';
AttributeName="ROLE";
AttributeValue='ID';
Output;
Variable='userID';
AttributeName="LEVEL";
AttributeValue='NOMINAL';
Output;
run;
*------------------------------------------------------------*;
* USERTRAINCODE File for FIMPORT5;
*------------------------------------------------------------*;
data _null_;
if symget('sysscp')=:'WIN' then dsep='\';
else if symget('sysscp')=:'DNT' then dsep='\';
else dsep = '/';
filepath = pathname('work')!!dsep!!"FIMPORT5_USERTRAINCODE.sas";
call symput('DSPATH', filepath);
run;
data _null_;
filename dspath "&dspath";
file dspath;
run;
*------------------------------------------------------------*;
* VARIABLESETDELTA File for FIMPORT5;
*------------------------------------------------------------*;
data _null_;
if symget('sysscp')=:'WIN' then dsep='\';
else if symget('sysscp')=:'DNT' then dsep='\';
else dsep = '/';
filepath = pathname('work')!!dsep!!"FIMPORT5_VARIABLESETDELTA.txt";
call symput('DSPATH', filepath);
run;
data _null_;
filename dspath "&dspath";
file dspath;
put 'if NAME="Action" then do;';
put 'ROLE="INPUT";';
put 'LEVEL="BINARY";';
put 'ORDER="";';
put 'DROP="N";';
put 'end;';
put 'if NAME="Adventure" then do;';
put 'ROLE="INPUT";';
put 'LEVEL="BINARY";';
put 'ORDER="";';
put 'DROP="N";';
put 'end;';
put 'if NAME="age" then do;';
put 'ROLE="INPUT";';
put 'LEVEL="NOMINAL";';
put 'ORDER="";';
put 'DROP="N";';
put 'end;';
put 'if NAME="Animation" then do;';
put 'ROLE="INPUT";';
put 'LEVEL="BINARY";';
put 'ORDER="";';
put 'DROP="N";';
put 'end;';
put 'if NAME="Childrens" then do;';
put 'ROLE="INPUT";';
put 'LEVEL="BINARY";';
put 'ORDER="";';
put 'DROP="N";';
put 'end;';
put 'if NAME="Comedy" then do;';
put 'ROLE="INPUT";';
put 'LEVEL="BINARY";';
put 'ORDER="";';
put 'DROP="N";';
put 'end;';
put 'if NAME="Crime" then do;';
put 'ROLE="INPUT";';
put 'LEVEL="BINARY";';
put 'ORDER="";';
put 'DROP="N";';
put 'end;';
put 'if NAME="Documentary" then do;';
put 'ROLE="INPUT";';
put 'LEVEL="BINARY";';
put 'ORDER="";';
put 'DROP="N";';
put 'end;';
put 'if NAME="Drama" then do;';
put 'ROLE="INPUT";';
put 'LEVEL="BINARY";';
put 'ORDER="";';
put 'DROP="N";';
put 'end;';
put 'if NAME="Fantasy" then do;';
put 'ROLE="INPUT";';
put 'LEVEL="BINARY";';
put 'ORDER="";';
put 'DROP="N";';
put 'end;';
put 'if NAME="FilmNoir" then do;';
put 'ROLE="INPUT";';
put 'LEVEL="BINARY";';
put 'ORDER="";';
put 'DROP="N";';
put 'end;';
put 'if NAME="gender" then do;';
put 'ROLE="INPUT";';
put 'LEVEL="BINARY";';
put 'ORDER="";';
put 'DROP="N";';
put 'end;';
put 'if NAME="Horror" then do;';
put 'ROLE="INPUT";';
put 'LEVEL="BINARY";';
put 'ORDER="";';
put 'DROP="N";';
put 'end;';
put 'if NAME="like" then do;';
put 'ROLE="TARGET";';
put 'LEVEL="BINARY";';
put 'ORDER="";';
put 'DROP="N";';
put 'end;';
put 'if NAME="movieID" then do;';
put 'ROLE="ID";';
put 'LEVEL="NOMINAL";';
put 'ORDER="";';
put 'DROP="N";';
put 'end;';
put 'if NAME="movie_avg_ratings" then do;';
put 'ROLE="REJECTED";';
put 'LEVEL="INTERVAL";';
put 'ORDER="";';
put 'DROP="N";';
put 'end;';
put 'if NAME="movie_popularity" then do;';
put 'ROLE="REJECTED";';
put 'LEVEL="INTERVAL";';
put 'ORDER="";';
put 'DROP="N";';
put 'end;';
put 'if NAME="Musical" then do;';
put 'ROLE="INPUT";';
put 'LEVEL="BINARY";';
put 'ORDER="";';
put 'DROP="N";';
put 'end;';
put 'if NAME="Mystery" then do;';
put 'ROLE="INPUT";';
put 'LEVEL="BINARY";';
put 'ORDER="";';
put 'DROP="N";';
put 'end;';
put 'if NAME="occupation" then do;';
put 'ROLE="INPUT";';
put 'LEVEL="NOMINAL";';
put 'ORDER="";';
put 'DROP="N";';
put 'end;';
put 'if NAME="ratings" then do;';
put 'ROLE="REJECTED";';
put 'LEVEL="INTERVAL";';
put 'ORDER="";';
put 'DROP="N";';
put 'end;';
put 'if NAME="Romance" then do;';
put 'ROLE="INPUT";';
put 'LEVEL="BINARY";';
put 'ORDER="";';
put 'DROP="N";';
put 'end;';
put 'if NAME="SciFi" then do;';
put 'ROLE="INPUT";';
put 'LEVEL="BINARY";';
put 'ORDER="";';
put 'DROP="N";';
put 'end;';
put 'if NAME="Thriller" then do;';
put 'ROLE="INPUT";';
put 'LEVEL="BINARY";';
put 'ORDER="";';
put 'DROP="N";';
put 'end;';
put 'if NAME="title" then do;';
put 'ROLE="REJECTED";';
put 'LEVEL="NOMINAL";';
put 'ORDER="";';
put 'DROP="N";';
put 'end;';
put 'if NAME="userID" then do;';
put 'ROLE="ID";';
put 'LEVEL="NOMINAL";';
put 'ORDER="";';
put 'DROP="N";';
put 'end;';
put 'if NAME="War" then do;';
put 'ROLE="INPUT";';
put 'LEVEL="BINARY";';
put 'ORDER="";';
put 'DROP="N";';
put 'end;';
put 'if NAME="Western" then do;';
put 'ROLE="INPUT";';
put 'LEVEL="BINARY";';
put 'ORDER="";';
put 'DROP="N";';
put 'end;';
run;
*------------------------------------------------------------*;
* DELTACODE File for FIMPORT5;
*------------------------------------------------------------*;
data _null_;
if symget('sysscp')=:'WIN' then dsep='\';
else if symget('sysscp')=:'DNT' then dsep='\';
else dsep = '/';
filepath = pathname('work')!!dsep!!"FIMPORT5_DELTACODE.txt";
call symput('DSPATH', filepath);
run;
data _null_;
filename dspath "&dspath";
file dspath;
put 'if NAME="Action" then do;';
put 'ROLE="INPUT";';
put 'LEVEL="BINARY";';
put 'ORDER="";';
put 'end;';
put 'if NAME="Adventure" then do;';
put 'ROLE="INPUT";';
put 'LEVEL="BINARY";';
put 'ORDER="";';
put 'end;';
put 'if NAME="age" then do;';
put 'ROLE="INPUT";';
put 'LEVEL="NOMINAL";';
put 'ORDER="";';
put 'end;';
put 'if NAME="Animation" then do;';
put 'ROLE="INPUT";';
put 'LEVEL="BINARY";';
put 'ORDER="";';
put 'end;';
put 'if NAME="Childrens" then do;';
put 'ROLE="INPUT";';
put 'LEVEL="BINARY";';
put 'ORDER="";';
put 'end;';
put 'if NAME="Comedy" then do;';
put 'ROLE="INPUT";';
put 'LEVEL="BINARY";';
put 'ORDER="";';
put 'end;';
put 'if NAME="Crime" then do;';
put 'ROLE="INPUT";';
put 'LEVEL="BINARY";';
put 'ORDER="";';
put 'end;';
put 'if NAME="Documentary" then do;';
put 'ROLE="INPUT";';
put 'LEVEL="BINARY";';
put 'ORDER="";';
put 'end;';
put 'if NAME="Drama" then do;';
put 'ROLE="INPUT";';
put 'LEVEL="BINARY";';
put 'ORDER="";';
put 'end;';
put 'if NAME="Fantasy" then do;';
put 'ROLE="INPUT";';
put 'LEVEL="BINARY";';
put 'ORDER="";';
put 'end;';
put 'if NAME="FilmNoir" then do;';
put 'ROLE="INPUT";';
put 'LEVEL="BINARY";';
put 'ORDER="";';
put 'end;';
put 'if NAME="gender" then do;';
put 'ROLE="INPUT";';
put 'LEVEL="BINARY";';
put 'ORDER="";';
put 'end;';
put 'if NAME="Horror" then do;';
put 'ROLE="INPUT";';
put 'LEVEL="BINARY";';
put 'ORDER="";';
put 'end;';
put 'if NAME="like" then do;';
put 'ROLE="TARGET";';
put 'LEVEL="BINARY";';
put 'ORDER="";';
put 'end;';
put 'if NAME="movieID" then do;';
put 'ROLE="ID";';
put 'LEVEL="NOMINAL";';
put 'ORDER="";';
put 'end;';
put 'if NAME="movie_avg_ratings" then do;';
put 'ROLE="REJECTED";';
put 'LEVEL="INTERVAL";';
put 'ORDER="";';
put 'end;';
put 'if NAME="movie_popularity" then do;';
put 'ROLE="REJECTED";';
put 'LEVEL="INTERVAL";';
put 'ORDER="";';
put 'end;';
put 'if NAME="Musical" then do;';
put 'ROLE="INPUT";';
put 'LEVEL="BINARY";';
put 'ORDER="";';
put 'end;';
put 'if NAME="Mystery" then do;';
put 'ROLE="INPUT";';
put 'LEVEL="BINARY";';
put 'ORDER="";';
put 'end;';
put 'if NAME="occupation" then do;';
put 'ROLE="INPUT";';
put 'LEVEL="NOMINAL";';
put 'ORDER="";';
put 'end;';
put 'if NAME="ratings" then do;';
put 'ROLE="REJECTED";';
put 'LEVEL="INTERVAL";';
put 'ORDER="";';
put 'end;';
put 'if NAME="Romance" then do;';
put 'ROLE="INPUT";';
put 'LEVEL="BINARY";';
put 'ORDER="";';
put 'end;';
put 'if NAME="SciFi" then do;';
put 'ROLE="INPUT";';
put 'LEVEL="BINARY";';
put 'ORDER="";';
put 'end;';
put 'if NAME="Thriller" then do;';
put 'ROLE="INPUT";';
put 'LEVEL="BINARY";';
put 'ORDER="";';
put 'end;';
put 'if NAME="title" then do;';
put 'ROLE="REJECTED";';
put 'LEVEL="NOMINAL";';
put 'ORDER="";';
put 'end;';
put 'if NAME="userID" then do;';
put 'ROLE="ID";';
put 'LEVEL="NOMINAL";';
put 'ORDER="";';
put 'end;';
put 'if NAME="War" then do;';
put 'ROLE="INPUT";';
put 'LEVEL="BINARY";';
put 'ORDER="";';
put 'end;';
put 'if NAME="Western" then do;';
put 'ROLE="INPUT";';
put 'LEVEL="BINARY";';
put 'ORDER="";';
put 'end;';
put 'drop DROP;';
run;
*------------------------------------------------------------*;
* EMNOTES File for FIMPORT5;
*------------------------------------------------------------*;
data _null_;
if symget('sysscp')=:'WIN' then dsep='\';
else if symget('sysscp')=:'DNT' then dsep='\';
else dsep = '/';
filepath = pathname('work')!!dsep!!"FIMPORT5_EMNOTES.txt";
call symput('DSPATH', filepath);
run;
data _null_;
filename dspath "&dspath" encoding="utf-8" NOBOM;
file dspath;
run;
*------------------------------------------------------------*;
* USERTRAINCODE File for EMCODE3;
*------------------------------------------------------------*;
data _null_;
if symget('sysscp')=:'WIN' then dsep='\';
else if symget('sysscp')=:'DNT' then dsep='\';
else dsep = '/';
filepath = pathname('work')!!dsep!!"EMCODE3_USERTRAINCODE.sas";
call symput('DSPATH', filepath);
run;
data _null_;
filename dspath "&dspath";
file dspath;
run;
*------------------------------------------------------------*;
* EMNOTES File for EMCODE3;
*------------------------------------------------------------*;
data _null_;
if symget('sysscp')=:'WIN' then dsep='\';
else if symget('sysscp')=:'DNT' then dsep='\';
else dsep = '/';
filepath = pathname('work')!!dsep!!"EMCODE3_EMNOTES.txt";
call symput('DSPATH', filepath);
run;
data _null_;
filename dspath "&dspath" encoding="utf-8" NOBOM;
file dspath;
run;
*------------------------------------------------------------*;
* Create node properties data set;
*------------------------------------------------------------*;
data nodeprops;
length id $12 property $64 value $400;
id= "Tree4";
property="Location";
value= "CATALOG";
output;
id= "Tree4";
property="Catalog";
value= "SASHELP.EMMODL.TREE.SOURCE";
output;
id= "Tree4";
property="ToolType";
value= "MODEL";
output;
id= "Tree4";
property="TrainMode";
value= "BATCH";
output;
id= "Tree4";
property="ImportModel";
value= "N";
output;
id= "Tree4";
property="Freeze";
value= "N";
output;
id= "Tree4";
property="UseMultipleTarget";
value= "N";
output;
id= "Tree4";
property="Precision";
value= "4";
output;
id= "Tree4";
property="IntervalCriterion";
value= "PROBF";
output;
id= "Tree4";
property="NominalCriterion";
value= "PROBCHISQ";
output;
id= "Tree4";
property="OrdinalCriterion";
value= "ENTROPY";
output;
id= "Tree4";
property="SigLevel";
value= "0.2";
output;
id= "Tree4";
property="Splitsize";
value= ".";
output;
id= "Tree4";
property="LeafSize";
value= "5";
output;
id= "Tree4";
property="MinCatSize";
value= "5";
output;
id= "Tree4";
property="Maxbranch";
value= "3";
output;
id= "Tree4";
property="Maxdepth";
value= "6";
output;
id= "Tree4";
property="Nrules";
value= "5";
output;
id= "Tree4";
property="Nsurrs";
value= "0";
output;
id= "Tree4";
property="MissingValue";
value= "USEINSEARCH";
output;
id= "Tree4";
property="UseVarOnce";
value= "N";
output;
id= "Tree4";
property="SplitPrecision";
value= "4";
output;
id= "Tree4";
property="Subtree";
value= "ASSESSMENT";
output;
id= "Tree4";
property="NSubtree";
value= "1";
output;
id= "Tree4";
property="AssessMeasure";
value= "PROFIT/LOSS";
output;
id= "Tree4";
property="AssessPercentage";
value= "0.25";
output;
id= "Tree4";
property="NodeSample";
value= "20000";
output;
id= "Tree4";
property="Exhaustive";
value= "5000";
output;
id= "Tree4";
property="Kass";
value= "Y";
output;
id= "Tree4";
property="KassApply";
value= "BEFORE";
output;
id= "Tree4";
property="Depth";
value= "Y";
output;
id= "Tree4";
property="Inputs";
value= "N";
output;
id= "Tree4";
property="NumInputs";
value= "1";
output;
id= "Tree4";
property="VarSelection";
value= "Y";
output;
id= "Tree4";
property="Leafid";
value= "Y";
output;
id= "Tree4";
property="NodeRole";
value= "SEGMENT";
output;
id= "Tree4";
property="Performance";
value= "DISK";
output;
id= "Tree4";
property="CV";
value= "N";
output;
id= "Tree4";
property="CVNIter";
value= "10";
output;
id= "Tree4";
property="CVRepeat";
value= "1";
output;
id= "Tree4";
property="CVSeed";
value= "12345";
output;
id= "Tree4";
property="ObsImportance";
value= "N";
output;
id= "Tree4";
property="NumSingleImp";
value= "5";
output;
id= "Tree4";
property="UseDecision";
value= "N";
output;
id= "Tree4";
property="UsePriors";
value= "N";
output;
id= "Tree4";
property="ClassColorBy";
value= "PERCENTCORRECT";
output;
id= "Tree4";
property="IntColorBy";
value= "AVG";
output;
id= "Tree4";
property="ShowNodeId";
value= "Y";
output;
id= "Tree4";
property="ShowValid";
value= "Y";
output;
id= "Tree4";
property="Pred";
value= "N";
output;
id= "Tree4";
property="Target";
value= "ALL";
output;
id= "Tree4";
property="Count";
value= "Y";
output;
id= "Tree4";
property="ProfitLoss";
value= "NONE";
output;
id= "Tree4";
property="PercentCorrect";
value= "N";
output;
id= "Tree4";
property="AVG";
value= "Y";
output;
id= "Tree4";
property="RASE";
value= "N";
output;
id= "Tree4";
property="CreateSample";
value= "DEFAULT";
output;
id= "Tree4";
property="SampleMethod";
value= "RANDOM";
output;
id= "Tree4";
property="SampleSize";
value= "10000";
output;
id= "Tree4";
property="SampleSeed";
value= "12345";
output;
id= "Tree4";
property="ForceRun";
value= "N";
output;
id= "Tree4";
property="RunAction";
value= "Train";
output;
id= "Tree4";
property="Component";
value= "DecisionTree";
output;
id= "Tree4";
property="Criterion";
value= "DEFAULT";
output;
id= "Tree4";
property="Dummy";
value= "N";
output;
id= "Tree4";
property="Predict";
value= "Y";
output;
id= "Tree4";
property="ImportedTreeData";
value= "";
output;
id= "Tree4";
property="ToolPrefix";
value= "Tree";
output;
id= "Tree4";
property="EM_VARIABLEATTRIBUTES";
value= "WORK.Tree4_VariableAttribute";
output;
id= "Tree4";
property="EM_DECMETA_like";
value= "WORK.Tree4_like_DM";
output;
id= "Tree4";
property="EM_DECDATA_like";
value= "WORK.Tree4_like_DD";
output;
id= "Tree4";
property="EM_FILE_USERTRAINCODE";
value= "Tree4_USERTRAINCODE.sas";
output;
id= "Tree4";
property="EM_FILE_EMNOTES";
value= "Tree4_EMNOTES.txt";
output;
id= "Part3";
property="Method";
value= "DEFAULT";
output;
id= "Part3";
property="TrainPct";
value= "70";
output;
id= "Part3";
property="ValidatePct";
value= "30";
output;
id= "Part3";
property="TestPct";
value= "0";
output;
id= "Part3";
property="RandomSeed";
value= "12345";
output;
id= "Part3";
property="OutputType";
value= "DATA";
output;
id= "Part3";
property="IntervalDistribution";
value= "Y";
output;
id= "Part3";
property="ClassDistribution";
value= "Y";
output;
id= "Part3";
property="ForceRun";
value= "N";
output;
id= "Part3";
property="RunAction";
value= "Train";
output;
id= "Part3";
property="Component";
value= "Partition";
output;
id= "Part3";
property="EM_FILE_EMNOTES";
value= "Part3_EMNOTES.txt";
output;
id= "Impt2";
property="MethodInterval";
value= "MEAN";
output;
id= "Impt2";
property="MethodClass";
value= "COUNT";
output;
id= "Impt2";
property="MethodTargetInterval";
value= "NONE";
output;
id= "Impt2";
property="MethodTargetClass";
value= "NONE";
output;
id= "Impt2";
property="ABWTuning";
value= "9";
output;
id= "Impt2";
property="AHUBERTuning";
value= "1.5";
output;
id= "Impt2";
property="AWAVETuning";
value= "6.2831853072";
output;
id= "Impt2";
property="SpacingProportion";
value= "90";
output;
id= "Impt2";
property="DefaultChar";
value= " ";
output;
id= "Impt2";
property="DefaultNum";
value= "0";
output;
id= "Impt2";
property="RandomSeed";
value= "12345";
output;
id= "Impt2";
property="Normalize";
value= "Y";
output;
id= "Impt2";
property="ImputeNoMissing";
value= "N";
output;
id= "Impt2";
property="MaxPctMissing";
value= "50";
output;
id= "Impt2";
property="ValidateTestMissing";
value= "N";
output;
id= "Impt2";
property="DistributionMissing";
value= "N";
output;
id= "Impt2";
property="LeafSize";
value= "5";
output;
id= "Impt2";
property="Maxbranch";
value= "2";
output;
id= "Impt2";
property="Maxdepth";
value= "6";
output;
id= "Impt2";
property="MinCatSize";
value= "5";
output;
id= "Impt2";
property="Nrules";
value= "5";
output;
id= "Impt2";
property="Nsurrs";
value= "2";
output;
id= "Impt2";
property="Splitsize";
value= ".";
output;
id= "Impt2";
property="Indicator";
value= "NONE";
output;
id= "Impt2";
property="IndicatorRole";
value= "REJECTED";
output;
id= "Impt2";
property="ReplaceVariable";
value= "N";
output;
id= "Impt2";
property="HideVariable";
value= "Y";
output;
id= "Impt2";
property="IndicatorSource";
value= "IMPUTED";
output;
id= "Impt2";
property="ForceRun";
value= "N";
output;
id= "Impt2";
property="RunAction";
value= "Train";
output;
id= "Impt2";
property="Component";
value= "Impute";
output;
id= "Impt2";
property="EM_VARIABLEATTRIBUTES";
value= "WORK.Impt2_VariableAttribute";
output;
id= "Impt2";
property="EM_FILE_EMNOTES";
value= "Impt2_EMNOTES.txt";
output;
id= "FIMPORT5";
property="Location";
value= "CATALOG";
output;
id= "FIMPORT5";
property="Catalog";
value= "SASHELP.EMSAMP.Fimport.SOURCE";
output;
id= "FIMPORT5";
property="ImportType";
value= "Local";
output;
id= "FIMPORT5";
property="GuessRows";
value= "500";
output;
id= "FIMPORT5";
property="Delimiter";
value= ",";
output;
id= "FIMPORT5";
property="NameRow";
value= "Y";
output;
id= "FIMPORT5";
property="SkipRows";
value= "0";
output;
id= "FIMPORT5";
property="MaxRows";
value= "1000000";
output;
id= "FIMPORT5";
property="MaxCols";
value= "10000";
output;
id= "FIMPORT5";
property="FileType";
value= "csv";
output;
id= "FIMPORT5";
property="Role";
value= "TRAIN";
output;
id= "FIMPORT5";
property="ForceRun";
value= "N";
output;
id= "FIMPORT5";
property="Summarize";
value= "N";
output;
id= "FIMPORT5";
property="AdvancedAdvisor";
value= "N";
output;
id= "FIMPORT5";
property="RunAction";
value= "Train";
output;
id= "FIMPORT5";
property="Component";
value= "FileImport";
output;
id= "FIMPORT5";
property="IFileName";
value= "\\andrew.ad.cmu.edu\users\users21\svelicha\Documents\My SAS Files\Final project\movielens100States_2.csv";
output;
id= "FIMPORT5";
property="AccessTable";
value= "NoTableName";
output;
id= "FIMPORT5";
property="UserID";
value= "NoUserID";
output;
id= "FIMPORT5";
property="Password";
value= "NoPassword";
output;
id= "FIMPORT5";
property="ToolType";
value= "SAMPLE";
output;
id= "FIMPORT5";
property="ToolPrefix";
value= "FIMPORT";
output;
id= "FIMPORT5";
property="EM_VARIABLEATTRIBUTES";
value= "WORK.FIMPORT5_VariableAttribute";
output;
id= "FIMPORT5";
property="EM_FILE_USERTRAINCODE";
value= "FIMPORT5_USERTRAINCODE.sas";
output;
id= "FIMPORT5";
property="EM_FILE_VARIABLESETDELTA";
value= "FIMPORT5_VARIABLESETDELTA.txt";
output;
id= "FIMPORT5";
property="EM_FILE_DELTACODE";
value= "FIMPORT5_DELTACODE.txt";
output;
id= "FIMPORT5";
property="EM_FILE_EMNOTES";
value= "FIMPORT5_EMNOTES.txt";
output;
id= "EMCODE3";
property="UsePriors";
value= "Y";
output;
id= "EMCODE3";
property="ToolType";
value= "UTILITY";
output;
id= "EMCODE3";
property="DataNeeded";
value= "N";
output;
id= "EMCODE3";
property="PublishCode";
value= "PUBLISH";
output;
id= "EMCODE3";
property="ScoreCodeFormat";
value= "DATASTEP";
output;
id= "EMCODE3";
property="MetaAdvisor";
value= "BASIC";
output;
id= "EMCODE3";
property="ForceRun";
value= "N";
output;
id= "EMCODE3";
property="RunAction";
value= "Train";
output;
id= "EMCODE3";
property="Component";
value= "SASCode";
output;
id= "EMCODE3";
property="ToolPrefix";
value= "EMCODE";
output;
id= "EMCODE3";
property="EM_FILE_USERTRAINCODE";
value= "EMCODE3_USERTRAINCODE.sas";
output;
id= "EMCODE3";
property="EM_FILE_EMNOTES";
value= "EMCODE3_EMNOTES.txt";
output;
run;
*------------------------------------------------------------*;
* Create connections data set;
*------------------------------------------------------------*;
data connect;
length from to $12;
from="Tree4";
to="EMCODE3";
output;
from="Part3";
to="Tree4";
output;
from="Impt2";
to="Part3";
output;
from="FIMPORT5";
to="Impt2";
output;
run;
*------------------------------------------------------------*;
* Create actions to run data set;
*------------------------------------------------------------*;
%macro emaction;
%let actionstring = %upcase(&EM_ACTION);
%if %index(&actionstring, RUN) or %index(&actionstring, REPORT) %then %do;
data actions;
length id $12 action $40;
id="EMCODE3";
%if %index(&actionstring, RUN) %then %do;
action='run';
output;
%end;
%if %index(&actionstring, REPORT) %then %do;
action='report';
output;
%end;
run;
%end;
%mend;
%emaction;
*------------------------------------------------------------*;
* Execute the actions;
*------------------------------------------------------------*;
%em5batch(execute, workspace=workspace, nodes=nodes, connect=connect, datasources=datasources, nodeprops=nodeprops, action=actions);
