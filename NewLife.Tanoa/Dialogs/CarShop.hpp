class car_shop {
    idd = 50000;
    movingEnable = 0;
	enableSimulation = 1;

    class controlsBackground {
        class BackgroundMain: RscBackground
        {
            idc = 2200;
            x = 0.412344 * safezoneW + safezoneX;
            y = 0.346 * safezoneH + safezoneY;
            w = 0.185625 * safezoneW;
            h = 0.286 * safezoneH;
        };

        class TitleBG: RscBackground
        {
            idc = 2201;
            x = 0.411281 * safezoneW + safezoneX;
            y = 0.31937 * safezoneH + safezoneY;
            w = 0.186563 * safezoneW;
            h = 0.0235185 * safezoneH;
        };
    };

    class controls {
        class Title: RscText
        {
            idc = 1000;
            text = "Car Shop"; //--- ToDo: Localize;
            x = 11.33 * GUI_GRID_W + GUI_GRID_X;
            y = 4.31 * GUI_GRID_H + GUI_GRID_Y;
            w = 4 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
        };

        class CarList: RscListbox
        {
            idc = 1500;
            x = 0.422656 * safezoneW + safezoneX;
            y = 0.357 * safezoneH + safezoneY;
            w = 0.0928125 * safezoneW;
            h = 0.264 * safezoneH;
        };

        class CarInfo: RscText
        {
            idc = 1001;
            text = "Info"; //--- ToDo: Localize;
            x = 0.525781 * safezoneW + safezoneX;
            y = 0.368 * safezoneH + safezoneY;
            w = 0.04125 * safezoneW;
            h = 0.22 * safezoneH;
        };

        class CarText: RscText
        {
            idc = 1002;
            text = "";
            x = 0.519062 * safezoneW + safezoneX;
            y = 0.35863 * safezoneH + safezoneY;
            w = 0.04125 * safezoneW;
            h = 0.022 * safezoneH;
        };

        class BuyButton: RscButton
        {
            idc = 1600;
            text = "Buy"; //--- ToDo: Localize;
            x = 0.520625 * safezoneW + safezoneX;
            y = 0.599 * safezoneH + safezoneY;
            w = 0.04125 * safezoneW;
            h = 0.022 * safezoneH;
            action = "";
        };
    };
};