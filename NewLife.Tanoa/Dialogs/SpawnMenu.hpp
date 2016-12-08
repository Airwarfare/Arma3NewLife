class spawn_menu {
    idd = 38500;
    movingEnable = 0;
    enableSimulation = 1;

    class controlsBackground {
        class Map: RscMapControl
        {
            idc = 2201;
            x = 0.298906 * safezoneW + safezoneX;
            y = -0.00599999 * safezoneH + safezoneY;
            w = 0.70125 * safezoneW;
            h = 1.012 * safezoneH;
        };

        class Background: RscBackground
        {
            idc = 2200;
            colorBackground[] = {0.424,0.478,0.537,1};
            x = -0.000156274 * safezoneW + safezoneX;
            y = -0.00599999 * safezoneH + safezoneY;
            w = 0.299062 * safezoneW;
            h = 1.012 * safezoneH;
        };
    };

    class controls {
        class SpawnButton: RscButtonMenu
        {
            idc = 1600;
            style = 2;
            colorBackground[] = {0.851,0.118,0.094,0.7};
            x = 0.00654686 * safezoneW + safezoneX;
            y = 0.90612 * safezoneH + safezoneY;
            w = 0.28448 * safezoneW;
            h = 0.0800001 * safezoneH;
            sizeEx = 2 * GUI_GRID_H;
            text = "Confirm"; //--- ToDo: Localize;
            action = "";
        };
        class ListSpawn: RscListbox
        {
            idc = 1500;
            x = 0.00572187 * safezoneW + safezoneX;
            y = 0.00918 * safezoneH + safezoneY;
            w = 0.286563 * safezoneW;
            h = 0.88926 * safezoneH;
            sizeEx = 4 * GUI_GRID_H;
        };
    };
};