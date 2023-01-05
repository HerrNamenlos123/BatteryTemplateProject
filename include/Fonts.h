#pragma once

#include "pch.h"
#include "OpenSansFontData.h"	// Here an OpenSans font is loaded, this header was auto-generated 
								// from a .ttf file using the Battery::ImGuiUtils::... functions

struct Fonts : public Battery::Fonts {

	inline static ImFont* openSans25 = nullptr;
	inline static ImFont* openSans18 = nullptr;

	static void load() {
		LOG_ERROR("Loading derived");
		openSans25 = Battery::ImGuiUtils::AddEmbeddedFont(OpenSansFontData_compressed_data, OpenSansFontData_compressed_size, 25);
		openSans18 = Battery::ImGuiUtils::AddEmbeddedFont(OpenSansFontData_compressed_data, OpenSansFontData_compressed_size, 18);
	}
};