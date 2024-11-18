"""Bus."""
import cocotb
from cocotb_bus.bus import Bus as BusBaseClass


class Bus:
    """Bus class for?"""

    def __init__(
        self,
        dut: cocotb.SigHandle,
        prefix: str = "",
        suffix: str = "",
        bus_seperator: str = "_",
        clk: str = "clk",
        reset: str = "rst_n",
        active_high_reset: bool = True,
        uppercase: bool = False,
    ):
        """Constructor for?

        Args:
        dut (SimHandle): ...
        prefix (str):...
       """
        self.dut = dut
        self.prefix = prefix
        self.suffix = suffix
        self.bus_seperator = bus_seperator
        self.clk = getattr(dut, clk)
        self.reset = getattr(dut, reset) if reset else None
        self.active_high_reset = active_high_reset
        self.input_signals = [
            "lp_irdy", "lp_valid", "lp_data", "lp_nop_flit", "lp_retimer_crd",
            "lp_corrupt_crc", "lp_dllp", "lp_dllp_valid", "lp_dllp_ofc",
            "lp_stream", "lp_linkerror", "lp_state_req", "lp_rx_active_sts",
            "lp_stallack"
        ]
        self.output_signals = [
            "pl_trdy", "pl_valid", "pl_data", "pl_retimer_crd", "pl_dllp",
            "pl_dllp_valid", "pl_dllp_ofc", "pl_stream", "pl_flit_cancel",
            "pl_state_sts", "pl_inband_pres", "pl_error", "pl_cerror",
            "pl_nferror", "pl_trainerror", "pl_rx_active_req", "pl_protocol",
            "pl_protocol_flitfmt", "pl_protocol_vld", "pl_stallreq",
            "pl_phyinrecenter"
        ]
        
    def get_bus(self) -> BusBaseClass:
        """Creates and returns the bus object."""
        return BusBaseClass()

    def get_somespecialfunction_bus(self, params: int) -> BusBaseClass:
        """This function handles a special signal naming convention seen in this protocol that is not covered by the default bus structure and creates and returns the bus.

        Args:
            params (int):...
        """
        cocotb.log.info(params)
        return BusBaseClass()
