import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class ReturningCLass {
  final String name;
  final String surName;
  final int age;

  const ReturningCLass({
    required this.name,
    required this.surName,
    required this.age,
  });

  // ReturningCLass copyWith({
  //   String? name,
  //   String? surName,
  //   int? age,
  // }) {
  //   return ReturningCLass(
  //     name: name ?? this.name,
  //     surName: surName ?? this.surName,
  //     age: age ?? this.age,
  //   );
  // }

  // ! Learnt this from Equatable doc in github
  @override
  bool operator ==(Object other) {
    if (other.runtimeType != runtimeType) return false;
    if (identical(this, other)) return true;
    return other is ReturningCLass &&
        other.name == name &&
        other.surName == surName &&
        other.age == age;
  }

  @override
  int get hashCode {
    final values = <Object>[
      name,
      surName,
      age,
    ];
    return hashList(values);
  }
}

// !Either we can use Equatable

// class ReturningCLass extends Equatable {
//   final String name;
//   final String surName;
//   final int age;

//   const ReturningCLass({
//     required this.name,
//     required this.surName,
//     required this.age,
//   });

//   @override
//   List<Object?> get props => [name, surName, age];
// }
