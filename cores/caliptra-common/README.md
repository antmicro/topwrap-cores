# Shared Caliptra sources

The manifests use FuseSoC GitHub providers to fetch the pinned `caliptra-rtl`
revision. No submodule initialization is required.

- `common.core` provides `chipsalliance:cores:caliptra:0.1`, the shared
  primitives and AHB helpers.
- `axi.core` provides `chipsalliance:cores:caliptra_axi:0.1`, the AXI
  implementation used by I3C. It is kept separate because its `axi_pkg`
  conflicts with pulp-platform's `axi_pkg` used by the AXI interconnect.
- `uart_blocks.core` provides `chipsalliance.org:cores:caliptra_uart`, the
  UART registers and RX/TX logic. It depends on `common.core`.
- `uart_rtl.core` provides `chipsalliance.org:cores:caliptra_uart_ahb:0.1`,
  adding the AHB UART top and its remaining dependencies to the UART blocks.

`../caliptra-uart/uart.core` provides the Topwrap UART wrapper and description.
`../i3c/i3c_generic/module.core` depends on `axi.core` (and through it on `common.core`);
the I3C RTL itself is obtained through its separate provider.
