FasdUAS 1.101.10   ��   ��    k             l      �� ��   �� 
Script library for upcasing and downcasing characters in a string.

'Public' routines (all return a string):

	uppercase(theString)
		Upcase all unprotected characters of the string.
		
	lowercase(theString)
		Downcase all unprotected characters of the string.
		
	capitalize(theString)
		Capitalize all unprotected words in the string, 
		unless in nonCapitalizedWords.
		
	uncapitalize(theString)
		Capitalize only the first letters of a sentence, 
		and downcase all other unprotected characters.
	
	removeProtectChars(theString)
		Remove all occurences of the protect characters, 
		startProtectChar and endProtectChar, from the string. 

Other routines (change AppleScript's text item delimiters):

	makeCapitalized(theString, capitalizeAll)
		This does the work for (un)capitalize.
	
	upperCharacters(theString)
		Returns a list of upcased characters.
		
	lowerCharacters(theString)
		Returns a list of downcased characters.
	
	textItemsWithDelimiters(theStrings, theDelimiters)
		Splits a string using a list of delimiters, 
		returns a list of alternatively text items and delimiters. 

	shouldNotBeCapitalized(theWord)
		Checks if a word should not be capitalized.
	
Properties:
	
	nonCapitalizedWords
		List of words which should not be capitalized, 
		unless at the beginning of a sentence.
	
	uppercaseLetters
	lowercaseLetters
		All uppercase and lowercase letters that we know how to convert.
	
	wordDelimiterCharacters
		List of characters separating words to be capitalized, 
		such as spaces, brackets, and quotes.
	
	newSentenceCharacters
		List of characters indicating the start of a new sentence.
	
	startProtectChar
	endProtectChar
		Characters between the corresponding characters 
		will be protected from changing case. 

Example:

-- load the Capitalize script library
set capitalizeLib to (load script file �
	((path to home folder as string) & "Library:ScriptingAdditions:Capitalize.scpt"))

set theSentence to �
	"(this is ONLY an example.) it, {IMHO},  Is A sTUpid senTENCE. "

tell capitalizeLib
	set its startProtectChar to "{"
	set its endProtectChar to "}"
	removeProtectChars(capitalize(theSentence))
end tell

-- returns:
-- "(This is only an Example.) It, IMHO, is a Stupid Sentence."
       	  l     ������  ��   	  
  
 j     ��� �� *0 noncapitalizedwords nonCapitalizedWords  J     �       m         a         m        about         m        above         m        	according         m        across         m        after        !   m     " "  against    !  # $ # m     % %  along    $  & ' & m    	 ( ( 
 amid    '  ) * ) m   	 
 + +  among    *  , - , m   
  . .  an    -  / 0 / m     1 1 	 and    0  2 3 2 m     4 4  around    3  5 6 5 m     7 7  as    6  8 9 8 m     : :  at    9  ; < ; m     = =  athwart    <  > ? > m     @ @  be    ?  A B A m     C C  before    B  D E D m     F F  behind    E  G H G m     I I  below    H  J K J m     L L  beneath    K  M N M m    " O O  beside    N  P Q P m   " % R R  between    Q  S T S m   % ( U U  beyond    T  V W V m   ( + X X 	 but    W  Y Z Y m   + . [ [  by    Z  \ ] \ m   . 1 ^ ^  
concerning    ]  _ ` _ m   1 4 a a  during    `  b c b m   4 7 d d  either    c  e f e m   7 : g g  except    f  h i h m   : = j j  	excepting    i  k l k m   = @ m m 	 for    l  n o n m   @ C p p 
 from    o  q r q m   C F s s  in    r  t u t m   F I v v  inside    u  w x w m   I L y y 
 into    x  z { z m   L O | |  is    {  } ~ } m   O R    it    ~  � � � m   R U � � 
 like    �  � � � m   U X � �  neither    �  � � � m   X [ � � 	 nor    �  � � � m   [ ^ � �  of    �  � � � m   ^ a � � 	 off    �  � � � m   a d � �  on    �  � � � m   d g � � 
 only    �  � � � m   g j � � 
 onto    �  � � � m   j m � �  or    �  � � � m   m p � � 	 out    �  � � � m   p s � �  outside    �  � � � m   s v � � 
 over    �  � � � m   v y � � 
 past    �  � � � m   y | � �  pending    �  � � � m   |  � �  	regarding    �  � � � m    � � �  
respecting    �  � � � m   � � � �  round    �  � � � m   � � � �  since    �  � � � m   � � � �  so    �  � � � m   � � � � 
 that    �  � � � m   � � � � 	 the    �  � � � m   � � � � 
 then    �  � � � m   � � � � 
 this    �  � � � m   � � � �  though    �  � � � m   � � � �  through    �  � � � m   � � � �  
throughout    �  � � � m   � � � � 
 till    �  � � � m   � � � �  to    �  � � � m   � � � �  toward    �  � � � m   � � � �  under    �  � � � m   � � � �  
underneath    �  � � � m   � � � �  until    �  � � � m   � � � � 
 unto    �  � � � m   � � � �  up    �  � � � m   � � � � 
 upon    �  � � � m   � � � � 
 when    �  � � � m   � � � �  where    �  � � � m   � � � �  whether    �  � � � m   � � � �  which    �  � � � m   � � � � 	 who    �  � � � m   � � � �  whose    �  � � � m   � � � � 
 with    �  � � � m   � �    within    �  m   � �  without    �� m   � � 	 yet   ��     j   � ����� $0 uppercaseletters uppercaseLetters m   � �		 = 7ABCDEFGHIJKLMNOPQRSTUVWXYZ�ί���́�����������������    

 j   � ����� $0 lowercaseletters lowercaseLetters m   � � = 7abcdefghijklmnopqrstuvwxyz�Ͽ��������������������������     j   ����� 20 worddelimitercharacters wordDelimiterCharacters J   �  1   � ���
�� 
spac  1   � ���
�� 
tab   o   � ���
�� 
ret   m   � �  -     m   � �  /     m   � �    (    !"! m   � ##  )   " $%$ m   &&  `   % '(' m  ))  '   ( *+* m  	,,  �   + -.- m  	//  �   . 010 m  22  �   1 343 m  55  �   4 6��6 m  77  "   ��   898 j  ,��:�� .0 newsentencecharacters newSentenceCharacters: J  +;; <=< m  >>  .   = ?@? m  !AA  !   @ BCB m  !$DD  ?   C E��E m  $'FF  :   ��  9 GHG j  -1��I�� $0 startprotectchar startProtectCharI m  -0JJ      H KLK j  26��M��  0 endprotectchar endProtectCharM m  25NN      L OPO l     ������  ��  P QRQ p  77SS ������  0 protectnesting protectNesting��  R TUT l     ������  ��  U VWV i  7:XYX I      ��Z���� 0 	uppercase  Z [��[ o      ���� 0 	thestring 	theString��  ��  Y k     %\\ ]^] r     _`_ n    aba 1    ��
�� 
txdlb 1     ��
�� 
ascr` o      ���� "0 saveddelimiters savedDelimiters^ cdc r    efe J    	gg h��h m    ii      ��  f n     jkj 1   
 ��
�� 
txdlk 1   	 
��
�� 
ascrd lml r    non m    ����  o o      ����  0 protectnesting protectNestingm pqp r    rsr c    tut n   vwv I    ��x���� "0 uppercharacters upperCharactersx y��y o    ���� 0 	thestring 	theString��  ��  w  f    u m    ��
�� 
TEXTs o      ���� 0 	thestring 	theStringq z{z r    "|}| o    ���� "0 saveddelimiters savedDelimiters} n     ~~ 1    !��
�� 
txdl 1    ��
�� 
ascr{ ���� L   # %�� o   # $���� 0 	thestring 	theString��  W ��� l     ������  ��  � ��� i  ;>��� I      ������� 0 	lowercase  � ���� o      ���� 0 	thestring 	theString��  ��  � k     %�� ��� r     ��� n    ��� 1    ��
�� 
txdl� 1     ��
�� 
ascr� o      ���� "0 saveddelimiters savedDelimiters� ��� r    ��� J    	�� ���� m    ��      ��  � n     ��� 1   
 ��
�� 
txdl� 1   	 
��
�� 
ascr� ��� r    ��� m    ����  � o      ����  0 protectnesting protectNesting� ��� r    ��� c    ��� n   ��� I    ������� "0 lowercharacters lowerCharacters� ���� o    ���� 0 	thestring 	theString��  ��  �  f    � m    ��
�� 
TEXT� o      ���� 0 	thestring 	theString� ��� r    "��� o    ���� "0 saveddelimiters savedDelimiters� n     ��� 1    !��
�� 
txdl� 1    ��
�� 
ascr� ���� L   # %�� o   # $���� 0 	thestring 	theString��  � ��� l     ������  ��  � ��� i  ?B��� I      ������� 0 
capitalize  � ���� o      ���� 0 	thestring 	theString��  ��  � k     �� ��� r     ��� n    ��� 1    ��
�� 
txdl� 1     ��
�� 
ascr� o      ���� "0 saveddelimiters savedDelimiters� ��� r    ��� n   ��� I    ������� "0 makecapitalized makeCapitalized� ��� o    ���� 0 	thestring 	theString� ���� m    	��
�� boovtrue��  ��  �  f    � o      ���� 0 	thestring 	theString� ��� r    ��� o    ���� "0 saveddelimiters savedDelimiters� n     ��� 1    ��
�� 
txdl� 1    ��
�� 
ascr� ���� L    �� o    ���� 0 	thestring 	theString��  � ��� l     ������  ��  � ��� i  CF��� I      ������� 0 uncapitalize  � ���� o      ���� 0 	thestring 	theString��  ��  � k     �� ��� r     ��� n    ��� 1    ��
�� 
txdl� 1     ��
�� 
ascr� o      ���� "0 saveddelimiters savedDelimiters� ��� r    ��� n   ��� I    ������� "0 makecapitalized makeCapitalized� ��� o    ���� 0 	thestring 	theString� ���� m    	��
�� boovfals��  ��  �  f    � o      ���� 0 	thestring 	theString� ��� r    ��� o    ���� "0 saveddelimiters savedDelimiters� n     ��� 1    ��
�� 
txdl� 1    ��
�� 
ascr� ���� L    �� o    ���� 0 	thestring 	theString��  � ��� l     ������  ��  � ��� i  GJ��� I      ������� (0 removeprotectchars removeProtectChars� ���� o      ���� 0 	thestring 	theString��  ��  � k     ��� ��� Z     }������� F     +� � l    �� G      >      o     ���� $0 startprotectchar startProtectChar m           >   
  o   
 ����  0 endprotectchar endProtectChar m    		      ��    l 	  )
��
 l   )�� G    ) E     o    ���� 0 	thestring 	theString o    ���� $0 startprotectchar startProtectChar E     ' l 	   !�� o     !���� 0 	thestring 	theString��   o   ! &��  0 endprotectchar endProtectChar��  ��  � k   . y  r   . 3 n  . 1 1   / 1�~
�~ 
txdl 1   . /�}
�} 
ascr o      �|�| "0 saveddelimiters savedDelimiters  r   4 ? J   4 ; �{ o   4 9�z�z $0 startprotectchar startProtectChar�{   n      !  1   < >�y
�y 
txdl! 1   ; <�x
�x 
ascr "#" r   @ E$%$ n   @ C&'& 2  A C�w
�w 
citm' o   @ A�v�v 0 	thestring 	theString% o      �u�u 0 thechars theChars# ()( r   F M*+* J   F I,, -�t- m   F G..      �t  + n     /0/ 1   J L�s
�s 
txdl0 1   I J�r
�r 
ascr) 121 r   N S343 c   N Q565 o   N O�q�q 0 thechars theChars6 m   O P�p
�p 
TEXT4 o      �o�o 0 	thestring 	theString2 787 r   T _9:9 J   T [;; <�n< o   T Y�m�m  0 endprotectchar endProtectChar�n  : n     =>= 1   \ ^�l
�l 
txdl> 1   [ \�k
�k 
ascr8 ?@? r   ` eABA n   ` cCDC 2  a c�j
�j 
citmD o   ` a�i�i 0 	thestring 	theStringB o      �h�h 0 thechars theChars@ EFE r   f mGHG J   f iII J�gJ m   f gKK      �g  H n     LML 1   j l�f
�f 
txdlM 1   i j�e
�e 
ascrF NON r   n sPQP c   n qRSR o   n o�d�d 0 thechars theCharsS m   o p�c
�c 
TEXTQ o      �b�b 0 	thestring 	theStringO T�aT r   t yUVU o   t u�`�` "0 saveddelimiters savedDelimitersV n     WXW 1   v x�_
�_ 
txdlX 1   u v�^
�^ 
ascr�a  ��  ��  � Y�]Y L   ~ �ZZ o   ~ �\�\ 0 	thestring 	theString�]  � [\[ l     �[�Z�[  �Z  \ ]^] l     �Y_�Y  _   Internal routines.    ^ `a` l     �Xb�X  b 5 / May change AppleScript's text item delimiters.   a cdc l     �W�V�W  �V  d efe i  KNghg I      �Ui�T�U "0 makecapitalized makeCapitalizedi jkj o      �S�S 0 	thestring 	theStringk l�Rl o      �Q�Q 0 capitalizeall capitalizeAll�R  �T  h k    mm non r     pqp n    rsr I    �Pt�O�P 20 textitemswithdelimiters textItemsWithDelimiterst uvu o    �N�N 0 	thestring 	theStringv w�Mw o    �L�L 20 worddelimitercharacters wordDelimiterCharacters�M  �O  s  f     q o      �K�K 0 thewords theWordso xyx l   �J�I�J  �I  y z{z l   �H|�H  | #  this will hold the new words   { }~} r    � J    �G�G  � o      �F�F 0 newwords newWords~ ��� l   �E��E  � ( " this keeps track of new sentences   � ��� r    ��� m    �D
�D boovtrue� o      �C�C "0 startofsentence startOfSentence� ��� r    ��� m    �B�B  � o      �A�A  0 protectnesting protectNesting� ��� r    ��� m    ��      � o      �@�@ 0 sepchar sepChar� ��� r    &��� J    "�� ��?� m     ��      �?  � n     ��� 1   # %�>
�> 
txdl� 1   " #�=
�= 
ascr� ��� r   ' *��� m   ' (�<�< � o      �;�; 0 i  � ��� r   + 2��� I  + 0�:��9
�: .corecnte****       ****� o   + ,�8�8 0 thewords theWords�9  � o      �7�7 0 numwords numWords� ��� V   3 ���� k   ; ��� ��� r   ; A��� n   ; ?��� 4   < ?�6�
�6 
cobj� o   = >�5�5 0 i  � o   ; <�4�4 0 thewords theWords� o      �3�3 0 theword theWord� ��� Z   B ����2�1� ?   B G��� n   B E��� 1   C E�0
�0 
leng� o   B C�/�/ 0 theword theWord� m   E F�.�.  � k   J ��� ��� Z   J ������ F   J ^��� l  J L��-� H   J L�� o   J K�,�, "0 startofsentence startOfSentence�-  � l 	 O \��+� l  O \��*� G   O \��� H   O Q�� o   O P�)�) 0 capitalizeall capitalizeAll� l 	 T Z��(� n  T Z��� I   U Z�'��&�' 00 shouldnotbecapitalized shouldNotBeCapitalized� ��%� o   U V�$�$ 0 theword theWord�%  �&  �  f   T U�(  �*  �+  � k   a l�� ��� l  a a�#��#  �    we should not capitalize    � ��"� r   a l��� c   a i��� l 	 a g��!� n  a g��� I   b g� ���  "0 lowercharacters lowerCharacters� ��� o   b c�� 0 theword theWord�  �  �  f   a b�!  � m   g h�
� 
TEXT� n      ���  ;   j k� o   i j�� 0 newwords newWords�"  � ��� ?   o t��� n   o r��� 1   p r�
� 
leng� o   o p�� 0 theword theWord� m   r s�� � ��� k   w ��� ��� l  w w���  �   we should capitalize   � ��� r   w ���� c   w ���� b   w ���� l 	 w ���� n  w ���� I   x ����� "0 uppercharacters upperCharacters� ��� n   x |��� 4   y |��
� 
cha � m   z {�� � o   x y�� 0 theword theWord�  �  �  f   w x�  � l 	 � ���� n  � ���� I   � ����� "0 lowercharacters lowerCharacters� ��
� n   � ���� 7  � ��	��
�	 
ctxt� m   � ��� �  ;   � �� o   � ��� 0 theword theWord�
  �  �  f   � ��  � m   � ��
� 
TEXT� n      � �  ;   � �  o   � ��� 0 newwords newWords�  �  � k   � �  l  � ���     capitalize 1-letter word    � P   � �� Z   � �	�
 F   � � =   � � o   � �� �  0 sepchar sepChar m   � �  '    =   � � o   � ����� 0 theword theWord m   � �  s   	 r   � � m   � �  s    n        ;   � � o   � ����� 0 newwords newWords�  
 r   � � c   � � l 	 � ��� n  � � I   � ������� "0 uppercharacters upperCharacters  ��  o   � ����� 0 theword theWord��  ��    f   � ���   m   � ���
�� 
TEXT n      !"!  ;   � �" o   � ����� 0 newwords newWords�   ����
�� conscase��  �  � #$# l  � ���%��  % "  do we start a new sentence?   $ &��& r   � �'(' l  � �)��) E  � �*+* o   � ����� .0 newsentencecharacters newSentenceCharacters+ n   � �,-, 4  � ���.
�� 
cha . m   � �������- o   � ����� 0 theword theWord��  ( o      ���� "0 startofsentence startOfSentence��  �2  �1  � /0/ r   � �121 [   � �343 o   � ����� 0 i  4 m   � ����� 2 o      ���� 0 i  0 565 l  � ���7��  7   add separator   6 898 Z   � �:;����: A   � �<=< o   � ����� 0 i  = o   � ����� 0 numwords numWords; k   � �>> ?@? r   � �ABA n   � �CDC 4   � ���E
�� 
cobjE o   � ����� 0 i  D o   � ����� 0 thewords theWordsB o      ���� 0 sepchar sepChar@ F��F r   � �GHG o   � ����� 0 sepchar sepCharH n      IJI  ;   � �J o   � ����� 0 newwords newWords��  ��  ��  9 K��K r   � �LML [   � �NON o   � ����� 0 i  O m   � ����� M o      ���� 0 i  ��  � B   7 :PQP o   7 8���� 0 i  Q o   8 9���� 0 numwords numWords� RSR l  � ���T��  T $  return the capitalized string   S UVU r   �WXW J   �YY Z��Z m   �[[      ��  X n     \]\ 1  ��
�� 
txdl] 1  ��
�� 
ascrV ^_^ r  	`a` c  	bcb o  	
���� 0 newwords newWordsc m  
��
�� 
TEXTa o      ���� 0 	thestring 	theString_ d��d L  ee o  ���� 0 	thestring 	theString��  f fgf l     ������  ��  g hih i  ORjkj I      ��l���� "0 uppercharacters upperCharactersl m��m o      ���� 0 	thestring 	theString��  ��  k k     ~nn opo l     ��q��  q    make a list of characters   p rsr r     tut n     vwv 2   ��
�� 
cha w o     ���� 0 	thestring 	theStringu o      ���� 0 thechars theCharss xyx r    
z{z J    ����  { o      ���� 0 newchars newCharsy |}| Y    {~�����~ k    v�� ��� r     ��� l   ���� e    �� n    ��� 4    ���
�� 
cobj� o    ���� 0 i  � o    ���� 0 thechars theChars��  � o      ���� 0 thechar theChar� ��� l  ! !�����  � %  make lowercase letters capital   � ���� Z   ! v������ =   ! (��� o   ! "���� 0 thechar theChar� o   " '���� $0 startprotectchar startProtectChar� r   + 0��� [   + .��� o   + ,����  0 protectnesting protectNesting� m   , -���� � o      ����  0 protectnesting protectNesting� ��� =   3 :��� o   3 4���� 0 thechar theChar� o   4 9����  0 endprotectchar endProtectChar� ��� r   = B��� \   = @��� o   = >����  0 protectnesting protectNesting� m   > ?���� � o      ����  0 protectnesting protectNesting� ��� B   E H��� o   E F����  0 protectnesting protectNesting� m   F G����  � ���� k   K r�� ��� r   K Z��� I  K X�����
�� .sysooffslong    ��� null��  � ����
�� 
psof� o   M N���� 0 thechar theChar� �����
�� 
psin� o   O T���� $0 lowercaseletters lowercaseLetters��  � o      ���� 0 j  � ���� Z   [ r������� ?   [ ^��� o   [ \���� 0 j  � m   \ ]����  � r   a n��� n   a i��� 4   f i���
�� 
cha � o   g h���� 0 j  � o   a f���� $0 uppercaseletters uppercaseLetters� n      ��� 4   j m���
�� 
cobj� o   k l���� 0 i  � o   i j���� 0 thechars theChars��  ��  ��  ��  ��  ��  �� 0 i   m    ���� � I   �����
�� .corecnte****       ****� o    ���� 0 thechars theChars��  ��  } ��� l  | |�����  � ' ! return the uppercased characters   � ���� L   | ~�� o   | }���� 0 thechars theChars��  i ��� l     ������  ��  � ��� i  SV��� I      ������� "0 lowercharacters lowerCharacters� ���� o      ���� 0 	thestring 	theString��  ��  � k     y�� ��� l     �����  �    make a list of characters   � ��� r     ��� n     ��� 2   ��
�� 
cha � o     ���� 0 	thestring 	theString� o      ���� 0 thechars theChars� ��� Y    v�������� k    q�� ��� r    ��� l   ���� e    �� n    ��� 4    ���
�� 
cobj� o    ���� 0 i  � o    ���� 0 thechars theChars��  � o      ���� 0 thechar theChar� ��� l   �����  � %  make capital letters lowercase   � ��� Z    q����~� =    #��� o    �}�} 0 thechar theChar� o    "�|�| $0 startprotectchar startProtectChar� r   & +��� [   & )��� o   & '�{�{  0 protectnesting protectNesting� m   ' (�z�z � o      �y�y  0 protectnesting protectNesting� ��� =   . 5��� o   . /�x�x 0 thechar theChar� o   / 4�w�w  0 endprotectchar endProtectChar� ��� r   8 =��� \   8 ;��� o   8 9�v�v  0 protectnesting protectNesting� m   9 :�u�u � o      �t�t  0 protectnesting protectNesting� ��� B   @ C��� o   @ A�s�s  0 protectnesting protectNesting� m   A B�r�r  � ��q� k   F m    r   F U I  F S�p�o
�p .sysooffslong    ��� null�o   �n
�n 
psof o   H I�m�m 0 thechar theChar �l�k
�l 
psin o   J O�j�j $0 uppercaseletters uppercaseLetters�k   o      �i�i 0 j   	�h	 Z   V m
�g�f
 ?   V Y o   V W�e�e 0 j   m   W X�d�d   r   \ i n   \ d 4   a d�c
�c 
cha  o   b c�b�b 0 j   o   \ a�a�a $0 lowercaseletters lowercaseLetters n       4   e h�`
�` 
cobj o   f g�_�_ 0 i   o   d e�^�^ 0 thechars theChars�g  �f  �h  �q  �~  �  �� 0 i  � m   	 
�]�] � I  
 �\�[
�\ .corecnte****       **** o   
 �Z�Z 0 thechars theChars�[  ��  �  l  w w�Y�Y   ' ! return the lowercased characters    �X L   w y o   w x�W�W 0 thechars theChars�X  �  l     �V�U�V  �U    i  WZ !  I      �T"�S�T 00 shouldnotbecapitalized shouldNotBeCapitalized" #�R# o      �Q�Q 0 theword theWord�R  �S  ! P     $�P%$ L    && E    '(' o    
�O�O *0 noncapitalizedwords nonCapitalizedWords( l 	 
 )�N) l  
 *�M* c   
 +,+ n  
 -.- I    �L/�K�L (0 removeprotectchars removeProtectChars/ 0�J0 o    �I�I 0 theword theWord�J  �K  .  f   
 , m    �H
�H 
TEXT�M  �N  �P  % �G1
�G conspunc1 �F�E
�F conscase�E   232 l     �D�C�D  �C  3 454 i  [^676 I      �B8�A�B 20 textitemswithdelimiters textItemsWithDelimiters8 9:9 o      �@�@ 0 
thestrings 
theStrings: ;�?; o      �>�> 0 thedelimiters theDelimiters�?  �A  7 k     �<< =>= Z    ?@�=�<? >    ABA n     CDC 1    �;
�; 
pclsD o     �:�: 0 thedelimiters theDelimitersB m    �9
�9 
list@ l 	  E�8E r    FGF J    HH I�7I c    JKJ o    	�6�6 0 thedelimiters theDelimitersK m   	 
�5
�5 
TEXT�7  G o      �4�4 0 thedelimiters theDelimiters�8  �=  �<  > LML l   �3�2�3  �2  M NON Z   'PQ�1�0P >   RSR n    TUT 1    �/
�/ 
pclsU o    �.�. 0 
thestrings 
theStringsS m    �-
�- 
listQ l 	  #V�,V r    #WXW J    !YY Z�+Z c    [\[ o    �*�* 0 
thestrings 
theStrings\ m    �)
�) 
TEXT�+  X o      �(�( 0 
thestrings 
theStrings�,  �1  �0  O ]^] l  ( (�'�&�'  �&  ^ _`_ l  ( �aba X   ( �c�%dc k   8 �ee fgf r   8 =hih o   8 9�$�$ 0 thedelimiter theDelimiteri n     jkj 1   : <�#
�# 
txdlk 1   9 :�"
�" 
ascrg lml r   > Bnon J   > @�!�!  o o      � �  0 
newstrings 
newStringsm pqp r   C Frsr m   C D�� s o      �� 0 i  q tut l  G �vwv V   G �xyx k   S �zz {|{ Z   S l}~��} ?   S V� o   S T�� 0 i  � m   T U�� ~ k   Y h�� ��� r   Y b��� c   Y _��� n   Y ]��� 4   Z ]��
� 
cobj� o   [ \�� 0 i  � o   Y Z�� 0 
thestrings 
theStrings� m   ] ^�
� 
TEXT� n      ���  ;   ` a� o   _ `�� 0 
newstrings 
newStrings� ��� r   c h��� [   c f��� o   c d�� 0 i  � m   d e�� � o      �� 0 i  �  �  �  | ��� r   m s��� n   m q��� 4   n q��
� 
cobj� o   o p�� 0 i  � o   m n�� 0 
thestrings 
theStrings� o      �� 0 
nextstring 
nextString� ��� Z   t ������ E   t w��� o   t u�� 0 
nextstring 
nextString� o   u v�
�
 0 thedelimiter theDelimiter� k   z ��� ��� r   z ��� n   z }��� 2  { }�	
�	 
citm� o   z {�� 0 
nextstring 
nextString� o      �� 0 theparts theParts� ��� Y   � ������� k   � ��� ��� Z  � ������ ?   � ���� o   � ��� 0 j  � m   � �� �  � l 	 � ����� r   � ���� c   � ���� o   � ����� 0 thedelimiter theDelimiter� m   � ���
�� 
TEXT� n      ���  ;   � �� o   � ����� 0 
newstrings 
newStrings��  �  �  � ���� r   � ���� c   � ���� n   � ���� 4   � ����
�� 
cobj� o   � ����� 0 j  � o   � ����� 0 theparts theParts� m   � ���
�� 
TEXT� n      ���  ;   � �� o   � ����� 0 
newstrings 
newStrings��  � 0 j  � m   � ����� � I  � ������
�� .corecnte****       ****� o   � ����� 0 theparts theParts��  �  �  �  � r   � ���� o   � ����� 0 
nextstring 
nextString� n      ���  ;   � �� o   � ����� 0 
newstrings 
newStrings� ���� r   � ���� [   � ���� o   � ����� 0 i  � m   � ����� � o      ���� 0 i  ��  y B   K R��� o   K L���� 0 i  � l  L Q���� I  L Q�����
�� .corecnte****       ****� o   L M���� 0 
thestrings 
theStrings��  ��  w   theStrings   u ��� l  � �������  ��  � ���� r   � ���� o   � ����� 0 
newstrings 
newStrings� o      ���� 0 
thestrings 
theStrings��  �% 0 thedelimiter theDelimiterd o   + ,���� 0 thedelimiters theDelimitersb   theDelimiters   ` ��� l  � �������  ��  � ���� L   � ��� o   � ����� 0 
thestrings 
theStrings��  5 ���� l     ������  ��  ��       ����	��JN������������  � ������������������������������������ *0 noncapitalizedwords nonCapitalizedWords�� $0 uppercaseletters uppercaseLetters�� $0 lowercaseletters lowercaseLetters�� 20 worddelimitercharacters wordDelimiterCharacters�� .0 newsentencecharacters newSentenceCharacters�� $0 startprotectchar startProtectChar��  0 endprotectchar endProtectChar�� 0 	uppercase  �� 0 	lowercase  �� 0 
capitalize  �� 0 uncapitalize  �� (0 removeprotectchars removeProtectChars�� "0 makecapitalized makeCapitalized�� "0 uppercharacters upperCharacters�� "0 lowercharacters lowerCharacters�� 00 shouldnotbecapitalized shouldNotBeCapitalized�� 20 textitemswithdelimiters textItemsWithDelimiters� ����� S� S        " % ( + . 1 4 7 : = @ C F I L O R U X [ ^ a d g j m p s v y |  � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � � ����� �  ��� #&),/257�      �  	   �     � ����� �  >ADF� ��Y���������� 0 	uppercase  �� ����� �  ���� 0 	thestring 	theString��  � ������ 0 	thestring 	theString�� "0 saveddelimiters savedDelimiters� ����i������
�� 
ascr
�� 
txdl��  0 protectnesting protectNesting�� "0 uppercharacters upperCharacters
�� 
TEXT�� &��,E�O�kv��,FOjE�O)�k+ �&E�O���,FO�� ������������� 0 	lowercase  �� ����� �  ���� 0 	thestring 	theString��  � ������ 0 	thestring 	theString�� "0 saveddelimiters savedDelimiters� �����������
�� 
ascr
�� 
txdl��  0 protectnesting protectNesting�� "0 lowercharacters lowerCharacters
�� 
TEXT�� &��,E�O�kv��,FOjE�O)�k+ �&E�O���,FO�� ������������� 0 
capitalize  �� ����� �  ���� 0 	thestring 	theString��  � ������ 0 	thestring 	theString�� "0 saveddelimiters savedDelimiters� ������
�� 
ascr
�� 
txdl�� "0 makecapitalized makeCapitalized�� ��,E�O)�el+ E�O���,FO�� ������������� 0 uncapitalize  �� ����� �  ���� 0 	thestring 	theString��  � ������ 0 	thestring 	theString�� "0 saveddelimiters savedDelimiters� ������
�� 
ascr
�� 
txdl�� "0 makecapitalized makeCapitalized�� ��,E�O)�fl+ E�O���,FO�� ������������� (0 removeprotectchars removeProtectChars�� ����� �  ���� 0 	thestring 	theString��  � �������� 0 	thestring 	theString�� "0 saveddelimiters savedDelimiters�� 0 thechars theChars� 		��������.��K
�� 
bool
�� 
ascr
�� 
txdl
�� 
citm
�� 
TEXT�� �b  �
 b  ��&	 �b  
 �b  �&�& P��,E�Ob  kv��,FO��-E�O�kv��,FO��&E�Ob  kv��,FO��-E�O�kv��,FO��&E�O���,FY hO�� ��h���������� "0 makecapitalized makeCapitalized�� �� ��    ������ 0 	thestring 	theString�� 0 capitalizeall capitalizeAll��  � 	��~�}�|�{�z�y�x�w� 0 	thestring 	theString�~ 0 capitalizeall capitalizeAll�} 0 thewords theWords�| 0 newwords newWords�{ "0 startofsentence startOfSentence�z 0 sepchar sepChar�y 0 i  �x 0 numwords numWords�w 0 theword theWord� �v�u���t�s�r�q�p�o�n�m�l�k�j�i[�v 20 textitemswithdelimiters textItemsWithDelimiters�u  0 protectnesting protectNesting
�t 
ascr
�s 
txdl
�r .corecnte****       ****
�q 
cobj
�p 
leng�o 00 shouldnotbecapitalized shouldNotBeCapitalized
�n 
bool�m "0 lowercharacters lowerCharacters
�l 
TEXT
�k 
cha �j "0 uppercharacters upperCharacters
�i 
ctxt��)�b  l+  E�OjvE�OeE�OjE�O�E�O�kv��,FOkE�O�j E�O �h����/E�O��,j ��	 �
 
)�k+ 	�&�& )�k+ �&�6FY Y��,k #)��k/k+ )�[�\[Zl\62k+ %�&�6FY 0ga  )�a  	 	�a  �& a �6FY )�k+ �&�6FVOb  ��i/E�Y hO�kE�O�� ��/E�O��6FY hO�kE�[OY�;Oa kv��,FO��&E�O�� �hk�g�f�e�h "0 uppercharacters upperCharacters�g �d�d   �c�c 0 	thestring 	theString�f   �b�a�`�_�^�]�b 0 	thestring 	theString�a 0 thechars theChars�` 0 newchars newChars�_ 0 i  �^ 0 thechar theChar�] 0 j   �\�[�Z�Y�X�W�V�U
�\ 
cha 
�[ .corecnte****       ****
�Z 
cobj�Y  0 protectnesting protectNesting
�X 
psof
�W 
psin�V 
�U .sysooffslong    ��� null�e ��-E�OjvE�O ok�j kh ��/EE�O�b    
�kE�Y E�b    
�kE�Y 3�j ,*��b  � E�O�j b  �/��/FY hY h[OY��O�� �T��S�R�Q�T "0 lowercharacters lowerCharacters�S �P�P   �O�O 0 	thestring 	theString�R   �N�M�L�K�J�N 0 	thestring 	theString�M 0 thechars theChars�L 0 i  �K 0 thechar theChar�J 0 j   �I�H�G�F�E�D�C�B
�I 
cha 
�H .corecnte****       ****
�G 
cobj�F  0 protectnesting protectNesting
�E 
psof
�D 
psin�C 
�B .sysooffslong    ��� null�Q z��-E�O ok�j kh ��/EE�O�b    
�kE�Y E�b    
�kE�Y 3�j ,*��b  � E�O�j b  �/��/FY hY h[OY��O�� �A!�@�?�>�A 00 shouldnotbecapitalized shouldNotBeCapitalized�@ �=	�= 	  �<�< 0 theword theWord�?   �;�; 0 theword theWord %�:�9�: (0 removeprotectchars removeProtectChars
�9 
TEXT�> g� b   )�k+ �&V� �87�7�6
�5�8 20 textitemswithdelimiters textItemsWithDelimiters�7 �4�4   �3�2�3 0 
thestrings 
theStrings�2 0 thedelimiters theDelimiters�6  
 �1�0�/�.�-�,�+�*�1 0 
thestrings 
theStrings�0 0 thedelimiters theDelimiters�/ 0 thedelimiter theDelimiter�. 0 
newstrings 
newStrings�- 0 i  �, 0 
nextstring 
nextString�+ 0 theparts theParts�* 0 j   	�)�(�'�&�%�$�#�"�!
�) 
pcls
�( 
list
�' 
TEXT
�& 
kocl
�% 
cobj
�$ .corecnte****       ****
�# 
ascr
�" 
txdl
�! 
citm�5 ̡�,� ��&kvE�Y hO��,� ��&kvE�Y hO ��[��l kh ���,FOjvE�OkE�O wh��j �k ��/�&�6FO�kE�Y hO��/E�O�� 8��-E�O ,k�j kh �k ��&�6FY hO��/�&�6F[OY��Y ��6FO�kE�[OY��O�E�[OY�oO� ascr  ��ޭ