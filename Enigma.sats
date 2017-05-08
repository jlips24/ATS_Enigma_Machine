(*
// HX-2011-08:
// an ENIGMA implementation
// Authors: Hongwei Xi and Jake Lipson
*)
(* ****** ****** *)
(*
// HX-2014-04: ported to ATS2
*)
(* ****** ****** *)
(*
// HX-2017-04: Some adaptation...
*)
(* ****** ****** *)

#define
ATS_PACKNAME "Enigma"

(* ****** ****** *)

// the number 
#define N 26 // of letters

(* ****** ****** *)

#include "./../Enigma.sats"

(* ****** ****** *)
//
// HX-2017-04-26:
// Please feel free to add whatever you need
//

typedef letter = int

(* ****** ****** *)

abstype Enigma = ptr

(* ****** ****** *)

abstype rotor = ptr
typedef rotorseq = list0(rotor)

(* ****** ****** *)

abstype plugboard = ptr

(* ****** ****** *)

abstype reflector = ptr

(* ****** ****** *)
fun rotor_rotate(rotor): rotor
fun Enigma_rotate(Enigma): Enigma
fun R1_create(): rotor
fun R2_create(): rotor
fun R3_create(): rotor
fun REF_create(): reflector
fun PG_create(): plugboard
fun find(rotor, letter, int): letter

fun Enigma_create (): Enigma
fun Enigma_encode (x: Enigma, n: letter): letter

(* ****** ****** *)

fun rotor_encode (x: rotor, n: letter): letter
fun rotor_decode (x: rotor, n: letter): letter

(* ****** ****** *)

fun rotorseq_encode (xs: rotorseq, n: letter): letter
fun rotorseq_decode (xs: rotorseq, n: letter): letter

(* ****** ****** *)

fun reflector_encode (x: reflector, n: letter): letter
fun reflector_decode (x: reflector, n: letter): letter

(* ****** ****** *)

fun plugboard_encode (x: plugboard, n: letter): letter
fun plugboard_decode (x: plugboard, n: letter): letter


(* ****** ****** *)

(* end of [Enigma.sats] *)
