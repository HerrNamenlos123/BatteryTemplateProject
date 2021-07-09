
#include "pch.h"
#include "BatteryApp.h"

BatteryApp::BatteryApp() : Battery::Application(600, 600) {
	LOG_SET_LOGLEVEL(BATTERY_LOG_LEVEL_DEBUG);
}

bool BatteryApp::OnStartup() {
	LOG_DEBUG("Application loaded");
	return true;
}

void BatteryApp::OnUpdate() {

}

void BatteryApp::OnRender() {

}

void BatteryApp::OnShutdown() {

}

void BatteryApp::OnEvent(Battery::Event* e) {
	if (e->GetType() == Battery::EventType::WindowClose) {
		CloseApplication();
	}
}

Battery::Application* Battery::CreateApplication() {
	return new BatteryApp();
}
