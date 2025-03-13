import time
import ctypes


# 載入 winmm.dll
winmm = ctypes.WinDLL("winmm.dll")

# 開啟 MIDI 裝置
midi_out = ctypes.c_void_p(0)
print('Available MIDI devices: ', winmm.midiOutGetNumDevs())
midiopen = winmm.midiOutOpen(ctypes.byref(midi_out), 0, 0, 0, 0)
print('midi open return message: ', midiopen)

# 發送 MIDI 訊息
def midi_send(message):
    winmm.midiOutShortMsg(midi_out, message)

# 播放五個音符 (C4, D4, E4, F4, G4)
notes = [60, 62, 64, 65, 67]  # MIDI 音符號碼

for note in notes:
    midi_send(0x90 | (note << 8) | (127 << 16))  # Note On
    time.sleep(0.3)
    midi_send(0x80 | (note << 8))  # Note Off

time.sleep(0.5)

# 更換音色 (槍聲: MIDI 音色 128)
midi_send(0xC0 | (127 << 8))  # 更改樂器為 "Gunshot"
time.sleep(0.1)

# 播放兩聲槍響 (MIDI note 60)
for _ in range(2):
    midi_send(0x90 | (60 << 8) | (127 << 16))  # Note On
    time.sleep(0.2)
    midi_send(0x80 | (60 << 8))  # Note Off
    time.sleep(0.3)

time.sleep(0.5)

# 更換音色 (鳥叫: MIDI 音色 123)
midi_send(0xC0 | (123 << 8))  # 更改樂器為 "Bird Tweet"
time.sleep(0.1)

# 播放鳥叫 (MIDI note 76)
midi_send(0x90 | (52 << 8) | (127 << 16))  # Note On
time.sleep(0.5)
midi_send(0x80 | (76 << 8))  # Note Off

# 關閉 MIDI 裝置
time.sleep(1)
winmm.midiOutClose(midi_out)
