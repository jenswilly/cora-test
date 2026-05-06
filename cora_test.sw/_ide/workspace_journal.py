# 2026-05-06T08:31:46.018873
import vitis

client = vitis.create_client()
client.set_workspace(path="cora_test.sw")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.get_component(name="freertos_hello_world")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp = client.get_component(name="xgpio_example")
comp.build()

status = platform.build()

comp.build()

status = platform.build()

comp.build()

