class garage_menu {
    idd = 25000;
    movingEnable = 0;
	enableSimulation = 1;

    class controlsBackground {
        class Background: RscBackground
        {
            idc = 2200;
            x = 0.345312 * safezoneW + safezoneX;
            y = 0.269 * safezoneH + safezoneY;
            w = 0.324844 * safezoneW;
            h = 0.462 * safezoneH;
        };
    };

    class controls {
        class CarInfo: RscStructuredText
        {
            idc = 1000;
            text = "Info"; //--- ToDo: Localize;
            x = 0.469062 * safezoneW + safezoneX;
            y = 0.282852 * safezoneH + safezoneY;
            w = 0.06125 * safezoneW;
            h = 0.22  * safezoneH;
        };
        
        class PullButton: RscButton
        {
            idc = 1600;
            text = "Pull"; //--- ToDo: Localize;
            x = 0.468698 * safezoneW + safezoneX;
            y = 0.672 * safezoneH + safezoneY;
            w = 0.0979687 * safezoneW;
            h = 0.033 * safezoneH;
            action = "call fnc_garage_pull";
        };

        
        class Listbox: RscListbox
        {
            idc = 1500;
            x = 0.355625 * safezoneW + safezoneX;
            y = 0.28 * safezoneH + safezoneY;
            w = 0.108281 * safezoneW;
            h = 0.429 * safezoneH;
            onLBSelChanged= "[_this, (findDisplay 25000) displayCtrl 1000] call fnc_car_info";
        };
    };
};