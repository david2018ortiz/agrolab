import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProyectsRecord extends FirestoreRecord {
  ProyectsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "proyectId" field.
  DocumentReference? _proyectId;
  DocumentReference? get proyectId => _proyectId;
  bool hasProyectId() => _proyectId != null;

  // "proyectName" field.
  String? _proyectName;
  String get proyectName => _proyectName ?? '';
  bool hasProyectName() => _proyectName != null;

  // "proyectCategory" field.
  List<String>? _proyectCategory;
  List<String> get proyectCategory => _proyectCategory ?? const [];
  bool hasProyectCategory() => _proyectCategory != null;

  // "productionType" field.
  String? _productionType;
  String get productionType => _productionType ?? '';
  bool hasProductionType() => _productionType != null;

  // "productionValue" field.
  double? _productionValue;
  double get productionValue => _productionValue ?? 0.0;
  bool hasProductionValue() => _productionValue != null;

  // "productionTime" field.
  String? _productionTime;
  String get productionTime => _productionTime ?? '';
  bool hasProductionTime() => _productionTime != null;

  // "proyectImage" field.
  String? _proyectImage;
  String get proyectImage => _proyectImage ?? '';
  bool hasProyectImage() => _proyectImage != null;

  // "proyectManager" field.
  DocumentReference? _proyectManager;
  DocumentReference? get proyectManager => _proyectManager;
  bool hasProyectManager() => _proyectManager != null;

  // "proyectStatus" field.
  StatusProyect? _proyectStatus;
  StatusProyect? get proyectStatus => _proyectStatus;
  bool hasProyectStatus() => _proyectStatus != null;

  // "createTime" field.
  DateTime? _createTime;
  DateTime? get createTime => _createTime;
  bool hasCreateTime() => _createTime != null;

  // "city" field.
  String? _city;
  String get city => _city ?? '';
  bool hasCity() => _city != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "proyectProduction" field.
  String? _proyectProduction;
  String get proyectProduction => _proyectProduction ?? '';
  bool hasProyectProduction() => _proyectProduction != null;

  // "proyectDescription" field.
  String? _proyectDescription;
  String get proyectDescription => _proyectDescription ?? '';
  bool hasProyectDescription() => _proyectDescription != null;

  // "userCustomerId" field.
  List<DocumentReference>? _userCustomerId;
  List<DocumentReference> get userCustomerId => _userCustomerId ?? const [];
  bool hasUserCustomerId() => _userCustomerId != null;

  void _initializeFields() {
    _proyectId = snapshotData['proyectId'] as DocumentReference?;
    _proyectName = snapshotData['proyectName'] as String?;
    _proyectCategory = getDataList(snapshotData['proyectCategory']);
    _productionType = snapshotData['productionType'] as String?;
    _productionValue = castToType<double>(snapshotData['productionValue']);
    _productionTime = snapshotData['productionTime'] as String?;
    _proyectImage = snapshotData['proyectImage'] as String?;
    _proyectManager = snapshotData['proyectManager'] as DocumentReference?;
    _proyectStatus =
        deserializeEnum<StatusProyect>(snapshotData['proyectStatus']);
    _createTime = snapshotData['createTime'] as DateTime?;
    _city = snapshotData['city'] as String?;
    _location = snapshotData['location'] as LatLng?;
    _proyectProduction = snapshotData['proyectProduction'] as String?;
    _proyectDescription = snapshotData['proyectDescription'] as String?;
    _userCustomerId = getDataList(snapshotData['userCustomerId']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('proyects');

  static Stream<ProyectsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProyectsRecord.fromSnapshot(s));

  static Future<ProyectsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProyectsRecord.fromSnapshot(s));

  static ProyectsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProyectsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProyectsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProyectsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProyectsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProyectsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProyectsRecordData({
  DocumentReference? proyectId,
  String? proyectName,
  String? productionType,
  double? productionValue,
  String? productionTime,
  String? proyectImage,
  DocumentReference? proyectManager,
  StatusProyect? proyectStatus,
  DateTime? createTime,
  String? city,
  LatLng? location,
  String? proyectProduction,
  String? proyectDescription,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'proyectId': proyectId,
      'proyectName': proyectName,
      'productionType': productionType,
      'productionValue': productionValue,
      'productionTime': productionTime,
      'proyectImage': proyectImage,
      'proyectManager': proyectManager,
      'proyectStatus': proyectStatus,
      'createTime': createTime,
      'city': city,
      'location': location,
      'proyectProduction': proyectProduction,
      'proyectDescription': proyectDescription,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProyectsRecordDocumentEquality implements Equality<ProyectsRecord> {
  const ProyectsRecordDocumentEquality();

  @override
  bool equals(ProyectsRecord? e1, ProyectsRecord? e2) {
    const listEquality = ListEquality();
    return e1?.proyectId == e2?.proyectId &&
        e1?.proyectName == e2?.proyectName &&
        listEquality.equals(e1?.proyectCategory, e2?.proyectCategory) &&
        e1?.productionType == e2?.productionType &&
        e1?.productionValue == e2?.productionValue &&
        e1?.productionTime == e2?.productionTime &&
        e1?.proyectImage == e2?.proyectImage &&
        e1?.proyectManager == e2?.proyectManager &&
        e1?.proyectStatus == e2?.proyectStatus &&
        e1?.createTime == e2?.createTime &&
        e1?.city == e2?.city &&
        e1?.location == e2?.location &&
        e1?.proyectProduction == e2?.proyectProduction &&
        e1?.proyectDescription == e2?.proyectDescription &&
        listEquality.equals(e1?.userCustomerId, e2?.userCustomerId);
  }

  @override
  int hash(ProyectsRecord? e) => const ListEquality().hash([
        e?.proyectId,
        e?.proyectName,
        e?.proyectCategory,
        e?.productionType,
        e?.productionValue,
        e?.productionTime,
        e?.proyectImage,
        e?.proyectManager,
        e?.proyectStatus,
        e?.createTime,
        e?.city,
        e?.location,
        e?.proyectProduction,
        e?.proyectDescription,
        e?.userCustomerId
      ]);

  @override
  bool isValidKey(Object? o) => o is ProyectsRecord;
}
