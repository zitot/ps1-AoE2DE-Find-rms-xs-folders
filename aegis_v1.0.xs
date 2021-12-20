// AEGIS_v1.0.xs by xThomas
// Created Dec 19
// Version 1.0.0

// Quirks
// Farms and TCs do not work faster in this version
// Repairers work faster
// Consider banning BBT when you host this

void aegis() {
    int lumberjack_f = 218;
    int lumberjack_m = 213;
    int workrate = 13;
    int treb = 42;
    int tc = 71;
    int tc0 = 109;
    int tc1 = 142;
    int tc2 = 481;
    int tc3 = 482;
    int tc4 = 483;
    int tc5 = 597;
    int tc6 = 611;
    int tc7 = 612;
    int tc8 = 613;
    int tc9 = 614;
    int tc10 = 615;
    int tc11 = 616;
    int tc12 = 617;
    int tc13 = 618;
    int tc14 = 619;
    int tc15 = 620;
    int tc16 = 621;
    int tc17 = 484;

    int rax = 12;
    int raxf = 498;
    int raxc = 132;
    int raxi = 20;
    // int archery = 10;
    // int archery = 14;
    int archery = 87;
    int archeryc = 10;
    int archeryi = 14;
    int stable = 101;
    int stablec = 86;
    int stablei = 153;
    int temple = 30;
    int temple0 = 31;
    int temple1 = 32;
    int temple2 = 104;
    int castle = 82;
    int krepost = 1251;
    int donjon = 1665;
    int sw = 49;
    int sw0 = 150;
    int dock = 45;
    int dock0 = 47;
    int dock1 = 51;
    int dock2 = 133;
    int dock3 = 805;
    int dock4 = 805;
    int dock5 = 806;
    int dock6 = 807;
    int dock7 = 808;
    int harbor = 1189;
    int market = 84;
    int market0 = 116;
    int market1 = 137;
    int market2 = 1646;
    int villagerclass = 904;
    xsEffectAmount(cMulAttribute, treb, workrate, 256);
    xsEffectAmount(cMulAttribute, villagerclass, workrate, 256);
    xsEffectAmount(cMulAttribute, lumberjack_m, workrate, 0.10);
    xsEffectAmount(cMulAttribute, lumberjack_f, workrate, 0.10);
    // xsEffectAmount(cMulAttribute, tc, workrate, 256);
    // xsEffectAmount(cMulAttribute, tc17, workrate, 256);
    // xsEffectAmount(cMulAttribute, tc1, workrate, 256);
    // xsEffectAmount(cMulAttribute, tc2, workrate, 256);
    // xsEffectAmount(cMulAttribute, tc3, workrate, 256);
    // xsEffectAmount(cMulAttribute, tc4, workrate, 256);
    // xsEffectAmount(cMulAttribute, tc5, workrate, 256);
    // xsEffectAmount(cMulAttribute, tc6, workrate, 256);
    // xsEffectAmount(cMulAttribute, tc7, workrate, 256);
    // xsEffectAmount(cMulAttribute, tc8, workrate, 256);
    // xsEffectAmount(cMulAttribute, tc9, workrate, 256);
    // xsEffectAmount(cMulAttribute, tc10, workrate, 256);
    // xsEffectAmount(cMulAttribute, tc11, workrate, 256);
    // xsEffectAmount(cMulAttribute, tc12, workrate, 256);
    // xsEffectAmount(cMulAttribute, tc13, workrate, 256);
    // xsEffectAmount(cMulAttribute, tc14, workrate, 256);
    // xsEffectAmount(cMulAttribute, tc15, workrate, 256);
    // xsEffectAmount(cMulAttribute, tc16, workrate, 256);
    xsEffectAmount(cMulAttribute, rax, workrate, 256);
    xsEffectAmount(cMulAttribute, raxf, workrate, 256);
    xsEffectAmount(cMulAttribute, raxc, workrate, 256);
    xsEffectAmount(cMulAttribute, raxi, workrate, 256);
    xsEffectAmount(cMulAttribute, archery, workrate, 256);
    xsEffectAmount(cMulAttribute, archeryc, workrate, 256);
    xsEffectAmount(cMulAttribute, archeryi, workrate, 256);
    xsEffectAmount(cMulAttribute, stable, workrate, 256);
    xsEffectAmount(cMulAttribute, stablec, workrate, 256);
    xsEffectAmount(cMulAttribute, stablei, workrate, 256);
    xsEffectAmount(cMulAttribute, castle, workrate, 256);
    xsEffectAmount(cMulAttribute, krepost, workrate, 256);
    xsEffectAmount(cMulAttribute, donjon, workrate, 256);
    xsEffectAmount(cMulAttribute, sw, workrate, 256);
    xsEffectAmount(cMulAttribute, sw0, workrate, 256);
    xsEffectAmount(cMulAttribute, dock, workrate, 256);
    xsEffectAmount(cMulAttribute, dock0, workrate, 256);
    xsEffectAmount(cMulAttribute, dock1, workrate, 256);
    xsEffectAmount(cMulAttribute, dock2, workrate, 256);
    xsEffectAmount(cMulAttribute, dock3, workrate, 256);
    xsEffectAmount(cMulAttribute, dock4, workrate, 256);
    xsEffectAmount(cMulAttribute, dock5, workrate, 256);
    xsEffectAmount(cMulAttribute, dock6, workrate, 256);
    xsEffectAmount(cMulAttribute, dock7, workrate, 256);
    xsEffectAmount(cMulAttribute, harbor, workrate, 256);
    xsEffectAmount(cMulAttribute, temple, workrate, 256);
    xsEffectAmount(cMulAttribute, temple0, workrate, 256);
    xsEffectAmount(cMulAttribute, temple1, workrate, 256);
    xsEffectAmount(cMulAttribute, temple2, workrate, 256);
    xsEffectAmount(cMulAttribute, market, workrate, 256);
    xsEffectAmount(cMulAttribute, market0, workrate, 256);
    xsEffectAmount(cMulAttribute, market1, workrate, 256);
    xsEffectAmount(cMulAttribute, market2, workrate, 256);
}

void researchTreadmillCrane(int player = 1) {
    // xsChatData("Enable TreadmillCrane for player %d", player);
    xsEffectAmount(cMulAttribute, 118, 13, 1.2, player);
    xsEffectAmount(cMulAttribute, 212, 13, 1.2, player);
    return;
}


void main() {
    aegis();
}