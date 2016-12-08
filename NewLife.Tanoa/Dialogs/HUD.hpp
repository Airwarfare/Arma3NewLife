#define ST_CENTER         0x02

class playerHUD {
    idd = -1;
    duration = 10e10;
    movingEnable = 0;
    fadein = 0;
    fadeout = 0;
    name = "playerHUD";
    onLoad = "uiNamespace setVariable ['playerHUD',_this select 0]";
    objects[] = {};
    controls[] = {
        Life_RscBackground_HUD,
        Life_RscProgress_HUDFood,
        Life_RscProgress_HUDHealth,
        Life_RscProgress_HUDWater,
        Life_RscText_HUDFood,
        Life_RscText_HUDHealth,
        Life_RscText_HUDWater,
        LevelText,
        ProgressBar,
        LevelLeftText,
        LevelRightText,
    };

    /* Background */
    class Life_RscBackground_HUD: RscBackground {
        colorBackground[] = {0,0,0,0.35};
        x = 0.414815 * safezoneW + safezoneX;
        y = 0.966667 * safezoneH + safezoneY;
        w = 0.170371 * safezoneW;
        h = 0.0333333 * safezoneH;
    };

    /* Progress Bars */
    class LIFE_RscProgress_HUDCommon: RscProgress {
        colorFrame[] = {0, 0, 0, 0.8};
        y = 0.972223 * safezoneH + safezoneY;
        w = 0.0462964 * safezoneW;
        h = 0.0222222 * safezoneH;
    };

    class Life_RscProgress_HUDFood: RscProgress {
        idc = 2200;
        colorBar[] = {0,0.50,0,0.65};
        x = 0.418981 * safezoneW + safezoneX;
    };

    class Life_RscProgress_HUDHealth: RscProgress {
        idc = 2201;
        colorBar[] = {0.85,0.05,0,0.65};
        x = 0.476852 * safezoneW + safezoneX;
    };

    class Life_RscProgress_HUDWater: RscProgress {
        idc = 2202;
        colorBar[] = {0,0.25,0.65,0.65};
        x = 0.534723 * safezoneW + safezoneX;
    };

    /* Texts */
    class Life_RscText_HUDCommon: RscText {
        SizeEx = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 0.8)";
        style = ST_CENTER;
        y = 0.970023 * safezoneH + safezoneY;
        w = 0.0462964 * safezoneW;
        h = 0.0222222 * safezoneH;
    };

    class Life_RscText_HUDFood: RscText {
        idc = 1200;
        text = "Food";
        x = 0.418981 * safezoneW + safezoneX;
    };

    class Life_RscText_HUDHealth: RscText {
        idc = 1201;
        text = "Health";
        x = 0.476852 * safezoneW + safezoneX;
    };

    class Life_RscText_HUDWater: RscText {
        idc = 1202;
        text = "Water";
        x = 0.534723 * safezoneW + safezoneX;
    };

    //Test

	class LevelText: RscText
	{
		idc = 1000;
		text = "Lv: 0"; //--- ToDo: Localize;
		x = 0.867656 * safezoneW + safezoneX;
		y = 0.848407 * safezoneH + safezoneY;
		w = 0.04125 * safezoneW;
		h = 0.055 * safezoneH;
	};
	class ProgressBar: RscProgress
	{
		idc = 1600;
		x = 0.87125 * safezoneW + safezoneX;
		y = 0.885 * safezoneH + safezoneY;
		w = 0.108281 * safezoneW;
		h = 0.022 * safezoneH;
	};
	class LevelLeftText: RscText
	{
		idc = 1001;
		text = "0"; //--- ToDo: Localize;
		x = 0.860937 * safezoneW + safezoneX;
		y = 0.874 * safezoneH + safezoneY;
		w = 0.0154688 * safezoneW;
		h = 0.044 * safezoneH;
	};
	class LevelRightText: RscText
	{
		idc = 1002;
		text = "1"; //--- ToDo: Localize;
		x = 0.979531 * safezoneW + safezoneX;
		y = 0.874 * safezoneH + safezoneY;
		w = 0.0154688 * safezoneW;
		h = 0.044 * safezoneH;
	};
};