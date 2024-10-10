import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AnimalesRecord extends FirestoreRecord {
  AnimalesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "identificardor" field.
  DocumentReference? _identificardor;
  DocumentReference? get identificardor => _identificardor;
  bool hasIdentificardor() => _identificardor != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "age" field.
  String? _age;
  String get age => _age ?? '';
  bool hasAge() => _age != null;

  // "statusProyect" field.
  StatusProyect? _statusProyect;
  StatusProyect? get statusProyect => _statusProyect;
  bool hasStatusProyect() => _statusProyect != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "locationMaps" field.
  LatLng? _locationMaps;
  LatLng? get locationMaps => _locationMaps;
  bool hasLocationMaps() => _locationMaps != null;

  // "productionItem" field.
  String? _productionItem;
  String get productionItem => _productionItem ?? '';
  bool hasProductionItem() => _productionItem != null;

  // "productionValue" field.
  double? _productionValue;
  double get productionValue => _productionValue ?? 0.0;
  bool hasProductionValue() => _productionValue != null;

  // "productionMeasure" field.
  String? _productionMeasure;
  String get productionMeasure => _productionMeasure ?? '';
  bool hasProductionMeasure() => _productionMeasure != null;

  // "proyectId" field.
  DocumentReference? _proyectId;
  DocumentReference? get proyectId => _proyectId;
  bool hasProyectId() => _proyectId != null;

  // "physicalId" field.
  String? _physicalId;
  String get physicalId => _physicalId ?? '';
  bool hasPhysicalId() => _physicalId != null;

  // "weight" field.
  String? _weight;
  String get weight => _weight ?? '';
  bool hasWeight() => _weight != null;

  // "imgPath" field.
  List<String>? _imgPath;
  List<String> get imgPath => _imgPath ?? const [];
  bool hasImgPath() => _imgPath != null;

  // "imgList" field.
  List<String>? _imgList;
  List<String> get imgList => _imgList ?? const [];
  bool hasImgList() => _imgList != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "birthdate" field.
  DateTime? _birthdate;
  DateTime? get birthdate => _birthdate;
  bool hasBirthdate() => _birthdate != null;

  // "brand" field.
  String? _brand;
  String get brand => _brand ?? '';
  bool hasBrand() => _brand != null;

  void _initializeFields() {
    _identificardor = snapshotData['identificardor'] as DocumentReference?;
    _name = snapshotData['name'] as String?;
    _age = snapshotData['age'] as String?;
    _statusProyect =
        deserializeEnum<StatusProyect>(snapshotData['statusProyect']);
    _location = snapshotData['location'] as String?;
    _locationMaps = snapshotData['locationMaps'] as LatLng?;
    _productionItem = snapshotData['productionItem'] as String?;
    _productionValue = castToType<double>(snapshotData['productionValue']);
    _productionMeasure = snapshotData['productionMeasure'] as String?;
    _proyectId = snapshotData['proyectId'] as DocumentReference?;
    _physicalId = snapshotData['physicalId'] as String?;
    _weight = snapshotData['weight'] as String?;
    _imgPath = getDataList(snapshotData['imgPath']);
    _imgList = getDataList(snapshotData['imgList']);
    _gender = snapshotData['gender'] as String?;
    _birthdate = snapshotData['birthdate'] as DateTime?;
    _brand = snapshotData['brand'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('animales');

  static Stream<AnimalesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AnimalesRecord.fromSnapshot(s));

  static Future<AnimalesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AnimalesRecord.fromSnapshot(s));

  static AnimalesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AnimalesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AnimalesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AnimalesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AnimalesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AnimalesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAnimalesRecordData({
  DocumentReference? identificardor,
  String? name,
  String? age,
  StatusProyect? statusProyect,
  String? location,
  LatLng? locationMaps,
  String? productionItem,
  double? productionValue,
  String? productionMeasure,
  DocumentReference? proyectId,
  String? physicalId,
  String? weight,
  String? gender,
  DateTime? birthdate,
  String? brand,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'identificardor': identificardor,
      'name': name,
      'age': age,
      'statusProyect': statusProyect,
      'location': location,
      'locationMaps': locationMaps,
      'productionItem': productionItem,
      'productionValue': productionValue,
      'productionMeasure': productionMeasure,
      'proyectId': proyectId,
      'physicalId': physicalId,
      'weight': weight,
      'gender': gender,
      'birthdate': birthdate,
      'brand': brand,
    }.withoutNulls,
  );

  return firestoreData;
}

class AnimalesRecordDocumentEquality implements Equality<AnimalesRecord> {
  const AnimalesRecordDocumentEquality();

  @override
  bool equals(AnimalesRecord? e1, AnimalesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.identificardor == e2?.identificardor &&
        e1?.name == e2?.name &&
        e1?.age == e2?.age &&
        e1?.statusProyect == e2?.statusProyect &&
        e1?.location == e2?.location &&
        e1?.locationMaps == e2?.locationMaps &&
        e1?.productionItem == e2?.productionItem &&
        e1?.productionValue == e2?.productionValue &&
        e1?.productionMeasure == e2?.productionMeasure &&
        e1?.proyectId == e2?.proyectId &&
        e1?.physicalId == e2?.physicalId &&
        e1?.weight == e2?.weight &&
        listEquality.equals(e1?.imgPath, e2?.imgPath) &&
        listEquality.equals(e1?.imgList, e2?.imgList) &&
        e1?.gender == e2?.gender &&
        e1?.birthdate == e2?.birthdate &&
        e1?.brand == e2?.brand;
  }

  @override
  int hash(AnimalesRecord? e) => const ListEquality().hash([
        e?.identificardor,
        e?.name,
        e?.age,
        e?.statusProyect,
        e?.location,
        e?.locationMaps,
        e?.productionItem,
        e?.productionValue,
        e?.productionMeasure,
        e?.proyectId,
        e?.physicalId,
        e?.weight,
        e?.imgPath,
        e?.imgList,
        e?.gender,
        e?.birthdate,
        e?.brand
      ]);

  @override
  bool isValidKey(Object? o) => o is AnimalesRecord;
}
