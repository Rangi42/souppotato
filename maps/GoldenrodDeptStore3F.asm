	object_const_def
	const GOLDENRODDEPTSTORE3F_CLERK
	const GOLDENRODDEPTSTORE3F_TEACHER
	const GOLDENRODDEPTSTORE3F_BEAUTY
	const GOLDENRODDEPTSTORE3F_YOUNGSTER
	const GOLDENRODDEPTSTORE3F_GAMEBOY_KID

GoldenrodDeptStore3F_MapScripts:
	def_scene_scripts

	def_callbacks

GoldenrodDeptStore3FClerkScript:
	faceplayer
	opentext
	writetext GoldenrodDeptStore3FClerkText
.Start:
	loadmenu .MenuData
	verticalmenu
	closewindow
	ifequal $1, .PostersAndBeds
	ifequal $2, .PlantsAndCarpets
	ifequal $3, .DollsAndConsoles
	writetext GoldenrodDeptStore3FClerkEndText
	waitbutton
	closetext
	end



.PostersAndBeds
	readvar VAR_WEEKDAY
	ifequal SUNDAY,    .SundayPostersBeds
	ifequal MONDAY,    .MondayFridayPostersBeds
	ifequal TUESDAY,   .TuesdaySaturdayPostersBeds
	ifequal WEDNESDAY, .WednesdayPostersBeds
	ifequal THURSDAY,  .ThursdayPostersBeds
	ifequal FRIDAY,    .MondayFridayPostersBeds
	ifequal SATURDAY,  .TuesdaySaturdayPostersBeds

.PlantsAndCarpets
	readvar VAR_WEEKDAY
	ifequal SUNDAY,    .SundayPlantsCarpets
	ifequal MONDAY,    .MondayThursdayPlantsCarpets
	ifequal TUESDAY,   .TuesdayFridayPlantsCarpets
	ifequal WEDNESDAY, .WednesdaySaturdayPlantsCarpets
	ifequal THURSDAY,  .MondayThursdayPlantsCarpets
	ifequal FRIDAY,    .TuesdayFridayPlantsCarpets
	ifequal SATURDAY,  .WednesdaySaturdayPlantsCarpets

.DollsAndConsoles
	readvar VAR_WEEKDAY
	ifequal SUNDAY,    .SundayDollsAndConsoles; TODO
	ifequal MONDAY,    .MondayThursdayDollsAndConsoles
	ifequal TUESDAY,   .TuesdayFridayDollsAndConsoles
	ifequal WEDNESDAY, .WednesdaySaturdayDollsAndConsoles
	ifequal THURSDAY,  .MondayThursdayDollsAndConsoles
	ifequal FRIDAY,    .TuesdayFridayDollsAndConsoles
	ifequal SATURDAY,  .WednesdaySaturdayDollsAndConsoles
	closewindow

.MondayFridayPostersBeds:
	special PlaceMoneyTopRight
	loadmenu .MenuDataMondayFridayPostersBeds
	verticalmenu
	closewindow
	ifequal $1, .JigglypuffPoster
	ifequal $2, .PinkBed
	writetext GoldenrodDeptStore3FClerkEndText
	waitbutton
	closetext
	end

.TuesdaySaturdayPostersBeds:
	special PlaceMoneyTopRight
	loadmenu .MenuDataTuesdaySaturdayPostersBeds
	verticalmenu
	closewindow
	ifequal $1, .ClefairyPoster
	ifequal $2, .PolkaDotBed
	writetext GoldenrodDeptStore3FClerkEndText
	waitbutton
	closetext
	end

.WednesdayPostersBeds:
	special PlaceMoneyTopRight
	loadmenu .MenuDataWednesdayPostersBeds
	verticalmenu
	closewindow
	ifequal $1, .JigglypuffPoster
	ifequal $2, .PolkaDotBed
	writetext GoldenrodDeptStore3FClerkEndText
	waitbutton
	closetext
	end

.ThursdayPostersBeds:
	special PlaceMoneyTopRight
	loadmenu .MenuDataThursdayPostersBeds
	verticalmenu
	closewindow
	ifequal $1, .ClefairyPoster
	ifequal $2, .PinkBed
	writetext GoldenrodDeptStore3FClerkEndText
	waitbutton
	closetext
	end

.SundayPostersBeds:
	special PlaceMoneyTopRight
	loadmenu .MenuDataSundayPostersBeds
	verticalmenu
	closewindow
	ifequal $1, .PikachuPoster
	ifequal $2, .PikachuBed
	writetext GoldenrodDeptStore3FClerkEndText
	waitbutton
	closetext
	end

.MondayThursdayPlantsCarpets:
	special PlaceMoneyTopRight
	loadmenu .MenuDataMondayThursdayPlantsCarpets
	verticalmenu
	closewindow
	ifequal $1, .MagnaPlant
	ifequal $2, .GreenCarpet
	writetext GoldenrodDeptStore3FClerkEndText
	waitbutton
	closetext
	end

.TuesdayFridayPlantsCarpets:
	special PlaceMoneyTopRight
	loadmenu .MenuDataTuesdayFridayPlantsCarpets
	verticalmenu
	closewindow
	ifequal $1, .TropicalPlant
	ifequal $2, .BlueCarpet
	writetext GoldenrodDeptStore3FClerkEndText
	waitbutton
	closetext
	end

.WednesdaySaturdayPlantsCarpets:
	special PlaceMoneyTopRight
	loadmenu .MenuDataWednesdaySaturdayPlantsCarpets
	verticalmenu
	closewindow
	ifequal $1, .MagnaPlant
	ifequal $2, .YellowCarpet
	writetext GoldenrodDeptStore3FClerkEndText
	waitbutton
	closetext
	end

.SundayPlantsCarpets:
	special PlaceMoneyTopRight
	loadmenu .MenuDataSundayPlantsCarpets
	verticalmenu
	closewindow
	ifequal $1, .JumboPlant
	ifequal $2, .RedCarpet
	writetext GoldenrodDeptStore3FClerkEndText
	waitbutton
	closetext
	end

.MondayThursdayDollsAndConsoles:
	special PlaceMoneyTopRight
	loadmenu .MenuDataMondayThursdayDollsConsoles
	verticalmenu
	closewindow
	ifequal $1, .BigOnixDoll
	ifequal $2, .NES_FAMICOM
	writetext GoldenrodDeptStore3FClerkEndText
	waitbutton
	closetext
	end

.TuesdayFridayDollsAndConsoles:
	special PlaceMoneyTopRight
	loadmenu .MenuDataTuesdayFridayDollsConsoles
	verticalmenu
	closewindow
	ifequal $1, .BigLaprasDoll
	ifequal $2, .SNES
	writetext GoldenrodDeptStore3FClerkEndText
	waitbutton
	closetext
	end

.WednesdaySaturdayDollsAndConsoles:
	special PlaceMoneyTopRight
	loadmenu .MenuDataWednesdaySaturdayDollsConsoles
	verticalmenu
	closewindow
	ifequal $1, .BigOnixDoll
	ifequal $2, .N64
	writetext GoldenrodDeptStore3FClerkEndText
	waitbutton
	closetext
	end

.SundayDollsAndConsoles:
	special PlaceMoneyTopRight
	loadmenu .MenuDataSundayDollsConsoles
	verticalmenu
	closewindow
	ifequal $1, .BigLaprasDoll
	ifequal $2, .VirtualBoy
	writetext GoldenrodDeptStore3FClerkEndText
	waitbutton
	closetext
	end

.JigglypuffPoster:
	checkmoney $0, 4500
	ifequal $2, .NotEnoughMoney
	checkevent EVENT_DECO_POSTER_4
	iftrue .AlreadyBought
	takemoney $0, 4500
	setevent EVENT_DECO_POSTER_4
	getstring STRING_BUFFER_3, .JigglypuffPosterString
	writetext GoldenrodDeptStore3FBoughtDecoText
	playsound SFX_TRANSACTION
	waitbutton
	writetext GoldenrodDeptStore3FSentDecoText
	waitbutton
	sjump .Start

.ClefairyPoster:
	checkmoney $0, 6000
	ifequal $2, .NotEnoughMoney
	checkevent EVENT_DECO_POSTER_3
	iftrue .AlreadyBought
	takemoney $0, 6000
	setevent EVENT_DECO_POSTER_3
	getstring STRING_BUFFER_3, .ClefairyPosterString
	writetext GoldenrodDeptStore3FBoughtDecoText
	playsound SFX_TRANSACTION
	waitbutton
	writetext GoldenrodDeptStore3FSentDecoText
	waitbutton
	sjump .Start

.PikachuPoster:
	checkmoney $0, 8500
	ifequal $2, .NotEnoughMoney
	checkevent EVENT_DECO_POSTER_2
	iftrue .AlreadyBought
	takemoney $0, 8500
	setevent EVENT_DECO_POSTER_2
	getstring STRING_BUFFER_3, .PikachuPosterString
	writetext GoldenrodDeptStore3FBoughtDecoText
	playsound SFX_TRANSACTION
	waitbutton
	writetext GoldenrodDeptStore3FSentDecoText
	waitbutton
	sjump .Start

.PinkBed:
	checkmoney $0, 10000
	ifequal $2, .NotEnoughMoney
	checkevent EVENT_DECO_BED_2
	iftrue .AlreadyBought
	takemoney $0, 10000
	setevent EVENT_DECO_BED_2
	getstring STRING_BUFFER_3, .PinkBedString
	writetext GoldenrodDeptStore3FBoughtDecoText
	playsound SFX_TRANSACTION
	waitbutton
	writetext GoldenrodDeptStore3FSentDecoText
	waitbutton
	sjump .Start

.PolkaDotBed:
	checkmoney $0, 14000
	ifequal $2, .NotEnoughMoney
	checkevent EVENT_DECO_BED_3
	iftrue .AlreadyBought
	takemoney $0, 14000
	setevent EVENT_DECO_BED_3
	getstring STRING_BUFFER_3, .PolkaDotBedString
	writetext GoldenrodDeptStore3FBoughtDecoText
	playsound SFX_TRANSACTION
	waitbutton
	writetext GoldenrodDeptStore3FSentDecoText
	waitbutton
	sjump .Start

.PikachuBed:
	checkmoney $0, 20000
	ifequal $2, .NotEnoughMoney
	checkevent EVENT_DECO_BED_4
	iftrue .AlreadyBought
	takemoney $0, 20000
	setevent EVENT_DECO_BED_4
	getstring STRING_BUFFER_3, .PikachuBedString
	writetext GoldenrodDeptStore3FBoughtDecoText
	playsound SFX_TRANSACTION
	waitbutton
	writetext GoldenrodDeptStore3FSentDecoText
	waitbutton
	sjump .Start

.MagnaPlant:
	checkmoney $0, 6000
	ifequal $2, .NotEnoughMoney
	checkevent EVENT_DECO_PLANT_1
	iftrue .AlreadyBought
	takemoney $0, 6000
	setevent EVENT_DECO_PLANT_1
	getstring STRING_BUFFER_3, .MagnaPlantString
	writetext GoldenrodDeptStore3FBoughtDecoText
	playsound SFX_TRANSACTION
	waitbutton
	writetext GoldenrodDeptStore3FSentDecoText
	waitbutton
	sjump .Start

.TropicalPlant:
	checkmoney $0, 9000
	ifequal $2, .NotEnoughMoney
	checkevent EVENT_DECO_PLANT_2
	iftrue .AlreadyBought
	takemoney $0, 9000
	setevent EVENT_DECO_PLANT_2
	getstring STRING_BUFFER_3, .TropicalPlantString
	writetext GoldenrodDeptStore3FBoughtDecoText
	playsound SFX_TRANSACTION
	waitbutton
	writetext GoldenrodDeptStore3FSentDecoText
	waitbutton
	sjump .Start

.JumboPlant:
	checkmoney $0, 12000
	ifequal $2, .NotEnoughMoney
	checkevent EVENT_DECO_PLANT_3
	iftrue .AlreadyBought
	takemoney $0, 12000
	setevent EVENT_DECO_PLANT_3
	getstring STRING_BUFFER_3, .JumboPlantString
	writetext GoldenrodDeptStore3FBoughtDecoText
	playsound SFX_TRANSACTION
	waitbutton
	writetext GoldenrodDeptStore3FSentDecoText
	waitbutton
	sjump .Start

.GreenCarpet:
	checkmoney $0, 8000
	ifequal $2, .NotEnoughMoney
	checkevent EVENT_DECO_CARPET_4
	iftrue .AlreadyBought
	takemoney $0, 8000
	setevent EVENT_DECO_CARPET_4
	getstring STRING_BUFFER_3, .GreenCarpetString
	writetext GoldenrodDeptStore3FBoughtDecoText
	playsound SFX_TRANSACTION
	waitbutton
	writetext GoldenrodDeptStore3FSentDecoText
	waitbutton
	sjump .Start

.BlueCarpet:
	checkmoney $0, 9500
	ifequal $2, .NotEnoughMoney
	checkevent EVENT_DECO_CARPET_2
	iftrue .AlreadyBought
	takemoney $0, 9500
	setevent EVENT_DECO_CARPET_2
	getstring STRING_BUFFER_3, .BlueCarpetString
	writetext GoldenrodDeptStore3FBoughtDecoText
	playsound SFX_TRANSACTION
	waitbutton
	writetext GoldenrodDeptStore3FSentDecoText
	waitbutton
	sjump .Start

.YellowCarpet:
	checkmoney $0, 11000
	ifequal $2, .NotEnoughMoney
	checkevent EVENT_DECO_CARPET_3
	iftrue .AlreadyBought
	takemoney $0, 11000
	setevent EVENT_DECO_CARPET_3
	getstring STRING_BUFFER_3, .YellowCarpetString
	writetext GoldenrodDeptStore3FBoughtDecoText
	playsound SFX_TRANSACTION
	waitbutton
	writetext GoldenrodDeptStore3FSentDecoText
	waitbutton
	sjump .Start

.RedCarpet:
	checkmoney $0, 12500
	ifequal $2, .NotEnoughMoney
	checkevent EVENT_DECO_CARPET_1
	iftrue .AlreadyBought
	takemoney $0, 12500
	setevent EVENT_DECO_CARPET_1
	getstring STRING_BUFFER_3, .RedCarpetString
	writetext GoldenrodDeptStore3FBoughtDecoText
	playsound SFX_TRANSACTION
	waitbutton
	writetext GoldenrodDeptStore3FSentDecoText
	waitbutton
	sjump .Start

.BigOnixDoll:
	checkmoney $0, 8000
	ifequal $2, .NotEnoughMoney
	checkevent EVENT_DECO_BIG_ONIX_DOLL
	iftrue .AlreadyBought
	takemoney $0, 8000
	setevent EVENT_DECO_BIG_ONIX_DOLL
	getstring STRING_BUFFER_3, .BigOnixDollString
	writetext GoldenrodDeptStore3FBoughtDecoText
	playsound SFX_TRANSACTION
	waitbutton
	writetext GoldenrodDeptStore3FSentDecoText
	waitbutton
	sjump .Start

.BigLaprasDoll:
	checkmoney $0, 10000
	ifequal $2, .NotEnoughMoney
	checkevent EVENT_DECO_BIG_LAPRAS_DOLL
	iftrue .AlreadyBought
	takemoney $0, 10000
	setevent EVENT_DECO_BIG_LAPRAS_DOLL
	getstring STRING_BUFFER_3, .BigLaprasDollString
	writetext GoldenrodDeptStore3FBoughtDecoText
	playsound SFX_TRANSACTION
	waitbutton
	writetext GoldenrodDeptStore3FSentDecoText
	waitbutton
	sjump .Start

.NES_FAMICOM:
	checkmoney $0, 10000
	ifequal $2, .NotEnoughMoney
	checkevent EVENT_DECO_FAMICOM
	iftrue .AlreadyBought
	takemoney $0, 10000
	setevent EVENT_DECO_FAMICOM
	getstring STRING_BUFFER_3, .NES_FAMICOMString
	writetext GoldenrodDeptStore3FBoughtDecoText
	playsound SFX_TRANSACTION
	waitbutton
	writetext GoldenrodDeptStore3FSentDecoText
	waitbutton
	sjump .Start

.SNES:
	checkmoney $0, 13000
	ifequal $2, .NotEnoughMoney
	checkevent EVENT_DECO_SNES
	iftrue .AlreadyBought
	takemoney $0, 13000
	setevent EVENT_DECO_SNES
	getstring STRING_BUFFER_3, .SNESString
	writetext GoldenrodDeptStore3FBoughtDecoText
	playsound SFX_TRANSACTION
	waitbutton
	writetext GoldenrodDeptStore3FSentDecoText
	waitbutton
	sjump .Start

.N64:
	checkmoney $0, 16500
	ifequal $2, .NotEnoughMoney
	checkevent EVENT_DECO_N64
	iftrue .AlreadyBought
	takemoney $0, 16500
	setevent EVENT_DECO_N64
	getstring STRING_BUFFER_3, .N64String
	writetext GoldenrodDeptStore3FBoughtDecoText
	playsound SFX_TRANSACTION
	waitbutton
	writetext GoldenrodDeptStore3FSentDecoText
	waitbutton
	sjump .Start

.VirtualBoy:
	checkmoney $0, 15000
	ifequal $2, .NotEnoughMoney
	checkevent EVENT_DECO_VIRTUAL_BOY
	iftrue .AlreadyBought
	takemoney $0, 15000
	setevent EVENT_DECO_VIRTUAL_BOY
	getstring STRING_BUFFER_3, .VirtualBoyString
	writetext GoldenrodDeptStore3FBoughtDecoText
	playsound SFX_TRANSACTION
	waitbutton
	writetext GoldenrodDeptStore3FSentDecoText
	waitbutton
	sjump .Start

.NotEnoughMoney:
	writetext GoldenrodDeptStore3FNoMoneyText
	waitbutton
	sjump .Start

.AlreadyBought:
	writetext GoldenrodDeptStore3FAlreadyBoughtText
	waitbutton
	sjump .Start

.MenuData:
	db MENU_BACKUP_TILES
	menu_coords 0, 1, 18, 11
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db $80 ; flags
	db 4 ; items
	db "POSTERS & BEDS@"
	db "PLANTS & CARPETS@"
	db "DOLLS & CONSOLES@"
	db "CANCEL@"


.MenuDataMondayFridayPostersBeds:
	db MENU_BACKUP_TILES
	menu_coords 0, 3, 19, 11
	dw .MenuMondayFridayPostersBeds
	db 1 ; default option

.MenuMondayFridayPostersBeds:
	db $80 ; flags
	db 3 ; items
	db "PUFF POSTER ¥4500@"
	db "PNK BED    ¥10000@"
	db "CANCEL@"

.MenuDataTuesdaySaturdayPostersBeds:
	db MENU_BACKUP_TILES
	menu_coords 0, 3, 19, 11
	dw .MenuTuesdaySaturdayPostersBeds
	db 1 ; default option

.MenuTuesdaySaturdayPostersBeds:
	db $80 ; flags
	db 3 ; items
	db "CLEF POSTER ¥6000@"
	db "POLKA BED  ¥14000@"
	db "CANCEL@"

.MenuDataWednesdayPostersBeds:
	db MENU_BACKUP_TILES
	menu_coords 0, 3, 19, 11
	dw .MenuWednesdayPostersBeds
	db 1 ; default option

.MenuWednesdayPostersBeds:
	db $80 ; flags
	db 3 ; items
	db "PUFF POSTER ¥4500@"
	db "POLKA BED  ¥14000@"
	db "CANCEL@"

.MenuDataThursdayPostersBeds:
	db MENU_BACKUP_TILES
	menu_coords 0, 3, 19, 11
	dw .MenuThursdayPostersBeds
	db 1 ; default option

.MenuThursdayPostersBeds:
	db $80 ; flags
	db 3 ; items
	db "CLEF POSTER ¥6000@"
	db "PNK BED    ¥10000@"
	db "CANCEL@"

.MenuDataSundayPostersBeds:
	db MENU_BACKUP_TILES
	menu_coords 0, 3, 19, 11
	dw .MenuSundayPostersBeds
	db 1 ; default option

.MenuSundayPostersBeds:
	db $80 ; flags
	db 3 ; items
	db "PIKA POSTER ¥8500@"
	db "PIKA BED   ¥20000@"
	db "CANCEL@"

.MenuDataMondayThursdayPlantsCarpets:
	db MENU_BACKUP_TILES
	menu_coords 0, 3, 19, 11
	dw .MenuMondayThursdayPlantsCarpets
	db 1 ; default option

.MenuMondayThursdayPlantsCarpets:
	db $80 ; flags
	db 3 ; items
	db "MAGNAPLANT ¥ 6000@"
	db "GRN CARPET ¥ 8000@"
	db "CANCEL@"

.MenuDataTuesdayFridayPlantsCarpets:
	db MENU_BACKUP_TILES
	menu_coords 0, 3, 19, 11
	dw .MenuTuesdayFridayPlantsCarpets
	db 1 ; default option

.MenuTuesdayFridayPlantsCarpets:
	db $80 ; flags
	db 3 ; items
	db "TROPIPLANT ¥ 6000@"
	db "BLU CARPET ¥ 8000@"
	db "CANCEL@"

.MenuDataWednesdaySaturdayPlantsCarpets:
	db MENU_BACKUP_TILES
	menu_coords 0, 3, 19, 11
	dw .MenuWednesdaySaturdayPlantsCarpets
	db 1 ; default option

.MenuWednesdaySaturdayPlantsCarpets:
	db $80 ; flags
	db 3 ; items
	db "MAGNAPLANT ¥ 6000@"
	db "YLW CARPET ¥10000@"
	db "CANCEL@"

.MenuDataSundayPlantsCarpets:
	db MENU_BACKUP_TILES
	menu_coords 0, 3, 19, 11
	dw .MenuSundayPlantsCarpets
	db 1 ; default option

.MenuSundayPlantsCarpets:
	db $80 ; flags
	db 3 ; items
	db "JUMBOPLANT ¥12000@"
	db "RED CARPET ¥12500@"
	db "CANCEL@"

.MenuDataMondayThursdayDollsConsoles:
	db MENU_BACKUP_TILES
	menu_coords 0, 3, 19, 11
	dw .MenuMondayThursdayDollsConsoles
	db 1 ; default option

.MenuMondayThursdayDollsConsoles:
	db $80 ; flags
	db 3 ; items
	db "ONIX DOLL  ¥ 8000@"
	db "NES        ¥10000@"
	db "CANCEL@"

.MenuDataTuesdayFridayDollsConsoles:
	db MENU_BACKUP_TILES
	menu_coords 0, 3, 19, 11
	dw .MenuTuesdayFridayDollsConsoles
	db 1 ; default option

.MenuTuesdayFridayDollsConsoles:
	db $80 ; flags
	db 3 ; items
	db "LAPRASDOLL ¥10000@"
	db "SNES       ¥13000@"
	db "CANCEL@"

.MenuDataWednesdaySaturdayDollsConsoles:
	db MENU_BACKUP_TILES
	menu_coords 0, 3, 19, 11
	dw .MenuWednesdaySaturdayDollsConsoles
	db 1 ; default option

.MenuWednesdaySaturdayDollsConsoles:
	db $80 ; flags
	db 3 ; items
	db "ONIX DOLL  ¥ 8000@"
	db "N64        ¥16500@"
	db "CANCEL@"

.MenuDataSundayDollsConsoles:
	db MENU_BACKUP_TILES
	menu_coords 0, 3, 19, 11
	dw .MenuSundayDollsConsoles
	db 1 ; default option

.MenuSundayDollsConsoles:
	db $80 ; flags
	db 3 ; items
	db "LAPRASDOLL ¥10000@"
	db "VIRTUALBOY ¥15000@"
	db "CANCEL@"

.JigglypuffPosterString:
	db "JIGGLYPUFF POSTER@"
.ClefairyPosterString:
	db "CLEFAIRY POSTER@"
.PikachuPosterString:
	db "PIKACHU POSTER@"
.PinkBedString:
	db "PINK BED@"
.PolkaDotBedString:
	db "POLKADOT BED@"
.PikachuBedString:
	db "PIKACHU BED@"
.MagnaPlantString:
	db "MAGNA PLANT@"
.TropicalPlantString:
	db "TROPIC PLANT@"
.JumboPlantString:
	db "JUMBO PLANT@"
.GreenCarpetString:
	db "GREEN CARPET@"
.RedCarpetString:
	db "RED CARPET@"
.BlueCarpetString:
	db "BLUE CARPET@"
.YellowCarpetString:
	db "YELLOW CARPET@"
.BigOnixDollString:
	db "BIG ONIX DOLL@"
.BigLaprasDollString:
	db "BIG LAPRAS DOLL@"
.NES_FAMICOMString:
	db "NES CONSOLE@"
.SNESString:
	db "SNES CONSOLE@"
.N64String:
	db "N64 CONSOLE@"
.VirtualBoyString:
	db "VIRTUAL BOY@"

GoldenrodDeptStore3FTeacherScript:
	jumptextfaceplayer GoldenrodDeptStore3FTeacherText

GoldenrodDeptStore3FYoungsterScript:
	jumptextfaceplayer GoldenrodDeptStore3FYoungsterText

GoldenrodDeptStore3FGameboyKidScript:
	faceplayer
	opentext
	writetext GoldenrodDeptStore3FGameboyKidText
	waitbutton
	closetext
	turnobject GOLDENRODDEPTSTORE3F_GAMEBOY_KID, DOWN
	end

GoldenrodDeptStore3FBeautyScript:
	jumptextfaceplayer GoldenrodDeptStore3FBeautyText

GoldenrodDeptStore3FDirectory:
	jumptext GoldenrodDeptStore3FDirectoryText

GoldenrodDeptStore3FElevatorButton:
	jumpstd ElevatorButtonScript

GoldenrodDeptStore3FTeacherText:
	text "I cant decide!"

	para "Posters, plants,"
	line "and even beds!"

	para "They're are all so"
	line "cute! I want them!"
	done

GoldenrodDeptStore3FBeautyText:
	text "I cant decide!"

	para "Posters, plants,"
	line "and even beds!"

	para "They're are all so"
	line "cute! I want them!"
	done

GoldenrodDeptStore3FYoungsterText:
	text "I cant decide!"

	para "Posters, plants,"
	line "and even beds!"

	para "They're are all so"
	line "cute! I want them!"
	done

GoldenrodDeptStore3FGameboyKidText:
	text "Some #MON"
	line "evolve only by"

	para "being traded via a"
	line "Game Link cable."

	para "I know of four:"
	line "MACHOKE, KADABRA,"

	para "HAUNTER and, um,"
	line "GRAVELER."

	para "I heard there are"
	line "others too."
	done

GoldenrodDeptStore3FClerkText:
	text "Welcome! How may I"
	line "help you?"
	done

GoldenrodDeptStore3FClerkEndText:
	text "Please come again!"
	done

GoldenrodDeptStore3FBoughtDecoText:
	text "<PLAYER> bought"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

GoldenrodDeptStore3FSentDecoText:
	text "@"
	text_ram wStringBuffer3
	text " was"
	line "sent to home PC."
	done

BoughtSquirtleDollText:
	text "<PLAYER> bought"
	line "Squirtle Doll."
	done

SquirtleDollSentText:
	text "Squirtle Doll"
	line "was sent home."
	done

GoldenrodDeptStore3FNoMoneyText:
	text "You can't afford"
	line "that!"
	done

GoldenrodDeptStore3FAlreadyBoughtText:
	text "You already have"
	line "that!"
	done

GoldenrodDeptStore3FDirectoryText:
	text "For A Happy"
	line "Homecomming!"

	para "3F DECORATION"
	line "   DEPOT"
	done

GoldenrodDeptStore3F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 12,  0, GOLDENROD_DEPT_STORE_2F, 1
	warp_event 15,  0, GOLDENROD_DEPT_STORE_4F, 2
	warp_event  2,  0, GOLDENROD_DEPT_STORE_ELEVATOR, 1

	def_coord_events

	def_bg_events
	bg_event 14,  0, BGEVENT_READ, GoldenrodDeptStore3FDirectory
	bg_event  3,  0, BGEVENT_READ, GoldenrodDeptStore3FElevatorButton

	def_object_events
	object_event  6,  1, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore3FClerkScript, -1
	object_event 12,  5, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 1, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore3FTeacherScript, -1
	object_event 8,  7, SPRITE_BEAUTY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore3FBeautyScript, -1
	object_event 2,  5, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore3FBeautyScript, -1
	object_event  1,  1, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, GoldenrodDeptStore3FGameboyKidScript, -1
