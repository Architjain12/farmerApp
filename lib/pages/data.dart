import 'dart:convert';

class Person {
  final String name;
  final String email;
  final String mobileNumber;
  final String profileImage;
  final String location;
  Person({
    required this.name,
    required this.email,
    required this.mobileNumber,
    required this.profileImage,
    required this.location,
  });

  Person copyWith({
    String? name,
    String? email,
    String? mobileNumber,
    String? profileImage,
    String? location,
  }) {
    return Person(
      name: name ?? this.name,
      email: email ?? this.email,
      mobileNumber: mobileNumber ?? this.mobileNumber,
      profileImage: profileImage ?? this.profileImage,
      location: location ?? this.location,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'email': email,
      'mobileNumber': mobileNumber,
      'profileImage': profileImage,
      'location': location,
    };
  }

  factory Person.fromMap(Map<String, dynamic> map) {
    return Person(
      name: map['name'],
      email: map['email'],
      mobileNumber: map['mobileNumber'],
      profileImage: map['profileImage'],
      location: map['location'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Person.fromJson(String source) => Person.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Person(name: $name, email: $email, mobileNumber: $mobileNumber, profileImage: $profileImage, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Person &&
      other.name == name &&
      other.email == email &&
      other.mobileNumber == mobileNumber &&
      other.profileImage == profileImage &&
      other.location == location;
  }

  @override
  int get hashCode {
    return name.hashCode ^
      email.hashCode ^
      mobileNumber.hashCode ^
      profileImage.hashCode ^
      location.hashCode;
  }
}
