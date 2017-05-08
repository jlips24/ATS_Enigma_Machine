(*
// HX-2014-04:
// an implementation of ENIGMA
// Authors: Hongwei Xi and Jake Lipson
*)

(* ****** ****** *)
//
#include
"share/atspre_staload.hats"
#include
"share/HATS/atspre_staload_libats_ML.hats"
//
(* ****** ****** *)

staload UN = $UNSAFE

(* ****** ****** *)

staload "./Enigma.sats"

(* ****** ****** *)
//
// HX: placeholder
//

assume plugboard = list0(int)
assume rotor = list0(int)
assume reflector = list0(int)
assume Enigma = $tup(plugboard, rotor, rotor, rotor, reflector, int)


implement
rotor_rotate(r) = x0 where
{
	val tmp = list0_cons(list0_head_exn(r), list0_nil())
	val x0tail = list0_tail_exn(r)
	val x0 = list0_append(x0tail, tmp)
}

implement
Enigma_rotate(M) =
if (M.5 + 1) % 676 = 0 then $tup(M.0, rotor_rotate(M.1), rotor_rotate(M.2), rotor_rotate(M.3), M.4, M.5 + 1)
else if (M.5 + 1) % 26 = 0 then $tup(M.0, rotor_rotate(M.1), rotor_rotate(M.2), M.3, M.4, M.5 + 1)
else $tup(M.0, rotor_rotate(M.1), M.2, M.3, M.4, M.5 + 1)

(* ****** ****** *)
//CREATING THE PLUGBOARD
(* ****** ****** *)
implement
PG_create() = x0 where
{
	val x25 = list0_cons(0, list0_nil())
	val x24 = list0_cons(1, x25)
	val x23 = list0_cons(2, x24)
	val x22 = list0_cons(3, x23)
	val x21 = list0_cons(4, x22)
	val x20 = list0_cons(5, x21)
	val x19 = list0_cons(6, x20)
	val x18 = list0_cons(7, x19)
	val x17 = list0_cons(8, x18)
	val x16 = list0_cons(9, x17)
	val x15 = list0_cons(10, x16)
	val x14 = list0_cons(11, x15)
	val x13 = list0_cons(12, x14)
	val x12 = list0_cons(13, x13)
	val x11 = list0_cons(14, x12)
	val x10 = list0_cons(15, x11)
	val x9 = list0_cons(16, x10)
	val x8 = list0_cons(17, x9)
	val x7 = list0_cons(18, x8)
	val x6 = list0_cons(19, x7)
	val x5 = list0_cons(20, x6)
	val x4 = list0_cons(21, x5)
	val x3 = list0_cons(22, x4)
	val x2 = list0_cons(23, x3)
	val x1 = list0_cons(24, x2)
	val x0 = list0_cons(25, x1)}
(* ****** ****** *)
//CREATING THE ROTORS
(* ****** ****** *)
implement
R1_create() = let
	val x25 = list0_cons(7, list0_nil())
	val x24 = list0_cons(22, x25)
	val x23 = list0_cons(20, x24)
	val x22 = list0_cons(6, x23)
	val x21 = list0_cons(21, x22)
	val x20 = list0_cons(13, x21)
	val x19 = list0_cons(25, x20)
	val x18 = list0_cons(12, x19)
	val x17 = list0_cons(24, x18)
	val x16 = list0_cons(14, x17)
	val x15 = list0_cons(1, x16)
	val x14 = list0_cons(19, x15)
	val x13 = list0_cons(10, x14)
	val x12 = list0_cons(11, x13)
	val x11 = list0_cons(18, x12)
	val x10 = list0_cons(23, x11)
	val x9 = list0_cons(2, x10)
	val x8 = list0_cons(16, x9)
	val x7 = list0_cons(5, x8)
	val x6 = list0_cons(17, x7)
	val x5 = list0_cons(0, x6)
	val x4 = list0_cons(9, x5)
	val x3 = list0_cons(4, x4)
	val x2 = list0_cons(15, x3)
	val x1 = list0_cons(3, x2)
	val x0 = list0_cons(8, x1)
in
	x0
end

implement
R2_create() = let	//CHANGE VALUES FOR THIS AND R3
	val x25 = list0_cons(6, list0_nil())
	val x24 = list0_cons(15, x25)
	val x23 = list0_cons(5, x24)
	val x22 = list0_cons(8, x23)
	val x21 = list0_cons(11, x22)
	val x20 = list0_cons(18, x21)
	val x19 = list0_cons(16, x20)
	val x18 = list0_cons(7, x19)
	val x17 = list0_cons(2, x18)
	val x16 = list0_cons(1, x17)
	val x15 = list0_cons(14, x16)
	val x14 = list0_cons(17, x15)
	val x13 = list0_cons(13, x14)
	val x12 = list0_cons(25, x13)
	val x11 = list0_cons(22, x12)
	val x10 = list0_cons(24, x11)
	val x9 = list0_cons(12, x10)
	val x8 = list0_cons(23, x9)
	val x7 = list0_cons(4, x8)
	val x6 = list0_cons(10, x7)
	val x5 = list0_cons(21, x6)
	val x4 = list0_cons(19, x5)
	val x3 = list0_cons(20, x4)
	val x2 = list0_cons(9, x3)
	val x1 = list0_cons(0, x2)
	val x0 = list0_cons(3, x1)
in
	x0
end

implement
R3_create() = let
	val x25 = list0_cons(17, list0_nil())
	val x24 = list0_cons(23, x25)
	val x23 = list0_cons(4, x24)
	val x22 = list0_cons(16, x23)
	val x21 = list0_cons(8, x22)
	val x20 = list0_cons(20, x21)
	val x19 = list0_cons(21, x20)
	val x18 = list0_cons(18, x19)
	val x17 = list0_cons(9, x18)
	val x16 = list0_cons(19, x17)
	val x15 = list0_cons(1, x16)
	val x14 = list0_cons(24, x15)
	val x13 = list0_cons(12, x14)
	val x12 = list0_cons(6, x13)
	val x11 = list0_cons(5, x12)
	val x10 = list0_cons(14, x11)
	val x9 = list0_cons(15, x10)
	val x8 = list0_cons(7, x9)
	val x7 = list0_cons(10, x8)
	val x6 = list0_cons(2, x7)
	val x5 = list0_cons(22, x6)
	val x4 = list0_cons(3, x5)
	val x3 = list0_cons(25, x4)
	val x2 = list0_cons(11, x3)
	val x1 = list0_cons(0, x2)
	val x0 = list0_cons(13, x1)
in
	x0
end
(* ****** ****** *)
//CREATING THE REFLECTOR
(* ****** ****** *)
implement
REF_create() = x0 where {
	val x25 = list0_cons(0, list0_nil())
	val x24 = list0_cons(9, x25)
	val x23 = list0_cons(8, x24)
	val x22 = list0_cons(6, x23)
	val x21 = list0_cons(21, x22)
	val x20 = list0_cons(20, x21)
	val x19 = list0_cons(10, x20)
	val x18 = list0_cons(5, x19)
	val x17 = list0_cons(17, x18)
	val x16 = list0_cons(11, x17)
	val x15 = list0_cons(1, x16)
	val x14 = list0_cons(14, x15)
	val x13 = list0_cons(3, x14)
	val x12 = list0_cons(4, x13)
	val x11 = list0_cons(16, x12)
	val x10 = list0_cons(19, x11)
	val x9 = list0_cons(24, x10)
	val x8 = list0_cons(23, x9)
	val x7 = list0_cons(2, x8)
	val x6 = list0_cons(22, x7)
	val x5 = list0_cons(18, x6)
	val x4 = list0_cons(12, x5)
	val x3 = list0_cons(13, x4)
	val x2 = list0_cons(7, x3)
	val x1 = list0_cons(15, x2)
	val x0 = list0_cons(25, x1)
}
(* ****** ****** *)
//FINDING AN ELEMENT IN A LIST
(* ****** ****** *)
implement
find(xs, n, cnt) = 
case- xs of
| list0_cons(x, xs1) => if x - n = 0 then cnt else find(xs1, n, cnt + 1)
(* ****** ****** *)
//CREATING THE ENIGMA
(* ****** ****** *)
implement
Enigma_create() = let
	val PG = PG_create()
	val R1 = R1_create()
	val R2 = R2_create()
	val R3 = R3_create()
	val REF = REF_create()
in
	$tup(PG, R1, R2, R3, REF, 0)
end
  (*$UN.cast{Enigma}(the_null_ptr)*)

//
(* ****** ****** *)
//
// HX: placeholder
//
implement
Enigma_encode(M, letter) = l where
{
	val firstPG = list0_get_at_exn(M.0, letter)
	val firstR1 = list0_get_at_exn(M.1, firstPG)
	val firstR2 = list0_get_at_exn(M.2, firstR1)
	val firstR3 = list0_get_at_exn(M.3, firstR2)
	val REF = list0_get_at_exn(M.4, firstR3)
	val secondR3 = find(M.3, REF, 0)
	val secondR2 = find(M.2, secondR3, 0)
	val secondR1 = find(M.1, secondR2, 0)
	val l = list0_get_at_exn(M.0, secondR1)
}
//
(* ****** ****** *)

(* end of [Enigma.dats] *)
