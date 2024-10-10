import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExpensesRecord extends FirestoreRecord {
  ExpensesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "userId" field.
  DocumentReference? _userId;
  DocumentReference? get userId => _userId;
  bool hasUserId() => _userId != null;

  // "itemName" field.
  String? _itemName;
  String get itemName => _itemName ?? '';
  bool hasItemName() => _itemName != null;

  // "itemImg" field.
  String? _itemImg;
  String get itemImg => _itemImg ?? '';
  bool hasItemImg() => _itemImg != null;

  // "itemPrice" field.
  double? _itemPrice;
  double get itemPrice => _itemPrice ?? 0.0;
  bool hasItemPrice() => _itemPrice != null;

  // "createTime" field.
  DateTime? _createTime;
  DateTime? get createTime => _createTime;
  bool hasCreateTime() => _createTime != null;

  // "managerId" field.
  DocumentReference? _managerId;
  DocumentReference? get managerId => _managerId;
  bool hasManagerId() => _managerId != null;

  // "proyectId" field.
  DocumentReference? _proyectId;
  DocumentReference? get proyectId => _proyectId;
  bool hasProyectId() => _proyectId != null;

  // "expensesInvoice" field.
  String? _expensesInvoice;
  String get expensesInvoice => _expensesInvoice ?? '';
  bool hasExpensesInvoice() => _expensesInvoice != null;

  // "espensesReference" field.
  String? _espensesReference;
  String get espensesReference => _espensesReference ?? '';
  bool hasEspensesReference() => _espensesReference != null;

  // "proyectName" field.
  String? _proyectName;
  String get proyectName => _proyectName ?? '';
  bool hasProyectName() => _proyectName != null;

  // "itemImgPath" field.
  String? _itemImgPath;
  String get itemImgPath => _itemImgPath ?? '';
  bool hasItemImgPath() => _itemImgPath != null;

  // "expensesInvoicePath" field.
  String? _expensesInvoicePath;
  String get expensesInvoicePath => _expensesInvoicePath ?? '';
  bool hasExpensesInvoicePath() => _expensesInvoicePath != null;

  // "managerName" field.
  String? _managerName;
  String get managerName => _managerName ?? '';
  bool hasManagerName() => _managerName != null;

  void _initializeFields() {
    _userId = snapshotData['userId'] as DocumentReference?;
    _itemName = snapshotData['itemName'] as String?;
    _itemImg = snapshotData['itemImg'] as String?;
    _itemPrice = castToType<double>(snapshotData['itemPrice']);
    _createTime = snapshotData['createTime'] as DateTime?;
    _managerId = snapshotData['managerId'] as DocumentReference?;
    _proyectId = snapshotData['proyectId'] as DocumentReference?;
    _expensesInvoice = snapshotData['expensesInvoice'] as String?;
    _espensesReference = snapshotData['espensesReference'] as String?;
    _proyectName = snapshotData['proyectName'] as String?;
    _itemImgPath = snapshotData['itemImgPath'] as String?;
    _expensesInvoicePath = snapshotData['expensesInvoicePath'] as String?;
    _managerName = snapshotData['managerName'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('expenses');

  static Stream<ExpensesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ExpensesRecord.fromSnapshot(s));

  static Future<ExpensesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ExpensesRecord.fromSnapshot(s));

  static ExpensesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ExpensesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ExpensesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ExpensesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ExpensesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ExpensesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createExpensesRecordData({
  DocumentReference? userId,
  String? itemName,
  String? itemImg,
  double? itemPrice,
  DateTime? createTime,
  DocumentReference? managerId,
  DocumentReference? proyectId,
  String? expensesInvoice,
  String? espensesReference,
  String? proyectName,
  String? itemImgPath,
  String? expensesInvoicePath,
  String? managerName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userId': userId,
      'itemName': itemName,
      'itemImg': itemImg,
      'itemPrice': itemPrice,
      'createTime': createTime,
      'managerId': managerId,
      'proyectId': proyectId,
      'expensesInvoice': expensesInvoice,
      'espensesReference': espensesReference,
      'proyectName': proyectName,
      'itemImgPath': itemImgPath,
      'expensesInvoicePath': expensesInvoicePath,
      'managerName': managerName,
    }.withoutNulls,
  );

  return firestoreData;
}

class ExpensesRecordDocumentEquality implements Equality<ExpensesRecord> {
  const ExpensesRecordDocumentEquality();

  @override
  bool equals(ExpensesRecord? e1, ExpensesRecord? e2) {
    return e1?.userId == e2?.userId &&
        e1?.itemName == e2?.itemName &&
        e1?.itemImg == e2?.itemImg &&
        e1?.itemPrice == e2?.itemPrice &&
        e1?.createTime == e2?.createTime &&
        e1?.managerId == e2?.managerId &&
        e1?.proyectId == e2?.proyectId &&
        e1?.expensesInvoice == e2?.expensesInvoice &&
        e1?.espensesReference == e2?.espensesReference &&
        e1?.proyectName == e2?.proyectName &&
        e1?.itemImgPath == e2?.itemImgPath &&
        e1?.expensesInvoicePath == e2?.expensesInvoicePath &&
        e1?.managerName == e2?.managerName;
  }

  @override
  int hash(ExpensesRecord? e) => const ListEquality().hash([
        e?.userId,
        e?.itemName,
        e?.itemImg,
        e?.itemPrice,
        e?.createTime,
        e?.managerId,
        e?.proyectId,
        e?.expensesInvoice,
        e?.espensesReference,
        e?.proyectName,
        e?.itemImgPath,
        e?.expensesInvoicePath,
        e?.managerName
      ]);

  @override
  bool isValidKey(Object? o) => o is ExpensesRecord;
}
