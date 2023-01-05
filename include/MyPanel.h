#pragma once

#include "pch.h"
#include "Fonts.h"
#include <bitset>

constexpr unsigned floorlog2(unsigned x)
{
	return x == 1 ? 0 : 1 + floorlog2(x >> 1);
}

constexpr unsigned ceillog2(unsigned x)
{
	return x == 1 ? 0 : floorlog2(x - 1) + 1;
}

constexpr int makeM1(uint8_t numberOfBits) {
	int v = 0;
	for (int i = 0; i < numberOfBits; i++) {
		v <<= 1;
		v |= 1;
	}
	return v;
}

std::string toBinary(uint32_t value, uint8_t bits) {
	std::string str(bits, '0');
	for (uint8_t i = bits - 1; i < bits; i--) {
		str[i] = value & 0b1 ? '1' : '0';
		value >>= 1;
	}
	return str;
}

uint8_t makeAddress(uint32_t* address, uint8_t readAddress, uint8_t writeAddress, uint8_t numberOfRegisters) {
	uint8_t addressWidth = ceillog2(numberOfRegisters + 1);
	*address = 1 << addressWidth * 2 | (writeAddress & makeM1(addressWidth)) << addressWidth | (readAddress & makeM1(addressWidth));
	return addressWidth;
}

class MyPanel : public Battery::ImGuiPanel<> {
public:

	uint8_t registerSize = 32;
	uint8_t numberOfRegisters = 16;

	uint8_t read = 0;
	uint8_t write = 0;
	uint32_t result = 0;

	uint8_t bitss = 0;
	uint8_t bytes = 0;

	int sampling = 8;
	float width = 5.f;

	MyPanel() : Battery::ImGuiPanel<>("MyPanel", { 0, 0 }, { 300, 0 }) {	// Specify a unique name and the position and size of the panel
		currentTitle = titleBuffer;
		Battery::GetMainWindow().SetTitle(currentTitle);
	}

	void OnUpdate() override {	// Called every frame before render, only for logic

		size.y = Battery::GetMainWindow().GetSize().y;	// This continually overwrites the vertical size with the vertical window size
														// -> When you resize the window vertically, the panel will adjust because of that


	}

	void OnRender() override {	// Called every frame after update, this is within an ImGui window -> call ImGui widgets directly
		auto fonts = GetFontContainer<FontContainer>();		// Here you can access the fonts from Fonts.h
		ImGui::PushFont(fonts->openSans18);

		int v3 = numberOfRegisters;
		ImGui::SliderInt("NumberOfRegisters", &v3, 0, 64);
		numberOfRegisters = v3;

		int v1 = read;
		ImGui::SliderInt("Read ", &v1, -1, numberOfRegisters);
		read = v1;

		int v2 = write;
		ImGui::SliderInt("Write", &v2, -1, numberOfRegisters);
		write = v2;

		uint8_t bits = makeAddress(&result, read, write, numberOfRegisters);

		ImGui::Text("Read  address: 0b%s", toBinary(read, bits).c_str());
		ImGui::Text("Write address: 0b%s", toBinary(write, bits).c_str());
		ImGui::Text("Total address: 0b%s", toBinary(result, bits * 2 + 1).c_str());
		
		//ImGui::ShowDemoWindow();



		int v4 = bitss;
		ImGui::SliderInt("Bits", &v4, 0, 255);
		bitss = v4;

		bytes = bitss / 8;

		ImGui::Text("Bytes: %d", bytes);


		//struct InterfaceType {
		//	uint8_t registerSize;
		//	uint8_t numberOfRegisters;
		//};
		//
		//InterfaceType type;
		//uint32_t address;
		//uint8_t bits = makeAddress(&address, read, write, numberOfRegisters);
		//uint16_t addr = 0b111110000 | (readAddress & 0b1111); // Lower 4 bits are the read address
		//writeDirectJTAG(14, (uint8_t*)&addr, addressWidth * 2 + 1);
		//readDirectJTAG(12, (uint8_t*)&type, sizeof(type));




		ImGui::PopFont();
	}

	void ShowHelpMarker(const char* desc, ImFont* font) {
		ImGui::TextDisabled("(?)");
		if (ImGui::IsItemHovered())
		{
			ImGui::PushFont(font);
			ImGui::BeginTooltip();
			ImGui::PushTextWrapPos(ImGui::GetFontSize() * 35.0f);
			ImGui::TextUnformatted(desc);
			ImGui::PopTextWrapPos();
			ImGui::EndTooltip();
			ImGui::PopFont();
		}
	}
};
