unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, Spin, ExtDlgs, ShellApi, IniFiles;

type
  TForm10 = class(TForm)
    GroupBox1: TGroupBox;
    ListBox1: TListBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    Label3: TLabel;
    Label2: TLabel;
    Edit3: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Edit1: TEdit;
    GroupBox4: TGroupBox;
    StringGrid1: TStringGrid;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn6: TBitBtn;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    BitBtn7: TBitBtn;
    SpeedButton3: TSpeedButton;
    BitBtn5: TBitBtn;
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure FormHide(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;
  selIni: TIniFile;

implementation

uses Unit1, Unit4;

{$R *.dfm}

procedure TForm10.FormHide(Sender: TObject);
begin
  Form1.ComboBox2.Items:=ListBox1.Items;
end;

procedure TForm10.FormCreate(Sender: TObject);
begin
  StringGrid1.Cells[0,0]:='Section';
  StringGrid1.Cells[1,0]:='Key';
  StringGrid1.Cells[2,0]:='Value';
end;

procedure TForm10.BitBtn3Click(Sender: TObject);
begin
  StringGrid1.RowCount:=StringGrid1.RowCount+1;
end;

procedure TForm10.BitBtn2Click(Sender: TObject);
var
  name: string;
  i: integer;
begin
  i:=0;
  name:='New'+IntToStr(i);
  while ListBox1.Items.IndexOf(name)>-1 do
    begin
      i:=i+1;
      name:='New'+IntToStr(i);
    end;
  if CreateDir(driverdir+'\'+name)=true then
    ListBox1.Items.Add(name)
  else
    begin
      messagebeep(MB_ICONERROR);
      MessageDlg('Error while creating drivers folder.', mtError, [mbOK], 0);
    end;
end;

procedure TForm10.BitBtn1Click(Sender: TObject);
var
  name: string;
  sr: TSearchRec;
begin
  if (ListBox1.ItemIndex<>-1) then
    begin
      name:=ListBox1.Items[ListBox1.ItemIndex];
      if FindFirst(driverdir+'\'+name+'\*',faAnyFile,sr) = 0 then begin
        try
          repeat
            if not (sr.Attr and faDirectory <> 0) then
              DeleteFile(driverdir+'\'+name+'\'+sr.Name);
          until FindNext(sr) <> 0;
        finally
          FindClose(sr);
        end;
      end;
      if RemoveDir(driverdir+'\'+name)=true then
        //ListBox1.Items.Delete(ListBox1.ItemIndex)
        BitBtn5Click(Sender)
      else
        begin
          messagebeep(MB_ICONERROR);
          MessageDlg('Error while deleting '+name+' folder.', mtError, [mbOK], 0);
        end;
    end
  else
    begin
      messagebeep(MB_ICONERROR);
      MessageDlg('Nothing selected.', mtError, [mbOK], 0);
    end;
end;

procedure TForm10.SpeedButton1Click(Sender: TObject);
var
  curr,new: integer;
begin
  if not (ListBox1.Items.Count=0) then
  begin
    curr:=ListBox1.ItemIndex;
    if curr>0 then
      new:=curr-1
    else
      new:=0;
    ListBox1.Items.Move(curr,new);
    ListBox1.ItemIndex:=new;
  end;
end;

procedure TForm10.SpeedButton2Click(Sender: TObject);
var
  curr,new,max: integer;
begin
  if not (ListBox1.Items.Count=0) then
  begin
    curr:=ListBox1.ItemIndex;
    max:=ListBox1.Items.Count-1;
    if curr<max then
      new:=curr+1
    else
      new:=max;
    ListBox1.Items.Move(curr,new);
    ListBox1.ItemIndex:=new;
  end;
end;

procedure TForm10.ListBox1Click(Sender: TObject);
var
  customDir, customStr: string;
  sections, values: TStringList;
  i, j: integer;
begin
  Label1.Enabled:=True;
  Label2.Enabled:=True;
  Label3.Enabled:=True;
  Edit1.Enabled:=True;
  Edit2.Enabled:=True;
  Edit3.Enabled:=True;
  StringGrid1.Enabled:=True;
  BitBtn3.Enabled:=True;
  BitBtn4.Enabled:=True;
  BitBtn7.Enabled:=True;
  SpeedButton3.Enabled:=True;
  customStr:=ListBox1.Items[ListBox1.ItemIndex];
  customDir:=driverdir+'\'+customStr;
  Edit1.Text:=customStr;
  StringGrid1.RowCount:=2;
  StringGrid1.Rows[1].Clear;
  if not DirectoryExists(customDir) then
    CreateDir(customDir);
  selIni:=TIniFile.Create(customDir+'\thrash.ini');
  Edit2.Text:=selIni.ReadString('THRASH','File','');
  Edit3.Text:=selIni.ReadString('THRASH','Type','');
  sections:=TStringList.create;
  values:=TStringList.create;
  selIni.ReadSections(sections);
  for i := 0 to sections.Count-1 do
    begin
      values.Clear;
      selIni.ReadSectionValues(sections[i], values);
      for j := 0 to values.Count-1 do
        begin
          if ((values.Names[j]<>'File') and (values.Names[j]<>'Type')) then
            begin
              StringGrid1.Cells[0,StringGrid1.RowCount-1] := sections[i];
              StringGrid1.Cells[1,StringGrid1.RowCount-1] := values.Names[j];
              StringGrid1.Cells[2,StringGrid1.RowCount-1] := values.ValueFromIndex[j];
              StringGrid1.RowCount:=StringGrid1.RowCount+1;
            end;
        end;
    end;
  selIni.Free;
end;

procedure TForm10.SpeedButton3Click(Sender: TObject);
var
  custdir: string;
begin
  custdir:=driverdir+'\'+ListBox1.Items[ListBox1.ItemIndex];
  Form10.Enabled:=false;
  DataModule4.OpenDialog2.InitialDir:=custdir;
  DataModule4.OpenDialog2.FileName:=Edit2.Text;
  if DataModule4.OpenDialog2.Execute then
    begin
      Edit2.Text:=ExtractFileName(DataModule4.OpenDialog2.FileName);
      showmessage(DataModule4.OpenDialog2.FileName);
      if not (CopyFile(
        PChar(DataModule4.OpenDialog2.FileName),
        PChar(custdir+'\'+Edit2.Text),True)
      ) then begin
        messagebeep(MB_ICONERROR);
        MessageDlg('Can''t copy '+Edit2.Text+' file.', mtError, [mbOK], 0);
      end;
      selIni:=TIniFile.Create(custdir+'\thrash.ini');
      selIni.WriteString('THRASH','File',Edit2.Text);
      selIni.Free;
    end;
  Form10.Enabled:=true;
end;

procedure TForm10.FormShow(Sender: TObject);
begin
//vybrani
end;

procedure TForm10.BitBtn5Click(Sender: TObject);
var
  sr: TSearchRec;
begin
  Form10.ListBox1.Items.Clear;
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  DataModule4.OpenDialog2.FileName:='';
  DataModule4.OpenDialog2.InitialDir:='';
  StringGrid1.RowCount:=2;
  StringGrid1.Rows[1].Clear;
  Label1.Enabled:=False;
  Label2.Enabled:=False;
  Label3.Enabled:=False;
  Edit1.Enabled:=False;
  Edit2.Enabled:=False;
  Edit3.Enabled:=False;
  StringGrid1.Enabled:=False;
  BitBtn3.Enabled:=False;
  BitBtn4.Enabled:=False;
  BitBtn7.Enabled:=False;
  SpeedButton3.Enabled:=False;
  if FindFirst(driverdir+'\*',faDirectory,sr) = 0 then begin
    try
      repeat
        if (
          (sr.Attr and faDirectory <> 0) and (sr.Name<>'.') and (sr.Name<>'..') and
          (sr.Name<>'nglide') and (sr.Name<>'dgvoodoo') and (sr.Name<>'dx6') and
          (sr.Name<>'dx7') and (sr.Name<>'dx8') and (sr.Name<>'glide3x') and
          (sr.Name<>'softtri') and ((sr.Name<>'dx5') or (nfs<>'3'))
        ) then Form10.ListBox1.Items.Add(sr.Name);
      until FindNext(sr) <> 0;
    finally
      FindClose(sr);
    end;
  end;
end;

procedure TForm10.BitBtn7Click(Sender: TObject);
begin
  ShellExecute(0, nil, PAnsiChar(driverdir+'\'+ListBox1.Items[ListBox1.ItemIndex]), nil, nil, SW_NORMAL);
end;

procedure TForm10.BitBtn4Click(Sender: TObject);
begin
  if ((ListBox1.Items[ListBox1.ItemIndex]=Edit1.Text) or
      (ListBox1.Items.IndexOf(Edit1.Text)=-1)) then
    begin
      if (RenameFile(driverdir+'\'+ListBox1.Items[ListBox1.ItemIndex],driverdir+'\'+Edit1.Text)) then
        begin
          ListBox1.Items[ListBox1.ItemIndex]:=Edit1.Text;
          selIni:=TIniFile.Create(driverdir+'\'+ListBox1.Items[ListBox1.ItemIndex]+'\thrash.ini');
          selIni.WriteString('THRASH','File',Edit2.Text);
          selIni.WriteString('THRASH','Type',Edit3.Text);
          showmessage('ok');
          //same inis ad rename dir
          selIni.Free;
        end;
    end
  else
    begin
      messagebeep(MB_ICONERROR);
      MessageDlg('This thrash driver already exists.', mtError, [mbOK], 0);
    end;
end;

end.
