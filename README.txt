
arduino �p �t�H���g���C�u���� exfont�p �t�H���g�쐬�c�[�� �⑫�}�j���A�� 

�쐬�� 2015/01/28
�쐬�� ���܋g����

�͂��߂�

���̃h�L�������g�́Aarduino�p�t�H���g���C�u���� exfont �ŗ��p���邽�߂̃t�H���g�f�[�^��
�쐬����c�[���̕⑫�����ł��B
�{�c�[����Windows 8.1�ɂė��p���邱�Ƃ�O��ɍ쐬���Ă��܂��B
�܂��A�{�c�[���̗��p�ɂ�perl(�J���� ActivePerl 5.16.3 Build 1604)���K�v�ł��B

�K�v�t�@�C���̓���
�t�H���g�f�[�^�̍쐬�ɂ͎��̃t�@�C�����_�E�����[�h���ĉ𓀂��A
����̃t�H���_�ɔz�u���ĉ������B

1)8�~8 �h�b�g���{��t�H���g�u����t�H���g�v X11 BDF �`��
   HP: http://www.geocities.jp/littlimi/misaki.htm
   �_�E�����[�h�����N: http://www.geocities.jp/littlimi/arc/misaki/misaki_bdf_2012-06-03.tar.gz
   �t�@�C��: misaki_bdf_2012-06-03.tar.gz
   �𓀂����t�@�C������A���̃t�@�C���� .\bdf �t�H���_�ɔz�u���ĉ������B 
    misaki_4x8_iso8859.bdf
    misaki_gothic.bdf

2)/efont/ ���{�� �r�b�g�}�b�v�t�H���g�W
   HP: http://openlab.ring.gr.jp/efont/japanese/index.html.ja
   �_�E�����[�h�����N: http://openlab.ring.gr.jp/efont/dist/japanese/japanese-bitmap-fonts-0.4.5.tar.bz2
   �t�@�C��: japanese-bitmap-fonts-0.4.5.tar.bz2
   �𓀂����t�@�C������A���̃t�@�C���� .\bdf �t�H���_�ɔz�u���ĉ������B 
    .\kappa20\10x20a.bdf
    .\kappa20\k20.bdf
    .\naga10\5x10a.bdf
    .\naga10\knj10.bdf
    .\shinonome12\shnm6x12a.bdf
    .\shinonome12\shnmk12.bdf
    .\shinonome14\shnm7x14a.bdf
    .\shinonome14\shnmk14.bdf
    .\shinonome16\shnm8x16a.bdf
    .\shinonome16\shnmk16.bdf
    .\x11\12x24a.bdf
    .\x11\jiskan24.bdf

�g����
  1)�o�C�i���t�H���g�f�[�^�̍쐬
     makeall.bat �����s���ĉ������B
     ����ɂ��A���̃o�C�i���t�H���g�����쐬���܂��B
     ��R�̃t�@�C���𐶐����܂����A���p����t�@�C���́A���̂Q�݂̂ł��B
      .\utf_fontbin\u_font.bin      �c �S�피�p�S�p�����t�H���g
      .u_table.h   �c Arduino���C�u���� exfont�p�t�H���g�e�[�u���\���̃\�[�X

  2)�C���X�g�[����
     u_font.bin ���@�t���b�V�������� WQ2564BV�ɏ����݂܂��B
     u_table.h ��    Arduino���C�u���� exfont �̃f�B���N�g�� �Ɋi�[���܂��B      

�쐬���ڍ�
    �EJIS�R�[�h�� �o�C�i���t�H���g�t�@�C��(.\jis_fontbin\ �t�H���_��)
       �ʃt�H���g(Wxh.bin W�͕��AH�͍����Aa�͔��p)
        10x10.bin
        10x20a.bin
        12x12.bin
        12x24a.bin
        14x14.bin
        16x16.bin
        20x20.bin
        24x24.bin
        4x8a.bin
        5x10a.bin
        6x12a.bin
        7x14a.bin
        8x16a.bin
        8x8.bin
      �����t�H���g 
        ank.bin       �c �S�피�p�����t�H���g
        font.bin      �c �S�피�p�S�p�����t�H���g
        full.bin        �c �S��S�p�����t�H���g

    �EUTF-16�R�[�h�� �o�C�i���t�H���g�t�@�C��(.\utf_fontbin\ �t�H���_��)
       �ʃt�H���g(Wxh.bin W�͕��AH�͍����Aa�͔��p)
        u_10x10.bin
        u_10x20a.bin
        u_12x12.bin
        u_12x24a.bin
        u_14x14.bin
        u_16x16.bin
        u_20x20.bin
        u_24x24.bin
        u_4x8a.bin
        u_5x10a.bin
        u_6x12a.bin
        u_7x14a.bin
        u_8x16a.bin
        u_8x8.bin
      �����t�H���g 
        u_ank.bin       �c �S�피�p�����t�H���g
        u_font.bin      �c �S�피�p�S�p�����t�H���g
        u_full.bin        �c �S��S�p�����t�H���g
  
   �E�e�L�X�g�`���t�H���g�f�[�^
      .\fonthex�A.\utf_fonthex �Ɋi�[
      �t�@�C�����̓o�C�i���t�H���g���ɑΉ��A�������g���q��.hex
 
   �EArduino���C�u���� exfont�p�t�H���g�e�[�u���\���̃\�[�X
      u_table.h    �c UTF16�R�[�h�����p�e�[�u��
      table.h        �c JIS�R�[�h�����p�e�[�u��(���Ή�)
     u_table.txt, table.txt �c �\�[�X�쐬�p

      ���̃e�[�u���͉��L�̂悤�ɂȂ��Ă���A u_font.bin (�S�피�p�S�p�����t�H���g)����
      �f�[�^�z�u�������Ă��܂��B
      �e�t�B�[���h�̈Ӗ��́A������
        �C���f�b�N�X���擪�A�h���X�A�f�[�^���擪�A�h���X�A�i�[�t�H���g���A
        �t�H���g����(�h�b�g)�A�t�H���g���i�h�b�g)�A�P�t�H���g������̃o�C�g��
     �ƂȂ�܂��B
      static FontInfo _finfo[EXFONTNUM] = {
	{ 0x000000, 0x00017E,  191,  8,  4,  8 }, // 0:u_4x8a.hex
	{ 0x000776, 0x000976,  256, 10,  5, 10 }, // 1:u_5x10a.hex
	{ 0x001376, 0x001576,  256, 12,  6, 12 }, // 2:u_6x12a.hex
	{ 0x002176, 0x002330,  221, 14,  7, 14 }, // 3:u_7x14a.hex
	{ 0x002F46, 0x003100,  221, 16,  8, 16 }, // 4:u_8x16a.hex
	{ 0x003ED0, 0x00404C,  190, 40, 10, 20 }, // 5:u_10x20a.hex
	{ 0x005DFC, 0x005FB6,  221, 48, 12, 24 }, // 6:u_12x24a.hex
	{ 0x008926, 0x00BEE4, 6879,  8,  8,  8 }, // 7:u_8x8.hex
	{ 0x0195DC, 0x01CB96, 6877, 20, 10, 10 }, // 8:u_10x10.hex
	{ 0x03E4DA, 0x041A98, 6879, 24, 12, 12 }, // 9:u_12x12.hex
	{ 0x069F80, 0x06D53E, 6879, 28, 14, 14 }, // 10:u_14x14.hex
	{ 0x09C5A2, 0x09FB60, 6879, 32, 16, 16 }, // 11:u_16x16.hex
	{ 0x0D5740, 0x0D8CFE, 6879, 60, 20, 20 }, // 12:u_20x20.hex
	{ 0x13D942, 0x140EFC, 6877, 72, 24, 24 }, // 13:u_24x24.hex
     };

 �ȏ�