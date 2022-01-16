std = "lua51"
max_line_length = false
exclude_files = {
	"**/Libs/**/*.lua",
	".luacheckrc"
}
ignore = {
	"11./SLASH_.*", -- Setting an undefined (Slash handler) global variable
	"11./BINDING_.*", -- Setting an undefined (Keybinding header) global variable
	"211", -- Unused local variable
	"211/L", -- Unused local variable "L"
	"211/CL", -- Unused local variable "CL"
	"212", -- Unused argument
	"311", -- Value assigned to a local variable is unused (Only DBM-Party-BC is hitting this)
	"43.", -- Shadowing an upvalue, an upvalue argument, an upvalue loop variable.
--    "431", -- shadowing upvalue
	"542", -- An empty if branch
}
globals = {
	-- Saved Variables
	"DBM_AllSavedOptions",
	"DBM_MinimapIcon",
	"DBM_UsedProfile",
	"DBM_UseDualProfile",
	"DBM_CharSavedRevision",
	"DBT_AllPersistentOptions",

	-- DBM
	"DBM",
	"DBM_CORE_L",
	"DBM_COMMON_L",
	"DBM_DISABLE_ZONE_DETECTION",
	"DBM_GUI",
	"DBM_GUI_L",
	"DBM_OPTION_SPACER",
	"DBT",
	"LOCALE_koKR",
	"LOCALE_ruRU",
	"LOCALE_zhCN",
	"LOCALE_zhTW",

	-- Lua
	"bit.band",
	"date",
	"string.split",
	"table.wipe",
	"time",

	-- Utility functions
	"geterrorhandler",
	"fastrandom",
	"format",
	"strjoin",
	"strsplit",
	"tContains",
	"tDeleteItem",
	"tIndexOf",
	"tinsert",
	"tostringall",
	"tremove",

	-- WoW
	-- WoW
	"ALL",
	"ALWAYS",
	"BNET_CLIENT_WOW",
	"BOSS",
	"BOSSES_KILLED",
	"CANCEL",
	"CHALLENGE_MODE",
	"CLOSE",
	"COMBATLOG_OBJECT_AFFILIATION_MINE",
	"COMBATLOG_OBJECT_REACTION_HOSTILE",
	"COMBATLOG_OBJECT_TYPE_NPC",
	"COMBATLOG_OBJECT_TYPE_PET",
	"COMBATLOG_OBJECT_TYPE_PLAYER",
	"COMBATLOGDISABLED",
	"COMBATLOGENABLED",
	"DEFAULT",
	"DEFAULT_CHAT_FRAME",
	"DISABLE",
	"ENABLE",
	"FACTION_ALLIANCE",
	"FACTION_HORDE",
	"GAMEOPTIONS_MENU",
	"GUILD",
	"GUILD_INTEREST_RP",
	"HIDE",
	"LARGE",
	"LOCALIZED_CLASS_NAMES_MALE",
	"LOCK_FRAME",
	"MAX_TALENT_TABS",
	"MISCELLANEOUS",
	"NO",
	"NONE",
	"NORMAL_FONT_COLOR",
	"OKAY",
	"OVERVIEW",
	"PET",
	"PLAYER_DIFFICULTY1",
	"PLAYER_DIFFICULTY2",
	"PLAYER_DIFFICULTY3",
	"PLAYER_DIFFICULTY6",
	"PLAYER_DIFFICULTY_TIMEWALKER",
	"RAID_CLASS_COLORS",
	"RAID_DIFFICULTY1",
	"RAID_DIFFICULTY2",
	"RAID_DIFFICULTY3",
	"RAID_DIFFICULTY4",
	"RAID_INFO_WORLD_BOSS",
	"RAID_TARGET_1",
	"RAID_TARGET_2",
	"RAID_TARGET_3",
	"RAID_TARGET_4",
	"RAID_TARGET_5",
	"RAID_TARGET_6",
	"RAID_TARGET_7",
	"RAID_TARGET_8",
	"SCENARIO_STAGE",
	"SHARE_QUEST_ABBREV",
	"SHIELDSLOT",
	"SHORT",
	"SMALL",
	"SOUNDKIT",
	"SPECIALIZATION",
	"SPELL_FAILED_OUT_OF_RANGE",
	"STATICPOPUP_NUMDIALOGS",
	"TAXIROUTE_LINEFACTOR",
	"TAXIROUTE_LINEFACTOR_2",
	"TOAST_DURATION_LONG",
	"WOW_PROJECT_ID",
	"WOW_PROJECT_BURNING_CRUSADE_CLASSIC",
	"YES",

	"BackdropTemplateMixin",
	"ChatFontNormal",
	"GameFontHighlight",
	"GameFontHighlightSmall",
	"GameFontNormal",
	"GameFontNormalSmall",
	"GameTooltip",
	"ItemRefTooltip",
	"MovieFrame",
	"QuestWatchFrame",
	"RaidBossEmoteFrame",
	"UIParent",
	"SlashCmdList",
	"StaticPopupDialogs",
	"WorldFrame",

	"CinematicFrame_CancelCinematic",
	"OptionsList_OnLoad",
	"StaticPopup_Hide",
	"StaticPopup_Show",

	"C_ChallengeMode.GetActiveKeystoneInfo",
	"C_ChatInfo.IsAddonMessagePrefixRegistered",
	"C_ChatInfo.RegisterAddonMessagePrefix",
	"C_ChatInfo.SendAddonMessageLogged",
	"C_ChatInfo.SendAddonMessage",
	"C_EncounterJournal.GetSectionIconFlags",
	"C_EncounterJournal.GetSectionInfo",
	"C_FriendList.GetFriendInfo",
	"C_GossipInfo.GetOptions",
	"C_LFGInfo",
	"C_LFGInfo.GetDungeonInfo",
	"C_Map.GetBestMapForUnit",
	"C_Map.GetMapInfo",
	"C_Map.GetPlayerMapPosition",
	"C_Map.GetWorldPosFromMapPos",
	"C_NamePlate.GetNamePlateForUnit",
	"C_NamePlate.GetNamePlates",
	"C_Timer.After",
	"C_Timer.NewTicker",
	"C_UIWidgetManager.GetIconAndTextWidgetVisualizationInfo",
	"AcceptGroup",
	"Ambiguate",
	"BNGetFriendGameAccountInfo",
	"BNGetFriendIndex",
	"BNGetFriendInfo",
	"BNGetFriendInfoByID",
	"BNGetGameAccountInfo",
	"BNGetNumFriends",
	"BNGetNumFriendGameAccounts",
	"BNIsSelf",
	"BNSendGameData",
	"BNSendWhisper",
	"ChatEdit_GetActiveWindow",
	"CheckInteractDistance",
	"CombatLogGetCurrentEventInfo",
	"CreateFrame",
	"CreateVector2D",
	"EnableAddOn",
	"EJ_GetEncounterInfo",
	"EJ_GetEncounterInfoByIndex",
	"EJ_GetInstanceInfo",
	"EJ_GetCreatureInfo",
	"EJ_SetDifficulty",
	"FlashClientIcon",
	"GetAchievementInfo",
	"GetAchievementLink",
	"GetAddOnEnableState",
	"GetAddOnInfo",
	"GetAddOnMetadata",
	"GetAutoCompleteRealms",
	"GetBattlefieldPortExpiration",
	"GetBattlefieldStatus",
	"GetBuildInfo",
	"GetCursorPosition",
	"GetCVar",
	"GetDungeonInfo",
	"GetExpansionLevel",
	"GetGameTime",
	"GetGossipOptions",
	"GetGuildInfo",
	"GetGuildRosterInfo",
	"GetGuildRosterShowOffline",
	"GetInstanceInfo",
	"GetLFGMode",
	"GetLocale",
	"GetNetStats",
	"GetNumAddOns",
	"GetNumGroupMembers",
	"GetNumGuildMembers",
	"GetNumSavedInstances",
	"GetNumSubgroupMembers",
	"GetNumTalentTabs",
	"GetPartyAssignment",
	"GetPlayerFacing",
	"GetQuestLogTitle",
	"GetRaidRosterInfo",
	"GetRaidTargetIndex",
	"GetRealmName",
	"GetRealZoneText",
	"GetSavedInstanceInfo",
	"GetServerTime",
	"GetShapeshiftFormID",
	"GetSpecialization",
	"GetSpellCooldown",
	"GetSpellInfo",
	"GetSpellTexture",
	"GetSubZoneText",
	"GetTalentTabInfo",
	"GetTime",
	"GetUnitName",
	"GetZoneText",
	"InCombatLockdown",
	"IsAddOnLoaded",
	"IsEncounterInProgress",
	"IsFalling",
	"IsInGroup",
	"IsInGuild",
	"IsInInstance",
	"IsInRaid",
	"IsItemInRange",
	"IsMacClient",
	"IsQuestFlaggedCompleted",
	"IsShiftKeyDown",
	"IsSpellKnown",
	"IsTestBuild",
	"IsWindowsClient",
	"LoadAddOn",
	"LoggingCombat",
	"Mixin",
	"PlayMusic",
	"PlaySound",
	"PlaySoundFile",
	"SendChatMessage",
	"SetCVar",
	"SetRaidTarget",
	"StopMusic",
	"ToggleDropDownMenu",
	"UIDropDownMenu_AddButton",
	"UIDropDownMenu_CreateInfo",
	"UIDropDownMenu_Initialize",
	"UnitAffectingCombat",
	"UnitAura",
	"UnitBuff",
	"UnitCastingInfo",
	"UnitCharacterPoints",
	"UnitClass",
	"UnitDebuff",
	"UnitDetailedThreatSituation",
	"UnitDistanceSquared",
	"UnitExists",
	"UnitFactionGroup",
	"UnitGetTotalAbsorbs",
	"UnitGroupRolesAssigned",
	"UnitGUID",
	"UnitHealth",
	"UnitHealthMax",
	"UnitInBattleground",
	"UnitInPhase",
	"UnitInRaid",
	"UnitInRange",
	"UnitInVehicle",
	"UnitIsAFK",
	"UnitIsConnected",
	"UnitIsDead",
	"UnitIsDeadOrGhost",
	"UnitIsEnemy",
	"UnitIsFriend",
	"UnitIsGhost",
	"UnitIsGroupAssistant",
	"UnitIsGroupLeader",
	"UnitIsPlayer",
	"UnitIsUnit",
	"UnitLevel",
	"UnitName",
	"UnitPlayerOrPetInParty",
	"UnitPlayerOrPetInRaid",
	"UnitPosition",
	"UnitPower",
	"UnitPowerMax",
	"UnitRealmRelationship",
	"UnitThreatSituation",
}
