unit Forms.Main;

interface

uses
  Windows, Vcl.Forms, Vcl.ExtCtrls, Vcl.StdCtrls, System.SysUtils, System.Types, System.UITypes,
  System.Classes, System.Variants, System.Hash, Basic.UniString, Common.SHA1,
  Bittorrent, Bittorrent.MetaFile, Bittorrent.MagnetLink, Vcl.Controls;

type
  TfrmMain = class(TForm)
    EditMagnet: TEdit;
    EditTorrent: TEdit;
    ButtonAddMagnet: TButton;
    ButtonAddTorrent: TButton;
    ListBox1: TListBox;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure ButtonAddMagnetClick(Sender: TObject);
    procedure ButtonAddTorrentClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    bt: IBittorrent;
  public
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

procedure TfrmMain.Button1Click(Sender: TObject);
var
  i: Integer;
  j: Integer;
begin
  ListBox1.Items.BeginUpdate;
  ListBox1.Items.Clear;
  for i := 0 to bt.Seedings.Count-1 do
  begin
    ListBox1.Items.Add(bt.Seedings[i].InfoHash);
    ListBox1.Items.Add(bt.Seedings[i].PeersCount.ToString);
    ListBox1.Items.Add(bt.Seedings[i].PercentComplete.ToString);
    ListBox1.Items.Add('');
  end;
  ListBox1.Items.EndUpdate;
end;

procedure TfrmMain.ButtonAddMagnetClick(Sender: TObject);
begin
  bt.AddTorrent(TMagnetLink.Create(EditMagnet.Text), 'D:\Temp');
end;

procedure TfrmMain.ButtonAddTorrentClick(Sender: TObject);
begin
  bt.AddTorrent(TMetafile.Create(EditTorrent.Text), 'D:\Temp');
end;

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  bt := TBittorrent.Create('DelphiTorrents-BY-HGM', 12346, 12346);
  bt.Start;
end;

end.

