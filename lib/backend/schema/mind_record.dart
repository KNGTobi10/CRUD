import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MindRecord extends FirestoreRecord {
  MindRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "mythought" field.
  String? _mythought;
  String get mythought => _mythought ?? '';
  bool hasMythought() => _mythought != null;

  // "user" field.
  String? _user;
  String get user => _user ?? '';
  bool hasUser() => _user != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  void _initializeFields() {
    _mythought = snapshotData['mythought'] as String?;
    _user = snapshotData['user'] as String?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('mind');

  static Stream<MindRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MindRecord.fromSnapshot(s));

  static Future<MindRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MindRecord.fromSnapshot(s));

  static MindRecord fromSnapshot(DocumentSnapshot snapshot) => MindRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MindRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MindRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MindRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MindRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMindRecordData({
  String? mythought,
  String? user,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'mythought': mythought,
      'user': user,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class MindRecordDocumentEquality implements Equality<MindRecord> {
  const MindRecordDocumentEquality();

  @override
  bool equals(MindRecord? e1, MindRecord? e2) {
    return e1?.mythought == e2?.mythought &&
        e1?.user == e2?.user &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(MindRecord? e) => const ListEquality().hash([
        e?.mythought,
        e?.user,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is MindRecord;
}
