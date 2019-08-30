# 1 "/home/rsarwar/workspace/trigger-unit/petalinux/mz7010_fmccc_2017_4/build/../components/plnx_workspace/device-tree/device-tree-generation/system-top.dts"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "/home/rsarwar/workspace/trigger-unit/petalinux/mz7010_fmccc_2017_4/build/../components/plnx_workspace/device-tree/device-tree-generation/system-top.dts"







/dts-v1/;
/include/ "zynq-7000.dtsi"
/include/ "pl.dtsi"
/include/ "pcw.dtsi"
/ {
 chosen {
  bootargs = "earlycon";
  stdout-path = "serial0:115200n8";
 };
 aliases {
  ethernet0 = &gem0;
  serial0 = &uart1;
  spi0 = &qspi;
  spi1 = &spi0;
 };
 memory {
  device_type = "memory";
  reg = <0x0 0x20000000>;
 };
};
# 1 "/home/rsarwar/workspace/trigger-unit/petalinux/mz7010_fmccc_2017_4/build/tmp/work/plnx_arm-xilinx-linux-gnueabi/device-tree-generation/xilinx+gitAUTOINC+3c7407f6f8-r0/system-user.dtsi" 1
/include/ "system-conf.dtsi"
/ {

};


&gem0 {
 status = "okay";
    phy-handle = <&phy0>;
 phy-mode = "rgmii-id";
    phy0: phy@0 {
        compatible = "marvell,88e1510";
        device_type = "ethernet-phy";
        reg = <0x0>;
# 28 "/home/rsarwar/workspace/trigger-unit/petalinux/mz7010_fmccc_2017_4/build/tmp/work/plnx_arm-xilinx-linux-gnueabi/device-tree-generation/xilinx+gitAUTOINC+3c7407f6f8-r0/system-user.dtsi"
        marvell,reg-init = <3 16 0xff00 0x42>,
                           <3 17 0xfff0 0x0>,
                           <3 18 0xfff0 0x6>;
    };

};


&qspi {
 flash0: flash@0 {
  compatible = "micron,n25q128a13";
 };
};

/ {
    usb_phy0:usb_phy@0 {
        compatible="usb-nop-xceiv";
        #phy-cells = <0>;
    };
};


&usb0 {
 dr_mode = "otg";
 usb-phy = <&usb_phy0>;
};
# 28 "/home/rsarwar/workspace/trigger-unit/petalinux/mz7010_fmccc_2017_4/build/../components/plnx_workspace/device-tree/device-tree-generation/system-top.dts" 2
