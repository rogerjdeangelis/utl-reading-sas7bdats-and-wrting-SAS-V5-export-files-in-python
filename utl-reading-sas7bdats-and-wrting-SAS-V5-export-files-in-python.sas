Reading sas7bdats and wrting SAS V5 export files in python                                                                    
                                                                                                                             
*_                   _                                                                                                       
(_)_ __  _ __  _   _| |_                                                                                                     
| | '_ \| '_ \| | | | __|                                                                                                    
| | | | | |_) | |_| | |_                                                                                                     
|_|_| |_| .__/ \__,_|\__|                                                                                                    
        |_|                                                                                                                  
;                                                                                                                            
                                                                                                                             
d:/sd1/have.sas7bdat                                                                                                         
                                                                                                                             
options validvarname=upcase;                                                                                                 
libname sd1 "d:/sd1";                                                                                                        
data sd1.have;                                                                                                               
  set sashelp.class(obs=4);                                                                                                  
  label                                                                                                                      
     NAME    = "Student Name  "                                                                                              
     SEX     = "Student Sex   "                                                                                              
     AGE     = "Student Age   "                                                                                              
     HEIGHT  = "Student Height"                                                                                              
     WEIGHT  = "Student Weight"                                                                                              
  ;                                                                                                                          
run;quit;                                                                                                                    
                                                                                                                             
SD1.HAVE total obs=5                                                                                                         
                                                                                                                             
    NAME      SEX    AGE    HEIGHT    WEIGHT                                                                                 
                                                                                                                             
   Alfred      M      14     69.0      112.5                                                                                 
   Alice       F      13     56.5       84.0                                                                                 
   Barbara     F      13     65.3       98.0                                                                                 
   Carol       F      14     62.8      102.5                                                                                 
   Henry       M      14     63.5      102.5                                                                                 
                                                                                                                             
 Variables in Creation Order                                                                                                 
                                                                                                                             
#    Variable    Type    Len   Label                                                                                         
                                                                                                                             
1    NAME        Char      8   Student Name                                                                                  
2    SEX         Char      1   Student Sex                                                                                   
3    AGE         Num       8   Student Age                                                                                   
4    HEIGHT      Num       8   Student Height                                                                                
5    WEIGHT      Num       8   Student Weight                                                                                
                                                                                                                             
*            _               _                                                                                               
  ___  _   _| |_ _ __  _   _| |_                                                                                             
 / _ \| | | | __| '_ \| | | | __|                                                                                            
| (_) | |_| | |_| |_) | |_| | |_                                                                                             
 \___/ \__,_|\__| .__/ \__,_|\__|                                                                                            
                |_|                                                                                                          
             _   _                   _                                                                                       
 _ __  _   _| |_| |__   ___  _ __   | | ___   __ _                                                                           
| '_ \| | | | __| '_ \ / _ \| '_ \  | |/ _ \ / _` |                                                                          
| |_) | |_| | |_| | | | (_) | | | | | | (_) | (_| |                                                                          
| .__/ \__, |\__|_| |_|\___/|_| |_| |_|\___/ \__, |                                                                          
|_|    |___/                                 |___/                                                                           
;                                                                                                                            
                                                                                                                             
Inside Python                                                                                                                
                                                                                                                             
     NAME SEX   AGE  HEIGHT  WEIGHT                                                                                          
   Alfred   M  14.0    69.0   112.5                                                                                          
    Alice   F  13.0    56.5    84.0                                                                                          
  Barbara   F  13.0    65.3    98.0                                                                                          
    Carol   F  14.0    62.8   102.5                                                                                          
                                                                                                                             
Column_Names:    ['NAME', 'SEX', 'AGE', 'HEIGHT', 'WEIGHT']                                                                  
                                                                                                                             
Column Labels:   ['Student Name', 'Student Sex', 'Student Age', 'Student Height', 'Student Weight']                          
                                                                                                                             
Names to Labels: {'NAME': 'Student Name', 'SEX': 'Student Sex',                                                              
    'AGE': 'Student Age', 'HEIGHT': 'Student Height', 'WEIGHT': 'Student Weight'}                                            
                                                                                                                             
Number of Rows:    4                                                                                                         
Number of Columns: 5                                                                                                         
Table Name:        HAVE                                                                                                      
Encoding:          WINDOWS-1252                                                                                              
                                                                                                                             
*            _   _                                         _                                                                 
 _ __  _   _| |_| |__   ___  _ __   __  ___ __   ___  _ __| |_                                                               
| '_ \| | | | __| '_ \ / _ \| '_ \  \ \/ / '_ \ / _ \| '__| __|                                                              
| |_) | |_| | |_| | | | (_) | | | |  >  <| |_) | (_) | |  | |_                                                               
| .__/ \__, |\__|_| |_|\___/|_| |_| /_/\_\ .__/ \___/|_|   \__|                                                              
|_|    |___/                             |_|                                                                                 
;                                                                                                                            
                                                                                                                             
SAS V5 XPORT FILE                                                                                                            
                                                                                                                             
 d:/xpt/want.xpt                                                                                                             
                                                                                                                             
Record  6 has the table name, "WANT"                                                                                         
Record  9 has then first column name, "NAME".                                                                                
Record 19 has then first valuefor column NAME, "Alfred"                                                                      
                                                                                                                             
                                                                                                                             
  --- Record Number ---  1   ---  Record Length ---- 80                                                                      
                                                                                                                             
 HEADER RECORD*******LIBRARY HEADER RECORD!!!!!!!000000000000000000000000000000                                              
 1...5....10...15...20...25...30...35...40...45...50...55...60...65...70...75...8                                            
 44444525444542222222444545524444452544454222222233333333333333333333333333333322                                            
 8514520253F24AAAAAAAC92212908514520253F24111111100000000000000000000000000000000                                            
                                                                                                                             
                                                                                                                             
  --- Record Number ---  2   ---  Record Length ---- 80                                                                      
                                                                                                                             
 SAS     SAS     SASLIB  6.06    bsd4.2                          11SEP19:12:24:47                                            
 1...5....10...15...20...25...30...35...40...45...50...55...60...65...70...75...8                                            
 54522222545222225454442232332222676323222222222222222222222222223354533333333333                                            
 3130000031300000313C92006E0600002344E2000000000000000000000000001135019A12A24A47                                            
                                                                                                                             
                                                                                                                             
  --- Record Number ---  3   ---  Record Length ---- 80                                                                      
                                                                                                                             
 11SEP19:12:24:47                                                                                                            
 1...5....10...15...20...25...30...35...40...45...50...55...60...65...70...75...8                                            
 33545333333333332222222222222222222222222222222222222222222222222222222222222222                                            
 1135019A12A24A470000000000000000000000000000000000000000000000000000000000000000                                            
                                                                                                                             
 ....                                                                                                                        
                                                                                                                             
  --- Record Number ---  6   ---  Record Length ---- 80                                                                      
                                                                                                                             
 SAS     want    SASDATA 6.06    bsd4.2                          11SEP19:12:24:47                                            
 1...5....10...15...20...25...30...35...40...45...50...55...60...65...70...75...8                                            
 54522222766722225454454232332222676323222222222222222222222222223354533333333333                                            
 3130000071E40000313414106E0600002344E2000000000000000000000000001135019A12A24A47                                            
                                                                                                                             
 ...                                                                                                                         
                                                                                                                             
  --- Record Number ---  9   ---  Record Length ---- 80                                                                      
                                                                                                                             
 ........NAME                                            ........................                                            
 1...5....10...15...20...25...30...35...40...45...50...55...60...65...70...75...8                                            
 00000000444422222222222222222222222222222222222222222222000000000000000000000000                                            
 02000700E1D500000000000000000000000000000000000000000000000000000000000000000000                                            
                                                                                                                             
 ...                                                                                                                         
                                                                                                                             
  --- Record Number ---  19   ---  Record Length ---- 80                                                                     
                                                                                                                             
 Alfred MA.......BE......Bp......Alice  FA.......B8......BT......BarbaraFA.......                                            
 1...5....10...15...20...25...30...35...40...45...50...55...60...65...70...75...8                                            
 466766244E0000004400000047800000466662244D0000004380000045000000467667644D000000                                            
 1C62540D1000000025000000200000001C9350061000000028000000240000002122121610000000                                            
                                                                                                                             
*                                        _                                                                                   
 ___  __ _ ___    ___  _   _ _ __  _   _| |_                                                                                 
/ __|/ _` / __|  / _ \| | | | '_ \| | | | __|                                                                                
\__ \ (_| \__ \ | (_) | |_| | |_) | |_| | |_                                                                                 
|___/\__,_|___/  \___/ \__,_| .__/ \__,_|\__|                                                                                
                            |_|                                                                                              
;                                                                                                                            
                                                                                                                             
* convert xpt to SAS dataset;                                                                                                
                                                                                                                             
WORK.WANT total obs=4                                                                                                        
                                                                                                                             
   NAME      SEX    AGE    HEIGHT    WEIGHT                                                                                  
                                                                                                                             
  Alfred      M      14     69.0      112.5                                                                                  
  Alice       F      13     56.5       84.0                                                                                  
  Barbara     F      13     65.3       98.0                                                                                  
  Carol       F      14     62.8      102.5                                                                                  
                                                                                                                             
                                                                                                                             
 Variables in Creation Order                                                                                                 
                                                                                                                             
#    Variable    Type    Len                                                                                                 
                                                                                                                             
1    NAME        Char      7   ** was 8 on input;                                                                            
2    SEX         Char      1                                                                                                 
3    AGE         Num       8                                                                                                 
4    HEIGHT      Num       8                                                                                                 
5    WEIGHT      Num       8                                                                                                 
                                                                                                                             
*                                                                                                                            
 _ __  _ __ ___   ___ ___  ___ ___                                                                                           
| '_ \| '__/ _ \ / __/ _ \/ __/ __|                                                                                          
| |_) | | | (_) | (_|  __/\__ \__ \                                                                                          
| .__/|_|  \___/ \___\___||___/___/                                                                                          
|_|                                                                                                                          
;                                                                                                                            
                                                                                                                             
%utl_submit_py64_37("                                                                                                        
import pandas as pd;                                                                                                         
import pyreadstat;                                                                                                           
want, meta = pyreadstat.read_sas7bdat('d:/sd1/have.sas7bdat');                                                               
print(want);                                                                                                                 
print(meta.column_names);                                                                                                    
print(meta.column_labels);                                                                                                   
print(meta.column_names_to_labels);                                                                                          
print(meta.number_rows);                                                                                                     
print(meta.number_columns);                                                                                                  
print(meta.file_label);                                                                                                      
print(meta.file_encoding);                                                                                                   
pyreadstat.write_xport(want, 'd:/xpt/want.xpt',table_name='want');                                                           
");                                                                                                                          
                                                                                                                             
libname xpt xport "d:/xpt/want.xpt";                                                                                         
proc contents data=xpt._all_;                                                                                                
run;quit;                                                                                                                    
data want;                                                                                                                   
  set xpt.want;                                                                                                              
run;quit;                                                                                                                    
libname xpt clear;                                                                                                           
                                                                                                                             
