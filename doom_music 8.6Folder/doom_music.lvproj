<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="8608001">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="MusVIs" Type="Folder">
			<Item Name="CVT MUS2MIDI controller.vi" Type="VI" URL="../MusVIs/CVT MUS2MIDI controller.vi"/>
			<Item Name="Decode MUS.vi" Type="VI" URL="../MusVIs/Decode MUS.vi"/>
			<Item Name="Read MUS Data.vi" Type="VI" URL="../MusVIs/Read MUS Data.vi"/>
			<Item Name="Read MUS deltaTime.vi" Type="VI" URL="../MusVIs/Read MUS deltaTime.vi"/>
			<Item Name="Read MUS EventH.vi" Type="VI" URL="../MusVIs/Read MUS EventH.vi"/>
			<Item Name="Write MIDI dwMsg.vi" Type="VI" URL="../MusVIs/Write MIDI dwMsg.vi"/>
		</Item>
		<Item Name="midi_winapi_idtech1.vi" Type="VI" URL="../midi_winapi_idtech1.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="winmm.dll" Type="Document" URL="winmm.dll">
				<Property Name="NI.PreserveRelativePath" Type="Bool">true</Property>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
