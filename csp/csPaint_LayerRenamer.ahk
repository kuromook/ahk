
layerRenamePosition(key)
{
IfWinExist, CLIP STUDIO PAINT
{
    WinActivate
}
position := {"w":"front", "s":"back","d":"right","a":"left", "r":"top", "f":"bottom" }
Backup := ClipboardAll
Clipboard:=" " . position[key]
Sleep, 100
Send,^!{n}
Sleep, 100
Send,{Right}
Send,^{v}
Send, {enter}
Clipboard := Backup
return  
}

!f::
layerRenamePosition("f")
return


!d::
layerRenamePosition("d")
return


!r::
layerRenamePosition("r")
return


!a::
layerRenamePosition("a")
return


!s::
layerRenamePosition("s")
return


!w::
layerRenamePosition("w")
return



layerRename(name)
{
IfWinExist, CLIP STUDIO PAINT
{
    WinActivate
}
prefix := ""


If GetKeyState("f", "P"){
    prefix:="bottom"
    }

If GetKeyState("d", "P"){
    prefix:="right"
    }

If GetKeyState("r", "P"){
    prefix:="top"
    }

If GetKeyState("a", "P"){
    prefix:="left"
    }

If GetKeyState("s", "P"){
    prefix:="back"
    }

If GetKeyState("w", "P"){
    prefix:="front"
    }

BlockInput, on
Backup := ClipboardAll
Clipboard:=prefix . " " . name
Sleep, 100
Send,^!{n}
Sleep, 100
Send,^{v}
Send, {enter}
Clipboard := Backup
BlockInput, off
return
}


;eye
layer_renamer_eye_ey:
:*:eyeey::
layerRename("eye")
return


;pupil
layer_renamer_eye_pu:
:*:eyepu::
layerRename("pupil")
return


;eye ball
layer_renamer_eye_ba:
:*:eyeba::
layerRename("eye ball")
return


;eye brow
layer_renamer_eye_br:
:*:eyebr::
layerRename("eye brow")
return


;eye lash
layer_renamer_eye_ls:
:*:eyels::
layerRename("eye lash")
return


;eye lid
layer_renamer_eye_li:
:*:eyeli::
layerRename("eye lid")
return


;mouse
layer_renamer_mouse_mo:
:*:mousemo::
layerRename("mouse")
return


;tongue
layer_renamer_mouse_to:
:*:mouseto::
layerRename("tongue")
return


;oral
layer_renamer_mouse_or:
:*:mouseor::
layerRename("oral")
return


;teeth
layer_renamer_mouse_te:
:*:mousete::
layerRename("teeth")
return


;lip
layer_renamer_mouse_li:
:*:mouseli::
layerRename("lip")
return


;ear
layer_renamer_face_ea:
:*:faceea::
layerRename("ear")
return


;face
layer_renamer_face_fa:
:*:facefa::
layerRename("face")
return


;nose
layer_renamer_face_no:
:*:faceno::
layerRename("nose")
return


;glass
layer_renamer_face_gl:
:*:facegl::
layerRename("glass")
return


;cheek
layer_renamer_face_ch:
:*:facech::
layerRename("cheek")
return


;hair
layer_renamer_hair_ha:
:*:hairha::
layerRename("hair")
return


;front hair
layer_renamer_hair_fr:
:*:hairfr::
layerRename("front hair")
return


;back hair
layer_renamer_hair_ba:
:*:hairba::
layerRename("back hair")
return


;pony tail
layer_renamer_hair_po:
:*:hairpo::
layerRename("pony tail")
return


;twin tail
layer_renamer_hair_tw:
:*:hairtw::
layerRename("twin tail")
return


;braid
layer_renamer_hair_br:
:*:hairbr::
layerRename("braid")
return


;hair accecery
layer_renamer_hair_ac:
:*:hairac::
layerRename("hair accecery")
return


;hair ribbon
layer_renamer_hair_ri:
:*:hairri::
layerRename("hair ribbon")
return


;neck
layer_renamer_body_ne:
:*:bodyne::
layerRename("neck")
return


;hand
layer_renamer_body_ha:
:*:bodyha::
layerRename("hand")
return


;arm
layer_renamer_body_ar:
:*:bodyar::
layerRename("arm")
return


;bust
layer_renamer_body_bu:
:*:bodybu::
layerRename("bust")
return


;leg
layer_renamer_body_le:
:*:bodyle::
layerRename("leg")
return


;foot
layer_renamer_body_fo:
:*:bodyfo::
layerRename("foot")
return


;tigh
layer_renamer_body_tig:
:*:bodytig::
layerRename("tigh")
return


;body
layer_renamer_body_bo:
:*:bodybo::
layerRename("body")
return


;west
layer_renamer_body_we:
:*:bodywe::
layerRename("west")
return


;rist
layer_renamer_body_ri:
:*:bodyri::
layerRename("rist")
return


;finger
layer_renamer_body_fi:
:*:bodyfi::
layerRename("finger")
return


;cloth
layer_renamer_cloth_cl:
:*:clothcl::
layerRename("cloth")
return


;shirts
layer_renamer_cloth_sh:
:*:clothsh::
layerRename("shirts")
return


;jacket
layer_renamer_cloth_ja:
:*:clothja::
layerRename("jacket")
return


;pants
layer_renamer_cloth_pa:
:*:clothpa::
layerRename("pants")
return


;socks
layer_renamer_cloth_so:
:*:clothso::
layerRename("socks")
return


;kimono
layer_renamer_cloth_ki:
:*:clothki::
layerRename("kimono")
return


;rope
layer_renamer_cloth_ro:
:*:clothro::
layerRename("rope")
return


;ribbon
layer_renamer_cloth_ri:
:*:clothri::
layerRename("ribbon")
return


;suites
layer_renamer_cloth_su:
:*:clothsu::
layerRename("suites")
return


;skirt
layer_renamer_cloth_sk:
:*:clothsk::
layerRename("skirt")
return


;button
layer_renamer_cloth_bu:
:*:clothbu::
layerRename("button")
return


;sword
layer_renamer_other_sw:
:*:othersw::
layerRename("sword")
return


;bag
layer_renamer_other_ba:
:*:otherba::
layerRename("bag")
return


;armor
layer_renamer_other_ar:
:*:otherar::
layerRename("armor")
return

    
#F1::
Gui, Add, Tab2,,eye|mouse|face|hair|body|cloth|other
Gui, Tab,1
Gui, Add, Text, cBlue glayer_renamer_eye_ey, eye
Gui, Add, Text, cBlue glayer_renamer_eye_pu, pupil
Gui, Add, Text, cBlue glayer_renamer_eye_ba, eye ball
Gui, Add, Text, cBlue glayer_renamer_eye_br, eye brow
Gui, Add, Text, cBlue glayer_renamer_eye_ls, eye lash
Gui, Add, Text, cBlue glayer_renamer_eye_li, eye lid
Gui, Tab,2
Gui, Add, Text, cBlue glayer_renamer_mouse_mo, mouse
Gui, Add, Text, cBlue glayer_renamer_mouse_to, tongue
Gui, Add, Text, cBlue glayer_renamer_mouse_or, oral
Gui, Add, Text, cBlue glayer_renamer_mouse_te, teeth
Gui, Add, Text, cBlue glayer_renamer_mouse_li, lip
Gui, Tab,3
Gui, Add, Text, cBlue glayer_renamer_face_ea, ear
Gui, Add, Text, cBlue glayer_renamer_face_fa, face
Gui, Add, Text, cBlue glayer_renamer_face_no, nose
Gui, Add, Text, cBlue glayer_renamer_face_gl, glass
Gui, Add, Text, cBlue glayer_renamer_face_ch, cheek
Gui, Tab,4
Gui, Add, Text, cBlue glayer_renamer_hair_ha, hair
Gui, Add, Text, cBlue glayer_renamer_hair_fr, front hair
Gui, Add, Text, cBlue glayer_renamer_hair_ba, back hair
Gui, Add, Text, cBlue glayer_renamer_hair_po, pony tail
Gui, Add, Text, cBlue glayer_renamer_hair_tw, twin tail
Gui, Add, Text, cBlue glayer_renamer_hair_br, braid
Gui, Add, Text, cBlue glayer_renamer_hair_ac, hair accecery
Gui, Add, Text, cBlue glayer_renamer_hair_ri, hair ribbon
Gui, Tab,5
Gui, Add, Text, cBlue glayer_renamer_body_ne, neck
Gui, Add, Text, cBlue glayer_renamer_body_ha, hand
Gui, Add, Text, cBlue glayer_renamer_body_ar, arm
Gui, Add, Text, cBlue glayer_renamer_body_bu, bust
Gui, Add, Text, cBlue glayer_renamer_body_le, leg
Gui, Add, Text, cBlue glayer_renamer_body_fo, foot
Gui, Add, Text, cBlue glayer_renamer_body_tig, tigh
Gui, Add, Text, cBlue glayer_renamer_body_bo, body
Gui, Add, Text, cBlue glayer_renamer_body_we, west
Gui, Add, Text, cBlue glayer_renamer_body_ri, rist
Gui, Add, Text, cBlue glayer_renamer_body_fi, finger
Gui, Tab,6
Gui, Add, Text, cBlue glayer_renamer_cloth_cl, cloth
Gui, Add, Text, cBlue glayer_renamer_cloth_sh, shirts
Gui, Add, Text, cBlue glayer_renamer_cloth_ja, jacket
Gui, Add, Text, cBlue glayer_renamer_cloth_pa, pants
Gui, Add, Text, cBlue glayer_renamer_cloth_so, socks
Gui, Add, Text, cBlue glayer_renamer_cloth_ki, kimono
Gui, Add, Text, cBlue glayer_renamer_cloth_ro, rope
Gui, Add, Text, cBlue glayer_renamer_cloth_ri, ribbon
Gui, Add, Text, cBlue glayer_renamer_cloth_su, suites
Gui, Add, Text, cBlue glayer_renamer_cloth_sk, skirt
Gui, Add, Text, cBlue glayer_renamer_cloth_bu, button
Gui, Tab,7
Gui, Add, Text, cBlue glayer_renamer_other_sw, sword
Gui, Add, Text, cBlue glayer_renamer_other_ba, bag
Gui, Add, Text, cBlue glayer_renamer_other_ar, armor

Gui, Show,X400 Y600, layer renamer
return
