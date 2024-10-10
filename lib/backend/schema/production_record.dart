import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductionRecord extends FirestoreRecord {
  ProductionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userId" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "managerId" field.
  DocumentReference? _managerId;
  DocumentReference? get managerId => _managerId;
  bool hasManagerId() => _managerId != null;

  // "itemName" field.
  String? _itemName;
  String get itemName => _itemName ?? '';
  bool hasItemName() => _itemName != null;

  // "itemPrice" field.
  double? _itemPrice;
  double get itemPrice => _itemPrice ?? 0.0;
  bool hasItemPrice() => _itemPrice != null;

  // "createTime" field.
  DateTime? _createTime;
  DateTime? get createTime => _createTime;
  bool hasCreateTime() => _createTime != null;

  // "itemImg" field.
  String? _itemImg;
  String get itemImg => _itemImg ?? '';
  bool hasItemImg() => _itemImg != null;

  // "itemVideo" field.
  String? _itemVideo;
  String get itemVideo => _itemVideo ?? '';
  bool hasItemVideo() => _itemVideo != null;

  // "proyectId" field.
  DocumentReference? _proyectId;
  DocumentReference? get proyectId => _proyectId;
  bool hasProyectId() => _proyectId != null;

  // "productionInvoice" field.
  String? _productionInvoice;
  String get productionInvoice => _productionInvoice ?? '';
  bool hasProductionInvoice() => _productionInvoice != null;

  // "productionReference" field.
  String? _productionReference;
  String get productionReference => _productionReference ?? '';
  bool hasProductionReference() => _productionReference != null;

  // "pathImg" field.
  String? _pathImg;
  String get pathImg => _pathImg ?? '';
  bool hasPathImg() => _pathImg != null;

  // "pathInvoice" field.
  String? _pathInvoice;
  String get pathInvoice => _pathInvoice ?? '';
  bool hasPathInvoice() => _pathInvoice != null;

  // "pathVideo" field.
  String? _pathVideo;
  String get pathVideo => _pathVideo ?? '';
  bool hasPathVideo() => _pathVideo != null;

  // "proyectName" field.
  String? _proyectName;
  String get proyectName => _proyectName ?? '';
  bool hasProyectName() => _proyectName != null;

  // "managerName" field.
  String? _managerName;
  String get managerName => _managerName ?? '';
  bool hasManagerName() => _managerName != null;

  // "cantidad" field.
  double? _cantidad;
  double get cantidad => _cantidad ?? 0.0;
  bool hasCantidad() => _cantidad != null;

  // "medida" field.
  String? _medida;
  String get medida => _medida ?? '';
  bool hasMedida() => _medida != null;

  void _initializeFields() {
    _userId = snapshotData['userId'] as DocumentReference?;
    _managerId = snapshotData['managerId'] as DocumentReference?;
    _itemName = snapshotData['itemName'] as String?;
    _itemPrice = castToType<double>(snapshotData['itemPrice']);
    _createTime = snapshotData['createTime'] as DateTime?;
    _itemImg = snapshotData['itemImg'] as String?;
    _itemVideo = snapshotData['itemVideo'] as String?;
    _proyectId = snapshotData['proyectId'] as DocumentReference?;
    _productionInvoice = snapshotData['productionInvoice'] as String?;
    _productionReference = snapshotData['productionReference'] as String?;
    _pathImg = snapshotData['pathImg'] as String?;
    _pathInvoice = snapshotData['pathInvoice'] as String?;
    _pathVideo = snapshotData['pathVideo'] as String?;
    _proyectName = snapshotData['proyectName'] as String?;
    _managerName = snapshotData['managerName'] as String?;
    _cantidad = castToType<double>(snapshotData['cantidad']);
    _medida = snapshotData['medida'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('production');

  static Stream<ProductionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductionRecord.fromSnapshot(s));

  static Future<ProductionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductionRecord.fromSnapshot(s));

  static ProductionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductionRecordData({
  DocumentReference? userId,
  DocumentReference? managerId,
  String? itemName,
  double? itemPrice,
  DateTime? createTime,
  String? itemImg,
  String? itemVideo,
  DocumentReference? proyectId,
  String? productionInvoice,
  String? productionReference,
  String? pathImg,
  String? pathInvoice,
  String? pathVideo,
  String? proyectName,
  String? managerName,
  double? cantidad,
  String? medida,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userId': userId,
      'managerId': managerId,
      'itemName': itemName,
      'itemPrice': itemPrice,
      'createTime': createTime,
      'itemImg': itemImg,
      'itemVideo': itemVideo,
      'proyectId': proyectId,
      'productionInvoice': productionInvoice,
      'productionReference': productionReference,
      'pathImg': pathImg,
      'pathInvoice': pathInvoice,
      'pathVideo': pathVideo,
      'proyectName': proyectName,
      'managerName': managerName,
      'cantidad': cantidad,
      'medida': medida,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductionRecordDocumentEquality implements Equality<ProductionRecord> {
  const ProductionRecordDocumentEquality();

  @override
  bool equals(ProductionRecord? e1, ProductionRecord? e2) {
    return e1?.userId == e2?.userId &&
        e1?.managerId == e2?.managerId &&
        e1?.itemName == e2?.itemName &&
        e1?.itemPrice == e2?.itemPrice &&
        e1?.createTime == e2?.createTime &&
        e1?.itemImg == e2?.itemImg &&
        e1?.itemVideo == e2?.itemVideo &&
        e1?.proyectId == e2?.proyectId &&
        e1?.productionInvoice == e2?.productionInvoice &&
        e1?.productionReference == e2?.productionReference &&
        e1?.pathImg == e2?.pathImg &&
        e1?.pathInvoice == e2?.pathInvoice &&
        e1?.pathVideo == e2?.pathVideo &&
        e1?.proyectName == e2?.proyectName &&
        e1?.managerName == e2?.managerName &&
        e1?.cantidad == e2?.cantidad &&
        e1?.medida == e2?.medida;
  }

  @override
  int hash(ProductionRecord? e) => const ListEquality().hash([
        e?.userId,
        e?.managerId,
        e?.itemName,
        e?.itemPrice,
        e?.createTime,
        e?.itemImg,
        e?.itemVideo,
        e?.proyectId,
        e?.productionInvoice,
        e?.productionReference,
        e?.pathImg,
        e?.pathInvoice,
        e?.pathVideo,
        e?.proyectName,
        e?.managerName,
        e?.cantidad,
        e?.medida
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductionRecord;
}
