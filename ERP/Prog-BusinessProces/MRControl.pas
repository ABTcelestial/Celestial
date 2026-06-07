{|===============================================================================|
 |                                                                               |
 |                              H E R E A   S O F T                              |
 |                             Unité : MRControl.pas                             |
 |                        Ecrit par : Alexandre le Grand                         |
 |                  e-mail : alexandre.le.grand@libertysurf.fr                   |
 |                       Copyright : (c)jeudi 7 juin 2001                        |
 |                                                                               |
 |                                Version : 1.0.0                                |
 |                                                                               |
 |===============================================================================|}

//Ce composant est libre d'utilisation

Unit MRControl;

Interface

Uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs;

  Type
  TResizeCursors = class(TPersistent)
  private
    FSizeNESW: TCursor;
    FSizeNWSE : TCursor;
    FSizeNS : TCursor;
    FSizeWE  : TCursor;
    Procedure SetCursors(Index: Integer; Value: TCursor);
  protected
  public
    constructor Create;
  published
    property SizeNESW: TCursor index 0 read FSizeNESW write SetCursors Default crSizeNESW;
    property SizeNWSE: TCursor index 1 read FSizeNWSE write SetCursors Default crSizeNWSE;
    property SizeNS: TCursor index 2 read   FSizeNS   write SetCursors Default crSizeNS;
    property SizeWE: TCursor index 3 read    FSizeWE   write  SetCursors Default crSizeWE;
  end;

  TOnResizeEvent = Procedure(ResizingCtrl : TControl;PtWidthHeight : TPoint) Of Object;
  TOnMoveEvent = Procedure(MovingCtrl : TControl;PtPosition : TPoint) Of Object;
  TResizingZoneInterval = Set Of 0..6;
  TCombiKey = (cCtrl, cAlt, cShift, cNone);
  TMRAction = (aMove, aResize, aBoth);
  TResizingZone = (rLeftTop, rLeftBottom, rRightBottom, rTopRight, rLeft, rTop, rRight, rBottom, rNone);
  TMRControl = Class(TComponent)
  Private
    FResizeCursors : TResizeCursors;
    FResizeCombiKey : TCombiKey;
    FMoveCombiKey : TCombiKey;
    FMoveCursor : TCursor;
    FOnResizeEvent : TOnResizeEvent;
    FOnMoveEvent : TOnMoveEvent;
    FOnBeforeResizeEvent : TOnResizeEvent;
    FOnBeforeMoveEvent : TOnMoveEvent;
    FOnAfterResizeEvent : TOnResizeEvent;
    FOnAfterMoveEvent : TOnMoveEvent;
    FMRAction : TMRAction;
    Function GetMRAction : TMRAction;
    Procedure SetMRAction(Value : TMRAction);
    Function GetResizeCombiKey : TCombiKey;
    Procedure SetResizeCombiKey(Value : TCombiKey);
    Function GetMoveCombiKey : TCombiKey;
    Procedure SetMoveCombiKey(Value : TCombiKey);
    Function GetMoveCursor : TCursor;
    Procedure SetMoveCursor(Value : TCursor);
    Function GetResizingZone(Ctrl : TControl) : TResizingZone;
    Procedure ResizeControl(Ctrl : TControl;Re : TResizingZone);
    Procedure MoveControl(Ctrl : TControl);
    Function GetCombiKey(CombiKey : TCombiKey) : Word;
    { Déclarations privées }
  Protected
    // Pour avoir la possibilité d'implémenter ces méthodes dans un compo dérivé
    Function SaveCtrl (Ctrl : TControl):Bool;Virtual;Abstract;
    Procedure UndoMoveResize (Ctrl : TControl);Virtual;Abstract;
    Procedure RedoMoveResize (Ctrl : TControl);Virtual;Abstract;
    { Déclarations protégées }
  Public
    Constructor Create(AOwner : TComponent);Override;
    Destructor Destroy;Override;
    Procedure MoveAndResizeControl(Ctrl : TControl);
    Procedure ShowResizingZone(Ctrl : TControl);
    { Déclarations publiques }
  Published
    Property ResizeCursors : TResizeCursors Read FResizeCursors Write FResizeCursors;
    Property MRAction : TMRAction Read GetMRAction Write SetMRAction Default aBoth;
    Property ResizeCombiKey : TCombiKey Read GetResizeCombiKey Write SetResizeCombiKey Default cShift;
    Property MoveCombiKey : TCombiKey Read GetMoveCombiKey Write SetMoveCombiKey Default cCtrl;
    Property MoveCursor : TCursor Read GetMoveCursor Write SetMoveCursor Default crDefault;
    Property OnResizeCtrl : TOnResizeEvent Read FOnResizeEvent Write FOnResizeEvent;
    Property OnMoveCtrl : TOnMoveEvent Read FOnMoveEvent Write FOnMOveEvent;
    Property OnBeforeResizeCtrl : TOnResizeEvent Read FOnBeforeResizeEvent Write FOnBeforeResizeEvent;
    Property OnBeforeMoveCtrl : TOnMoveEvent Read FOnBeforeMoveEvent Write FOnBeforeMoveEvent;
    Property OnAfterResizeCtrl : TOnResizeEvent Read FOnAfterResizeEvent Write FOnAfterResizeEvent;
    Property OnAfterMoveCtrl : TOnMoveEvent Read FOnAfterMoveEvent Write FOnAfterMoveEvent;

    { Déclarations publiées }
  End;

Procedure Register;
Implementation

Constructor TResizeCursors.Create;
Begin
  inherited Create;
  FSizeNESW:=crSizeNESW;
  FSizeNWSE := crSizeNWSE;
  FSizeNS:=crSizeNS;
  FSizeWE:=crSizeWE;
End;

//------------------------------------------------------------------------------

Procedure TResizeCursors.SetCursors(Index: Integer; Value: TCursor);
Begin
  case Index of
    0: if Value <> FSizeNESW then FSizeNESW:=Value;
    1: if Value <> FSizeNWSE then FSizeNWSE:=Value;
    2: if Value <> FSizeNS then FSizeNS:=Value;
    3: if Value <> FSizeWE then FSizeWE:=Value;
  End;
end;

//------------------------------------------------------------------------------

Constructor TMRControl.Create(AOwner : TComponent);
Begin
  Inherited Create(AOwner);
  FResizeCursors:=TResizeCursors.Create;
  FResizeCombiKey := cShift;
  FMoveCombiKey := cCtrl;
  FMoveCursor := crDefault;
  FMRAction:=aBoth;
End;

//------------------------------------------------------------------------------

Destructor TMRControl.Destroy;
Begin
  Inherited Destroy;
  FResizeCursors.Free;
End;

//------------------------------------------------------------------------------

Function TMRControl.GetMRAction : TMRAction;
Begin
  Result:=FMRAction;
End;

//------------------------------------------------------------------------------

Procedure TMRControl.SetMRAction(Value : TMRAction);
Begin
  If Value <> FMRAction Then FMRAction := Value;
End;

//------------------------------------------------------------------------------

Function TMRControl.GetResizeCombiKey : TCombiKey;
Begin
  Result := FResizeCombiKey;
End;

//------------------------------------------------------------------------------

Procedure TMRControl.SetResizeCombiKey(Value : TCombiKey);
Begin
  If Value <> FResizeCombiKey Then FResizeCombiKey := Value;
End;

//------------------------------------------------------------------------------

Function TMRControl.GetMoveCombiKey : TCombiKey;
Begin
  Result := FMoveCombiKey;
End;

//------------------------------------------------------------------------------

Procedure TMRControl.SetMoveCombiKey(Value : TCombiKey);
Begin
  If Value <> FMoveCombiKey Then FMoveCombiKey := Value;
End;

//------------------------------------------------------------------------------

Function TMRControl.GetMoveCursor : TCursor;
Begin
  Result := FMoveCursor;
End;

//------------------------------------------------------------------------------

Procedure TMRControl.SetMoveCursor(Value : TCursor);
Begin
  If Value <> FMoveCursor Then FMoveCursor := Value;
End;

//------------------------------------------------------------------------------

Procedure TMRControl.MoveAndResizeControl(Ctrl : TControl);
Var
  ParentDoubleBufferedDefault, CtrlDoubleBufferedDefault : Bool;
Begin
   CtrlDoubleBufferedDefault:=False;
  If Ctrl Is TWinControl Then
  Begin
    CtrlDoubleBufferedDefault:=(Ctrl As TWinControl).DoubleBuffered;
   (Ctrl As TWinControl).DoubleBuffered := True;
   End;
    ParentDoubleBufferedDefault:=Ctrl.Parent.DoubleBuffered;
    Ctrl.Parent.DoubleBuffered := True;
  If (GetResizingZone(Ctrl) <> rNone) And ((MRAction = aResize) Or (MRaction = aBoth)) Then
    ResizeControl(Ctrl, GetResizingZone(Ctrl))
  Else If (MRAction = aMove) Or (MRAction = aBoth) Then
    MoveControl(Ctrl);
  Ctrl.Parent.DoubleBuffered := ParentDoubleBufferedDefault;
  If Ctrl Is TWinControl Then (Ctrl As TWinControl).DoubleBuffered := CtrlDoubleBufferedDefault;
End;

//------------------------------------------------------------------------------

Function TMRControl.GetCombiKey(CombiKey : TCombiKey) : Word;
Begin
  Case CombiKey Of
    cShift : Result := VK_SHIFT;
    cCtrl : Result := VK_CONTROL;
    cAlt : Result := VK_MENU;
    cNone : Result := VK_LBUTTON
    else Result:=0;
  End;
End;

//------------------------------------------------------------------------------

Function TMRControl.GetResizingZone(Ctrl : TControl) : TResizingZone;
Var
  PtRz, Pt : TPoint;
  Rz : TResizingZoneInterval;
Begin
  Rz := [0, 1, 2, 3, 4, 5, 6];
  GetCursorPos(Pt);
  PtRZ.x := Pt.x - Ctrl.ClientOrigin.x;
  PtRZ.y := Pt.y - Ctrl.ClientOrigin.y;
  If (PtRz.x In Rz) And (Ctrl.Height - PtRz.y In rz) Then
    Result := rLeftBottom
  Else If (PtRz.x In Rz) And (PtRz.y In Rz) Then
    Result := rLeftTop
  Else If (Ctrl.Height - PtRz.y In rz) And (Ctrl.Width - PtRz.x In rz) Then
    Result := rRightBottom
  Else If (PtRz.y In rz) And (Ctrl.Width - PtRz.x In rz) Then
    Result := rTopRight
  Else If PtRz.x In Rz Then
    Result := rLeft
  Else If PtRz.y In Rz Then
    Result := rTop
  Else If Ctrl.Width - PtRz.x In rz Then
    Result := rRight
  Else If Ctrl.Height - PtRz.y In rz Then
    Result := rBottom
  Else
    Result := rNone;
End;

//------------------------------------------------------------------------------

Procedure TMRControl.ShowResizingZone(Ctrl : TControl);
Var
  ResizeZone : TResizingZone;
  CanResizeCtrl : Bool;
Begin
  If (MRAction=aResize) or (MRAction=aBoth) then
  Begin
  Ctrl.cursor := crdefault;
  ResizeZone := GetResizingZone(Ctrl);
  CanResizeCtrl := False;
  If ResizeCombiKey = cNone Then
    CanResizeCtrl := True
  Else If ((GetKeyState(GetCombiKey(ResizeCombiKey)) And (1 Shl 15)) <> 0) Then
    CanResizeCtrl := True;
  If CanResizeCtrl Then
    Case ResizeZone Of
      rLeftBottom, rTopRight : Ctrl.Cursor := ResizeCursors.FSizeNESW;
      rLeftTop, rRightBottom : Ctrl.Cursor := ResizeCursors.FSizeNWSE;
      rTop, rBottom : Ctrl.Cursor := ResizeCursors.FSizeNS;
      rLeft, rRight : Ctrl.Cursor := ResizeCursors.FSizeWE;
      rNone : Ctrl.Cursor := crDefault;
    End;
End;
End;

//------------------------------------------------------------------------------

Procedure TMRControl.ResizeControl(Ctrl : TControl;Re : TResizingZone);
Var
  Pt, PtOld : TPoint;
Begin
  If Re = rNone Then exit;
  If ((GetKeyState(VK_LBUTTON) And (1 Shl 15)) <> 0) And ((GetKeyState(GetCombiKey(ResizeCombiKey)) And (1 Shl 15)) <> 0) Then //shift=[ssShift,ssLeft] Then
  Begin
    If assigned(FOnBeforeResizeEvent) Then OnBeforeResizeCtrl(Ctrl, Point(Ctrl.Width, Ctrl.Height));
    GetCursorPos(PtOld);
    Setcapture(Ctrl.Parent.Handle);
   Repeat
      GetCursorPos(Pt);
      Case Re Of
        rLeft :
          Begin
            Ctrl.Width := Ctrl.Width - (Pt.x - PtOld.x);
            Ctrl.Left := Ctrl.Left + (Pt.x - PtOld.x);
          End;
        rTop :
          Begin
            Ctrl.Height := Ctrl.Height - (Pt.y - PtOld.y);
            Ctrl.Top := Ctrl.Top + (Pt.y - PtOld.y);
          End;
        rLeftTop :
          Begin
            Ctrl.Width := Ctrl.Width - (Pt.x - PtOld.x);
            Ctrl.Left := Ctrl.Left + (Pt.x - PtOld.x);
            Ctrl.Height := Ctrl.Height - (Pt.y - PtOld.y);
            Ctrl.Top := Ctrl.Top + (Pt.y - PtOld.y);
          End;
        rLeftBottom :
          Begin
            Ctrl.Width := Ctrl.Width - (Pt.x - PtOld.x);
            Ctrl.Left := Ctrl.Left + (Pt.x - PtOld.x);
            Ctrl.Height := Ctrl.Height + (Pt.y - PtOld.y);
          End;
        rRightBottom :
          Begin
            Ctrl.Width := Ctrl.Width + (Pt.x - PtOld.x);
            Ctrl.Height := Ctrl.Height + (Pt.y - PtOld.y);
          End;
        rTopRight :
          Begin
            Ctrl.Height := Ctrl.Height - (Pt.y - PtOld.y);
            Ctrl.Top := Ctrl.Top + (Pt.y - PtOld.y);
            Ctrl.Width := Ctrl.Width + (Pt.x - PtOld.x);
          End;
        rRight : Ctrl.Width := Ctrl.Width + (Pt.x - PtOld.x);
        rBottom : Ctrl.Height := Ctrl.Height + (Pt.y - PtOld.y);
      End;
      If assigned(FOnResizeEvent) Then OnResizeCtrl(Ctrl, Point(Ctrl.Width, Ctrl.Height));
      PtOld := Pt;
      Application.ProcessMessages;
    Until ((GetKeyState(VK_LBUTTON) And (1 Shl 15)) = 0);
    ReleaseCapture;
    If assigned(FOnAfterResizeEvent) Then OnAfterResizeCtrl(Ctrl, Point(Ctrl.Width, Ctrl.Height));
  End;
End;

//------------------------------------------------------------------------------

Procedure TMRControl.MoveControl(Ctrl : TControl);
Var
  Pt, PtClient, PtIni : TPoint;
Begin
  If ((GetKeyState(VK_LBUTTON) And (1 Shl 15)) <> 0) And ((GetKeyState(GetCombiKey(MoveCombiKey)) And (1 Shl 15)) <> 0) Then //shift=[ssShift,ssLeft] Then
  Begin
    If assigned(FOnBeforeMoveEvent) Then OnBeforeMoveCtrl(Ctrl, Point(Ctrl.Left, Ctrl.Top));
    Screen.Cursor := MoveCursor;
    // Petite astuce qui permet au contrôle de ne pas réagir au click (MouseDown + MouseUp),
    // mais seulement au MouseDown puisque les entrées souris son redirigées vers le parent
    Setcapture(Ctrl.Parent.Handle);
    GetCursorPos(Pt);
    PtIni.X := Ctrl.Parent.ScreenToClient(Pt).x - Ctrl.Left;
    PtIni.Y := Ctrl.Parent.ScreenToClient(Pt).y - Ctrl.top;
    Repeat
      // coordonnées de la souris en zone écran
      GetCursorPos(Pt);
      // On convertit les coordonnées en zone client
      PtClient := Ctrl.Parent.ScreenToClient(Pt);
      // On déplace Ctrl
      Ctrl.Top := PtClient.y - PtIni.Y; //modif ajoutent la position initiale
      Ctrl.Left := PtClient.x - PtIni.X;
      If assigned(FOnMoveEvent) Then OnMoveCtrl(Ctrl, Point(Ctrl.Left, Ctrl.Top));
      // Pour ne pas bloquer le reste de l'appli
      Application.ProcessMessages;
    Until ((GetKeyState(VK_LBUTTON) And (1 Shl 15)) = 0);
    ReleaseCapture;
    Screen.Cursor := crDefault;
    If assigned(FOnAfterMoveEvent) Then OnAfterMoveCtrl(Ctrl, Point(Ctrl.Left, Ctrl.Top));
  End;
End;

Procedure Register;
Begin
  RegisterComponents('Héréa Soft', [TMRControl]);
End;

End.

