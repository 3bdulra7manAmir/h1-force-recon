// H1 GSC SOURCE
// Decompiled by https://github.com/xensik/gsc-tool

main()
{
    //maps\_load::set_player_viewhand_model( "viewhands_player_sas_woodland" ); //here
    maps\_props::add_smoking_notetracks( "generic" );
    maps\_props::add_cellphone_notetracks( "generic" );
    anims();
    dialog();
    patrol();
    dog();
    script_models();
}

#using_animtree("script_model");

script_models()
{
    level.scr_anim["chair"]["sleep_react"] = %parabolic_guard_sleeper_react_chair;
    level.scr_animtree["chair"] = #animtree;
    level.scr_model["chair"] = "com_folding_chair";
}

#using_animtree("generic_human");

anims()
{
    //maps\_load::set_player_viewhand_model( "viewhands_player_sas_woodland" ); //here
    level.scr_anim["generic"]["pronehide_dive"] = %hunted_dive_2_pronehide_v1;
    level.scr_anim["generic"]["pronehide_idle"][0] = %hunted_pronehide_idle_v1;
    level.scr_anim["generic"]["pronehide_idle_frame"] = %hunted_pronehide_idle_v1;
    level.scr_anim["generic"]["prone_2_run_roll"] = %hunted_pronehide_2_stand_v1;
    level.scr_anim["generic"]["prone_2_stand"] = %hunted_pronehide_2_stand_v2;
    level.scr_anim["generic"]["moveout_cqb"] = %cqb_stand_signal_move_out;
    level.scr_anim["generic"]["moveup_cqb"] = %cqb_stand_signal_move_up;
    level.scr_anim["generic"]["stop_cqb"] = %cqb_stand_signal_stop;
    level.scr_anim["generic"]["onme_cqb"] = %cqb_stand_wave_on_me;
    level.scr_anim["generic"]["moveout_exposed"] = %stand_exposed_wave_move_out;
    level.scr_anim["generic"]["moveup_exposed"] = %stand_exposed_wave_move_up;
    level.scr_anim["generic"]["stop_exposed"] = %stand_exposed_wave_halt;
    level.scr_anim["generic"]["stop2_exposed"] = %stand_exposed_wave_halt_v2;
    level.scr_anim["generic"]["onme_exposed"] = %stand_exposed_wave_on_me;
    level.scr_anim["generic"]["onme2_exposed"] = %stand_exposed_wave_on_me_v2;
    level.scr_anim["generic"]["enemy_exposed"] = %stand_exposed_wave_target_spotted;
    level.scr_anim["generic"]["down_exposed"] = %stand_exposed_wave_down;
    level.scr_anim["generic"]["go_exposed"] = %stand_exposed_wave_go;
    level.scr_anim["generic"]["exposed_2_alert_cornerR"] = %h1_cornerstndr_exposedstand_2_alert;
    level.scr_anim["generic"]["moveout_cornerR"] = %cornerstndr_alert_signal_move_out;
    level.scr_anim["generic"]["stop_cornerR"] = %cornerstndr_alert_signal_stopstay_down;
    level.scr_anim["generic"]["onme_cornerR"] = %cornerstndr_alert_signal_on_me;
    level.scr_anim["generic"]["enemy_cornerR"] = %cornerstndr_alert_signal_enemy_spotted;
    level.scr_anim["generic"]["alert2look_cornerR"] = %corner_standr_alert_2_look;
    level.scr_anim["generic"]["look_idle_cornerR"][0] = %corner_standr_look_idle;
    level.scr_anim["generic"]["look2alert_cornerR"] = %corner_standr_look_2_alert;
    level.scr_anim["generic"]["look_up_stand"] = %coverstand_look_moveup;
    level.scr_anim["generic"]["look_idle_stand"][0] = %coverstand_look_idle;
    level.scr_anim["generic"]["look_down_stand"] = %coverstand_look_movedown;
    level.scr_anim["generic"]["alert2look_cornerL"] = %corner_standl_alert_2_look;
    level.scr_anim["generic"]["look_idle_cornerL"][0] = %corner_standl_look_idle;
    level.scr_anim["generic"]["look2alert_cornerL"] = %corner_standl_look_2_alert;
    level.scr_anim["generic"]["coverstand_hide_2_aim"] = %coverstand_hide_2_aim;
    level.scr_anim["generic"]["cornerstandL_hide_2_aim"] = %corner_standl_trans_alert_2_a;
    level.scr_anim["generic"]["cornerstandR_hide_2_aim"] = %corner_standr_trans_alert_2_a;
    level.scr_anim["generic"]["cornercrouchL_hide_2_aim"] = %cornercrl_trans_alert_2_a;
    level.scr_anim["generic"]["cornercrouchR_hide_2_aim"] = %cornercrr_trans_alert_2_a;
    level.scr_anim["generic"]["_stealth_behavior_whizby_0"] = %exposed_idle_reacta;
    level.scr_anim["generic"]["_stealth_behavior_whizby_1"] = %exposed_idle_reactb;
    level.scr_anim["generic"]["_stealth_behavior_whizby_2"] = %exposed_idle_twitch;
    level.scr_anim["generic"]["_stealth_behavior_whizby_3"] = %exposed_idle_twitch_v4;
    level.scr_anim["generic"]["_stealth_behavior_whizby_4"] = %run_pain_stumble;
    level.scr_anim["generic"]["stand_aim"][0] = %stand_aim_straight;
    level.scr_anim["generic"]["stand_aim_add"] = %exposed_idle_alert_v1;
    level.scr_anim["generic"]["crouch_aim"][0] = %crouch_aim_straight;
    level.scr_anim["generic"]["crouch_aim_add"] = %exposed_crouch_idle_alert_v1;
    level.scr_anim["generic"]["flash_cornerL"] = %corner_standl_grenade_b;
    level.scr_anim["generic"]["flash_cornerR"] = %corner_standr_grenade_b;
    level.scr_anim["generic"]["sprint"] = %sprint1_loop;
    level.scr_anim["generic"]["sprint_h1"] = %h1_sprint_loop;
    level.scr_anim["generic"]["crawl_loop"] = %prone_crawl;
    level.scr_anim["generic"]["prone_idle"] = %prone_aim_idle;
    level.scr_anim["generic"]["stand2prone"] = %stand_2_prone;
    level.scr_anim["generic"]["prone2stand"] = %prone_2_stand;
    level.scr_anim["generic"]["prone2crawl"] = %h1_crawlstart_f;
    level.scr_anim["generic"]["pronecrawl2prone"] = %h1_crawl_2_prone;
    level.scr_anim["generic"]["prone_idle_under_truck"][0] = %prague_prone_idle;
    level.scr_goaltime["generic"]["prone_idle_under_truck"] = 1.0;
    level.scr_anim["generic"]["run_2_stop"] = %run_2_stand_f_6;
    level.scr_anim["generic"]["combat_idle"][0] = %stand_aim_straight;
    level.scr_anim["generic"]["stand2run"] = %stand_2_run_f_2;
    level.scr_anim["generic"]["exposed_tracking_turn45R"] = %exposed_tracking_turn45r;

    if ( getdvarint( "use_old_scoutsniper_intro" ) == 1 )
        level.scr_anim["price"]["scoutsniper_opening_price"] = %scout_sniper_price_prone_opening;
    else
    {
        level.scr_anim["price"]["scoutsniper_opening_price"] = %h1_scout_sniper_macmillan_intro;
        maps\_anim::addnotetrack_dialogue( "price", "dialog", "scoutsniper_opening_price", "scoutsniper_mcm_radiation" );
        maps\_anim::addnotetrack_dialogue( "price", "dialog", "scoutsniper_opening_price", "scoutsniper_mcm_followme" );
    }

    level.scr_anim["price"]["container_runin"] = %h1_scout_sniper_macmillan_container_runin;
    level.scr_anim["price"]["container_idle"][0] = %h1_scout_sniper_macmillan_container_idle;
    level.scr_anim["price"]["container"] = %h1_scout_sniper_macmillan_container;
    maps\_anim::addnotetrack_dialogue( "price", "dialog", "container", "scoutsniper_mcm_mysignal" );
    maps\_anim::addnotetrack_dialogue( "price", "dialog", "container", "scoutsniper_mcm_hoooold" );
    maps\_anim::addnotetrack_dialogue( "price", "dialog", "container", "scoutsniper_mcm_okgo" );
    maps\_anim::addnotetrack_customfunction( "price", "door_push1", maps\scoutsniper_code::h1_dash_container_door_push1, "container" );
    maps\_anim::addnotetrack_customfunction( "price", "door_push2", maps\scoutsniper_code::h1_dash_container_door_push2, "container" );
    level.scr_anim["price"]["jeep_cover_run_to_idle"] = %h1_scout_sniper_macmillan_jeep_cover_run_to_idle;
    level.scr_anim["price"]["jeep_cover_idle"][0] = %h1_scout_sniper_macmillan_jeep_cover_idle;
    level.scr_anim["price"]["jeep_cover"] = %h1_scout_sniper_macmillan_jeep_cover;
    maps\_anim::addnotetrack_dialogue( "price", "dialog", "jeep_cover", "scoutsniper_mcm_letsgo2" );
    level.scr_anim["price"]["heli_coming_02_long"] = %h1_scout_sniper_macmillan_heli_coming_02_long;
    maps\_anim::addnotetrack_dialogue( "price", "dialog", "heli_coming_02_long", "scoutsniper_mcm_enemyheli" );
    level.scr_anim["price"]["heli_coming_cover_idle"] = %h1_scout_sniper_macmillan_heli_coming_cover_idle;
    level.scr_anim["price"]["heli_coming_cover_idle_v2"] = %h1_scout_sniper_macmillan_heli_coming_cover_idle_breaker;
    level.scr_anim["price"]["heli_coming_cover_exit"] = %h1_scout_sniper_macmillan_heli_coming_cover_exit;
    level.scr_anim["price"]["heli_coming_spotted"] = %h1_scout_sniper_macmillan_heli_coming_spotted;
    maps\_anim::addnotetrack_dialogue( "price", "dialog", "heli_coming_spotted", "scoutsniper_mcm_spotted" );
    level.scr_anim["price"]["outtro"] = %h1_scout_sniper_macmillan_outtro;
    maps\_anim::addnotetrack_dialogue( "price", "dialog", "outtro", "scoutsniper_mcm_thereshotel" );
    level.scr_anim["generic"]["cellphone_idle"][0] = %patrol_bored_idle_cellphone;
    level.scr_anim["generic"]["smoke_idle"][0] = %patrol_bored_idle_smoke;
    level.scr_anim["generic"]["lean_smoke_idle"][0] = %parabolic_leaning_guy_smoking_idle;
    level.scr_anim["generic"]["lean_smoke_idle"][1] = %parabolic_leaning_guy_smoking_twitch;
    level.scr_anim["generic"]["coffee_idle"][0] = %parabolic_guard_sleeper_idle;
    level.scr_anim["generic"]["sleep_idle"][0] = %parabolic_guard_sleeper_idle;
    level.scr_anim["generic"]["cellphone_reach"] = %patrol_bored_idle_cellphone;
    level.scr_anim["generic"]["smoke_reach"] = %patrol_bored_idle_smoke;
    level.scr_anim["generic"]["lean_smoke_reach"] = %parabolic_leaning_guy_smoking_idle;
    level.scr_anim["generic"]["coffee_reach"] = %parabolic_guard_sleeper_idle;
    level.scr_anim["generic"]["sleep_reach"] = %parabolic_guard_sleeper_idle;
    level.scr_anim["generic"]["cellphone_react"] = %patrol_bored_react_look_retreat;
    level.scr_anim["generic"]["smoke_react"] = %patrol_bored_react_look_v3;
    level.scr_anim["generic"]["lean_smoke_react"] = %patrol_bored_react_walkstop_short;
    level.scr_anim["generic"]["coffee_react"] = %parabolic_guard_sleeper_react;
    level.scr_anim["generic"]["sleep_react"] = %parabolic_guard_sleeper_react;
    level.scr_anim["generic"]["open_door_slow"] = %hunted_open_barndoor;
    level.scr_anim["generic"]["open_door_slow_stop"] = %hunted_open_barndoor_stop;
    level.scr_anim["generic"]["open_door_kick"] = %doorkick_2_cqbwalk;
    level.scr_anim["generic"]["cqb_look_around"] = %combatwalk_f_spin;
    level.scr_anim["generic"]["ladder_slide"] = %scout_sniper_ladder_slide;
    level.scr_anim["generic"]["corner_crouch"] = %cornercrr_stand_2_alert;
    level.scr_anim["generic"]["corner_idle"][0] = %cornercrr_alert_idle;
    level.scr_anim["generic"]["corner_stand"] = %cornercrr_alert_2_stand;
    level.scr_anim["generic"]["cargo_attack_1"] = %melee_b_attack;
    maps\_anim::addnotetrack_customfunction( "generic", "melee", maps\scoutsniper_code::melee_kill, "cargo_attack_1" );
    level.scr_anim["generic"]["cargo_defend_1"] = %melee_b_defend;
    maps\_anim::addnotetrack_customfunction( "generic", "no death", maps\scoutsniper_code::rag_doll_death, "cargo_defend_1" );
    maps\_anim::addnotetrack_customfunction( "generic", "end", maps\scoutsniper_code::kill_self, "cargo_defend_1" );
    maps\_anim::addnotetrack_customfunction( "generic", "no death", maps\scoutsniper_aud::cargo_guard_getting_hit, "cargo_defend_1" );
    level.scr_anim["generic"]["cargo_attack_2"] = %melee_l_attack;
    maps\_anim::addnotetrack_customfunction( "generic", "melee", maps\scoutsniper_code::melee_kill, "cargo_attack_2" );
    level.scr_anim["generic"]["cargo_defend_2"] = %melee_l_defend;
    maps\_anim::addnotetrack_customfunction( "generic", "no death", maps\scoutsniper_code::rag_doll_death, "cargo_defend_2" );
    maps\_anim::addnotetrack_customfunction( "generic", "end", maps\scoutsniper_code::kill_self, "cargo_defend_2" );
    level.scr_anim["generic"]["bm21_unload1"] = %bm21_guy4_climbout;
    level.scr_anim["generic"]["bm21_unload2"] = %bm21_guy8_climbout;
    level.scr_anim["generic"]["balcony_death"] = %scout_sniper_balcony_death;
    maps\_anim::addnotetrack_customfunction( "generic", "start_ragdoll", maps\scoutsniper_code::rag_doll, "balcony_death" );
    level.scr_anim["generic"]["deadguy_throw1"] = %scout_sniper_bodydump_deadguy_throw1;
    maps\_anim::addnotetrack_customfunction( "generic", "body_splash", maps\scoutsniper_code::body_splash, "deadguy_throw1" );
    level.scr_anim["generic"]["deadguy_throw2"] = %scout_sniper_bodydump_deadguy_throw2;
    maps\_anim::addnotetrack_customfunction( "generic", "body_splash", maps\scoutsniper_code::body_splash, "deadguy_throw2" );
    level.scr_anim["generic"]["bodydump_guy1"] = %scout_sniper_bodydump_guy1;
    level.scr_anim["generic"]["bodydump_guy2"] = %scout_sniper_bodydump_guy2;
    level.scr_anim["generic"]["pilot_idle"][0] = %helicopter_pilot1_idle;
    level.scr_anim["generic"]["gunner_idle"][0] = %helicopter_pilot2_idle;
}

dialog()
{
    level.scr_radio["scoutsniper_mcm_spotted"] = "scoutsniper_mcm_spotted";
    level.scr_radio["scoutsniper_mcm_dogsingrass"] = "scoutsniper_mcm_dogsingrass";
    level.scr_radio["scoutsniper_mcm_getuskilled"] = "scoutsniper_mcm_getuskilled";
    level.scr_radio["scoutsniper_mcm_thewordstealth"] = "scoutsniper_mcm_thewordstealth";
    level.scr_radio["scoutsniper_mcm_showinoff"] = "scoutsniper_mcm_showinoff";
    level.scr_radio["scoutsniper_mcm_goloud"] = "scoutsniper_mcm_goloud";
    level.scr_radio["scoutsniper_mcm_nooneleft"] = "scoutsniper_mcm_nooneleft";
    level.scr_radio["scoutsniper_mcm_letthemmove"] = "scoutsniper_mcm_letthemmove";
    level.scr_radio["scoutsniper_mcm_anythingstupid"] = "scoutsniper_mcm_anythingstupid";
    level.scr_radio["scoutsniper_mcm_notontous"] = "scoutsniper_mcm_notontous";
    level.scr_radio["scoutsniper_mcm_contact"] = "scoutsniper_mcm_contact";
    level.scr_radio["scoutsniper_mcm_targetnorth"] = "scoutsniper_mcm_targetnorth";
    level.scr_radio["scoutsniper_mcm_targetsouth"] = "scoutsniper_mcm_targetsouth";
    level.scr_radio["scoutsniper_mcm_targeteast"] = "scoutsniper_mcm_targeteast";
    level.scr_radio["scoutsniper_mcm_targetwest"] = "scoutsniper_mcm_targetwest";
    level.scr_radio["scoutsniper_mcm_standby"] = "scoutsniper_mcm_standby";
    level.scr_radio["scoutsniper_mcm_wait"] = "scoutsniper_mcm_wait";
    level.scr_radio["scoutsniper_mcm_waithere"] = "scoutsniper_mcm_waithere";
    level.scr_radio["scoutsniper_mcm_waithere2"] = "scoutsniper_mcm_waithere2";
    level.scr_radio["scoutsniper_mcm_stayback"] = "scoutsniper_mcm_stayback";
    level.scr_radio["scoutsniper_mcm_getdown"] = "scoutsniper_mcm_getdown";
    level.scr_radio["scoutsniper_mcm_getdown2"] = "scoutsniper_mcm_getdown2";
    level.scr_radio["scoutsniper_mcm_stop"] = "scoutsniper_mcm_stop";
    level.scr_radio["scoutsniper_mcm_hold"] = "scoutsniper_mcm_hold";
    level.scr_radio["scoutsniper_mcm_holdup"] = "scoutsniper_mcm_holdup";
    level.scr_radio["scoutsniper_mcm_holdfast"] = "scoutsniper_mcm_holdfast";
    level.scr_radio["scoutsniper_mcm_dontmove"] = "scoutsniper_mcm_dontmove";
    level.scr_radio["scoutsniper_mcm_staylow2"] = "scoutsniper_mcm_staylow2";
    level.scr_radio["scoutsniper_mcm_lowprofile"] = "scoutsniper_mcm_lowprofile";
    level.scr_radio["scoutsniper_mcm_inshadows"] = "scoutsniper_mcm_inshadows";
    level.scr_radio["scoutsniper_mcm_shhh"] = "scoutsniper_mcm_shhh";
    level.scr_radio["scoutsniper_mcm_stayhidden"] = "scoutsniper_mcm_stayhidden";
    level.scr_radio["scoutsniper_mcm_areaclear"] = "scoutsniper_mcm_areaclear";
    level.scr_radio["scoutsniper_mcm_coastclear"] = "scoutsniper_mcm_coastclear";
    level.scr_radio["scoutsniper_mcm_forwardclear"] = "scoutsniper_mcm_forwardclear";
    level.scr_radio["scoutsniper_mcm_clearright"] = "scoutsniper_mcm_clearright";
    level.scr_radio["scoutsniper_mcm_clearleft"] = "scoutsniper_mcm_clearleft";
    level.scr_radio["scoutsniper_mcm_move"] = "scoutsniper_mcm_move";
    level.scr_radio["scoutsniper_mcm_moveout"] = "scoutsniper_mcm_moveout";
    level.scr_radio["scoutsniper_mcm_moveup"] = "scoutsniper_mcm_moveup";
    level.scr_radio["scoutsniper_mcm_okgo"] = "scoutsniper_mcm_okgo";
    level.scr_radio["scoutsniper_mcm_go"] = "scoutsniper_mcm_go";
    level.scr_radio["scoutsniper_mcm_letsgo2"] = "scoutsniper_mcm_letsgo2";
    level.scr_radio["scoutsniper_mcm_letsgo"] = "scoutsniper_mcm_letsgo";
    level.scr_radio["scoutsniper_mcm_readygo"] = "scoutsniper_mcm_readygo";
    level.scr_radio["scoutsniper_mcm_onme"] = "scoutsniper_mcm_onme";
    level.scr_radio["scoutsniper_mcm_followme2"] = "scoutsniper_mcm_followme2";
    level.scr_radio["scoutsniper_mcm_niceandslow"] = "scoutsniper_mcm_niceandslow";
    level.scr_radio["scoutsniper_mcm_hesdown"] = "scoutsniper_mcm_hesdown";
    level.scr_radio["scoutsniper_mcm_gothim"] = "scoutsniper_mcm_gothim";
    level.scr_radio["scoutsniper_mcm_goodnight"] = "scoutsniper_mcm_goodnight";
    level.scr_radio["scoutsniper_mcm_targetelim"] = "scoutsniper_mcm_targetelim";
    level.scr_radio["scoutsniper_mcm_tangodown"] = "scoutsniper_mcm_tangodown";
    level.scr_radio["scoutsniper_mcm_beautiful"] = "scoutsniper_mcm_beautiful";
    level.scr_radio["scoutsniper_mcm_toppedhim"] = "scoutsniper_mcm_toppedhim";
    level.scr_radio["scoutsniper_mcm_radiation"] = "scoutsniper_mcm_radiation";
    level.scr_radio["scoutsniper_mcm_followme"] = "scoutsniper_mcm_followme";
    level.scr_radio["scoutsniper_mcm_dosimeter"] = "scoutsniper_mcm_dosimeter";
    level.scr_radio["scoutsniper_mcm_deadman"] = "scoutsniper_mcm_deadman";
    level.scr_radio["scoutsniper_mcm_youdaft"] = "scoutsniper_mcm_youdaft";
    level.scr_radio["scoutsniper_mcm_deadahead"] = "scoutsniper_mcm_deadahead";
    level.scr_radio["scoutsniper_mcm_staylow"] = "scoutsniper_mcm_staylow";
    level.scr_radio["scoutsniper_mcm_notlooking"] = "scoutsniper_mcm_notlooking";
    level.scr_radio["scoutsniper_mcm_goaround"] = "scoutsniper_mcm_goaround";
    level.scr_radio["scoutsniper_mcm_4tangos"] = "scoutsniper_mcm_4tangos";
    level.scr_radio["scoutsniper_mcm_donteven"] = "scoutsniper_mcm_donteven";
    level.scr_radio["scoutsniper_mcm_tangobycar"] = "scoutsniper_mcm_tangobycar";
    level.scr_radio["scoutsniper_mcm_yourcall"] = "scoutsniper_mcm_yourcall";
    level.scr_radio["scoutsniper_mcm_backinside"] = "scoutsniper_mcm_backinside";
    level.scr_radio["scoutsniper_mcm_churchtower"] = "scoutsniper_mcm_churchtower";
    level.scr_radio["scoutsniper_mcm_patrolnorth"] = "scoutsniper_mcm_patrolnorth";
    level.scr_radio["scoutsniper_mcm_niceshot"] = "scoutsniper_mcm_niceshot";
    level.scr_radio["scoutsniper_mcm_betterview"] = "scoutsniper_mcm_betterview";
    level.scr_radio["scoutsniper_mcm_haveashot"] = "scoutsniper_mcm_haveashot";
    level.scr_radio["scoutsniper_mcm_inthetower"] = "scoutsniper_mcm_inthetower";
    level.scr_radio["scoutsniper_mcm_wrongtower"] = "scoutsniper_mcm_wrongtower";
    level.scr_radio["scoutsniper_mcm_seethebody"] = "scoutsniper_mcm_seethebody";
    level.scr_radio["scoutsniper_mcm_closeone"] = "scoutsniper_mcm_closeone";
    level.scr_radio["scoutsniper_mcm_ourchance"] = "scoutsniper_mcm_ourchance";
    level.scr_radio["scoutsniper_mcm_turnaround"] = "scoutsniper_mcm_turnaround";
    level.scr_radio["scoutsniper_mcm_hearthat"] = "scoutsniper_mcm_hearthat";
    level.scr_radio["scoutsniper_mcm_enemyheli"] = "scoutsniper_mcm_enemyheli";
    level.scr_radio["scoutsniper_mcm_circlingback"] = "scoutsniper_mcm_circlingback";
    level.scr_radio["scoutsniper_mcm_holdyourfire"] = "scoutsniper_mcm_holdyourfire";
    level.scr_radio["scoutsniper_mcm_anticipatepaths"] = "scoutsniper_mcm_anticipatepaths";
    level.scr_radio["scoutsniper_mcm_slowandsteady"] = "scoutsniper_mcm_slowandsteady";
    level.scr_radio["scoutsniper_mcm_buyout"] = "scoutsniper_mcm_buyout";
    level.scr_radio["scoutsniper_mcm_withoutalerting"] = "scoutsniper_mcm_withoutalerting";
    level.scr_radio["scoutsniper_mcm_sneakingpast"] = "scoutsniper_mcm_sneakingpast";
    level.scr_radio["scoutsniper_mcm_yourcall2"] = "scoutsniper_mcm_yourcall2";
    level.scr_radio["scoutsniper_mcm_dontfire"] = "scoutsniper_mcm_dontfire";
    level.scr_radio["scoutsniper_mcm_sametime"] = "scoutsniper_mcm_sametime";
    level.scr_radio["scoutsniper_mcm_waitforme"] = "scoutsniper_mcm_waitforme";
    level.scr_radio["scoutsniper_mcm_waitforme2"] = "scoutsniper_mcm_waitforme2";
    level.scr_radio["scoutsniper_mcm_whenyoureready"] = "scoutsniper_mcm_whenyoureready";
    level.scr_radio["scoutsniper_mcm_holdyourfiremoving"] = "scoutsniper_mcm_holdyourfiremoving";
    level.scr_radio["scoutsniper_mcm_inposition"] = "scoutsniper_mcm_inposition";
    level.scr_radio["scoutsniper_mcm_ateam"] = "scoutsniper_mcm_ateam";
    level.scr_radio["scoutsniper_mcm_observe"] = "scoutsniper_mcm_observe";
    level.scr_radio["scoutsniper_mcm_youinsane"] = "scoutsniper_mcm_youinsane";
    level.scr_radio["scoutsniper_mcm_gotminerals"] = "scoutsniper_mcm_gotminerals";
    level.scr_radio["scoutsniper_mcm_oisuzy"] = "scoutsniper_mcm_oisuzy";
    level.scr_radio["scoutsniper_mcm_patrolthisway"] = "scoutsniper_mcm_patrolthisway";
    level.scr_radio["scoutsniper_mcm_anotherpass"] = "scoutsniper_mcm_anotherpass";
    level.scr_radio["scoutsniper_mcm_howitsdone"] = "scoutsniper_mcm_howitsdone";
    level.scr_radio["scoutsniper_mcm_hesmine"] = "scoutsniper_mcm_hesmine";
    level.scr_radio["scoutsniper_mcm_hoooold"] = "scoutsniper_mcm_hoooold";
    level.scr_radio["scoutsniper_mcm_mysignal"] = "scoutsniper_mcm_mysignal";
    level.scr_radio["scoutsniper_mcm_standbygo"] = "scoutsniper_mcm_standbygo";
    level.scr_radio["scoutsniper_mcm_stickwithme"] = "scoutsniper_mcm_stickwithme";
    level.scr_radio["scoutsniper_mcm_useascover"] = "scoutsniper_mcm_useascover";
    level.scr_radio["scoutsniper_mcm_crawlout"] = "scoutsniper_mcm_crawlout";
    level.scr_radio["scoutsniper_mcm_sniperahead"] = "scoutsniper_mcm_sniperahead";
    level.scr_radio["scoutsniper_mcm_giveaway"] = "scoutsniper_mcm_giveaway";
    level.scr_radio["scoutsniper_mcm_topbalcony"] = "scoutsniper_mcm_topbalcony";
    level.scr_radio["scoutsniper_mcm_noonesaw"] = "scoutsniper_mcm_noonesaw";
    level.scr_radio["scoutsniper_mcm_ghosttown"] = "scoutsniper_mcm_ghosttown";
    level.scr_radio["scoutsniper_mcm_notthereyet"] = "scoutsniper_mcm_notthereyet";
    level.scr_radio["scoutsniper_mcm_soundgood"] = "scoutsniper_mcm_soundgood";
    level.scr_radio["scoutsniper_mcm_whew"] = "scoutsniper_mcm_whew";
    level.scr_radio["scoutsniper_mcm_wilddog"] = "scoutsniper_mcm_wilddog";
    level.scr_radio["scoutsniper_mcm_pooch"] = "scoutsniper_mcm_pooch";
    level.scr_radio["scoutsniper_mcm_noneed"] = "scoutsniper_mcm_noneed";
    level.scr_radio["scoutsniper_mcm_thereshotel"] = "scoutsniper_mcm_thereshotel";
}

patrol()
{
    level.scr_anim["generic"]["h1_patrol_walk_01"] = %h1_scout_sniper_solder_patrolwalk_01;
    level.scr_anim["generic"]["h1_patrol_walk_02"] = %h1_scout_sniper_solder_patrolwalk_02;
    level.scr_anim["generic"]["h1_patrol_walk_03"] = %h1_scout_sniper_solder_patrolwalk_03;
    level.scr_anim["generic"]["h1_patrol_walk_04"] = %h1_scout_sniper_solder_patrolwalk_04;
    level.scr_anim["generic"]["h1_patrol_walk_05"] = %h1_scout_sniper_solder_patrolwalk_05;
    level.scr_anim["generic"]["patrol_walk"] = %patrol_bored_patrolwalk;
    level.scr_anim["generic"]["patrol_walk_twitch"] = %patrol_bored_patrolwalk_twitch;
    level.scr_anim["generic"]["patrol_stop"] = %patrol_bored_walk_2_bored;
    level.scr_anim["generic"]["patrol_start"] = %patrol_bored_2_walk;
    level.scr_anim["generic"]["patrol_turn180"] = %patrol_bored_2_walk_180turn;
    level.scr_anim["generic"]["patrol_idle_1"] = %patrol_bored_idle;
    level.scr_anim["generic"]["patrol_idle_2"] = %patrol_bored_idle_smoke;
    level.scr_anim["generic"]["patrol_idle_3"] = %patrol_bored_idle_cellphone;
    level.scr_anim["generic"]["patrol_idle_4"] = %patrol_bored_twitch_bug;
    level.scr_anim["generic"]["patrol_idle_5"] = %patrol_bored_twitch_checkphone;
    level.scr_anim["generic"]["patrol_idle_6"] = %patrol_bored_twitch_stretch;
    level.scr_anim["generic"]["patrol_idle_smoke"] = %patrol_bored_idle_smoke;
    level.scr_anim["generic"]["patrol_idle_checkphone"] = %patrol_bored_twitch_checkphone;
    level.scr_anim["generic"]["patrol_idle_stretch"] = %patrol_bored_twitch_stretch;
    level.scr_anim["generic"]["patrol_idle_phone"] = %patrol_bored_idle_cellphone;
    level.scr_anim["generic"]["patrol_turn_l45_rfoot"] = %h1_bored_patrol_walk_turn_l45_right_foot;
    level.scr_anim["generic"]["patrol_turn_l45_lfoot"] = %h1_bored_patrol_walk_turn_l45_left_foot;
    level.scr_anim["generic"]["patrol_turn_l90_rfoot"] = %h1_bored_patrol_walk_turn_l90_right_foot;
    level.scr_anim["generic"]["patrol_turn_l90_lfoot"] = %h1_bored_patrol_walk_turn_l90_left_foot;
    level.scr_anim["generic"]["patrol_turn_l135_rfoot"] = %h1_bored_patrol_walk_turn_l135_right_foot;
    level.scr_anim["generic"]["patrol_turn_l135_lfoot"] = %h1_bored_patrol_walk_turn_l135_left_foot;
    level.scr_anim["generic"]["patrol_turn_r45_rfoot"] = %h1_bored_patrol_walk_turn_r45_right_foot;
    level.scr_anim["generic"]["patrol_turn_r45_lfoot"] = %h1_bored_patrol_walk_turn_r45_left_foot;
    level.scr_anim["generic"]["patrol_turn_r90_rfoot"] = %h1_bored_patrol_walk_turn_r90_right_foot;
    level.scr_anim["generic"]["patrol_turn_r90_lfoot"] = %h1_bored_patrol_walk_turn_r90_left_foot;
    level.scr_anim["generic"]["patrol_turn_r135_rfoot"] = %h1_bored_patrol_walk_turn_r135_right_foot;
    level.scr_anim["generic"]["patrol_turn_r135_lfoot"] = %h1_bored_patrol_walk_turn_r135_left_foot;
    level.scr_anim["generic"]["patrol_walk_in_lfoot"] = %h1_bored_patrol_walk_turn_walk_in_left;
    level.scr_anim["generic"]["patrol_walk_out_lfoot"] = %h1_bored_patrol_walk_turn_walk_out_left;
    level.scr_anim["generic"]["patrol_walk_in_rfoot"] = %h1_bored_patrol_walk_turn_walk_in_right;
    level.scr_anim["generic"]["patrol_walk_out_rfoot"] = %h1_bored_patrol_walk_turn_walk_out_right;
    level.scr_anim["generic"]["patrol_jog"] = %patrol_jog;
    level.scr_anim["generic"]["combat_jog"] = %combat_jog;
    level.scr_anim["generic"]["patrol_jog_turn180"] = %patrol_jog_360;
    level.scr_anim["generic"]["stealth_jog"] = %patrol_jog;
    level.scr_anim["generic"]["stealth_walk"] = %patrol_bored_patrolwalk;
    maps\_patrol::init_patrol_animation_list();
    maps\_patrol::add_to_patrol_animation_list( "h1_patrol_walk_01", level.scr_anim["generic"]["h1_patrol_walk_01"] );
    maps\_patrol::add_to_patrol_animation_list( "h1_patrol_walk_02", level.scr_anim["generic"]["h1_patrol_walk_02"] );
    maps\_patrol::add_to_patrol_animation_list( "h1_patrol_walk_03", level.scr_anim["generic"]["h1_patrol_walk_03"] );
    maps\_patrol::add_to_patrol_animation_list( "h1_patrol_walk_04", level.scr_anim["generic"]["h1_patrol_walk_04"] );
    maps\_patrol::add_to_patrol_animation_list( "h1_patrol_walk_05", level.scr_anim["generic"]["h1_patrol_walk_05"] );
}

#using_animtree("dog");

dog()
{
    level.scr_anim["generic"]["dog_idle"][0] = %german_shepherd_attackidle;
    level.scr_anim["generic"]["dog_eating"][0] = %german_shepherd_eating;
    level.scr_anim["generic"]["dog_eating_single"] = %german_shepherd_eating;
    level.scr_anim["generic"]["dog_growling"][0] = %german_shepherd_attackidle_growl;
    level.scr_anim["generic"]["dog_barking"][0] = %german_shepherd_attackidle_growl;
    level.scr_anim["generic"]["dog_barking"][1] = %german_shepherd_attackidle_bark;
    level.scr_anim["generic"]["dog_barking"][2] = %german_shepherd_attackidle_bark;
    level.scr_anim["generic"]["dog_barking"][3] = %german_shepherd_attackidle_bark;
}
