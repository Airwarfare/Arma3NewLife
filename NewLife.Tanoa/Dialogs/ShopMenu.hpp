class shop_menu {
	idd = 41000;
	movingEnable = 0;
	enableSimulation = 1;

	class controlsBackground {
		class Background: RscBackground
		{
			idc = 2200;
			x = 0.350469 * safezoneW + safezoneX;
			y = 0.258 * safezoneH + safezoneY;
			w = 0.257813 * safezoneW;
			h = 0.484 * safezoneH;
		};
	};

	class controls {
		class StoreListBox: RscListbox
		{
			idc = 1500;
			text = ""; //--- ToDo: Localize;
			x = 0.355625 * safezoneW + safezoneX;
			y = 0.291 * safezoneH + safezoneY;
			w = 0.118594 * safezoneW;
			h = 0.374 * safezoneH;
		};
		class PlayerListBox: RscListbox
		{
			idc = 1501;
			text = ""; //--- ToDo: Localize;
			x = 0.482366 * safezoneW + safezoneX;
			y = 0.29166 * safezoneH + safezoneY;
			w = 0.118594 * safezoneW;
			h = 0.374 * safezoneH;
		};
		class PlayerInput: RscEdit
		{
			idc = 1400;
			text = "Input2"; //--- ToDo: Localize;
			x = 0.482448 * safezoneW + safezoneX;
			y = 0.671259 * safezoneH + safezoneY;
			w = 0.118594 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class StoreInput: RscEdit
		{
			idc = 1401;
			text = "Input1"; //--- ToDo: Localize;
			x = 0.356667 * safezoneW + safezoneX;
			y = 0.671259 * safezoneH + safezoneY;
			w = 0.117135 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class BuyButton: RscButton
		{
			idc = 1600;
			text = "Buy"; //--- ToDo: Localize;
			x = 0.355625 * safezoneW + safezoneX;
			y = 0.698 * safezoneH + safezoneY;
			w = 0.118594 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class SellButton: RscButton
		{
			idc = 1601;
			text = "Sell"; //--- ToDo: Localize;
			x = 0.481718 * safezoneW + safezoneX;
			y = 0.698741 * safezoneH + safezoneY;
			w = 0.119427 * safezoneW;
			h = 0.0201482 * safezoneH;
		};
		class StoreTitle: RscText
		{
			idc = 1001;
			text = "StoreName"; //--- ToDo: Localize;
			x = 0.350469 * safezoneW + safezoneX;
			y = 0.247 * safezoneH + safezoneY;
			w = 0.04125 * safezoneW;
			h = 0.055 * safezoneH;
		};
		class InvLabel: RscText
		{
			idc = 1000;
			text = "YourInventory"; //--- ToDo: Localize;
			x = 0.549999 * safezoneW + safezoneX;
			y = 0.26437 * safezoneH + safezoneY;
			w = 0.0515625 * safezoneW;
			h = 0.022 * safezoneH;
		};
	};
};