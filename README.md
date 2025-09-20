# Moloch

It is a SoC based on Croc (for more information: [Croc Github page](https://github.com/pulp-platform/croc/tree/main)), enhanced with a new feature: a hardware accelerator for SHA-256. This addition is particularly useful for ensuring data integrity, especially considering the increasing volume of sensitive data transmissions and the growing demand for heterogeneous System-on-Chips, which make the integration of a cryptographic accelerator for the Secure Hash Algorithm 256 (SHA-256) in Croc a good choice.

## Architecture

<img src="doc/Bachlor_thesis_SoC.drawio.png" alt="Block diagram of Moloch SoC" width="600"/>


The main architectural difference from Croc is the addition of a cryptographic SHA-256 accelerator, which is not present in Croc. In Moloch, this accelerator is directly connected to the OBI bus, enabling efficient communication with CVE2, the RISC-V core, as well as with the rest of the SoC.

For more information on its implementation: [📄 Download Bachelor Thesis PDF](doc/Nikola_Tesic_Impleme%20of%20SHA256%20hardware%20accelerator%20for%20the%20SoC%20Croc.pdf)




## Configuration

All RTL code for the hardware accelerator can be found in the `rtl/cryptographic_acc`  directory. The files `user_domain.sv` and `user_pkg.sv` were modified to integrate the accelerator with the OBI bus.

On the software side, two C programs are provided: `sw/testbencher_croc.c`, used to verify the functionality of the new hardware implementation, and `sw/SHA256.c`, which serves as a reference to compare performance and confirm the speedup achieved by the accelerator.

Finally, the file `openroad/floorplan.tcl` contains the necessary scripts for generating the physical implementation of the design.

## Results 

Moloch | Croc
:-----:|:-----:
<img src="doc/Immagine1.png" alt="Moloch SoC" width="300"/> | <img src="doc/croc_modules.jpg" alt="Croc SoC" width="300"/>
              

| Result     | Description |
|------------|-------------|
| Speedup | Achieved **54× faster** than the software implementation on a RISC-V core |
| Frequency | Maintained system frequency with **no degradation** |
| Area | Area increase of **27 kGE** |

⚠️ **Note:** the software implementation in `SHA256.c` is not fully optimized; therefore, the reported speedup may be lower in a fair comparison.

## DRC and LVC verification

For this exact microchip, DRC and LVS verification were not performed. However, the project—with some small modifications—was reused for another course, where partial verification was carried out. If you are curious, I invite you to check the [GitHub page dedicated to that course](https://github.com/Nikola-Tesi/croc_with_SHA_256_VLSI_2/tree/main).

## License
Unless specified otherwise in the respective file headers, all code checked into this repository is made available under a permissive license. All hardware sources and tool scripts are licensed under the Solderpad Hardware License 0.51 (see `LICENSE.md`). All software sources are licensed under Apache 2.0.
