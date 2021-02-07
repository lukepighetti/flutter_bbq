import 'package:flutter_reactive_ble/flutter_reactive_ble.dart';

import '../bbq_service.dart';
import 'bbq_probe.dart';

class BBQStatus {
  /// The current status of a particular device.
  const BBQStatus(this.probes, this.connectionState, this.service);

  /// The initial status.
  const BBQStatus.initial()
      : probes = const {},
        connectionState = DeviceConnectionState.disconnected,
        service = null;

  final Set<BBQProbe> probes;
  final DeviceConnectionState connectionState;
  final BBQService service;

  BBQStatus copyWith({
    Set<BBQProbe> probes,
    DeviceConnectionState connectionState,
    BBQService service,
  }) {
    return BBQStatus(
      probes ?? this.probes,
      connectionState ?? this.connectionState,
      service ?? this.service,
    );
  }

  @override
  String toString() =>
      'BBQStatus(probes: $probes, connectionState: $connectionState)';
}