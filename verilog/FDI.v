module ucie_fdi_interface (
    input wire lclk,                           // Clock Signal
    input wire lp_irdy,                        // Protocol Layer Ready
    input wire lp_valid,                       // Valid data indication
    input wire [NBYTES*8-1:0] lp_data,         // Data from Protocol Layer
    input wire lp_nop_flit,                    // NOP Flit indication
    input wire lp_retimer_crd,                 // Retimer credit return
    input wire lp_corrupt_crc,                 // CRC corruption for latency optimization
    input wire [NDLLP-1:0] lp_dllp,            // DLLP bytes from Protocol Layer
    input wire lp_dllp_valid,                  // Valid DLLP transfer
    input wire lp_dllp_ofc,                    // DLLP Optimized Update FC
    input wire [7:0] lp_stream,                // Stream ID from Protocol Layer
    input wire lp_linkerror,                   // Link error indication
    input wire [3:0] lp_state_req,             // Protocol Layer state request
    input wire lp_rx_active_sts,               // Protocol Layer ready to receive data
    input wire lp_stallack,                    // Stall acknowledgment

    output reg pl_trdy,                        // Adapter ready to accept data
    output reg pl_valid,                       // Valid data indication to Protocol Layer
    output reg [NBYTES*8-1:0] pl_data,         // Data to Protocol Layer
    output reg pl_retimer_crd,                 // Retimer credit return to Protocol Layer
    output reg [NDLLP-1:0] pl_dllp,            // DLLP bytes to Protocol Layer
    output reg pl_dllp_valid,                  // Valid DLLP transfer
    output reg pl_dllp_ofc,                    // Optimized Update FC indication
    output reg [7:0] pl_stream,                // Stream ID to Protocol Layer
    output reg pl_flit_cancel,                 // Cancel Flit indication
    output reg [3:0] pl_state_sts,             // Adapter status to Protocol Layer
    output reg pl_inband_pres,                 // Inband presence indication
    output reg pl_error,                       // Framing error indication
    output reg pl_cerror,                      // Correctable error indication
    output reg pl_nferror,                     // Non-fatal error indication
    output reg pl_trainerror,                  // Train error indication
    output reg pl_rx_active_req,               // Request to open receiver data path
    output reg [2:0] pl_protocol,              // Negotiated protocol indication
    output reg [3:0] pl_protocol_flitfmt,      // Flit format indication
    output reg pl_protocol_vld,                // Protocol and flit format valid indication
    output reg pl_stallreq,                    // Request to flush and stall
    output reg pl_phyinrecenter                // Indication of training/retraining
);
endmodule
