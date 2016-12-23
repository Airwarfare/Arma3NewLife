class player_menu {
	idd = 40000;
	movingEnable = 0;
	enableSimulation = 1;

	class controlsBackground {
		class TitleBar: RscBackground
		{
			idc = 42200;
			colorBackground[] = {0.851,0.118,0.094,0.7};
			x = 0.301232 * safezoneW + safezoneX;
			y = 0.343223 * safezoneH + safezoneY;
			w = 0.400568 * safezoneW;
			h = 0.0294074 * safezoneH;
		};

		class MainBackground: RscBackground
		{
			idc = 2201;
			colorBackground[] = {0.173,0.243,0.314,1};
			x = 0.302053 * safezoneW + safezoneX;
			y = 0.375926 * safezoneH + safezoneY;
			w = 0.399686 * safezoneW;
			h = 0.363333 * safezoneH;
		};
	};

	class controls {
		class PlayerName: RscText
		{
			idc = 41000;
			text = "Name"; //--- ToDo: Localize;
			x = 0.302273 * safezoneW + safezoneX;
			y = 0.340333 * safezoneH + safezoneY;
			w = 0.0412976 * safezoneW;
			h = 0.033 * safezoneH;
		};
		class StaffRank: RscText
		{
			idc = 41001;
			text = "StaffRank"; //--- ToDo: Localize;
			x = 0.660028 * safezoneW + safezoneX;
			y = 0.335 * safezoneH + safezoneY;
			w = 0.0412976 * safezoneW;
			h = 0.044 * safezoneH;
		};
		class PlayerMenuInfo: RscStructuredText
		{
			idc = 41100;
			x = 0.304831 * safezoneW + safezoneX;
			y = 0.427037 * safezoneH + safezoneY;
			w = 0.0996916 * safezoneW;
			h = 0.306741 * safezoneH;
		};
		class InfoTitle: RscText
		{
			idc = 41003;
			text = "Info"; //--- ToDo: Localize;
			x = 0.303836 * safezoneW + safezoneX;
			y = 0.379 * safezoneH + safezoneY;
			w = 0.0412976 * safezoneW;
			h = 0.055 * safezoneH;
		};
		class PlayerMenuLicenses: RscListbox
		{
			idc = 41500;
			x = 0.407601 * safezoneW + safezoneX;
			y = 0.42763 * safezoneH + safezoneY;
			w = 0.123893 * safezoneW;
			h = 0.121 * safezoneH;
		};
		class LicensesTexts: RscText
		{
			idc = 41004;
			text = "Licenses"; //--- ToDo: Localize;
			x = 0.40708 * safezoneW + safezoneX;
			y = 0.379 * safezoneH + safezoneY;
			w = 0.0412976 * safezoneW;
			h = 0.055 * safezoneH;
		};
		class CloseButton: RscButton
		{
			idc = 41600;
			text = "Close"; //--- ToDo: Localize;
			x = 0.656049 * safezoneW + safezoneX;
			y = 0.709 * safezoneH + safezoneY;
			w = 0.0412976 * safezoneW;
			h = 0.022 * safezoneH;
			action = "closeDialog 40000;";
		};
		class PlayerMenuVI: RscListbox
		{
			idc = 41501;
			x = 0.40708 * safezoneW + safezoneX;
			y = 0.577 * safezoneH + safezoneY;
			w = 0.123893 * safezoneW;
			h = 0.154 * safezoneH;
		};
		class ItemsText: RscText
		{
			idc = 41005;
			text = "Items"; //--- ToDo: Localize;
			x = 0.40708 * safezoneW + safezoneX;
			y = 0.536704 * safezoneH + safezoneY;
			w = 0.0412976 * safezoneW;
			h = 0.055 * safezoneH;
		};
		class GiveButton: RscButton
		{
			idc = 41601;
			text = "Give"; //--- ToDo: Localize;
			x = 0.536135 * safezoneW + safezoneX;
			y = 0.602704 * safezoneH + safezoneY;
			w = 0.0412976 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class DropButton: RscButton
		{
			idc = 41602;
			text = "Drop"; //--- ToDo: Localize;
			x = 0.535943 * safezoneW + safezoneX;
			y = 0.629297 * safezoneH + safezoneY;
			w = 0.0412976 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class PlayerNameSelect: RscCombo
		{
			idc = 42100;
			x = 0.536135 * safezoneW + safezoneX;
			y = 0.577 * safezoneH + safezoneY;
			w = 0.0671086 * safezoneW;
			h = 0.022 * safezoneH;
		};
	};
};