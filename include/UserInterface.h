#pragma once

#include "pch.h"
#include "Fonts.h"

// Include all your panels
#include "MyPanel.h"

class UserInterface : public Battery::ImGuiLayer<Fonts> {
public:

	// Here you can allocate any number of panels for later use
	inline static std::shared_ptr<MyPanel> myPanel;

	UserInterface() {}	// Do not use this contructor

	void OnImGuiAttach() override {		// Called once on startup

		myPanel = std::make_shared<MyPanel>();
		PushPanel(myPanel);
		
	}

	void OnImGuiDetach() override {		// Called once on shutdown

	}

	void OnImGuiUpdate() override {		// Called every frame before render, only for logic

	}

	void OnImGuiRender() override {		// Called every frame after update, here ImGui can be rendered

	}

	void OnImGuiEvent(Battery::Event* event) override {		// Called when an event arrives which wasn't handled yet by the layer above

	}
};
