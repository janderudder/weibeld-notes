FasdUAS 1.101.10   ��   ��    k             l      �� ��   ��
Script library to report errors, allowing to delay error reporting to 
the user to a later time. This can be especially useful in a long 
repeat statement. 

Subroutines:

	delayReportErrors ()
	immediatelyReportErrors ()
		Initilialization at the beginning of a script.
		Report errors to the user immediately or not.
		This also clears the error logs.
	
	reportError ( errorMessage, errorNumber )
		Report an error. Use this for example in the error 
		handler of a try statement instead of a dialog.
	
	checkForErrors ()
		Check if there were any unreported errors, and notify 
		the user if there were any. The user can choose to 
		inspect the errors or dump them to a file.


Properties:

	dialogOnError
		Boolean, true if errors should be reported immediately.
	
	errorReport
		List of all reported errors.
	
	defaultErrorFileName
		Default filename for dumped reported errors.


Example:

-- load the Error Reporting script library
set errorLib to (load script file �
	((path to home folder as string) & "Library:ScriptingAdditions:Error Reporting.scpt"))
-- we only report all errors at the end
tell errorLib to delayReportErrors()

-- repeat a large number of times...
repeat with anObject in myObjects
	try
		-- do anything, and catch errors
		my handleObject(anObject)
	on error errorMessage number errorNumber
		-- let errorLib handle the errors
		tell errorLib to reportError(errorMessage, errorNumber)
	end try
end

-- see if we had any errors, and show them to the user
tell errorLib to checkForErrors()

       	  l     ������  ��   	  
  
 j     �� �� 0 dialogonerror dialogOnError  m     ��
�� boovfals      j    �� �� 0 errorreport errorReport  J    ����        j    	�� �� ,0 defaulterrorfilename defaultErrorFileName  m        ErrorReports         l     ������  ��        i   
     I      �������� &0 delayreporterrors delayReportErrors��  ��    k            r         m     ��
�� boovfals  o      ���� 0 dialogonerror dialogOnError   ��  r       !   J    
����   ! o      ���� 0 errorreport errorReport��     " # " l     ������  ��   #  $ % $ i     & ' & I      �������� 20 immediatelyreporterrors immediatelyReportErrors��  ��   ' k      ( (  ) * ) r      + , + m     ��
�� boovtrue , o      ���� 0 dialogonerror dialogOnError *  -�� - r     . / . J    
����   / o      ���� 0 errorreport errorReport��   %  0 1 0 l     ������  ��   1  2 3 2 i     4 5 4 I      �� 6���� 0 reporterror reportError 6  7 8 7 o      ���� 0 errormessage errorMessage 8  9�� 9 o      ���� 0 errornumber errorNumber��  ��   5 k     1 : :  ; < ; r      = > = b      ? @ ? o     ���� 0 errorreport errorReport @ l 	   A�� A l    B�� B b     C D C b    
 E F E b     G H G m     I I  Error:     H o    ���� 0 errornumber errorNumber F m    	 J J  .     D o   
 ���� 0 errormessage errorMessage��  ��   > o      ���� 0 errorreport errorReport <  K�� K l   1 L M L Z    1 N O���� N o    ���� 0 dialogonerror dialogOnError O k    - P P  Q R Q l   �� S��   S / ) immediately notify the user of the error    R  T U T I   !������
�� .sysobeepnull��� ��� long��  ��   U  V�� V I  " -�� W X
�� .sysodlogaskr        TEXT W o   " #���� 0 errormessage errorMessage X �� Y Z
�� 
btns Y J   $ ' [ [  \�� \ m   $ % ] ]  OK   ��   Z �� ^��
�� 
dflt ^ m   ( )���� ��  ��  ��  ��   M   dialogOnError   ��   3  _ ` _ l     ������  ��   `  a b a i     c d c I      ��������  0 checkforerrors checkForErrors��  ��   d l   � e f e Z    � g h���� g F      i j i H      k k o     ���� 0 dialogonerror dialogOnError j ?   	  l m l l  	  n�� n I  	 �� o��
�� .corecnte****       **** o o   	 ���� 0 errorreport errorReport��  ��   m m    ����   h k   � p p  q r q l   �� s��   s $  there were unreported errors     r  t�� t Q   � u v w u k   ] x x  y z y Z    G { |�� } { =    ' ~  ~ l   % ��� � I   %�� ���
�� .corecnte****       **** � o    !���� 0 errorreport errorReport��  ��    m   % &����  | r   * 1 � � � b   * / � � � b   * - � � � m   * + � �  There was 1 error!    � o   + ,��
�� 
ret  � l 	 - . ��� � m   - . � � : 4Do you want me to show it or dump it on the Desktop?   ��   � o      ���� 0 
themessage 
theMessage��   } r   4 G � � � b   4 E � � � b   4 C � � � b   4 A � � � b   4 ? � � � m   4 5 � �  There were     � l  5 > ��� � I  5 >�� ���
�� .corecnte****       **** � o   5 :���� 0 errorreport errorReport��  ��   � m   ? @ � �   errors!    � o   A B��
�� 
ret  � l 	 C D ��� � m   C D � � > 8Do you want me to show them or dump them on the Desktop?   ��   � o      ���� 0 
themessage 
theMessage z  � � � I  H M������
�� .sysobeepnull��� ��� long��  ��   �  � � � I  N _�� � �
�� .sysodlogaskr        TEXT � o   N O���� 0 
themessage 
theMessage � �� � �
�� 
disp � l 
 P Q ��� � m   P Q��
�� stic   ��   � �� � �
�� 
btns � J   R W � �  � � � m   R S � �  Cancel    �  � � � m   S T � � 
 Dump    �  ��� � m   T U � � 
 Show   ��   � �� ���
�� 
dflt � m   X Y���� ��   �  � � � r   ` i � � � l  ` g ��� � n   ` g � � � 1   c g��
�� 
bhit � l  ` c ��� � 1   ` c��
�� 
rslt��  ��   � o      ���� 0 	theanswer 	theAnswer �  � � � l  j � � � � Z   j � � ����� � =   j o � � � o   j k���� 0 	theanswer 	theAnswer � m   k n � � 
 Show    � k   r � � �  � � � I  r ��� � �
�� .gtqpchltTEXT  @   @ TEXT � o   r w���� 0 errorreport errorReport � �� � �
�� 
prmp � m   z } � �  Errors:    � �� � �
�� 
cnbt � m   � � � � 
 Dump    � �� � �
�� 
okbt � m   � � � � 
 Done    � �� ���
�� 
empL � m   � ���
�� boovtrue��   �  ��� � Z  � � � ����� � =   � � � � � l  � � ��� � 1   � ���
�� 
rslt��   � m   � ���
�� boovfals � r   � � � � � m   � � � � 
 Dump    � o      ���� 0 	theanswer 	theAnswer��  ��  ��  ��  ��   �   Show    �  � � � l  �[ � � � Z   �[ � ����� � =   � � � � � o   � ����� 0 	theanswer 	theAnswer � m   � � � � 
 Dump    � k   �W � �  � � � l  � � � � O   � � � � k   � � �  � � � r   � � � � � o   � ��� ,0 defaulterrorfilename defaultErrorFileName � o      �~�~ 0 errorfilename errorFileName �  � � � r   � � � � � m   � ��}�}   � o      �|�| 0 i   �  � � � V   � � � � � k   � � � �  � � � r   � � � � � [   � � � � � o   � ��{�{ 0 i   � m   � ��z�z  � o      �y�y 0 i   �  ��x � r   � � � � � b   � �   o   � ��w�w ,0 defaulterrorfilename defaultErrorFileName o   � ��v�v 0 i   � o      �u�u 0 errorfilename errorFileName�x   � I  � ��t�s
�t .coredoexbool        obj  n   � � 4   � ��r
�r 
file o   � ��q�q 0 errorfilename errorFileName 1   � ��p
�p 
desk�s   � �o r   � c   �	
	 l  �
�n I  �
�m�l
�m .corecrel****      � null�l   �k
�k 
kocl m   � ��j
�j 
file �i
�i 
prdt K   � � �h�g
�h 
pnam o   � ��f�f 0 errorfilename errorFileName�g   �e�d
�e 
insh 1   ��c
�c 
desk�d  �n  
 m  
�b
�b 
alis o      �a�a 0 	errorfile 	errorFile�o   � m   � ��null     ߃��  �
Finder.app�� � �0�L��� 7���0   � ��l   )       �(�K� ���P �MACS   alis    r  Macintosh HD               ��+GH+    �
Finder.app                                                       3��K� � 0 � �����  	                CoreServices    ��'      ��/�      �  
�  
�  3Macintosh HD:System:Library:CoreServices:Finder.app    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��   �   Finder    �  I �`
�` .rdwropenshor       file o  �_�_ 0 	errorfile 	errorFile �^�]
�^ 
perm m  �\
�\ boovtrue�]    r  % o  �[
�[ 
ret  n      1   $�Z
�Z 
txdl 1   �Y
�Y 
ascr  !  I &7�X"#
�X .rdwrwritnull���     ****" l &/$�W$ c  &/%&% o  &+�V�V 0 errorreport errorReport& m  +.�U
�U 
TEXT�W  # �T'�S
�T 
refn' o  23�R�R 0 	errorfile 	errorFile�S  ! ()( I 8=�Q*�P
�Q .rdwrclosnull���     ***** o  89�O�O 0 	errorfile 	errorFile�P  ) +�N+ I >W�M,-
�M .sysodlogaskr        TEXT, b  >I./. b  >G010 b  >C232 m  >A44  Wrote error logs to file:   3 o  AB�L
�L 
ret 1 m  CF55  Desktop:   / o  GH�K�K 0 errorfilename errorFileName- �J67
�J 
btns6 J  JO88 9�I9 m  JM::  OK   �I  7 �H;�G
�H 
dflt; m  PQ�F�F �G  �N  ��  ��   �   Dump    � <�E< l \\�D�C�D  �C  �E   v R      �B=>
�B .ascrerr ****      � ****= o      �A�A 0 errormessage errorMessage> �@?�?
�@ 
errn? o      �>�> 0 errornumber errorNumber�?   w Z  e�@A�=�<@ >  ejBCB o  ef�;�; 0 errornumber errorNumberC m  fi�:�:��A I m|�9DE
�9 .sysodlogaskr        TEXTD o  mn�8�8 0 errormessage errorMessageE �7FG
�7 
btnsF J  otHH I�6I m  orJJ  OK   �6  G �5K�4
�5 
dfltK m  uv�3�3 �4  �=  �<  ��  ��  ��   f   should show errors    b L�2L l     �1�0�1  �0  �2       	�/M�.N OPQR�/  M �-�,�+�*�)�(�'�- 0 dialogonerror dialogOnError�, 0 errorreport errorReport�+ ,0 defaulterrorfilename defaultErrorFileName�* &0 delayreporterrors delayReportErrors�) 20 immediatelyreporterrors immediatelyReportErrors�( 0 reporterror reportError�'  0 checkforerrors checkForErrors
�. boovfalsN �&�%�&  �%  O �$ �#�"ST�!�$ &0 delayreporterrors delayReportErrors�#  �"  S  T  �! fEc   OjvEc  P �  '��UV��  20 immediatelyreporterrors immediatelyReportErrors�  �  U  V  � eEc   OjvEc  Q � 5��WX�� 0 reporterror reportError� �Y� Y  ��� 0 errormessage errorMessage� 0 errornumber errorNumber�  W ��� 0 errormessage errorMessage� 0 errornumber errorNumberX  I J�� ]���
� .sysobeepnull��� ��� long
� 
btns
� 
dflt� 
� .sysodlogaskr        TEXT� 2b  �%�%�%%Ec  Ob    *j O���kv�k� Y hR � d��Z[��  0 checkforerrors checkForErrors�  �  Z �
�	������
 0 
themessage 
theMessage�	 0 	theanswer 	theAnswer� 0 errorfilename errorFileName� 0 i  � 0 	errorfile 	errorFile� 0 errormessage errorMessage� 0 errornumber errorNumber[ :�� �� � � � �� ������ � � ����������� ��� ��� ��� ������� � �����������������������������������45:����\��J
� .corecnte****       ****
� 
bool
� 
ret 
�  .sysobeepnull��� ��� long
�� 
disp
�� stic   
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
bhit
�� 
prmp
�� 
cnbt
�� 
okbt
�� 
empL�� 
�� .gtqpchltTEXT  @   @ TEXT
�� 
desk
�� 
file
�� .coredoexbool        obj 
�� 
kocl
�� 
prdt
�� 
pnam
�� 
insh
�� .corecrel****      � null
�� 
alis
�� 
perm
�� .rdwropenshor       file
�� 
ascr
�� 
txdl
�� 
TEXT
�� 
refn
�� .rdwrwritnull���     ****
�� .rdwrclosnull���     ****�� �� 0 errormessage errorMessage\ ������
�� 
errn�� 0 errornumber errorNumber��  ������b   	 b  j  j�&lFb  j  k  ��%�%E�Y �b  j  %�%�%�%E�O*j O�������mv�ma  O_ a ,E�O�a   8b  a a a a a a a ea  O_ f  
a E�Y hY hO�a   �a   Zb  E�OjE�O &h*a !,a "�/j #�kE�Ob  �%E�[OY��O*a $a "a %a &�la '*a !,a  (a )&E�UO�a *el +O�_ ,a -,FOb  a .&a /�l 0O�j 1Oa 2�%a 3%�%�a 4kv�ka 5 Y hOPW "X 6 7�a 8 ��a 9kv�ka 5 Y hY hascr  ��ޭ