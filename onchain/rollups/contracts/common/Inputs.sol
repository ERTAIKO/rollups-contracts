// (c) Cartesi and individual authors (see AUTHORS)
// SPDX-License-Identifier: Apache-2.0 (see LICENSE)

pragma solidity ^0.8.8;

/// @title Inputs
/// @notice Defines the signatures of inputs.
interface Inputs {
    /// @notice An advance request from an EVM-compatible blockchain to a Cartesi Machine.
    /// @param chainId The chain ID
    /// @param app The application address
    /// @param sender The address of whoever sent the input
    /// @param blockNumber The number of the block in which the input was added
    /// @param blockTimestamp The timestamp of the block in which the input was added
    /// @param index The input index
    /// @param payload The payload provided by the sender
    function EvmAdvance(
        uint256 chainId,
        address app,
        address sender,
        uint256 blockNumber,
        uint256 blockTimestamp,
        uint256 index,
        bytes calldata payload
    ) external;

    /// @notice An inspect request to a Cartesi Machine.
    /// @param payload The inspect payload
    function EvmInspect(bytes calldata payload) external;
}
