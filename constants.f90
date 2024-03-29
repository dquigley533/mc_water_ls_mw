! -*- mode: F90 ; mode: font-lock ; column-number-mode: true ; vc-back-end: Git -*-
!=============================================================================!
!                            C O N S T A N T S                                !
!=============================================================================!
! Various compile-time constants used in other modules.                       !
!=============================================================================!
module constants

  implicit none

  !-------------------------------------------------------------------------!
  ! Type parameters                                                         !
  !-------------------------------------------------------------------------!

  integer,parameter   :: int32 = selected_int_kind(9)
  integer,parameter   :: dp = selected_real_kind(p=15,r=300)

  !-------------------------------------------------------------------------!
  ! Fundamental constants                                                   !
  !-------------------------------------------------------------------------!

  ! pi
  real(kind=dp),parameter :: Pi = 3.141592653589793238462643383279502884197_dp
  real(kind=dp),parameter :: invPi = 1.0_dp/3.141592653589793238462643383279502884197_dp

  ! complex
  complex(kind=dp),parameter :: cmplx_0 = (0.0_dp,0.0_dp)
  complex(kind=dp),parameter :: cmplx_1 = (1.0_dp,0.0_dp)
  complex(kind=dp),parameter :: cmplx_i = (0.0_dp,1.0_dp)

  !-------------------------------------------------------------------------!
  ! Unit conversions                                                        !
  !-------------------------------------------------------------------------!

  ! 1/(4pi epsilon_0) in atomic units
  real(kind=dp),parameter :: inv4peps = 1.0_dp

  ! kB in atomic units of Hartree/Kelvin
  real(kind=dp),parameter :: kB = 1.0_dp/3.1577465e5_dp

  ! length conversions
  real(kind=dp),parameter :: bohr_to_ang = 0.5291772108_dp
  real(kind=dp),parameter :: ang_to_bohr = 1.0_dp/0.5291772108_dp 

  ! energy conversions
  real(kind=dp),parameter :: hart_to_dlpol = 2.625501E+05_dp
  real(kind=dp),parameter :: hart_to_eV    = 27.211396181_dp
  real(kind=dp),parameter :: hart_to_SI    = 4.3597482E-18_dp
  real(kind=dp),parameter :: hart_to_kJpm  = 2625.49962_dp

  ! mass of a water molecule in atomic units
  real(kind=dp),parameter :: water_mass = 18.0158_dp

  ! mass converstions
  real(kind=dp),parameter :: aum_to_SI = 1.66053886E-27_dp

  ! pressure conversions
  real(kind=dp),parameter :: aup_to_SI  = 2.942103918E13_dp
  real(kind=dp),parameter :: aup_to_atm = 2.90363081E8_dp
  real(kind=dp),parameter :: aup_to_MPa = 2.942103918E7_dp
  
  ! density conversions
  real(kind=dp),parameter :: aud_to_kgm3 = 1.120587168E4_dp
  real(kind=dp),parameter :: kgm3_to_aud = 1.0_dp/1.120587168E4_dp

end module Constants
