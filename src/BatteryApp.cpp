
#include "pch.h"
#include "BatteryApp.h"

std::unique_ptr<Battery::Bitmap> image1;
std::unique_ptr<Battery::Bitmap> image2;

// Here you can define the start size of the window and 
// optionally the application name (%appdata% folder and the window title)
BatteryApp::BatteryApp() : Battery::Application(1000, 600, "MyApplication") {	// Called before anything else, engine core not initialized yet!
	LOG_SET_LOGLEVEL(BATTERY_LOG_LEVEL_DEBUG);
}

bool BatteryApp::OnStartup() {		// Called once on startup, engine is initializedby  now

	// Here you can initialize everything

	ui = std::make_shared<UserInterface>();		// User interface layer is created and pushed onto the layer stack as an overlay
	PushOverlay(ui);							// PushLayer() or PushOverlay(), overlays are always above normal layers

	//LOG_WARN("Multisampling: x{}", al_get_display_option(window.allegroDisplayPointer, ALLEGRO_SAMPLE_BUFFERS));
	
	image1 = std::make_unique<Battery::Bitmap>(300, 300);
	image2 = std::make_unique<Battery::Bitmap>(300, 300);

	LOG_DEBUG("Application loaded");
	return true;
}

void BatteryApp::OnUpdate() {		// Called every frame before render, used for calculations

}

void BatteryApp::OnRender() {		// Called every frame after update, used to display calculated results onto the 

	if (image2->GetSamples() != ui->myPanel->sampling) {
		image2->SetSamples(ui->myPanel->sampling);
	}

	LOG_WARN("Samples: {}", image2->GetSamples());
	
	al_set_target_bitmap(image1->GetAllegroBitmap());
	Battery::Graphics::DrawBackground({ 255, 255, 255 });
	float f1 = 1;
	al_draw_line(50 * f1, 50 * f1, 250 * f1, 100 * f1, Battery::Graphics::ConvertAllegroColor(glm::vec3(0, 0, 0)), 5 * f1);
	al_draw_line(200 * f1, 50 * f1, 50 * f1, 250 * f1, Battery::Graphics::ConvertAllegroColor(glm::vec3(0, 0, 0)), 5 * f1);
	
	al_set_target_bitmap(image2->GetAllegroBitmap());
	Battery::Graphics::DrawBackground({ 255, 255, 255 });
	float f2 = 1;
	al_draw_line(50 * f2, 50 * f2, 250 * f2, 100 * f2, Battery::Graphics::ConvertAllegroColor(glm::vec3( 0, 0, 0 )), 5 * f2);
	al_draw_line(200 * f2, 50 * f2, 50 * f2, 250 * f2, Battery::Graphics::ConvertAllegroColor(glm::vec3( 0, 0, 0 )), 5 * f2);

	//al_set_target_bitmap(image2->GetAllegroBitmap());
	//float scale = 300.f / temp->GetWidth();
	//scale = 1;
	//al_draw_scaled_bitmap(temp->GetAllegroBitmap(), 0, 0, temp->GetWidth(), temp->GetHeight(), 0, 0, image2->GetWidth(), image2->GetHeight(), 0);

	al_set_target_backbuffer(window.allegroDisplayPointer);
	al_draw_bitmap(image1->GetAllegroBitmap(), 325, 100, 0);
	al_draw_bitmap(image2->GetAllegroBitmap(), 650, 100, 0);

	//CloseApplication();

}

void BatteryApp::OnShutdown() {		// Called once on shutdown, engine is still initialized
	image1.reset();
	image2.reset();
}

void BatteryApp::OnEvent(Battery::Event* e) {		// Called when an event arrives
	if (e->GetType() == Battery::EventType::WindowClose) {		// This filters the event type to a WindowClose event (X pressed)
		CloseApplication();
	}
}

// And finally, this creates the actual application from your class defined above.
Battery::Application* Battery::CreateApplication() {	// DO NOT ALTER!
	return new BatteryApp();
}
