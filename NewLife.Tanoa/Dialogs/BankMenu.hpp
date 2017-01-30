class ATMBank {
    idd = 39000;
    movingEnable = 0;
	enableSimulation = 1;

    class controlsBackground {
        class Background: RscBackground
        {
        	idc = 2200;
        	x = 0.453593 * safezoneW + safezoneX;
        	y = 0.423 * safezoneH + safezoneY;
        	w = 0.113437 * safezoneW;
        	h = 0.209 * safezoneH;
        };
    };

    class controls {
        class DepositButton: RscButton
        {
        	idc = 1600;
        	text = "Deposit"; //--- ToDo: Localize;
        	x = 0.45875 * safezoneW + safezoneX;
        	y = 0.533 * safezoneH + safezoneY;
        	w = 0.04125 * safezoneW;
        	h = 0.022 * safezoneH;
            action = "[0] call fnc_atm_buttons";
        };
        class WithdrawButton: RscButton
        {
        	idc = 1601;
        	text = "Withdraw"; //--- ToDo: Localize;
        	x = 0.520625 * safezoneW + safezoneX;
        	y = 0.533 * safezoneH + safezoneY;
        	w = 0.04125 * safezoneW;
        	h = 0.022 * safezoneH;
            action = "[1] call fnc_atm_buttons";
        };
        class MoneyAmount: RscEdit
        {
        	idc = 1400;
        	text = "1"; //--- ToDo: Localize;
        	x = 0.45875 * safezoneW + safezoneX;
        	y = 0.5 * safezoneH + safezoneY;
        	w = 0.103125 * safezoneW;
        	h = 0.022 * safezoneH;
        };
        class PlayerCash: RscText
        {
        	idc = 1000;
        	text = "Cash: $0"; //--- ToDo: Localize;
        	x = 0.45875 * safezoneW + safezoneX;
        	y = 0.467 * safezoneH + safezoneY;
        	w = 0.103125 * safezoneW;
        	h = 0.022 * safezoneH;
        };
        class BankAmount: RscText
        {
        	idc = 1001;
        	text = "Bank: $0"; //--- ToDo: Localize;
        	x = 0.45875 * safezoneW + safezoneX;
        	y = 0.434 * safezoneH + safezoneY;
        	w = 0.103125 * safezoneW;
        	h = 0.022 * safezoneH;
        };
        class PeopleList: RscCombo
        {
        	idc = 2100;
        	x = 0.45875 * safezoneW + safezoneX;
        	y = 0.566 * safezoneH + safezoneY;
        	w = 0.103125 * safezoneW;
        	h = 0.022 * safezoneH;
        };
        class TransferButton: RscButton
        {
        	idc = 1602;
        	text = "Transfer"; //--- ToDo: Localize;
        	x = 0.45875 * safezoneW + safezoneX;
        	y = 0.599 * safezoneH + safezoneY;
        	w = 0.103125 * safezoneW;
        	h = 0.022 * safezoneH;
        };
    };
};
