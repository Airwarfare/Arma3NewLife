class garage {
    idd = 61111;
    movingEnable = 0;
	enableSimulation = 1;

    class controlsBackground {
        class Background: RscBackground
        {
            idc = 2200;
            x = 5.5 * GUI_GRID_W + GUI_GRID_X;
            y = 3 * GUI_GRID_H + GUI_GRID_Y;
            w = 30.5 * GUI_GRID_W;
            h = 20 * GUI_GRID_H;
        };
    };

    class controls {
        class CarList: RscListbox
        {
            idc = 1500;
            x = 6 * GUI_GRID_W + GUI_GRID_X;
            y = 3.5 * GUI_GRID_H + GUI_GRID_Y;
            w = 13 * GUI_GRID_W;
            h = 19 * GUI_GRID_H;
        };
        class Info: RscText
        {
            idc = 1000;
            text = "Info"; //--- ToDo: Localize;
            x = 19.7 * GUI_GRID_W + GUI_GRID_X;
            y = 3.63 * GUI_GRID_H + GUI_GRID_Y;
            w = 4 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
        };
        class PullButton: RscButton
        {
            idc = 1600;
            text = "Pull"; //--- ToDo: Localize;
            x = 19.5 * GUI_GRID_W + GUI_GRID_X;
            y = 21.25 * GUI_GRID_H + GUI_GRID_Y;
            w = 6 * GUI_GRID_W;
            h = 1 * GUI_GRID_H;
        };
    };
};