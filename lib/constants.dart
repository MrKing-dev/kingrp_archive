import 'package:flutter/material.dart';
import 'dart:io';


List<String> fileNames = [
  "Cyberpunk_______canon_idea_suggestion.html",
  "Cyberpunk_______cyber_resources.html",
  "Cyberpunk_______jims_donuts_lounge.html",
  "Cyberpunk_______session_summary.html",
  "Out_of_Session_Roleplay___dice_rolling.html",
  "Out_of_Session_Roleplay___general_rp_rules.html",
  "Out_of_Session_Roleplay___group_rp.html",
  "Out_of_Session_Roleplay___rp1.html",
  "Out_of_Session_Roleplay_char_sheets.html",
  "Rules___rules.html",
  "Text_Channels___bot_commands.html",
  "Text_Channels___general.html",
  "Text_Channels___meme.html",
  "Text_Channels___pictures.html",
  "Text_Channels___quotes.html",
  "Text_Channels___spam.html",
  "World_Of_Darkness_The_Scottish_Holiday___canon_ideasuggestions.html",
  "World_Of_Darkness_The_Scottish_Holiday___char_sheets.html",
  "World_Of_Darkness_The_Scottish_Holiday___character_summary.html",
  "World_Of_Darkness_The_Scottish_Holiday___group_rp.html",
  "World_Of_Darkness_The_Scottish_Holiday___ian_takedown_planning.html",
  "World_Of_Darkness_The_Scottish_Holiday___non_canon_story_ideas.html",
  "World_Of_Darkness_The_Scottish_Holiday___resources.html",
  "World_Of_Darkness_The_Scottish_Holiday___rp1.html",
  "World_Of_Darkness_The_Scottish_Holiday___rp2.html",
  "World_Of_Darkness_The_Scottish_Holiday___rp3.html",
  "World_Of_Darkness_The_Scottish_Holiday___rp4.html",
  "World_Of_Darkness_The_Scottish_Holiday___rp5.html",
  "World_Of_Darkness_The_Scottish_Holiday___session_summary.html",
];

List<DropdownMenuItem<String>> menuItems = fileNames.map((val) => DropdownMenuItem(value: val, child: Text(val),)).toList();
