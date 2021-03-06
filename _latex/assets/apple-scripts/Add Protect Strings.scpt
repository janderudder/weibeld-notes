FasdUAS 1.101.10   ��   ��    k             l      ��  ��   
�
� 
Script library for 'protecting' strings. It puts delimiters around 
'protected' substrings. It keeps a persistent library of substrings 
to protect.

'Private' routines:

	addProtectedStrings ()
		Queries the user for more protected strings.
		
	changeProtectChars ()
		Queries the user to change the protect characters.
		
	changeIgnoreCase ()
		Queries the user to change the case sensitivity flag.
		
	changeIsRestricted ()
		Queries the user to change whether protection should change 
		full words only.
		
 	inspectProtectReplacements ()
		Shows a list of all saved protection replacements.
		
 	addProtectReplacement ( fromString, toString )
		Adds a protection replacement to the library. 
		If fromString is empty, it is set to the unprotected 
		version of toString. Does not save!
		
 	setProtectReplacements ( newList )
		Sets the protection replacement library to newList. 
		This should be a list of records with properties 'find' and 'replace'.

Other routines:
	
	removeProtectChars ( theString )
		Remove all occurences of the protect characters, 
		startProtectChar and endProtectChar, from the string. 

	replace ( theString, find, replace )
		Replaces occurences of find by replace.
	
	caseInsensitiveReplace (theString, find, replace )
		Replaces occurences of find by replace, ignoring the case of find.

	restrictedReplace ( theString, find, replace )
		Replaces occurences of find by replace, replacing only full words. 
	
	caseInsensitiveRestrictedReplace (theString, find, replace )
		Replaces occurences of find by replace, ignoring the case of find and  
		replacing only full words.
	
	lowercase ( theString )
		Returns the lowercased version of theString. 
		
	readPrefs ()
		Reads the properties from file.
		
	savePrefs ()
		Saves the properties to file.
	
	initialize()
		Initializes the script, calling readPrefs() if necessary. 
	
Properties:
	
	protectReplacements
		List of protection replacements. Each item in the list 
		consists of a record with 'find' and 'replace' properties.
	
	startProtectChar
	endProtectChar
		Strings between these characters are considered 'protected'. 
	
	replaceIgnoresCase
		Boolean determines whether replacements should be made 
		ignoring the case of the find string.
	
	replaceIsRestricted
		Boolean determines whether replacements should only replace
		full words.

	prefFileName
		Filename of the file in the local preferences folder where the 
		protectReplacements are stored.

	isInitialized
		Boolean that keeps track of whether the script is initialized.
	
	uppercaseLetters
	lowercaseLetters
		All uppercase and lowercase letters that we know how to convert.
	
	wordDelimiterCharacters
		List of characters separating words, such as spaces, brackets, and quotes.
		Used for full word replace.
     � 	 	�   
 S c r i p t   l i b r a r y   f o r   ' p r o t e c t i n g '   s t r i n g s .   I t   p u t s   d e l i m i t e r s   a r o u n d   
 ' p r o t e c t e d '   s u b s t r i n g s .   I t   k e e p s   a   p e r s i s t e n t   l i b r a r y   o f   s u b s t r i n g s   
 t o   p r o t e c t . 
 
 ' P r i v a t e '   r o u t i n e s : 
 
 	 a d d P r o t e c t e d S t r i n g s   ( ) 
 	 	 Q u e r i e s   t h e   u s e r   f o r   m o r e   p r o t e c t e d   s t r i n g s . 
 	 	 
 	 c h a n g e P r o t e c t C h a r s   ( ) 
 	 	 Q u e r i e s   t h e   u s e r   t o   c h a n g e   t h e   p r o t e c t   c h a r a c t e r s . 
 	 	 
 	 c h a n g e I g n o r e C a s e   ( ) 
 	 	 Q u e r i e s   t h e   u s e r   t o   c h a n g e   t h e   c a s e   s e n s i t i v i t y   f l a g . 
 	 	 
 	 c h a n g e I s R e s t r i c t e d   ( ) 
 	 	 Q u e r i e s   t h e   u s e r   t o   c h a n g e   w h e t h e r   p r o t e c t i o n   s h o u l d   c h a n g e   
 	 	 f u l l   w o r d s   o n l y . 
 	 	 
   	 i n s p e c t P r o t e c t R e p l a c e m e n t s   ( ) 
 	 	 S h o w s   a   l i s t   o f   a l l   s a v e d   p r o t e c t i o n   r e p l a c e m e n t s . 
 	 	 
   	 a d d P r o t e c t R e p l a c e m e n t   (   f r o m S t r i n g ,   t o S t r i n g   ) 
 	 	 A d d s   a   p r o t e c t i o n   r e p l a c e m e n t   t o   t h e   l i b r a r y .   
 	 	 I f   f r o m S t r i n g   i s   e m p t y ,   i t   i s   s e t   t o   t h e   u n p r o t e c t e d   
 	 	 v e r s i o n   o f   t o S t r i n g .   D o e s   n o t   s a v e ! 
 	 	 
   	 s e t P r o t e c t R e p l a c e m e n t s   (   n e w L i s t   ) 
 	 	 S e t s   t h e   p r o t e c t i o n   r e p l a c e m e n t   l i b r a r y   t o   n e w L i s t .   
 	 	 T h i s   s h o u l d   b e   a   l i s t   o f   r e c o r d s   w i t h   p r o p e r t i e s   ' f i n d '   a n d   ' r e p l a c e ' . 
 
 O t h e r   r o u t i n e s : 
 	 
 	 r e m o v e P r o t e c t C h a r s   (   t h e S t r i n g   ) 
 	 	 R e m o v e   a l l   o c c u r e n c e s   o f   t h e   p r o t e c t   c h a r a c t e r s ,   
 	 	 s t a r t P r o t e c t C h a r   a n d   e n d P r o t e c t C h a r ,   f r o m   t h e   s t r i n g .   
 
 	 r e p l a c e   (   t h e S t r i n g ,   f i n d ,   r e p l a c e   ) 
 	 	 R e p l a c e s   o c c u r e n c e s   o f   f i n d   b y   r e p l a c e . 
 	 
 	 c a s e I n s e n s i t i v e R e p l a c e   ( t h e S t r i n g ,   f i n d ,   r e p l a c e   ) 
 	 	 R e p l a c e s   o c c u r e n c e s   o f   f i n d   b y   r e p l a c e ,   i g n o r i n g   t h e   c a s e   o f   f i n d . 
 
 	 r e s t r i c t e d R e p l a c e   (   t h e S t r i n g ,   f i n d ,   r e p l a c e   ) 
 	 	 R e p l a c e s   o c c u r e n c e s   o f   f i n d   b y   r e p l a c e ,   r e p l a c i n g   o n l y   f u l l   w o r d s .   
 	 
 	 c a s e I n s e n s i t i v e R e s t r i c t e d R e p l a c e   ( t h e S t r i n g ,   f i n d ,   r e p l a c e   ) 
 	 	 R e p l a c e s   o c c u r e n c e s   o f   f i n d   b y   r e p l a c e ,   i g n o r i n g   t h e   c a s e   o f   f i n d   a n d     
 	 	 r e p l a c i n g   o n l y   f u l l   w o r d s . 
 	 
 	 l o w e r c a s e   (   t h e S t r i n g   ) 
 	 	 R e t u r n s   t h e   l o w e r c a s e d   v e r s i o n   o f   t h e S t r i n g .   
 	 	 
 	 r e a d P r e f s   ( ) 
 	 	 R e a d s   t h e   p r o p e r t i e s   f r o m   f i l e . 
 	 	 
 	 s a v e P r e f s   ( ) 
 	 	 S a v e s   t h e   p r o p e r t i e s   t o   f i l e . 
 	 
 	 i n i t i a l i z e ( ) 
 	 	 I n i t i a l i z e s   t h e   s c r i p t ,   c a l l i n g   r e a d P r e f s ( )   i f   n e c e s s a r y .   
 	 
 P r o p e r t i e s : 
 	 
 	 p r o t e c t R e p l a c e m e n t s 
 	 	 L i s t   o f   p r o t e c t i o n   r e p l a c e m e n t s .   E a c h   i t e m   i n   t h e   l i s t   
 	 	 c o n s i s t s   o f   a   r e c o r d   w i t h   ' f i n d '   a n d   ' r e p l a c e '   p r o p e r t i e s . 
 	 
 	 s t a r t P r o t e c t C h a r 
 	 e n d P r o t e c t C h a r 
 	 	 S t r i n g s   b e t w e e n   t h e s e   c h a r a c t e r s   a r e   c o n s i d e r e d   ' p r o t e c t e d ' .   
 	 
 	 r e p l a c e I g n o r e s C a s e 
 	 	 B o o l e a n   d e t e r m i n e s   w h e t h e r   r e p l a c e m e n t s   s h o u l d   b e   m a d e   
 	 	 i g n o r i n g   t h e   c a s e   o f   t h e   f i n d   s t r i n g . 
 	 
 	 r e p l a c e I s R e s t r i c t e d 
 	 	 B o o l e a n   d e t e r m i n e s   w h e t h e r   r e p l a c e m e n t s   s h o u l d   o n l y   r e p l a c e 
 	 	 f u l l   w o r d s . 
 
 	 p r e f F i l e N a m e 
 	 	 F i l e n a m e   o f   t h e   f i l e   i n   t h e   l o c a l   p r e f e r e n c e s   f o l d e r   w h e r e   t h e   
 	 	 p r o t e c t R e p l a c e m e n t s   a r e   s t o r e d . 
 
 	 i s I n i t i a l i z e d 
 	 	 B o o l e a n   t h a t   k e e p s   t r a c k   o f   w h e t h e r   t h e   s c r i p t   i s   i n i t i a l i z e d . 
 	 
 	 u p p e r c a s e L e t t e r s 
 	 l o w e r c a s e L e t t e r s 
 	 	 A l l   u p p e r c a s e   a n d   l o w e r c a s e   l e t t e r s   t h a t   w e   k n o w   h o w   t o   c o n v e r t . 
 	 
 	 w o r d D e l i m i t e r C h a r a c t e r s 
 	 	 L i s t   o f   c h a r a c t e r s   s e p a r a t i n g   w o r d s ,   s u c h   a s   s p a c e s ,   b r a c k e t s ,   a n d   q u o t e s . 
 	 	 U s e d   f o r   f u l l   w o r d   r e p l a c e . 
   
  
 l     ��������  ��  ��        j     �� �� *0 protectreplacements protectReplacements  J     ����        j    �� �� $0 startprotectchar startProtectChar  m       �    {      j    	�� ��  0 endprotectchar endProtectChar  m       �    }      j   
 �� �� (0 replaceignorescase replaceIgnoresCase  m   
 ��
�� boovtrue      j    �� �� *0 replaceisrestricted replaceIsRestricted  m    ��
�� boovfals       j    �� !�� 0 preffilename prefFileName ! m     " " � # # N i l . a c . w e i z m a n n . h o f m a n . A d d P r o t e c t S t r i n g s    $ % $ j    �� &�� 0 isinitialized isInitialized & m    ��
�� boovfals %  ' ( ' j    �� )�� $0 uppercaseletters uppercaseLetters ) m     * * � + + n A B C D E F G H I J K L M N O P Q R S T U V W X Y Z �R � � � � � � � � � � � � � � � � � � � � � � � � � �x (  , - , j    �� .�� $0 lowercaseletters lowercaseLetters . m     / / � 0 0 n a b c d e f g h i j k l m n o p q r s t u v w x y z �S � � � � � � � � � � � � � � � � � � � � � � � � � � � -  1 2 1 j    X�� 3��  0 worddelimiters wordDelimiters 3 J    W 4 4  5 6 5 1    ��
�� 
spac 6  7 8 7 1     ��
�� 
tab  8  9 : 9 o     #��
�� 
ret  :  ; < ; m   # & = = � > >  . <  ? @ ? m   & ) A A � B B  ! @  C D C m   ) , E E � F F  ? D  G H G m   , / I I � J J  : H  K L K m   / 2 M M � N N  ; L  O P O m   2 5 Q Q � R R  - P  S T S m   5 8 U U � V V  / T  W X W m   8 ; Y Y � Z Z  ( X  [ \ [ m   ; > ] ] � ^ ^  ) \  _ ` _ m   > A a a � b b  ` `  c d c m   A D e e � f f  ' d  g h g m   D G i i � j j  � h  k l k m   G J m m � n n  � l  o p o m   J M q q � r r  9 p  s t s m   M P u u � v v  : t  w�� w m   P S x x � y y  "��   2  z { z l     ��������  ��  ��   {  | } | l     �� ~ ��   ~   Running this script     � � � (   R u n n i n g   t h i s   s c r i p t }  � � � i   Y \ � � � I     ������
�� .aevtoappnull  �   � ****��  ��   � Q      � ��� � k     � �  � � � l   �� � ���   �  changeProtectChars()    � � � � ( c h a n g e P r o t e c t C h a r s ( ) �  � � � l   �� � ���   �  changeIgnoreCase()    � � � � $ c h a n g e I g n o r e C a s e ( ) �  � � � l   �� � ���   �  changeIsRestricted()    � � � � ( c h a n g e I s R e s t r i c t e d ( ) �  ��� � I    �������� *0 addprotectedstrings addProtectedStrings��  ��  ��   � R      ������
�� .ascrerr ****      � ****��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   �  	 Routines    � � � �    R o u t i n e s �  � � � l     ��������  ��  ��   �  � � � i   ] ` � � � I      �������� *0 addprotectedstrings addProtectedStrings��  ��   � k     � � �  � � � I     �������� 0 
initialize  ��  ��   �  � � � T    � � � k    | � �  � � � I   �� � �
�� .sysodlogaskr        TEXT � m     � � � � � 6 E n t e r   t h e   p r o t e c t e d   s t r i n g . � �� � �
�� 
dtxt � m     � � � � �   � �� � �
�� 
btns � J     � �  � � � m     � � � � �  C a n c e l �  ��� � m     � � � � �  O K��   � �� ���
�� 
dflt � m    ���� ��   �  � � � s    . � � � c     � � � l    ����� � 1    ��
�� 
rslt��  ��   � m    ��
�� 
list � J       � �  � � � o      ���� 0 tostring toString �  ��� � o      ���� 0 buttonpressed buttonPressed��   �  � � � r   / 7 � � � I   / 5�� ����� (0 removeprotectchars removeProtectChars �  ��� � o   0 1���� 0 tostring toString��  ��   � o      ���� 0 
fromstring 
fromString �  � � � I  8 Q�� � �
�� .sysodlogaskr        TEXT � b   8 = � � � b   8 ; � � � m   8 9 � � � � � < E n t e r   a   s t r i n g   t o   p r o t e c t   a s   " � o   9 :���� 0 tostring toString � m   ; < � � � � �  " . � �� � �
�� 
dtxt � o   > ?���� 0 
fromstring 
fromString � �� � �
�� 
btns � J   @ K � �  � � � m   @ C � � � � �  C a n c e l �  � � � m   C F � � � � �  D o n e �  ��� � m   F I � � � � �  M o r e . . .��   � �� ���
�� 
dflt � m   L M���� ��   �  � � � s   R f � � � c   R U � � � l  R S ����� � 1   R S��
�� 
rslt��  ��   � m   S T��
�� 
list � J       � �  � � � o      ���� 0 
fromstring 
fromString �  ��� � o      ���� 0 buttonpressed buttonPressed��   �  � � � I   g n�� ����� .0 addprotectreplacement addProtectReplacement �  � � � o   h i���� 0 
fromstring 
fromString �  ��� � o   i j���� 0 tostring toString��  ��   �  ��  Z  o |���� =   o t o   o p���� 0 buttonpressed buttonPressed m   p s �  D o n e l 	 w x����  S   w x��  ��  ��  ��  ��   � �� I   � ��������� 0 	saveprefs 	savePrefs��  ��  ��   � 	
	 l     ��������  ��  ��  
  i   a d I      �������� (0 changeprotectchars changeProtectChars��  ��   k     �  I     �������� 0 
initialize  ��  ��    r     b     o    ���� $0 startprotectchar startProtectChar o    ����  0 endprotectchar endProtectChar o      ���� 0 protectdelims protectDelims  T    � k    �  I   '��
�� .sysodlogaskr        TEXT m       �!! T E n t e r   t h e   t w o   e s c a p e   d e l i m i t e r   c h a r a c t e r s : ��"#
�� 
dtxt" o    ���� 0 protectdelims protectDelims# ��$%
�� 
btns$ J    !&& '(' m    )) �**  C a n c e l( +��+ m    ,, �--  O K��  % ��.��
�� 
dflt. m   " #���� ��   /0/ s   ( <121 c   ( +343 l  ( )5����5 1   ( )��
�� 
rslt��  ��  4 m   ) *��
�� 
list2 J      66 787 o      �� 0 textreturned textReturned8 9�~9 o      �}�} 0 buttonpressed buttonPressed�~  0 :�|: Z   = �;<=�{; =   = B>?> n   = @@A@ 1   > @�z
�z 
lengA o   = >�y�y 0 textreturned textReturned? m   @ A�x�x < k   E lBB CDC r   E jEFE n   E SGHG J   F SII JKJ 4   G J�wL
�w 
cha L m   H I�v�v K M�uM 4   L O�tN
�t 
cha N m   M N�s�s �u  H o   E F�r�r 0 textreturned textReturnedF J      OO PQP o      �q�q $0 startprotectchar startProtectCharQ R�pR o      �o�o  0 endprotectchar endProtectChar�p  D S�nS  S   k l�n  = TUT =   o tVWV n   o rXYX 1   p r�m
�m 
lengY o   o p�l�l 0 textreturned textReturnedW m   r s�k�k  U Z�jZ k   w �[[ \]\ r   w �^_^ J   w {`` aba m   w xcc �dd  b e�ie m   x yff �gg  �i  _ J      hh iji o      �h�h $0 startprotectchar startProtectCharj k�gk o      �f�f  0 endprotectchar endProtectChar�g  ] l�el  S   � ��e  �j  �{  �|   m�dm I   � ��c�b�a�c 0 	saveprefs 	savePrefs�b  �a  �d   non l     �`�_�^�`  �_  �^  o pqp i   e hrsr I      �]�\�[�] $0 changeignorecase changeIgnoreCase�\  �[  s k     Gtt uvu I     �Z�Y�X�Z 0 
initialize  �Y  �X  v wxw Z    yz�W{y o    �V�V (0 replaceignorescase replaceIgnoresCasez r    |}| m    ~~ �   C a s e   I n s e n s i t i v e} o      �U�U "0 casesensitivity caseSensitivity�W  { r    ��� m    �� ���  C a s e   S e n s i t i v e� o      �T�T "0 casesensitivity caseSensitivityx ��� I   (�S��
�S .sysodlogaskr        TEXT� b    ��� b    ��� m    �� ��� > T h e   p r o t e c t i o n   r e p l a c e m e n t   i s :  � o    �R
�R 
ret � o    �Q�Q "0 casesensitivity caseSensitivity� �P��
�P 
btns� J    "�� ��� m    �� ���  C h a n g e� ��O� m     �� ���  O K�O  � �N��M
�N 
dflt� m   # $�L�L �M  � ��K� Z   ) G���J�I� =   ) .��� n   ) ,��� 1   * ,�H
�H 
bhit� l  ) *��G�F� 1   ) *�E
�E 
rslt�G  �F  � m   , -�� ���  C h a n g e� k   1 C�� ��� r   1 =��� H   1 7�� o   1 6�D�D (0 replaceignorescase replaceIgnoresCase� o      �C�C (0 replaceignorescase replaceIgnoresCase� ��B� I   > C�A�@�?�A 0 	saveprefs 	savePrefs�@  �?  �B  �J  �I  �K  q ��� l     �>�=�<�>  �=  �<  � ��� i   i l��� I      �;�:�9�; (0 changeisrestricted changeIsRestricted�:  �9  � k     G�� ��� I     �8�7�6�8 0 
initialize  �7  �6  � ��� Z    ���5�� o    �4�4 *0 replaceisrestricted replaceIsRestricted� r    ��� m    �� ���  � o      �3�3 0 isrestricted isRestricted�5  � r    ��� m    �� ���  n o t  � o      �2�2 0 isrestricted isRestricted� ��� I   (�1��
�1 .sysodlogaskr        TEXT� b    ��� b    ��� m    �� ��� < T h e   p r o t e c t i o n   r e p l a c e m e n t   i s  � o    �0�0 0 isrestricted isRestricted� m    �� ��� : r e s t r i c t e d   t o   c o m p l e t e   w o r d s .� �/��
�/ 
btns� J    "�� ��� m    �� ���  C h a n g e� ��.� m     �� ���  O K�.  � �-��,
�- 
dflt� m   # $�+�+ �,  � ��*� Z   ) G���)�(� =   ) .��� n   ) ,��� 1   * ,�'
�' 
bhit� l  ) *��&�%� 1   ) *�$
�$ 
rslt�&  �%  � m   , -�� ���  C h a n g e� k   1 C�� ��� r   1 =��� H   1 7�� o   1 6�#�# *0 replaceisrestricted replaceIsRestricted� o      �"�" *0 replaceisrestricted replaceIsRestricted� ��!� I   > C� ���  0 	saveprefs 	savePrefs�  �  �!  �)  �(  �*  � ��� l     ����  �  �  � ��� i   m p��� I      ���� 80 inspectprotectreplacements inspectProtectReplacements�  �  � k     <�� ��� I     ���� 0 
initialize  �  �  � ��� r    
��� J    ��  � o      �� 0 thelist theList� ��� X    4���� r    /��� b    ,��� b    *��� b    &� � b    $ m      �  " n     # o   ! #�� 0 find   o     !�� 	0 entry    m   $ % �  "   - >   "� n   & )	
	 o   ' )�� 0 replace  
 o   & '�� 	0 entry  � m   * + �  "� n        ;   - . o   , -�� 0 thelist theList� 	0 entry  � o    �� *0 protectreplacements protectReplacements� � I  5 <�

�
 .gtqpchltns    @   @ ns   o   5 6�	�	 0 thelist theList ��
� 
prmp m   7 8 � 0 P r o t e c t i o n   R e p l a c e m e n t s :�  �  �  l     ����  �  �    i   q t I      ��� .0 addprotectreplacement addProtectReplacement  o      �� 0 
fromstring 
fromString �  o      ���� 0 tostring toString�   �   k     �  !  I     �������� 0 
initialize  ��  ��  ! "#" Z   $%����$ =    	&'& o    ���� 0 
fromstring 
fromString' m    (( �))  % l 	  *����* r    +,+ I    ��-���� (0 removeprotectchars removeProtectChars- .��. o    ���� 0 tostring toString��  ��  , o      ���� 0 
fromstring 
fromString��  ��  ��  ��  # /��/ Q    �01��0 k    �22 343 Z    *56����5 =    787 o    ���� 0 
fromstring 
fromString8 m    99 �::  6 R   " &��;��
�� .ascrerr ****      � ****; m   $ %<< �==  j u m p   o u t��  ��  ��  4 >?> X   + �@��A@ Z   ? �BC����B =   ? DDED n   ? BFGF o   @ B���� 0 find  G o   ? @���� 	0 entry  E o   B C���� 0 
fromstring 
fromStringC k   G �HH IJI Z   G WKL����K =   G LMNM n   G JOPO o   H J���� 0 replace  P o   G H���� 	0 entry  N o   J K���� 0 tostring toStringL R   O S��Q��
�� .ascrerr ****      � ****Q m   Q RRR �SS  j u m p   o u t��  ��  ��  J TUT I  X ���VW
�� .sysodlogaskr        TEXTV b   X qXYX b   X oZ[Z b   X m\]\ b   X k^_^ b   X i`a` b   X gbcb b   X eded b   X cfgf b   X ahih b   X _jkj b   X [lml m   X Ynn �oo , A l r e a d y   d e f i n e d   e n t r y :m o   Y Z��
�� 
ret k l 	 [ ^p����p l  [ ^q����q n   [ ^rsr o   \ ^���� 0 replace  s o   [ \���� 	0 entry  ��  ��  ��  ��  i o   _ `��
�� 
ret g l 	 a bt����t m   a buu �vv  f o r   s t r i n g :��  ��  e o   c d��
�� 
ret c l 	 e fw����w o   e f���� 0 
fromstring 
fromString��  ��  a o   g h��
�� 
ret _ o   i j��
�� 
ret ] l 	 k lx����x m   k lyy �zz > D o   y o u   w a n t   m e   t o   r e p l a c e   w i t h :��  ��  [ o   m n��
�� 
ret Y l 	 o p{����{ o   o p���� 0 tostring toString��  ��  W ��|}
�� 
btns| J   r z~~ � m   r u�� ���  C a n c e l� ���� m   u x�� ���  O K��  } �����
�� 
dflt� m   } ~���� ��  U ���� Z   � �������� =   � ���� n   � ���� 1   � ���
�� 
bhit� l  � ������� 1   � ���
�� 
rslt��  ��  � m   � ��� ���  O K� k   � ��� ��� r   � ���� o   � ����� 0 tostring toString� n      ��� o   � ����� 0 replace  � o   � ����� 	0 entry  � ���� R   � ������
�� .ascrerr ****      � ****� m   � ��� ���  j u m p   o u t��  ��  ��  ��  ��  ��  ��  �� 	0 entry  A o   . 3���� *0 protectreplacements protectReplacements? ���� s   � ���� K   � ��� ������ 0 find  � o   � ����� 0 
fromstring 
fromString� ������� 0 replace  � o   � ����� 0 tostring toString��  � n      ���  ;   � �� o   � ����� *0 protectreplacements protectReplacements��  1 R      ������
�� .ascrerr ****      � ****��  ��  ��  ��   ��� l     ��������  ��  ��  � ��� i   u x��� I      ������� 00 setprotectreplacements setProtectReplacements� ���� o      ���� 0 newlist newList��  ��  � k     j�� ��� I     �������� 0 
initialize  ��  ��  � ��� r    ��� J    ����  � o      ���� *0 protectreplacements protectReplacements� ��� X    d����� Q    _����� k   " V�� ��� r   " '��� n   " %��� o   # %���� 0 find  � o   " #���� 	0 entry  � o      ���� 0 
fromstring 
fromString� ��� r   ( -��� n   ( +��� o   ) +���� 0 replace  � o   ( )���� 	0 entry  � o      ���� 0 tostring toString� ���� Z   . V������� >   . 1��� o   . /���� 0 
fromstring 
fromString� o   / 0���� 0 tostring toString� Q   4 R���� I   7 =������� $0 getprotectstring getProtectString� ���� o   8 9���� 0 
fromstring 
fromString��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  � s   E R��� K   E K�� ������ 0 find  � o   F G���� 0 
fromstring 
fromString� ������� 0 replace  � o   H I���� 0 tostring toString��  � n      ���  ;   P Q� o   K P���� *0 protectreplacements protectReplacements��  ��  ��  � R      ������
�� .ascrerr ****      � ****��  ��  ��  �� 	0 entry  � o    ���� 0 newlist newList� ��� I   e j�~�}�|�~ 0 	saveprefs 	savePrefs�}  �|  �  � ��� l     �{�z�y�{  �z  �y  � ��� i   y |��� I      �x��w�x (0 getprotectedstring getProtectedString� ��v� o      �u�u 0 	thestring 	theString�v  �w  � k     ;�� ��� I     �t�s�r�t 0 
initialize  �s  �r  � ��� X    0��q�� Z    +���p�o� =    ��� n    ��� o    �n�n 0 find  � o    �m�m 	0 entry  � o    �l�l 0 	thestring 	theString� L   " '�� n   " &��� o   # %�k�k 0 replace  � o   " #�j�j 	0 entry  �p  �o  �q 	0 entry  � o   	 �i�i *0 protectreplacements protectReplacements� ��h� R   1 ;�g��
�g .ascrerr ****      � ****� b   5 :��� b   5 8��� m   5 6�� ��� & E s c a p e   s t r i n g   f o r   "� o   6 7�f�f 0 	thestring 	theString� m   8 9�� ���  "   n o t   f o u n d� �e��d
�e 
errn� m   3 4�c�c��d  �h  � ��� l     �b�a�`�b  �a  �`  �    i   } � I      �_�^�_ 0 protectstring protectString �] o      �\�\ 0 	thestring 	theString�]  �^   k     {  I     �[�Z�Y�[ 0 
initialize  �Z  �Y   	
	 X    x�X Z    s�W o    �V�V (0 replaceignorescase replaceIgnoresCase Z   " I�U o   " '�T�T *0 replaceisrestricted replaceIsRestricted r   * 8 I   * 6�S�R�S D0  caseinsensitiverestrictedreplace  caseInsensitiveRestrictedReplace  o   + ,�Q�Q 0 	thestring 	theString  n   , / o   - /�P�P 0 find   o   , -�O�O 	0 entry   �N n   / 2 o   0 2�M�M 0 replace   o   / 0�L�L 	0 entry  �N  �R   o      �K�K 0 	thestring 	theString�U   r   ; I  I   ; G�J!�I�J 00 caseinsensitivereplace caseInsensitiveReplace! "#" o   < =�H�H 0 	thestring 	theString# $%$ n   = @&'& o   > @�G�G 0 find  ' o   = >�F�F 	0 entry  % (�E( n   @ C)*) o   A C�D�D 0 replace  * o   @ A�C�C 	0 entry  �E  �I    o      �B�B 0 	thestring 	theString�W   Z   L s+,�A-+ o   L Q�@�@ *0 replaceisrestricted replaceIsRestricted, r   T b./. I   T `�?0�>�? &0 replacerestricted replaceRestricted0 121 o   U V�=�= 0 	thestring 	theString2 343 n   V Y565 o   W Y�<�< 0 find  6 o   V W�;�; 	0 entry  4 7�:7 n   Y \898 o   Z \�9�9 0 replace  9 o   Y Z�8�8 	0 entry  �:  �>  / o      �7�7 0 	thestring 	theString�A  - r   e s:;: I   e q�6<�5�6 0 replace  < =>= o   f g�4�4 0 	thestring 	theString> ?@? n   g jABA o   h j�3�3 0 find  B o   g h�2�2 	0 entry  @ C�1C n   j mDED o   k m�0�0 0 replace  E o   j k�/�/ 	0 entry  �1  �5  ; o      �.�. 0 	thestring 	theString�X 	0 entry   o   	 �-�- *0 protectreplacements protectReplacements
 F�,F L   y {GG o   y z�+�+ 0 	thestring 	theString�,   HIH l     �*�)�(�*  �)  �(  I JKJ i   � �LML I      �'N�&�' (0 removeprotectchars removeProtectCharsN O�%O o      �$�$ 0 	thestring 	theString�%  �&  M k     �PP QRQ Z     }ST�#�"S F     +UVU l    W�!� W G     XYX >     Z[Z o     �� $0 startprotectchar startProtectChar[ m    \\ �]]  Y >   
 ^_^ o   
 ��  0 endprotectchar endProtectChar_ m    `` �aa  �!  �   V l 	  )b��b l   )c��c G    )ded E    fgf o    �� 0 	thestring 	theStringg o    �� $0 startprotectchar startProtectChare E     'hih l 	   !j��j o     !�� 0 	thestring 	theString�  �  i o   ! &��  0 endprotectchar endProtectChar�  �  �  �  T k   . ykk lml r   . 3non n  . 1pqp 1   / 1�
� 
txdlq 1   . /�
� 
ascro o      �� "0 saveddelimiters savedDelimitersm rsr r   4 ?tut J   4 ;vv w�w o   4 9�� $0 startprotectchar startProtectChar�  u n     xyx 1   < >�
� 
txdly 1   ; <�
� 
ascrs z{z r   @ E|}| n   @ C~~ 2  A C�
� 
citm o   @ A�� 0 	thestring 	theString} o      �
�
 0 thechars theChars{ ��� r   F M��� J   F I�� ��	� m   F G�� ���  �	  � n     ��� 1   J L�
� 
txdl� 1   I J�
� 
ascr� ��� r   N S��� c   N Q��� o   N O�� 0 thechars theChars� m   O P�
� 
TEXT� o      �� 0 	thestring 	theString� ��� r   T _��� J   T [�� ��� o   T Y��  0 endprotectchar endProtectChar�  � n     ��� 1   \ ^�
� 
txdl� 1   [ \� 
�  
ascr� ��� r   ` e��� n   ` c��� 2  a c��
�� 
citm� o   ` a���� 0 	thestring 	theString� o      ���� 0 thechars theChars� ��� r   f m��� J   f i�� ���� m   f g�� ���  ��  � n     ��� 1   j l��
�� 
txdl� 1   i j��
�� 
ascr� ��� r   n s��� c   n q��� o   n o���� 0 thechars theChars� m   o p��
�� 
TEXT� o      ���� 0 	thestring 	theString� ���� r   t y��� o   t u���� "0 saveddelimiters savedDelimiters� n     ��� 1   v x��
�� 
txdl� 1   u v��
�� 
ascr��  �#  �"  R ���� L   ~ ��� o   ~ ���� 0 	thestring 	theString��  K ��� l     ��������  ��  ��  � ��� i   � ���� I      ������� 0 replace  � ��� o      ���� 0 	thestring 	theString� ��� o      ���� 0 find  � ���� o      ���� 0 replace  ��  ��  � k     *�� ��� P     ����� Z   ������� H    	�� E    ��� o    ���� 0 	thestring 	theString� o    ���� 0 find  � l 	  ������ L    �� o    ���� 0 	thestring 	theString��  ��  ��  ��  � ����
�� conscase��  ��  � ��� r    ��� o    ���� 0 find  � n     ��� 1    ��
�� 
txdl� 1    ��
�� 
ascr� ��� r    ��� n    ��� 2   ��
�� 
citm� o    ���� 0 	thestring 	theString� o      ���� 	0 parts  � ��� r     %��� o     !���� 0 replace  � n     ��� 1   " $��
�� 
txdl� 1   ! "��
�� 
ascr� ���� L   & *�� c   & )��� o   & '���� 	0 parts  � m   ' (��
�� 
TEXT��  � ��� l     ��������  ��  ��  � ��� i   � ���� I      ������� 00 caseinsensitivereplace caseInsensitiveReplace� ��� o      ���� 0 	thestring 	theString� ��� o      ���� 0 find  � ���� o      ���� 0 replace  ��  ��  � k     }�� ��� P     ����� Z   ������� H    	�� E    ��� o    ���� 0 	thestring 	theString� o    ���� 0 find  � l 	  ������ L    �� o    ���� 0 	thestring 	theString��  ��  ��  ��  ��  � ����
�� conscase��  � ��� r    ��� I    ������� 0 	lowercase  �  ��  o    ���� 0 find  ��  ��  � n      1    ��
�� 
txdl 1    ��
�� 
ascr�  r    ) n    ' 2  % '��
�� 
citm I    %��	���� 0 	lowercase  	 
��
 o     !���� 0 	thestring 	theString��  ��   o      ���� 	0 parts    r   * - m   * +����  o      ���� 0 b    Y   . r���� k   < m  r   < H \   < F [   < D o   < =���� 0 b   l  = C���� n   = C 1   A C��
�� 
leng n   = A !  4   > A��"
�� 
cobj" o   ? @���� 0 i  ! o   = >���� 	0 parts  ��  ��   m   D E����  o      ���� 0 e   #$# Z   I c%&����% @   I L'(' o   I J���� 0 e  ( o   J K���� 0 b  & r   O _)*) n   O Z+,+ 7  P Z��-.
�� 
ctxt- o   T V���� 0 b  . o   W Y���� 0 e  , o   O P���� 0 	thestring 	theString* n      /0/ 4   [ ^��1
�� 
cobj1 o   \ ]���� 0 i  0 o   Z [���� 	0 parts  ��  ��  $ 2��2 r   d m343 [   d k565 [   d i787 o   d e���� 0 e  8 l  e h9����9 n   e h:;: 1   f h��
�� 
leng; o   e f���� 0 find  ��  ��  6 m   i j���� 4 o      ���� 0 b  ��  �� 0 i   m   1 2����  I  2 7��<��
�� .corecnte****       ****< o   2 3���� 	0 parts  ��  ��   =>= r   s x?@? o   s t���� 0 replace  @ n     ABA 1   u w��
�� 
txdlB 1   t u��
�� 
ascr> C��C L   y }DD c   y |EFE o   y z���� 	0 parts  F m   z {��
�� 
TEXT��  � GHG l     ��������  ��  ��  H IJI i   � �KLK I      ��M���� $0 restricedreplace restricedReplaceM NON o      ���� 0 	thestring 	theStringO PQP o      ���� 0 find  Q R��R o      ���� 0 replace  ��  ��  L k     �SS TUT P     VW�V Z   XY�~�}X H    	ZZ E    [\[ o    �|�| 0 	thestring 	theString\ o    �{�{ 0 find  Y l 	  ]�z�y] L    ^^ o    �x�x 0 	thestring 	theString�z  �y  �~  �}  W �w�v
�w conscase�v  �  U _`_ r    aba o    �u�u 0 find  b n     cdc 1    �t
�t 
txdld 1    �s
�s 
ascr` efe r    ghg n    iji 2   �r
�r 
citmj o    �q�q 0 	thestring 	theStringh o      �p�p 	0 parts  f klk r     #mnm m     !oo �pp  n o      �o�o 0 	newstring 	newStringl qrq r   $ 'sts m   $ %�n�n t o      �m�m 0 b  r uvu r   ( +wxw m   ( )�l�l  x o      �k�k 0 e  v yzy Y   , �{�j|}�i{ k   : �~~ � Z   : ����h�g� ?   : =��� o   : ;�f�f 0 i  � m   ; <�e�e � k   @ ��� ��� r   @ I��� \   @ G��� [   @ E��� o   @ A�d�d 0 b  � l  A D��c�b� n   A D��� 1   B D�a
�a 
leng� o   A B�`�` 0 find  �c  �b  � m   E F�_�_ � o      �^�^ 0 e  � ��]� Z   J ����\�� F   J y��� l  J ^��[�Z� G   J ^��� =   J M��� o   J K�Y�Y 0 b  � m   K L�X�X � E   P \��� o   P U�W�W  0 worddelimiters wordDelimiters� n   U [��� 4   V [�V�
�V 
cha � l  W Z��U�T� \   W Z��� o   W X�S�S 0 b  � m   X Y�R�R �U  �T  � o   U V�Q�Q 0 	thestring 	theString�[  �Z  � l 	 a w��P�O� l  a w��N�M� G   a w��� =   a f��� o   a b�L�L 0 e  � l  b e��K�J� n   b e��� 1   c e�I
�I 
leng� o   b c�H�H 0 	thestring 	theString�K  �J  � E   i u��� o   i n�G�G  0 worddelimiters wordDelimiters� n   n t��� 4   o t�F�
�F 
cha � l  p s��E�D� [   p s��� o   p q�C�C 0 e  � m   q r�B�B �E  �D  � o   n o�A�A 0 	thestring 	theString�N  �M  �P  �O  � r   | ���� b   | ��� o   | }�@�@ 0 	newstring 	newString� o   } ~�?�? 0 replace  � o      �>�> 0 	newstring 	newString�\  � r   � ���� b   � ���� o   � ��=�= 0 	newstring 	newString� o   � ��<�< 0 find  � o      �;�; 0 	newstring 	newString�]  �h  �g  � ��� r   � ���� [   � ���� o   � ��:�: 0 e  � m   � ��9�9 � o      �8�8 0 b  � ��� r   � ���� \   � ���� [   � ���� o   � ��7�7 0 b  � l  � ���6�5� n   � ���� 1   � ��4
�4 
leng� n   � ���� 4   � ��3�
�3 
cobj� o   � ��2�2 0 i  � o   � ��1�1 	0 parts  �6  �5  � m   � ��0�0 � o      �/�/ 0 e  � ��� Z   � ����.�-� @   � ���� o   � ��,�, 0 e  � o   � ��+�+ 0 b  � r   � ���� b   � ���� o   � ��*�* 0 	newstring 	newString� n   � ���� 7  � ��)��
�) 
ctxt� o   � ��(�( 0 b  � o   � ��'�' 0 e  � o   � ��&�& 0 	thestring 	theString� o      �%�% 0 	newstring 	newString�.  �-  � ��$� r   � ���� [   � ���� o   � ��#�# 0 e  � m   � ��"�" � o      �!�! 0 b  �$  �j 0 i  | m   / 0� �  } I  0 5���
� .corecnte****       ****� o   0 1�� 	0 parts  �  �i  z ��� L   � ��� o   � ��� 0 	newstring 	newString�  J ��� l     ����  �  �  � ��� i   � ���� I      ���� B0 caseinsensitiverestricedreplace caseInsensitiveRestricedReplace� ��� o      �� 0 	thestring 	theString� ��� o      �� 0 find  � ��� o      �� 0 replace  �  �  � k     ��� ��� P     ���� Z   ����� H    	�� E    ��� o    �� 0 	thestring 	theString� o    �� 0 find  � l 	  ���� L    �� o    �
�
 0 	thestring 	theString�  �  �  �  �  � �	�
�	 conscase�  � � � r     I    ��� 0 	lowercase   � o    �� 0 find  �  �   n      1    �
� 
txdl 1    �
� 
ascr   r    )	
	 n    ' 2  % '�
� 
citm I    %� ���  0 	lowercase   �� o     !���� 0 	thestring 	theString��  ��  
 o      ���� 	0 parts    r   * - m   * + �   o      ���� 0 	newstring 	newString  r   . 1 m   . /����  o      ���� 0 b    r   2 5 m   2 3����   o      ���� 0 e    Y   6 ��� !�� k   D �"" #$# Z   D �%&����% ?   D G'(' o   D E���� 0 i  ( m   E F���� & k   J �)) *+* r   J S,-, \   J Q./. [   J O010 o   J K���� 0 b  1 l  K N2����2 n   K N343 1   L N��
�� 
leng4 o   K L���� 0 find  ��  ��  / m   O P���� - o      ���� 0 e  + 5��5 Z   T �67��86 F   T �9:9 l  T h;����; G   T h<=< =   T W>?> o   T U���� 0 b  ? m   U V���� = E   Z f@A@ o   Z _����  0 worddelimiters wordDelimitersA n   _ eBCB 4   ` e��D
�� 
cha D l  a dE����E \   a dFGF o   a b���� 0 b  G m   b c���� ��  ��  C o   _ `���� 0 	thestring 	theString��  ��  : l 	 k �H����H l  k �I����I G   k �JKJ =   k pLML o   k l���� 0 e  M l  l oN����N n   l oOPO 1   m o��
�� 
lengP o   l m���� 0 	thestring 	theString��  ��  K E   s QRQ o   s x����  0 worddelimiters wordDelimitersR n   x ~STS 4   y ~��U
�� 
cha U l  z }V����V [   z }WXW o   z {���� 0 e  X m   { |���� ��  ��  T o   x y���� 0 	thestring 	theString��  ��  ��  ��  7 r   � �YZY b   � �[\[ o   � ����� 0 	newstring 	newString\ o   � ����� 0 replace  Z o      ���� 0 	newstring 	newString��  8 r   � �]^] b   � �_`_ o   � ����� 0 	newstring 	newString` n   � �aba 7  � ���cd
�� 
ctxtc o   � ����� 0 b  d o   � ����� 0 e  b o   � ����� 0 	thestring 	theString^ o      ���� 0 	newstring 	newString��  ��  ��  $ efe r   � �ghg [   � �iji o   � ����� 0 e  j m   � ����� h o      ���� 0 b  f klk r   � �mnm \   � �opo [   � �qrq o   � ����� 0 b  r l  � �s����s n   � �tut 1   � ���
�� 
lengu n   � �vwv 4   � ���x
�� 
cobjx o   � ����� 0 i  w o   � ����� 	0 parts  ��  ��  p m   � ����� n o      ���� 0 e  l yzy Z   � �{|����{ @   � �}~} o   � ����� 0 e  ~ o   � ����� 0 b  | r   � �� b   � ���� o   � ����� 0 	newstring 	newString� n   � ���� 7  � �����
�� 
ctxt� o   � ����� 0 b  � o   � ����� 0 e  � o   � ����� 0 	thestring 	theString� o      ���� 0 	newstring 	newString��  ��  z ���� r   � ���� [   � ���� o   � ����� 0 e  � m   � ����� � o      ���� 0 b  ��  �� 0 i    m   9 :���� ! I  : ?�����
�� .corecnte****       ****� o   : ;���� 	0 parts  ��  ��   ���� L   � ��� o   � ����� 0 	newstring 	newString��  � ��� l     ��������  ��  ��  � ��� i   � ���� I      ������� 0 	lowercase  � ���� o      ���� 0 	thestring 	theString��  ��  � k     c�� ��� r     ��� n     ��� 2   ��
�� 
cha � o     ���� 0 	thestring 	theString� o      ���� 0 thechars theChars� ��� Y    H�������� k    C�� ��� r    ��� l   ������ e    �� n    ��� 4    ���
�� 
cobj� o    ���� 0 i  � o    ���� 0 thechars theChars��  ��  � o      ���� 0 thechar theChar� ��� r    +��� I   )�����
�� .sysooffslong    ��� null��  � ����
�� 
psof� o    ���� 0 thechar theChar� �����
�� 
psin� o     %���� $0 uppercaseletters uppercaseLetters��  � o      ���� 0 j  � ���� Z   , C������� ?   , /��� o   , -���� 0 j  � m   - .����  � r   2 ?��� n   2 :��� 4   7 :���
�� 
cha � o   8 9���� 0 j  � o   2 7���� $0 lowercaseletters lowercaseLetters� n      ��� 4   ; >���
�� 
cobj� o   < =���� 0 i  � o   : ;�� 0 thechars theChars��  ��  ��  �� 0 i  � m   	 
�~�~ � I  
 �}��|
�} .corecnte****       ****� o   
 �{�{ 0 thechars theChars�|  ��  � ��� r   I N��� n  I L��� 1   J L�z
�z 
txdl� 1   I J�y
�y 
ascr� o      �x�x "0 saveddelimiters savedDelimiters� ��� r   O T��� m   O P�� ���  � n     ��� 1   Q S�w
�w 
txdl� 1   P Q�v
�v 
ascr� ��� r   U Z��� c   U X��� o   U V�u�u 0 thechars theChars� m   V W�t
�t 
TEXT� o      �s�s 0 	thestring 	theString� ��� r   [ `��� o   [ \�r�r "0 saveddelimiters savedDelimiters� n     ��� 1   ] _�q
�q 
txdl� 1   \ ]�p
�p 
ascr� ��o� L   a c�� o   a b�n�n 0 	thestring 	theString�o  � ��� l     �m�l�k�m  �l  �k  � ��� i   � ���� I      �j�i�h�j 0 	saveprefs 	savePrefs�i  �h  � k     ��� ��� r     ��� I    	�g��
�g .earsffdralis        afdr� m     �f
�f afdmpref� �e��
�e 
from� m    �d
�d fldmfldu� �c��b
�c 
rtyp� m    �a
�a 
alis�b  � o      �`�` 0 
preffolder 
prefFolder� ��_� Q    ����^� k    ��� ��� O    I��� Z    H���]�� I   �\��[
�\ .coredoexbool        obj � n    ��� 4    �Z�
�Z 
file� o    �Y�Y 0 preffilename prefFileName� o    �X�X 0 
preffolder 
prefFolder�[  � r   " /��� c   " -   b   " + l  " %�W�V c   " % o   " #�U�U 0 
preffolder 
prefFolder m   # $�T
�T 
TEXT�W  �V   o   % *�S�S 0 preffilename prefFileName m   + ,�R
�R 
alis� o      �Q�Q 0 preffile prefFile�]  � r   2 H c   2 F	
	 l  2 D�P�O I  2 D�N�M
�N .corecrel****      � null�M   �L
�L 
kocl m   4 5�K
�K 
file �J
�J 
prdt K   6 > �I�H
�I 
pnam o   7 <�G�G 0 preffilename prefFileName�H   �F�E
�F 
insh o   ? @�D�D 0 
preffolder 
prefFolder�E  �P  �O  
 m   D E�C
�C 
alis o      �B�B 0 preffile prefFile� m    �                                                                                  MACS  alis    t  Macintosh HD               �M�gH+     8
Finder.app                                                      ���        ����  	                CoreServices    �M�G      ��r       8   7   6  6Macintosh HD:System: Library: CoreServices: Finder.app   
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  �  I  J S�A
�A .rdwropenshor       file o   J K�@�@ 0 preffile prefFile �?�>
�? 
perm m   N O�=
�= boovtrue�>    Q   T ��< k   W �   r   W �!"! n   W �#$# l 	 X �%�;�:% K   X �&& �9'(�9 $0 startprotectchar startProtectChar' o   ] a�8�8 $0 startprotectchar startProtectChar( �7)*�7  0 endprotectchar endProtectChar) o   g k�6�6  0 endprotectchar endProtectChar* �5+,�5 *0 protectreplacements protectReplacements+ o   q u�4�4 *0 protectreplacements protectReplacements, �3-.�3 (0 replaceignorescase replaceIgnoresCase- o   { �2�2 (0 replaceignorescase replaceIgnoresCase. �1/�0�1 *0 replaceisrestricted replaceIsRestricted/ o   � ��/�/ *0 replaceisrestricted replaceIsRestricted�0  �;  �:  $  f   W X" o      �.�. 	0 prefs    0�-0 I  � ��,12
�, .rdwrwritnull���     ****1 o   � ��+�+ 	0 prefs  2 �*34
�* 
as  3 m   � ��)
�) 
reco4 �(5�'
�( 
refn5 o   � ��&�& 0 preffile prefFile�'  �-   R      �%�$�#
�% .ascrerr ****      � ****�$  �#  �<   6�"6 I  � ��!7� 
�! .rdwrclosnull���     ****7 o   � ��� 0 preffile prefFile�   �"  � R      ���
� .ascrerr ****      � ****�  �  �^  �_  � 898 l     ����  �  �  9 :;: i   � �<=< I      ���� 0 	readprefs 	readPrefs�  �  = k     �>> ?@? r     ABA I    	�CD
� .earsffdralis        afdrC m     �
� afdmprefD �EF
� 
fromE m    �
� fldmflduF �G�
� 
rtypG m    �
� 
alis�  B o      �� 0 
preffolder 
prefFolder@ H�H Q    �IJ�I k    �KK LML r    NON c    PQP b    RSR l   T��
T c    UVU o    �	�	 0 
preffolder 
prefFolderV m    �
� 
TEXT�  �
  S o    �� 0 preffilename prefFileNameQ m    �
� 
alisO o      �� 0 preffile prefFileM WXW I   "�Y�
� .rdwropenshor       fileY o    �� 0 preffile prefFile�  X Z[Z Q   # �\]�\ k   & �^^ _`_ r   & /aba I  & -� cd
�  .rdwrread****        ****c o   & '���� 0 preffile prefFiled ��e��
�� 
as  e m   ( )��
�� 
reco��  b o      ���� 	0 prefs  ` fgf r   0 9hih n   0 3jkj o   1 3���� *0 protectreplacements protectReplacementsk o   0 1���� 	0 prefs  i o      ���� *0 protectreplacements protectReplacementsg lml r   : Cnon n   : =pqp o   ; =���� $0 startprotectchar startProtectCharq o   : ;���� 	0 prefs  o o      ���� $0 startprotectchar startProtectCharm rsr Z  D ctu����t =   D Mvwv n   D Kxyx m   I K��
�� 
pclsy o   D I���� $0 startprotectchar startProtectCharw m   K L��
�� 
longu r   P _z{z I  P Y��|��
�� .sysontocTEXT       shor| o   P U���� $0 startprotectchar startProtectChar��  { o      ���� $0 startprotectchar startProtectChar��  ��  s }~} r   d o� n   d i��� o   e i����  0 endprotectchar endProtectChar� o   d e���� 	0 prefs  � o      ����  0 endprotectchar endProtectChar~ ��� Z  p �������� =   p y��� n   p w��� m   u w��
�� 
pcls� o   p u����  0 endprotectchar endProtectChar� m   w x��
�� 
long� r   | ���� I  | ������
�� .sysontocTEXT       shor� o   | �����  0 endprotectchar endProtectChar��  � o      ����  0 endprotectchar endProtectChar��  ��  � ��� r   � ���� n   � ���� o   � ����� (0 replaceignorescase replaceIgnoresCase� o   � ����� 	0 prefs  � o      ���� (0 replaceignorescase replaceIgnoresCase� ���� r   � ���� n   � ���� o   � ����� *0 replaceisrestricted replaceIsRestricted� o   � ����� 	0 prefs  � o      ���� *0 replaceisrestricted replaceIsRestricted��  ] R      ������
�� .ascrerr ****      � ****��  ��  �  [ ���� I  � ������
�� .rdwrclosnull���     ****� o   � ����� 0 preffile prefFile��  ��  J R      ������
�� .ascrerr ****      � ****��  ��  �  �  ; ��� l     ��������  ��  ��  � ��� i   � ���� I      �������� 0 
initialize  ��  ��  � Z     ������� H     �� o     ���� 0 isinitialized isInitialized� k   	 �� ��� I   	 �������� 0 	readprefs 	readPrefs��  ��  � ���� r    ��� m    ��
�� boovtrue� o      ���� 0 isinitialized isInitialized��  ��  ��  � ���� l     ��������  ��  ��  ��       ����  ���� "�� * /����������������������  � ������������������������������������������������������������ *0 protectreplacements protectReplacements�� $0 startprotectchar startProtectChar��  0 endprotectchar endProtectChar�� (0 replaceignorescase replaceIgnoresCase�� *0 replaceisrestricted replaceIsRestricted�� 0 preffilename prefFileName�� 0 isinitialized isInitialized�� $0 uppercaseletters uppercaseLetters�� $0 lowercaseletters lowercaseLetters��  0 worddelimiters wordDelimiters
�� .aevtoappnull  �   � ****�� *0 addprotectedstrings addProtectedStrings�� (0 changeprotectchars changeProtectChars�� $0 changeignorecase changeIgnoreCase�� (0 changeisrestricted changeIsRestricted�� 80 inspectprotectreplacements inspectProtectReplacements�� .0 addprotectreplacement addProtectReplacement�� 00 setprotectreplacements setProtectReplacements�� (0 getprotectedstring getProtectedString�� 0 protectstring protectString�� (0 removeprotectchars removeProtectChars�� 0 replace  �� 00 caseinsensitivereplace caseInsensitiveReplace�� $0 restricedreplace restricedReplace�� B0 caseinsensitiverestricedreplace caseInsensitiveRestricedReplace�� 0 	lowercase  �� 0 	saveprefs 	savePrefs�� 0 	readprefs 	readPrefs�� 0 
initialize  � ������  ��  
�� boovtrue
�� boovfals
�� boovfals� ����� �  ��� = A E I M Q U Y ] a e i m q u x� ���   � ���  	� ���  � �� ���������
�� .aevtoappnull  �   � ****��  ��  �  � �������� *0 addprotectedstrings addProtectedStrings��  ��  ��  
*j+  W X  h� �� ����������� *0 addprotectedstrings addProtectedStrings��  ��  � �������� 0 tostring toString�� 0 buttonpressed buttonPressed�� 0 
fromstring 
fromString� �� ��� ��� � ��������������� � � � � ���~�� 0 
initialize  
�� 
dtxt
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT
�� 
rslt
�� 
list
�� 
cobj�� (0 removeprotectchars removeProtectChars� .0 addprotectreplacement addProtectReplacement�~ 0 	saveprefs 	savePrefs�� �*j+  O zhZ������lv�l� 	O��&E[�k/EQ�Z[�l/EQ�ZO*�k+ E�O�%�%��a a a mv�m� 	O��&E[�k/EQ�Z[�l/EQ�ZO*��l+ O�a   Y h[OY��O*j+ � �}�|�{���z�} (0 changeprotectchars changeProtectChars�|  �{  � �y�x�w�y 0 protectdelims protectDelims�x 0 textreturned textReturned�w 0 buttonpressed buttonPressed� �v �u�t),�s�r�q�p�o�n�m�lcf�k�v 0 
initialize  
�u 
dtxt
�t 
btns
�s 
dflt�r 
�q .sysodlogaskr        TEXT
�p 
rslt
�o 
list
�n 
cobj
�m 
leng
�l 
cha �k 0 	saveprefs 	savePrefs�z �*j+  Ob  b  %E�O �hZ�����lv�l� O��&E[�k/EQ�Z[�l/EQ�ZO��,l  ,�[�k/\[�l/\ZlvE[�k/Ec  Z[�l/Ec  ZOY +��,j  "��lvE[�k/Ec  Z[�l/Ec  ZOY h[OY�}O*j+ � �js�i�h���g�j $0 changeignorecase changeIgnoreCase�i  �h  � �f�f "0 casesensitivity caseSensitivity� �e~���d�c���b�a�`�_�^��]�e 0 
initialize  
�d 
ret 
�c 
btns
�b 
dflt�a 
�` .sysodlogaskr        TEXT
�_ 
rslt
�^ 
bhit�] 0 	saveprefs 	savePrefs�g H*j+  Ob   �E�Y �E�O��%�%���lv�l� 
O��,�  b  Ec  O*j+ Y h� �\��[�Z���Y�\ (0 changeisrestricted changeIsRestricted�[  �Z  � �X�X 0 isrestricted isRestricted� �W�����V���U�T�S�R�Q��P�W 0 
initialize  
�V 
btns
�U 
dflt�T 
�S .sysodlogaskr        TEXT
�R 
rslt
�Q 
bhit�P 0 	saveprefs 	savePrefs�Y H*j+  Ob   �E�Y �E�O�%�%���lv�l� 
O��,�  b  Ec  O*j+ Y h� �O��N�M���L�O 80 inspectprotectreplacements inspectProtectReplacements�N  �M  � �K�J�K 0 thelist theList�J 	0 entry  � �I�H�G�F�E�D�C�B�I 0 
initialize  
�H 
kocl
�G 
cobj
�F .corecnte****       ****�E 0 find  �D 0 replace  
�C 
prmp
�B .gtqpchltns    @   @ ns  �L =*j+  OjvE�O (b   [��l kh ��,%�%��,%�%�6F[OY��O���l � �A�@�?���>�A .0 addprotectreplacement addProtectReplacement�@ �=��= �  �<�;�< 0 
fromstring 
fromString�; 0 tostring toString�?  � �:�9�8�: 0 
fromstring 
fromString�9 0 tostring toString�8 	0 entry  � �7(�69<�5�4�3�2�1Rn�0uy�/���.�-�,�+�*���)�(�7 0 
initialize  �6 (0 removeprotectchars removeProtectChars
�5 
kocl
�4 
cobj
�3 .corecnte****       ****�2 0 find  �1 0 replace  
�0 
ret 
�/ 
btns
�. 
dflt�- 
�, .sysodlogaskr        TEXT
�+ 
rslt
�* 
bhit�)  �(  �> �*j+  O��  *�k+ E�Y hO ���  	)j�Y hO �b   [��l kh ��,�  a��,�  	)j�Y hO��%��,%�%�%�%�%�%�%�%�%�%�a a lva la  O_ a ,a   ���,FO)ja Y hY h[OY��O��a b   6GW X  h� �'��&�%���$�' 00 setprotectreplacements setProtectReplacements�& �#��# �  �"�" 0 newlist newList�%  � �!� ���! 0 newlist newList�  	0 entry  � 0 
fromstring 
fromString� 0 tostring toString� ������������ 0 
initialize  
� 
kocl
� 
cobj
� .corecnte****       ****� 0 find  � 0 replace  � $0 getprotectstring getProtectString�  �  � � 0 	saveprefs 	savePrefs�$ k*j+  OjvEc   O T�[��l kh  9��,E�O��,E�O�� # *�k+ W X  ���b   6GY hW X  h[OY��O*j+ 
� �������� (0 getprotectedstring getProtectedString� ��� �  �� 0 	thestring 	theString�  � ��� 0 	thestring 	theString� 	0 entry  � 
�
�	���������
 0 
initialize  
�	 
kocl
� 
cobj
� .corecnte****       ****� 0 find  � 0 replace  
� 
errn��� <*j+  O )b   [��l kh ��,�  
��,EY h[OY��O)��l�%�%� ��� ����� 0 protectstring protectString� ����� �  ���� 0 	thestring 	theString�   � ������ 0 	thestring 	theString�� 	0 entry  � 	�������������������� 0 
initialize  
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 0 find  �� 0 replace  �� D0  caseinsensitiverestrictedreplace  caseInsensitiveRestrictedReplace�� 00 caseinsensitivereplace caseInsensitiveReplace�� &0 replacerestricted replaceRestricted�� |*j+  O qb   [��l kh b   ,b   *���,��,m+ E�Y *���,��,m+ E�Y )b   *���,��,m+ E�Y *���,��,m+ E�[OY��O�� ��M���������� (0 removeprotectchars removeProtectChars�� ����� �  ���� 0 	thestring 	theString��  � �������� 0 	thestring 	theString�� "0 saveddelimiters savedDelimiters�� 0 thechars theChars� 	\`������������
�� 
bool
�� 
ascr
�� 
txdl
�� 
citm
�� 
TEXT�� �b  �
 b  ��&	 �b  
 �b  �&�& P��,E�Ob  kv��,FO��-E�O�kv��,FO��&E�Ob  kv��,FO��-E�O�kv��,FO��&E�O���,FY hO�� ������������� 0 replace  �� ����� �  �������� 0 	thestring 	theString�� 0 find  �� 0 replace  ��  � ���������� 0 	thestring 	theString�� 0 find  �� 0 replace  �� 	0 parts  � ���������
�� 
ascr
�� 
txdl
�� 
citm
�� 
TEXT�� +�g �� �Y hVO���,FO��-E�O���,FO��&� ������������� 00 caseinsensitivereplace caseInsensitiveReplace�� ����� �  �������� 0 	thestring 	theString�� 0 find  �� 0 replace  ��  � ���������������� 0 	thestring 	theString�� 0 find  �� 0 replace  �� 	0 parts  �� 0 b  �� 0 i  �� 0 e  � 
��������������������� 0 	lowercase  
�� 
ascr
�� 
txdl
�� 
citm
�� .corecnte****       ****
�� 
cobj
�� 
leng
�� 
ctxt
�� 
TEXT�� ~g� �� �Y hVO*�k+ ��,FO*�k+ �-E�OkE�O Ck�j kh ���/�,kE�O�� �[�\[Z�\Z�2��/FY hO���,kE�[OY��O���,FO��&� ��L���������� $0 restricedreplace restricedReplace�� ����� �  �������� 0 	thestring 	theString�� 0 find  �� 0 replace  ��  � ������������������ 0 	thestring 	theString�� 0 find  �� 0 replace  �� 	0 parts  �� 0 	newstring 	newString�� 0 b  �� 0 e  �� 0 i  � W������o������������
�� 
ascr
�� 
txdl
�� 
citm
�� .corecnte****       ****
�� 
leng
�� 
cha 
�� 
bool
�� 
cobj
�� 
ctxt�� ��g �� �Y hVO���,FO��-E�O�E�OkE�OjE�O �k�j kh �k N���,kE�O�k 
 b  	��k/�&	 ���, 
 b  	��k/�&�& 
��%E�Y ��%E�Y hO�kE�O���/�,kE�O�� ��[�\[Z�\Z�2%E�Y hO�kE�[OY�tO�� ������������� B0 caseinsensitiverestricedreplace caseInsensitiveRestricedReplace�� ����� �  �������� 0 	thestring 	theString�� 0 find  �� 0 replace  ��  � ������������������ 0 	thestring 	theString�� 0 find  �� 0 replace  �� 	0 parts  �� 0 	newstring 	newString�� 0 b  �� 0 e  �� 0 i  � ����������������������� 0 	lowercase  
�� 
ascr
�� 
txdl
�� 
citm
�� .corecnte****       ****
�� 
leng
�� 
cha 
�� 
bool
�� 
ctxt
�� 
cobj�� �g� �� �Y hVO*�k+ ��,FO*�k+ �-E�O�E�OkE�OjE�O �k�j kh �k X���,kE�O�k 
 b  	��k/�&	 ���, 
 b  	��k/�&�& 
��%E�Y ��[�\[Z�\Z�2%E�Y hO�kE�O���/�,kE�O�� ��[�\[Z�\Z�2%E�Y hO�kE�[OY�jO�� ������������� 0 	lowercase  �� ����� �  ���� 0 	thestring 	theString��  � ��������~�}�� 0 	thestring 	theString�� 0 thechars theChars�� 0 i  � 0 thechar theChar�~ 0 j  �} "0 saveddelimiters savedDelimiters� �|�{�z�y�x�w�v�u�t��s
�| 
cha 
�{ .corecnte****       ****
�z 
cobj
�y 
psof
�x 
psin�w 
�v .sysooffslong    ��� null
�u 
ascr
�t 
txdl
�s 
TEXT�� d��-E�O Ak�j kh ��/EE�O*��b  � E�O�j b  �/��/FY h[OY��O��,E�O���,FO��&E�O���,FO�� �r��q�p���o�r 0 	saveprefs 	savePrefs�q  �p  � �n�m�l�n 0 
preffolder 
prefFolder�m 0 preffile prefFile�l 	0 prefs  �  �k�j�i�h�g�f�e�d�c�b�a�`�_�^�]�\�[�Z�Y�X�W�V�U�T�S�R�Q�P�O�N�M
�k afdmpref
�j 
from
�i fldmfldu
�h 
rtyp
�g 
alis�f 
�e .earsffdralis        afdr
�d 
file
�c .coredoexbool        obj 
�b 
TEXT
�a 
kocl
�` 
prdt
�_ 
pnam
�^ 
insh�] 
�\ .corecrel****      � null
�[ 
perm
�Z .rdwropenshor       file�Y $0 startprotectchar startProtectChar�X  0 endprotectchar endProtectChar�W *0 protectreplacements protectReplacements�V (0 replaceignorescase replaceIgnoresCase�U *0 replaceisrestricted replaceIsRestricted�T 

�S 
as  
�R 
reco
�Q 
refn
�P .rdwrwritnull���     ****�O  �N  
�M .rdwrclosnull���     ****�o ������� E�O �� 7��b  /j 	 ��&b  %�&E�Y *����b  l�� �&E�UO�a el O O)a \[a ,\a \[a ,\a \[a ,\a \[a ,\a \[a ,\Za E�O�a a a �� W X  hO�j W X  h� �L=�K�J���I�L 0 	readprefs 	readPrefs�K  �J  � �H�G�F�H 0 
preffolder 
prefFolder�G 0 preffile prefFile�F 	0 prefs  � �E�D�C�B�A�@�?�>�=�<�;�:�9�8�7�6�5�4�3�2�1�0�/
�E afdmpref
�D 
from
�C fldmfldu
�B 
rtyp
�A 
alis�@ 
�? .earsffdralis        afdr
�> 
TEXT
�= .rdwropenshor       file
�< 
as  
�; 
reco
�: .rdwrread****        ****�9 *0 protectreplacements protectReplacements�8 $0 startprotectchar startProtectChar
�7 
pcls
�6 
long
�5 .sysontocTEXT       shor�4  0 endprotectchar endProtectChar�3 (0 replaceignorescase replaceIgnoresCase�2 *0 replaceisrestricted replaceIsRestricted�1  �0  
�/ .rdwrclosnull���     ****�I ������� E�O ���&b  %�&E�O�j O ����l E�O��,Ec   O��,Ec  Ob  �,�  b  j Ec  Y hO�a ,Ec  Ob  �,�  b  j Ec  Y hO�a ,Ec  O�a ,Ec  W X  hO�j W X  h� �.��-�,���+�. 0 
initialize  �-  �,  �  � �*�* 0 	readprefs 	readPrefs�+ b   *j+  OeEc  Y hascr  ��ޭ