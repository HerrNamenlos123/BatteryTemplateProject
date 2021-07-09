
#include "pch.h"

class BatteryApp : public Battery::Application {



public:
	BatteryApp();

	bool OnStartup() override;
	void OnUpdate() override;
	void OnRender() override;
	void OnShutdown() override;
	void OnEvent(Battery::Event* e) override;

};
