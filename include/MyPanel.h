#pragma once

#include "pch.h"
#include "Fonts.h"

class MyPanel : public Battery::ImGuiPanel<> {

	// Here you can store data which is specific to this panel

public:
	MyPanel() : Battery::ImGuiPanel<>("MyPanel", { 0, 0 }, { 400, 0 }) {	// Specify a unique name and the position and size of the panel

	}

	void OnUpdate() override {	// Called every frame before render, only for calculations

		size.y = Battery::GetMainWindow().GetSize().y;	// This continually overwrites the vertical size with the vertical window size
														// -> Panel always spans across the entire window height when the window is resized
	}

	void OnRender() override {	// Called every frame after update, this is within an ImGui window -> call ImGui widgets directly
		auto fonts = GetFontContainer<FontContainer>();		// Here you can access the fonts from Fonts.h
		
		ImGui::PushFont(fonts->font1);
		
		if (ImGui::Button("My Button")) {
			LOG_INFO("My Button was pressed!");
		}

		ImGui::PopFont();
	}
};
