// THIS FILE IS AUTOGENERATED, DO NOT MODIFY
main()
{
	maps\_custom_utility::detach_all_attachments();
	self setModel("body_airport_com_b");
	self attach("head_airport_b", "", true);
	self.voice = "russian";
	maps\_custom_utility::detach_all_attachments();
}

precache()
{
	precacheModel("body_airport_com_b");
	precacheModel("head_airport_b");
}