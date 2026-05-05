# 2026-05-05T22:06:49.098132369
import vitis

client = vitis.create_client()
client.set_workspace(path="cora_test.sw")

platform = client.create_platform_component(name = "platform",hw_design = "$COMPONENT_LOCATION/../../design_1_wrapper.xsa",os = "freertos",cpu = "ps7_cortexa9_0",domain_name = "freertos_ps7_cortexa9_0")

platform = client.create_platform_component(name = "platform",hw_design = "$COMPONENT_LOCATION/../../design_1_wrapper.xsa",os = "freertos",cpu = "ps7_cortexa9_0",domain_name = "freertos_ps7_cortexa9_0")

platform = client.get_component(name="platform")
status = platform.build()

comp = client.create_app_component(name="freertos_hello_world",platform = "$COMPONENT_LOCATION/../platform/export/platform/platform.xpfm",domain = "freertos_ps7_cortexa9_0",template = "freertos_hello_world")

status = platform.build()

comp = client.get_component(name="freertos_hello_world")
comp.build()

status = platform.build()

comp = client.get_component(name="xgpio_example")
comp.build()

