object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'GENERACION FECHAS DE ENVIO'
  ClientHeight = 888
  ClientWidth = 1758
  Color = clBtnFace
  Constraints.MaxHeight = 950
  Constraints.MaxWidth = 1770
  Constraints.MinHeight = 950
  Constraints.MinWidth = 1770
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -21
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 168
  TextHeight = 30
  object BtGenerar: TcxButton
    Left = 21
    Top = 713
    Width = 339
    Height = 99
    Margins.Left = 16
    Margins.Top = 16
    Margins.Right = 16
    Margins.Bottom = 16
    Caption = 'GENERAR'
    OptionsImage.Spacing = 21
    TabOrder = 0
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -28
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    OnClick = BtGenerarClick
  end
  object ListbFechasEnvio: TcxListBox
    Left = 739
    Top = 90
    Width = 978
    Height = 751
    Margins.Left = 16
    Margins.Top = 16
    Margins.Right = 16
    Margins.Bottom = 16
    TabStop = False
    ItemHeight = 45
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -33
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.LookAndFeel.ScrollbarMode = sbmClassic
    Style.LookAndFeel.ScrollMode = scmClassic
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
    StyleDisabled.LookAndFeel.ScrollMode = scmClassic
    StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
    StyleFocused.LookAndFeel.ScrollMode = scmClassic
    StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
    StyleHot.LookAndFeel.ScrollMode = scmClassic
    TabOrder = 1
  end
  object DeFechaInicio: TcxDateEdit
    Left = 282
    Top = 309
    Margins.Left = 16
    Margins.Top = 16
    Margins.Right = 16
    Margins.Bottom = 16
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -28
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 2
    Width = 420
  end
  object SeCantComprada: TcxSpinEdit
    Left = 282
    Top = 36
    Margins.Left = 16
    Margins.Top = 16
    Margins.Right = 16
    Margins.Bottom = 16
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -28
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 3
    Width = 420
  end
  object SeCantEnviar: TcxSpinEdit
    Left = 282
    Top = 127
    Margins.Left = 16
    Margins.Top = 16
    Margins.Right = 16
    Margins.Bottom = 16
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -28
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 4
    Width = 420
  end
  object CbFrecuencia: TcxComboBox
    Left = 282
    Top = 220
    Margins.Left = 16
    Margins.Top = 16
    Margins.Right = 16
    Margins.Bottom = 16
    ParentFont = False
    Properties.Items.Strings = (
      'Diario'
      'Interdiario'
      'Semanal'
      'Bisemanal'
      'Quincenal'
      'Mensual'
      'Bimensual')
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -28
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    TabOrder = 5
    Text = 'Diario'
    Width = 420
  end
  object cxLabel1: TcxLabel
    Left = 12
    Top = 38
    Margins.Left = 16
    Margins.Top = 16
    Margins.Right = 16
    Margins.Bottom = 16
    Caption = 'Cantidad Comprada :'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -28
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Transparent = True
  end
  object cxLabel2: TcxLabel
    Left = 43
    Top = 129
    Margins.Left = 16
    Margins.Top = 16
    Margins.Right = 16
    Margins.Bottom = 16
    Caption = 'Cantidad a Enviar :'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -28
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Transparent = True
  end
  object cxLabel3: TcxLabel
    Left = 10
    Top = 222
    Margins.Left = 16
    Margins.Top = 16
    Margins.Right = 16
    Margins.Bottom = 16
    Caption = 'Frecuencia de Envio :'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -28
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Transparent = True
  end
  object CkbExcluirSabado: TcxCheckBox
    Left = 11
    Top = 490
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    TabStop = False
    Caption = 'Excluir dia Sabado'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -28
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.TransparentBorder = False
    Style.IsFontAssigned = True
    TabOrder = 9
    Transparent = True
  end
  object CkbExcluirDomingo: TcxCheckBox
    Left = 338
    Top = 490
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    TabStop = False
    Caption = 'Excluir dia Domingo'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -28
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.TransparentBorder = False
    Style.IsFontAssigned = True
    TabOrder = 10
    Transparent = True
  end
  object CbSkins: TcxComboBox
    Left = 914
    Top = 36
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    ParentFont = False
    Properties.OnChange = CbSkinsPropertiesChange
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -21
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.LookAndFeel.ScrollbarMode = sbmClassic
    Style.LookAndFeel.ScrollMode = scmClassic
    Style.IsFontAssigned = True
    StyleDisabled.LookAndFeel.ScrollbarMode = sbmClassic
    StyleDisabled.LookAndFeel.ScrollMode = scmClassic
    StyleFocused.LookAndFeel.ScrollbarMode = sbmClassic
    StyleFocused.LookAndFeel.ScrollMode = scmClassic
    StyleHot.LookAndFeel.ScrollbarMode = sbmClassic
    StyleHot.LookAndFeel.ScrollMode = scmClassic
    TabOrder = 11
    Width = 253
  end
  object dxToggleSwitch1: TdxToggleSwitch
    Left = 1340
    Top = 23
    Margins.Left = 5
    Margins.Top = 5
    Margins.Right = 5
    Margins.Bottom = 5
    Caption = 'Modo Claro'
    Checked = False
    ParentFont = False
    Properties.StateIndicator.Kind = sikGlyph
    Properties.StateIndicator.OffGlyph.SourceDPI = 96
    Properties.StateIndicator.OffGlyph.Data = {
      89504E470D0A1A0A0000000D4948445200000018000000180806000000E0773D
      F8000000097048597300000DD700000DD70142289B780000001974455874536F
      667477617265007777772E696E6B73636170652E6F72679BEE3C1A0000030449
      4441544889ADD54B685C551CC7F1CFB93379DAF4615253B16D6AA0D282A5E24A
      1471D12A1651914285497D2CB46E4454D0854B455DB9A9B82A52899958824205
      095D14C495A0E8AAF5455268B092178D99B4695E33C7C54C6E66E22426E07F75
      CFFF9EFBFDFD1FE77F0F9BB098F746ECF7C166BE0975419F6AD3ECE1D06330F5
      F5EBC4EF6856746F78CE503CAD4987774597428FCFEBB192BAB20DBA04DFC4BC
      8BB1CFA1B282F7B10D4D323E8A79F7E9F023DE9638B05606D9BADE469404C111
      C1CF316F40F06CD58E2705C7D05011DFB9398125A12AB7AC20A7A589C6068AF3
      CC2F068B157859E0EED8EF51D1411CC485D0E3EB1A81987759D02A9A10CC8310
      E86CA7B3A30C871829CE3133CE58811904477134ED6874F6DF1924BE10BD27D8
      577E9361FF3EB6B4D6661702D9167674D17A9D89BF188DC474C7E5D0E38715EC
      B2957C82420AA9075F6D4DB7D3B18BCE1AEFD9EA457A4C63AFDB647D89C7EDEA
      60CF9DEBC3D30F233357F873969B601A170583320643ECF390E025C171B481C3
      07566ABE115B986672846BABC57D969578192FA4CED6E6CDC1A1610BCDCA052F
      A5DE736E3895849C17F10E8AA0A97173700819924CF591E9F5879EF08AC50442
      CE8782372B69FD1F76BF6EBBA93439E675E33BC16ECD4D1CBA6773B8D2127FFF
      CA959A00AF297A22137BED95F1AD602F582AD2BE9D6CFD21AF6B0BD3142A43B7
      626D127725321EC1ACEAF68C4E6C1C1E2373934CA59EDF446F09BA43CED3D573
      7087ACA77006ECEF62FBD6FF16B8355A0E6832F55C0839C79617E92487E78D8B
      96D26DC3234C4DAF1FF9ADB1D570782C9E933671F57D70227D2A45864618BACA
      8D9B6520C4120B05C686191E5F86472BED4D94BCBA8C59F99BF6D92A38A23C8F
      3F6111C74D15982A904968CC525C6431AE3ECE0BE6ECD1A24BD4555D899A2B33
      0ED8194E98A8083E20F1FDDA35B25415E0F590D35E6F534D8996E195A4AF56BD
      3AAFE4545A866056C9617C8CA26876AD28EADFC9306C0CD3A2D743CE33E1A433
      F80A149D0E27FD12725E133D28717E4DCE7A16F376D4ACFB75C67E97E2806D1B
      65FC038367F9385EE01A5C0000000049454E44AE426082}
    Properties.StateIndicator.OnGlyph.SourceDPI = 96
    Properties.StateIndicator.OnGlyph.Data = {
      89504E470D0A1A0A0000000D4948445200000012000000180806000000F755AD
      31000000097048597300000CEB00000CEB01E5D644D20000018149444154388D
      AD94BF6A544114C67FDF3973837793DD22A9B494F802926AB14F2308163E85BE
      820F61A9ADAD5A042244EC0CA97C821449914A532CC8225E99198BDD856499BD
      77140F1C06E6637EE73BF30FFE53A84F9C4C26BBF3F97C9A737E006C4BBA8C31
      BEADA68710A6928E800EC84002B2A46B20D4305A337BBD5A7833259D8C46A3BB
      359089A4D3750090DDFD43AD1393F4B10491740E6CD74030B3E7250890DCFD69
      156459EDBA0401AE00AB32E3EECF80BD8226E0F312380C4A293DEED12F6A20B0
      B0FDB047FFFD37A07B85F9BC1C4BDA46502ECCAF9ECEA35A10922E281F7D0652
      D3347DADDF02BDEB01654927351C77F79D9CF393829659B478DFCCBA9CF39721
      D8A60B79AB45337BC9D0E534B31703A00C2449672184C31270753AE6EEC731C6
      C321FB0092BE015F257D07EE48FA7953DFF88D0CA5BB7F5A2FD69AD91B0A1FDB
      868CEEFE0AD82A5A0F214CDDFD88C51329017EB9FBFBA6690ED6F7A818E3F178
      AFEBBA694A693FC6B8E3EE3FCCECBC6DDBD3D96C36EB5BFBCFF1076DD5A565FB
      2ED6930000000049454E44AE426082}
    Style.BorderStyle = ebsNone
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -28
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.TransparentBorder = False
    Style.IsFontAssigned = True
    StyleDisabled.BorderStyle = ebsNone
    StyleFocused.BorderStyle = ebsNone
    StyleHot.BorderStyle = ebsNone
    TabOrder = 12
    Transparent = True
    OnClick = dxToggleSwitch1Click
  end
  object cxLabel4: TcxLabel
    Left = 71
    Top = 311
    Margins.Left = 16
    Margins.Top = 16
    Margins.Right = 16
    Margins.Bottom = 16
    Caption = 'Fecha de Inicio :'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -28
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Transparent = True
  end
  object cxLabel5: TcxLabel
    Left = 739
    Top = 34
    Margins.Left = 16
    Margins.Top = 16
    Margins.Right = 16
    Margins.Bottom = 16
    Caption = 'Aplicar Skin :'
    ParentFont = False
    Style.Font.Charset = DEFAULT_CHARSET
    Style.Font.Color = clWindowText
    Style.Font.Height = -28
    Style.Font.Name = 'Segoe UI'
    Style.Font.Style = []
    Style.IsFontAssigned = True
    Transparent = True
  end
  object dxSkinController1: TdxSkinController
    NativeStyle = False
    Left = 508
    Top = 380
  end
end
