!-----------------------------------------------------------------------
! Interface file for mbpush1.f
!     module mbpush1_h
!     implicit none
!
      interface
         subroutine DISTR1H(part,vtx,vty,vtz,vdx,vdy,vdz,npx,idimp,nop, &
     &nx,ipbc)
         implicit none
         integer, intent(in) :: npx, idimp, nop, nx, ipbc
         real, intent(in) :: vtx, vty, vtz, vdx, vdy, vdz
!        real, dimension(idimp,nop), intent(inout) :: part
         real, dimension(*), intent(inout) :: part
         end subroutine
      end interface
!
      interface
         subroutine DBLKP1L(part,kpic,nppmx,idimp,nop,mx,mx1,irc)
         implicit none
         integer, intent(in) :: idimp, nop, mx, mx1
         integer, intent(inout) :: nppmx, irc
!        real, dimension(idimp,nop), intent(in) :: part
         real, dimension(*), intent(in) :: part
!        integer, dimension(mx1), intent(inout) :: kpic
         integer, dimension(*), intent(inout) :: kpic
         end subroutine
      end interface
!
      interface
         subroutine PPMOVIN1L(part,ppart,kpic,nppmx,idimp,nop,mx,mx1,irc&
     &)
         implicit none
         integer, intent(in) :: nppmx, idimp, nop, mx, mx1
         integer, intent(inout) :: irc
!        real, dimension(idimp,nop), intent(in) :: part
         real, dimension(*), intent(in) :: part
!        real, dimension(idimp,nppmx,mx1), intent(inout) :: ppart
         real, dimension(*), intent(inout) :: ppart
!        integer, dimension(mx1), intent(inout) :: kpic
         integer, dimension(*), intent(inout) :: kpic
         end subroutine
      end interface
!
      interface
         subroutine PPCHECK1L(ppart,kpic,idimp,nppmx,nx,mx,mx1,irc)
         implicit none
         integer, intent(in) :: idimp, nppmx, nx, mx, mx1
         integer, intent(inout) :: irc
!        real, dimension(idimp,nppmx,mx1), intent(in) :: ppart
         real, dimension(*), intent(in) :: ppart
!        integer, dimension(mx1), intent(in) :: kpic
         integer, dimension(*), intent(in) :: kpic
         end subroutine
      end interface
!
      interface
         subroutine GBPPUSH13L(ppart,fxyz,byz,kpic,omx,qbm,dt,dtc,ek,   &
     &idimp,nppmx,nx,mx,nxv,mx1,ipbc)
         implicit none
         integer, intent(in) :: idimp, nppmx, nx, mx, nxv, mx1, ipbc
         real, intent(in) :: omx, qbm, dt, dtc
         real, intent(inout) :: ek
!        real, dimension(idimp,nppmx,mx1), intent(inout) :: ppart
         real, dimension(*), intent(inout) :: ppart
!        real, dimension(3,nxv), intent(in) :: fxyz
         real, dimension(*), intent(in) :: fxyz
!        real, dimension(2,nxv), intent(in) :: byz
         real, dimension(*), intent(in) :: byz
!        integer, dimension(mx1), intent(in) :: kpic
         integer, dimension(*), intent(in) :: kpic
         end subroutine
      end interface
!
      interface
         subroutine GBPPUSHF13L(ppart,fxyz,byz,kpic,ncl,ihole,omx,qbm,dt&
     &,dtc,ek,idimp,nppmx,nx,mx,nxv,mx1,ntmax,irc)
         implicit none
         integer, intent(in) :: idimp, nppmx, nx, mx, nxv, mx1, ntmax
         integer, intent(inout) :: irc
         real, intent(in) :: omx, qbm, dt, dtc
         real, intent(inout) :: ek
!        real, dimension(idimp,nppmx,mx1), intent(inout) :: ppart
         real, dimension(*), intent(inout) :: ppart
!        real, dimension(3,nxv), intent(in) :: fxyz
         real, dimension(*), intent(in) :: fxyz
!        real, dimension(2,nxv), intent(in) :: byz
         real, dimension(*), intent(in) :: byz
!        integer, dimension(mx1), intent(in) :: kpic
         integer, dimension(*), intent(in) :: kpic
!        integer, dimension(2,mx1), intent(inout) :: ncl
         integer, dimension(*), intent(inout) :: ncl
!        integer, dimension(2,ntmax+1,mx1), intent(inout) :: ihole
         integer, dimension(*), intent(inout) :: ihole
         end subroutine
      end interface
!
      interface
         subroutine GRBPPUSH13L(ppart,fxyz,byz,kpic,omx,qbm,dt,dtc,ci,ek&
     &,idimp,nppmx,nx,mx,nxv,mx1,ipbc)
         implicit none
         integer, intent(in) :: idimp, nppmx, nx, mx, nxv, mx1, ipbc
         real, intent(in) :: omx, qbm, dt, dtc, ci
         real, intent(inout) :: ek
!        real, dimension(idimp,nppmx,mx1), intent(inout) :: ppart
         real, dimension(*), intent(inout) :: ppart
!        real, dimension(3,nxv), intent(in) :: fxyz
         real, dimension(*), intent(in) :: fxyz
!        real, dimension(2,nxv), intent(in) :: byz
         real, dimension(*), intent(in) :: byz
!        integer, dimension(mx1), intent(in) :: kpic
         integer, dimension(*), intent(in) :: kpic
         end subroutine
      end interface
!
      interface
         subroutine GRBPPUSHF13L(ppart,fxyz,byz,kpic,ncl,ihole,omx,qbm, &
     &dt,dtc,ci,ek,idimp,nppmx,nx,mx,nxv,mx1,ntmax,irc)
         implicit none
         integer, intent(in) :: idimp, nppmx, nx, mx, nxv, mx1, ntmax
         integer, intent(inout) :: irc
         real, intent(in) :: omx, qbm, dt, dtc, ci
         real, intent(inout) :: ek
!        real, dimension(idimp,nppmx,mx1), intent(inout) :: ppart
         real, dimension(*), intent(inout) :: ppart
!        real, dimension(3,nxv), intent(in) :: fxyz
         real, dimension(*), intent(in) :: fxyz
!        real, dimension(2,nxv), intent(in) :: byz
         real, dimension(*), intent(in) :: byz
!        integer, dimension(mx1), intent(in) :: kpic
         integer, dimension(*), intent(in) :: kpic
!        integer, dimension(2,mx1), intent(inout) :: ncl
         integer, dimension(*), intent(inout) :: ncl
!        integer, dimension(2,ntmax+1,mx1), intent(inout) :: ihole
         integer, dimension(*), intent(inout) :: ihole
         end subroutine
      end interface
!
      interface
         subroutine GJPPOST1L(ppart,cu,kpic,qm,dt,nppmx,idimp,nx,mx,nxv,&
     &mx1,ipbc)
         implicit none
         integer, intent(in) :: nppmx, idimp, nx, mx, nxv, mx1, ipbc
         real, intent(in) :: qm, dt
!        real, dimension(idimp,nppmx,mx1), intent(inout) :: ppart
         real, dimension(*), intent(inout) :: ppart
!        real, dimension(2,nxv), intent(inout) :: cu
         real, dimension(*), intent(inout) :: cu
!        integer, dimension(mx1), intent(in) :: kpic
         integer, dimension(*), intent(in) :: kpic
         end subroutine
      end interface
!
      interface
         subroutine GJPPOSTF1L(ppart,cu,kpic,ncl,ihole,qm,dt,nppmx,idimp&
     &,nx,mx,nxv,mx1,ntmax,irc)
         implicit none
         integer, intent(in) :: nppmx, idimp, nx, mx, nxv, mx1, ntmax
         integer, intent(inout) :: irc
         real, intent(in) :: qm, dt
!        real, dimension(idimp,nppmx,mx1), intent(inout) :: ppart
         real, dimension(*), intent(inout) :: ppart
!        real, dimension(2,nxv), intent(inout) :: cu
         real, dimension(*), intent(inout) :: cu
!        integer, dimension(mx1), intent(in) :: kpic
         integer, dimension(*), intent(in) :: kpic
!        integer, dimension(2,mx1), intent(inout) :: ncl
         integer, dimension(*), intent(inout) :: ncl
!        integer, dimension(2,ntmax+1,mx1), intent(inout) :: ihole
         integer, dimension(*), intent(inout) :: ihole
         end subroutine
      end interface
!
      interface
         subroutine GRJPPOST1L(ppart,cu,kpic,qm,dt,ci,nppmx,idimp,nx,mx,&
     &nxv,mx1,ipbc)
         implicit none
         integer, intent(in) :: nppmx, idimp, nx, mx, nxv, mx1, ipbc
         real, intent(in) :: qm, dt, ci
!        real, dimension(idimp,nppmx,mx1), intent(inout) :: ppart
         real, dimension(*), intent(inout) :: ppart
!        real, dimension(2,nxv), intent(inout) :: cu
         real, dimension(*), intent(inout) :: cu
!        integer, dimension(mx1), intent(in) :: kpic
         integer, dimension(*), intent(in) :: kpic
         end subroutine
      end interface
!
      interface
         subroutine GRJPPOSTF1L(ppart,cu,kpic,ncl,ihole,qm,dt,ci,nppmx, &
     &idimp,nx,mx,nxv,mx1,ntmax,irc)
         implicit none
         integer, intent(in) :: nppmx, idimp, nx, mx, nxv, mx1, ntmax
         integer, intent(inout) :: irc
         real, intent(in) :: qm, dt, ci
!        real, dimension(idimp,nppmx,mx1), intent(inout) :: ppart
         real, dimension(*), intent(inout) :: ppart
!        real, dimension(2,nxv), intent(inout) :: cu
         real, dimension(*), intent(inout) :: cu
!        integer, dimension(mx1), intent(in) :: kpic
         integer, dimension(*), intent(in) :: kpic
!        integer, dimension(2,mx1), intent(inout) :: ncl
         integer, dimension(*), intent(inout) :: ncl
!        integer, dimension(2,ntmax+1,mx1), intent(inout) :: ihole
         integer, dimension(*), intent(inout) :: ihole
         end subroutine
      end interface
!
      interface
         subroutine GPPOST1L(ppart,q,kpic,qm,nppmx,idimp,mx,nxv,mx1)
         implicit none
         integer, intent(in) :: nppmx, idimp, mx, nxv, mx1
         real, intent(in) :: qm
!        real, dimension(idimp,nppmx,mx1), intent(in) :: ppart
         real, dimension(*), intent(in) :: ppart
!        real, dimension(nxv), intent(inout) :: q
         real, dimension(*), intent(inout) :: q
!        integer, dimension(mx1), intent(in) :: kpic
         integer, dimension(*), intent(in) :: kpic
         end subroutine
      end interface
!
      interface
         subroutine PPORDER1L(ppart,ppbuff,kpic,ncl,ihole,idimp,nppmx,nx&
     &,mx,mx1,npbmx,ntmax,irc)
         implicit none
         integer, intent(in) :: idimp, nppmx, nx, mx, mx1, npbmx, ntmax
         integer, intent(inout) :: irc
!        real, dimension(idimp,nppmx,mx1), intent(inout) :: ppart
         real, dimension(*), intent(inout) :: ppart
!        real, dimension(idimp,npbmx,mx1), intent(inout) :: ppbuff
         real, dimension(*), intent(inout) :: ppbuff
!        integer, dimension(mx1), intent(inout) :: kpic
         integer, dimension(*), intent(inout) :: kpic
!        integer, dimension(2,mx1), intent(inout) :: ncl
         integer, dimension(*), intent(inout) :: ncl
!        integer, dimension(2,ntmax+1,mx1), intent(inout) :: ihole
         integer, dimension(*), intent(inout) :: ihole
         end subroutine
      end interface
!
      interface
         subroutine PPORDERF1L(ppart,ppbuff,kpic,ncl,ihole,idimp,nppmx, &
     &mx1,npbmx,ntmax,irc)
         implicit none
         integer, intent(in) :: idimp, nppmx, mx1, npbmx, ntmax
         integer, intent(inout) :: irc
!        real, dimension(idimp,nppmx,mx1), intent(inout) :: ppart
         real, dimension(*), intent(inout) :: ppart
!        real, dimension(idimp,npbmx,mx1), intent(inout) :: ppbuff
         real, dimension(*), intent(inout) :: ppbuff
!        integer, dimension(mx1), intent(inout) :: kpic
         integer, dimension(*), intent(inout) :: kpic
!        integer, dimension(2,mx1), intent(inout) :: ncl
         integer, dimension(*), intent(inout) :: ncl
!        integer, dimension(2,ntmax+1,mx1), intent(in) :: ihole
         integer, dimension(*), intent(in) :: ihole
         end subroutine
      end interface
!
      interface
         subroutine CGUARD1L(byz,nx,nxe)
         implicit none
         integer, intent(in) :: nx, nxe
!        real, dimension(2,nxe), intent(inout) :: byz
         real, dimension(*), intent(inout) :: byz
         end subroutine
      end interface
!
      interface
         subroutine BGUARD1L(fxyz,nx,nxe)
         implicit none
         integer, intent(in) :: nx, nxe
!        real, dimension(3,nxe), intent(inout) :: fxyz
         real, dimension(*), intent(inout) :: fxyz
         end subroutine
      end interface
!
      interface
         subroutine ACGUARD1L(cu,nx,nxe)
         implicit none
         integer, intent(in) :: nx, nxe
!        real, dimension(2,nxe), intent(inout) :: cu
         real, dimension(*), intent(inout) :: cu
         end subroutine
      end interface
!
      interface
         subroutine AGUARD1L(q,nx,nxe)
         implicit none
         integer, intent(in) :: nx, nxe
!        real, dimension(nxe), intent(inout) :: q
         real, dimension(*), intent(inout) :: q
         end subroutine
      end interface
!
      interface
         subroutine POIS1(q,fx,isign,ffc,ax,affp,we,nx)
         implicit none
         integer, intent(in) :: isign, nx
         real, intent(in) :: ax, affp
         real, intent(inout) :: we
!        real, dimension(nx), intent(in) :: q
         real, dimension(*), intent(in) :: q
!        real, dimension(nx), intent(inout) :: fx
         real, dimension(*), intent(inout) :: fx
!        complex, dimension(nx/2), intent(inout) :: ffc
         complex, dimension(*), intent(inout) :: ffc
         end subroutine
      end interface
!
      interface
         subroutine IBPOIS13(cu,byz,ffc,ci,wm,nx,nxvh,nxhd)
         implicit none
         integer, intent(in) :: nx, nxvh, nxhd
         real, intent(in) :: ci
         real, intent(inout) :: wm
!        real, dimension(2,2*nxvh), intent(in) :: cu
         real, dimension(*), intent(in) :: cu
!        complex, dimension(2,nxvh), intent(inout) :: byz
         complex, dimension(*), intent(inout) :: byz
!        complex, dimension(nxhd), intent(in) :: ffc
         complex, dimension(*), intent(in) :: ffc
         end subroutine
      end interface
!
      interface
         subroutine MAXWEL1(eyz,byz,cu,ffc,ci,dt,wf,wm,nx,nxvh,nxhd)
         implicit none
         integer, intent(in) :: nx, nxvh, nxhd
         real, intent(in) :: ci, dt
         real, intent(inout) :: wf, wm
!        complex, dimension(2,nxvh), intent(inout) :: eyz, byz
         complex, dimension(*), intent(inout) :: eyz, byz
!        real, dimension(2,2*nxvh), intent(in) :: cu
         real, dimension(*), intent(in) :: cu
!        complex, dimension(nxhd), intent(in) :: ffc
         complex, dimension(*), intent(in) :: ffc
         end subroutine
      end interface
!
      interface
         subroutine EMFIELD1(fxyz,fx,eyz,ffc,nx,nxvh,nxhd)
         implicit none
         integer, intent(in) :: nx, nxvh, nxhd
!        real, dimension(3,2*nxvh), intent(inout) :: fxyz
         real, dimension(*), intent(inout) :: fxyz
!        real, dimension(2*nxvh), intent(in) :: fx
         real, dimension(*), intent(in) :: fx
!        complex, dimension(3,nxvh), intent(in) :: eyz
         complex, dimension(*), intent(in) :: eyz
!        complex, dimension(nxhd), intent(in) :: ffc
         complex, dimension(*), intent(in) :: ffc
         end subroutine
      end interface
!
      interface
         subroutine BMFIELD1(fyz,eyz,ffc,nx,nxvh,nxhd)
         implicit none
         integer, intent(in) :: nx, nxvh, nxhd
!        real, dimension(2,2*nxvh), intent(inout) :: fyz
         real, dimension(*), intent(inout) :: fyz
!        complex, dimension(2,nxvh), intent(in) :: eyz
         complex, dimension(*), intent(in) :: eyz
!        complex, dimension(nxhd), intent(in) :: ffc
         complex, dimension(*), intent(in) :: ffc
         end subroutine
      end interface
!
      interface
         subroutine WFFT1RINIT(mixup,sct,indx,nxhd)
         implicit none
         integer, intent(in) :: indx, nxhd
!        integer, dimension(nxhd), intent(inout) :: mixup
         integer, dimension(*), intent(inout) :: mixup
!        complex, dimension(nxhd), intent(inout) :: sct
         complex, dimension(*), intent(inout) :: sct
         end subroutine
      end interface
!
      interface
         subroutine FFT1RXX(f,t,isign,mixup,sct,indx,nxd,nxhd)
         implicit none
         integer, intent(in) :: isign, indx, nxd, nxhd
!        real, dimension(nxd), intent(inout) :: f, t
         real, dimension(*), intent(inout) :: f, t
!        integer, dimension(nxhd), intent(in) :: mixup
         integer, dimension(*), intent(in) :: mixup
!        complex, dimension(nxhd), intent(in) :: sct
         complex, dimension(*), intent(in) :: sct
         end subroutine
      end interface
!
      interface
         subroutine FFT1R2X(f,t,isign,mixup,sct,indx,nxd,nxhd)
         implicit none
         integer, intent(in) :: isign, indx, nxd, nxhd
!        real, dimension(2,nxd), intent(inout) :: f, t
         real, dimension(*), intent(inout) :: f, t
!        integer, dimension(nxhd), intent(in) :: mixup
         integer, dimension(*), intent(in) :: mixup
!        complex, dimension(nxhd), intent(in) :: sct
         complex, dimension(*), intent(in) :: sct
         end subroutine
      end interface
!
      interface
         subroutine FFT1R3X(f,t,isign,mixup,sct,indx,nxd,nxhd)
         implicit none
         integer , intent(in):: isign, indx, nxd, nxhd
!        real, dimension(3,nxd), intent(inout) :: f, t
         real, dimension(*), intent(inout) :: f, t
!        integer, dimension(nxhd), intent(in) :: mixup
         integer, dimension(*), intent(in) :: mixup
!        complex, dimension(nxhd), intent(in) :: sct
         complex, dimension(*), intent(in) :: sct
         end subroutine
      end interface
!
      interface
         function ranorm()
         implicit none
         double precision :: ranorm
         end function
      end interface
!
!     end module
      end
