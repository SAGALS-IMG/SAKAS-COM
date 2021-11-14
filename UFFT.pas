unit UFFT;

interface
uses System.SysUtils,System.Math;

type
  TFFTData = array of Extended;

//�����t�[���G�ϊ�(���͐M��,�o�͎���,�o�͋���)
procedure fft(InRe, InIm:TFFTData;var OutRe,OutIm:TFFTData; Dir: boolean);
procedure _fft(InRe, InIm:TFFTData;var OutRe,OutIm:TFFTData; Dir: boolean);

//*******************���֐�*****************************
//�n�����֐�
procedure WinHanning(var data:TFFTData);
//�n�~���O���֐�
procedure WinHamming(var data:TFFTData);
//�K�E�X���֐�
procedure WinGauss(var data:TFFTData;m:integer=1);
//�u���b�N�}���n���X���֐�
procedure WinBlackmanHarris(var data:TFFTData);
//�u���b�N�}���i�b�g�[�����֐�
procedure WinBlackmanNuttall(var data:TFFTData);
//�t���b�v�g�b�v���֐�
procedure WinFlapTop(var data:TFFTData);
//�������g���֐�
procedure WinHalfSin(var data:TFFTData);

implementation

procedure FFT(InRe, InIm:TFFTData;var OutRe,OutIm:TFFTData; Dir: boolean);
var i  :longint;
    InN:longint;//���̓f�[�^��
    n  :longint;//�␳��f�[�^��
begin
  InN:=Length(InRe);
  //�f�[�^����2�̏搔�ɖ����Ȃ��ꍇ��0�̃f�[�^��ǉ�����
  i:=1;
  while InN > Power(2,i) do inc(i);
    n:=trunc(IntPower(2,i));
  if Dir then
  begin
    if InN < n then
    begin
      setlength(InRe,n);
      setlength(InIm,n);
      for i := InN to n-1 do
      begin
        InRe[i]:=0;
        InIm[i]:=0;
      end;
    end;
  end
  else
  begin
    setlength(InRe,n*2);
    setlength(InIm,n*2);
    for i := n*2 downto n-1 do
    begin
      InRe[i]:=InRe[n*2-i];
      InIm[i]:=-InIm[n*2-i];
    end;
  end;

  //�����t�[���G�ϊ�
  _fft(InRe,InIm,OutRe,OutIm,Dir);
end;

procedure _fft(InRe, InIm:TFFTData;var OutRe,OutIm:TFFTData; Dir:boolean);
var
  n,i,Sgn:longint;
  ct1,ct2,ct3:longint;
  TmpRe,TmpIm:extended;

  nfft:array[0..3] of longint;
  fcos,fsin:TFFTData;

  tmp:extended;
  noblk:integer;
  cntb:array[0..1] of longint;
begin
  n:=Length(InRe);
  if Dir then
    Sgn := 1
  else
    Sgn := -1;

  ct2:=1;
  for ct1 := 1 to n-2 do
  begin
    TmpRe:=0;
    TmpIm:=0;
    if ct1<ct2 then
    begin
      TmpRe:=InRe[ct1-1];
      InRe[ct1-1]:=InRe[ct2-1];
      InRe[ct2-1]:=TmpRe;
      TmpIm:=InIm[ct1-1];
      InIm[ct1-1]:=InIm[ct2-1];
      InIm[ct2-1]:=TmpIm;
    end;
    ct3:=n div 2;
    while ct3<ct2 do
    begin
      ct2:=ct2-ct3;
      ct3:=ct3 div 2;
    end;
    ct2:=ct2+ct3;
  end;

  nfft[0]:=floor(Log2(n)/Log2(2));
  SetLength(fcos,n);
  SetLength(fsin,n);
  fcos[0]:=1;
  fsin[0]:=0;

  for ct1 := 1 to nfft[0] do
  begin
    nfft[2]:=floor(System.math.Power(2,ct1));
    nfft[1]:=n div nfft[2];
    nfft[3]:=nfft[2] div 2;
    for ct2 := 1 to nfft[3] do
    begin
      tmp:=-Pi/nfft[3]*ct2;
      fcos[ct2]:=cos(tmp);
      fsin[ct2]:=Sgn*sin(tmp);
    end;
    for ct2 := 1 to nfft[1] do
    begin
      noblk:=nfft[2]*(ct2-1);
      for ct3 := 0 to nfft[3]-1 do
      begin
        cntb[0]:=noblk+ct3;
        cntb[1]:=cntb[0]+nfft[3];
        TmpRe:=InRe[cntb[1]]*fcos[ct3]-InIm[cntb[1]]*fsin[ct3];
        TmpIm:=InIm[cntb[1]]*fcos[ct3]+InRe[cntb[1]]*fsin[ct3];
        InRe[cntb[1]]:=InRe[cntb[0]]-TmpRe;
        InIm[cntb[1]]:=InIm[cntb[0]]-TmpIm;
        InRe[cntb[0]]:=InRe[cntb[0]]+TmpRe;
        InIm[cntb[0]]:=InIm[cntb[0]]+TmpIm;
      end;
    end;
  end;
  if Dir then
  begin
    setlength(OutRe,n div 2);
    setlength(OutIm,n div 2);
    for i := 0 to (n div 2)-1 do
    begin
      OutRe[i]:=InRe[i];  //����
      OutIm[i]:=InIm[i];  //����
    end;
  end
  else
  begin
    setlength(OutRe,n);
    setlength(OutIm,n);
    for i:=0 to n-1 do
    begin
      OutRe[i]:=InRe[i]/n;
      OutIm[i]:=InIm[i]/n;
    end;
  end;

end;

//�n�����֐�
procedure WinHanning(var data:TFFTData);
var i,n:integer;
begin
  n:=length(data);
  for i := 0 to n-1 do
  begin
    data[i]:=(
               0.5 - 0.5*Cos(2*Pi*i/(n-1))
             )*data[i];
  end;
end;
//�n�~���O���֐�
procedure WinHamming(var data:TFFTData);
var i,n:integer;
begin
  n:=length(data);
  for i := 0 to n-1 do
  begin
    data[i]:=(
               0.54 - 0.46 * Cos(2*Pi*i/(n-1))
             )*data[i];
  end;
end;
//�K�E�X���֐�
procedure WinGauss(var data:TFFTData;m:integer=1);
var i,n:integer;
begin
  n:=length(data);
  for i := 0 to n-1 do
  begin
    data[i]:=Exp(
               -2 * power(m,2) / power(n-1,2) * power(i-(n-1)/2,2)
             )*data[i];
  end;
end;
//�u���b�N�}���n���X���֐�
procedure WinBlackmanHarris(var data:TFFTData);
var i,n:integer;
begin
  n:=length(data);
  for i := 0 to n-1 do
  begin
    data[i]:=(0.35875-0.48829*cos(2*Pi*i/(n-1))
                     +0.14128*cos(4*Pi*i/(n-1))
                     -0.01168*cos(6*Pi*i/(n-1))
             )*data[i];
  end;
end;
//�u���b�N�}���i�b�g�[�����֐�
procedure WinBlackmanNuttall(var data:TFFTData);
var i,n:integer;
begin
  n:=length(data);
  for i := 0 to n-1 do
  begin
    data[i]:=(0.3635819-0.4891775*cos(2*Pi*i/(n-1))
                       +0.1365995*cos(4*Pi*i/(n-1))
                       -0.0106411*cos(6*Pi*i/(n-1))
             )*data[i];
  end;
end;
//�t���b�v�g�b�v���֐�
procedure WinFlapTop(var data:TFFTData);
var i,n:integer;
begin
  n:=length(data);
  for i := 0 to n-1 do
  begin
    data[i]:=(1-1.930*Cos(2*Pi*i/(n-1))
               +1.290*Cos(4*Pi*i/(n-1))
               -0.388*Cos(6*Pi*i/(n-1))
               +0.032*Cos(8*Pi*i/(n-1))
             )*data[i];
  end;
end;
//�������g���֐�
procedure WinHalfSin(var data:TFFTData);
var i,n:integer;
begin
  n:=length(data);
  for i := 0 to n-1 do
  begin
    data[i]:=Sin(pi*i/(n-1))*data[i];
  end;
end;

end.