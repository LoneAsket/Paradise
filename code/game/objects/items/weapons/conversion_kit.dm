// Conversion kit
/obj/item/conversion_kit
	name = "\improper Revolver Conversion Kit"
	desc = "A professional conversion kit used to convert any knock off revolver into the real deal capable of shooting lethal .357 rounds without the possibility of catastrophic failure."
	icon_state = "kit_0"
	flags = CONDUCT
	w_class = WEIGHT_CLASS_SMALL
	origin_tech = "combat=2"
	var/open = FALSE


/obj/item/conversion_kit/update_icon_state()
	icon_state = "kit_[open]"


/obj/item/conversion_kit/attack_self(mob/user)
	open = !open
	to_chat(user, "<span class='notice'>You [open ? "open" : "close"] the conversion kit.</span>")
	update_icon(UPDATE_ICON_STATE)

