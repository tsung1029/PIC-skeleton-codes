!-----------------------------------------------------------------------
! Interface file for pdpush3.f
!     module pdpush3_h
!     implicit none
!
      interface
         subroutine PDICOMP32L(edges,nyzp,noff,nypmx,nzpmx,nypmn,nzpmn, &
     &ny,nz,kstrt,nvpy,nvpz,idps,idds)
         implicit none
         integer, intent(in) :: ny, nz, kstrt, nvpy, nvpz, idps, idds
         integer, intent(inout) :: nypmx, nzpmx, nypmn, nzpmn
!        integer, dimension(idds), intent(inout) :: nyzp, noff
         integer, dimension(*), intent(inout) :: nyzp, noff
!        real, dimension(idps), intent(inout) :: edges
         real, dimension(*), intent(inout) :: edges
         end subroutine
      end interface
!
      interface
         subroutine FCOMP32(nvp,nx,ny,nz,nvpy,nvpz,ierr)
         implicit none
         integer, intent(in) :: nvp, nx, ny, nz
         integer, intent(inout) :: nvpy, nvpz, ierr
         end subroutine
      end interface
!
      interface
         subroutine PDISTR32(part,edges,npp,nps,vtx,vty,vtz,vdx,vdy,vdz,&
     &npx,npy,npz,nx,ny,nz,idimp,npmax,idps,ipbc,ierr)
         implicit none
         integer, intent(in) :: nps, npx, npy, npz, nx, ny, nz, idimp
         integer, intent(in) :: npmax, idps, ipbc
         integer, intent(inout) :: npp, ierr
         real, intent(in) :: vtx, vty, vtz, vdx, vdy, vdz
!        real, dimension(idimp,npmax), intent(inout) :: part
         real, dimension(*), intent(inout) :: part
!        real, dimension(idps), intent(in) :: edges
         real, dimension(*), intent(in) :: edges
         end subroutine
      end interface
!
      interface
         subroutine PPGBPUSH32L(part,fxyz,bxyz,edges,npp,noff,ihole,qbm,&
     &dt,dtc,ek,nx,ny,nz,idimp,npmax,nxv,nypmx,nzpmx,idps,idds,ntmax,   &
     &ipbc)
         implicit none
         integer, intent(in) :: npp, nx, ny, nz, idimp, npmax, nxv
         integer, intent(in) :: nypmx, nzpmx, idps, idds, ntmax, ipbc
         real, intent(in) :: qbm, dt, dtc
         real, intent(inout) :: ek
!        real, dimension(idimp,npmax), intent(inout) :: part
         real, dimension(*), intent(inout) :: part
!        real, dimension(3,nxv,nypmx,nzpmx), intent(in) :: fxyz, bxyz
         real, dimension(*), intent(in) :: fxyz, bxyz
!        real, dimension(idps), intent(in) :: edges
         real, dimension(*), intent(in) :: edges
!        integer, dimension(idds), intent(in) :: noff
         integer, dimension(*), intent(in) :: noff
!        integer, dimension(ntmax+1,2), intent(inout) :: ihole
         integer, dimension(*), intent(inout) :: ihole
         end subroutine
      end interface
!
      interface
         subroutine PPGPOST32L(part,q,npp,noff,qm,idimp,npmax,nxv,nypmx,&
     &nzpmx,idds)
         implicit none
         integer, intent(in) :: npp, idimp, npmax, nxv, nypmx, nzpmx
         integer, intent(in) :: idds
         real, intent(in) :: qm
!        real, dimension(idimp,npmax), intent(in) :: part
         real, dimension(*), intent(in) :: part
!        real, dimension(nxv,nypmx,nzpmx), intent(inout) :: q
         real, dimension(*), intent(inout) :: q
!        integer, dimension(idds), intent(in) :: noff
         integer, dimension(*), intent(in) :: noff
         end subroutine
      end interface
!
      interface
         subroutine PPGJPOST32L(part,cu,edges,npp,noff,ihole,qm,dt,nx,ny&
     &,nz,idimp,npmax,nxv,nypmx,nzpmx,idps,idds,ntmax,ipbc)
         implicit none
         integer, intent(in) :: npp, nx, ny, nz, idimp, npmax, nxv
         integer, intent(in) :: nypmx, nzpmx, idps, idds, ntmax, ipbc
         real, intent(in) :: qm, dt
!        real, dimension(idimp,npmax), intent(inout) :: part
         real, dimension(*), intent(inout) :: part
!        real, dimension(3,nxv,nypmx,nzpmx), intent(inout) :: cu
         real, dimension(*), intent(inout) :: cu
!        real, dimension(idps), intent(in) :: edges
         real, dimension(*), intent(in) :: edges
!        integer, dimension(idds), intent(in) :: noff
         integer, dimension(*), intent(in) :: noff
!        integer, dimension(ntmax+1,2), intent(inout) :: ihole
         integer, dimension(*), intent(inout) :: ihole
         end subroutine
      end interface
!
      interface
         subroutine PPGMJPOST32L(part,amu,npp,noff,qm,idimp,npmax,nxv,  &
     &nypmx,nzpmx,idds)
         implicit none
         integer, intent(in) :: npp, idimp, npmax, nxv, nypmx, nzpmx
         integer, intent(in) :: idds
         real, intent(in) :: qm
!        real, dimension(idimp,npmax), intent(in) :: part
         real, dimension(*), intent(in) :: part
!        real, dimension(6,nxv,nypmx,nzpmx), intent(inout) :: amu
         real, dimension(*), intent(inout) :: amu
!        integer, dimension(idds), intent(in) :: noff
         integer, dimension(*), intent(in) :: noff
         end subroutine
      end interface
!
      interface
         subroutine PPGDJPOST32L(part,fxyz,bxyz,npp,noff,dcu,amu,qm,qbm,&
     &dt,idimp,npmax,nxv,nypmx,nzpmx,idds)
         implicit none
         integer, intent(in) :: npp, idimp, npmax, nxv, nypmx, nzpmx
         integer, intent(in) :: idds
         real, intent(in) :: qm, qbm, dt
!        real, dimension(idimp,npmax), intent(in) :: part
         real, dimension(*), intent(in) :: part
!        real, dimension(3,nxv,nypmx,nzpmx), intent(in) :: fxyz, bxyz
         real, dimension(*), intent(in) :: fxyz, bxyz
!        real, dimension(3,nxv,nypmx,nzpmx), intent(inout) :: dcu
         real, dimension(*), intent(inout) :: dcu
!        real, dimension(6,nxv,nypmx,nzpmx), intent(inout) :: amu
         real, dimension(*), intent(inout) :: amu
!        integer, dimension(idds), intent(in) :: noff
         integer, dimension(*), intent(in) :: noff
         end subroutine
      end interface
!
      interface
         subroutine PPGDCJPOST32L(part,fxyz,bxyz,npp,noff,cu,dcu,amu,qm,&
     &qbm,dt,idimp,npmax,nxv,nypmx,nzpmx,idds)
         implicit none
         integer, intent(in) :: npp, idimp, npmax, nxv, nypmx, nzpmx
         integer, intent(in) :: idds
         real, intent(in) :: qm, qbm, dt
!        real, dimension(idimp,npmax), intent(in) :: part
         real, dimension(*), intent(in) :: part
!        real, dimension(3,nxv,nypmx,nzpmx), intent(in) :: fxyz, bxyz
         real, dimension(*), intent(in) :: fxyz, bxyz
!        real, dimension(3,nxv,nypmx,nzpmx), intent(inout) :: cu, dcu
         real, dimension(*), intent(inout) :: cu, dcu
!        real, dimension(6,nxv,nypmx,nzpmx), intent(inout) :: amu
         real, dimension(*), intent(inout) :: amu
!        integer, dimension(idds), intent(in) :: noff
         integer, dimension(*), intent(in) :: noff
         end subroutine
      end interface
!
      interface
         subroutine PPDSORTP32YZL(parta,partb,npic,npp,noff,nyzp,idimp, &
     &npmax,nyzpm1,idds)
         implicit none
         integer, intent(in) :: npp, idimp, npmax, nyzpm1, idds
!        real, dimension(idimp,npmax), intent(in) :: parta
         real, dimension(*), intent(in) :: parta
!        real, dimension(idimp,npmax), intent(inout) :: partb
         real, dimension(*), intent(inout) :: partb
!        integer, dimension(nyzpm1), intent(inout) :: npic
         integer, dimension(*), intent(inout) :: npic
!        integer, dimension(idds), intent(in) :: noff, nyzp
         integer, dimension(*), intent(in) :: noff, nyzp
         end subroutine
      end interface
!
      interface
         subroutine PPCGUARD32XL(fxyz,nyzp,nx,ndim,nxe,nypmx,nzpmx,idds)
         implicit none
         integer, intent(in) :: nx, ndim, nxe, nypmx, nzpmx, idds
!        real, dimension(ndim,nxe,nypmx,nzpmx), intent(inout) :: fxyz
         real, dimension(*), intent(inout) :: fxyz
!        integer, dimension(idds), intent(in) :: nyzp
         integer, dimension(*), intent(in) :: nyzp
         end subroutine
      end interface
!
      interface
         subroutine PPAGUARD32XL(q,nyzp,nx,nxe,nypmx,nzpmx,idds)
         implicit none
         integer, intent(in) :: nx, nxe, nypmx, nzpmx, idds
!        real, dimension(nxe,nypmx,nzpmx), intent(inout) :: q
         real, dimension(*), intent(inout) :: q
!        integer, dimension(idds), intent(in) :: nyzp
         integer, dimension(*), intent(in) :: nyzp
         end subroutine
      end interface
!
      interface
         subroutine PPACGUARD32XL(cu,nyzp,nx,ndim,nxe,nypmx,nzpmx,idds)
         implicit none
         integer, intent(in) :: nx, ndim, nxe, nypmx, nzpmx, idds
!        real, dimension(ndim,nxe,nypmx,nzpmx), intent(inout) :: cu
         real, dimension(*), intent(inout) :: cu
!        integer, dimension(idds), intent(in) :: nyzp
         integer, dimension(*), intent(in) :: nyzp
         end subroutine
      end interface
!
      interface
         subroutine PPASCFGUARD32L(dcu,cus,nyzp,q2m0,nx,nxe,nypmx,nzpmx,&
     &idds)
         implicit none
         integer, intent(in) :: nx, nxe, nypmx, nzpmx, idds
         real, intent(in) :: q2m0
!        real, dimension(3,nxe,nypmx,nzpmx), intent(inout) :: dcu
         real, dimension(*), intent(inout) :: dcu
!        real, dimension(3,nxe,nypmx,nzpmx), intent(in) :: cus
         real, dimension(*), intent(in) :: cus
!        integer, dimension(idds), intent(in) :: nyzp
         integer, dimension(*), intent(in) :: nyzp
         end subroutine
      end interface
!
      interface
         subroutine PPFWPMINMX32(qe,nyzp,qbme,wpmax,wpmin,nx,nxe,nypmx, &
     &nzpmx,idds)
         implicit none
         integer, intent(in) :: nx, nxe, nypmx, nzpmx, idds
         real, intent(in) :: qbme
         real, intent(inout) :: wpmax, wpmin
!        real, dimension(nxe,nypmx,nzpmx), intent(in) :: qe
         real, dimension(*), intent(in) :: qe
!        integer, dimension(idds), intent(in) :: nyzp
         integer, dimension(*), intent(in) :: nyzp
         end subroutine
      end interface
!
      interface
         subroutine PPOIS332(q,fxyz,isign,ffc,ax,ay,az,affp,we,nx,ny,nz,&
     &kstrt,nvpy,nvpz,nzv,kxyp,kyzp,nzhd)
         implicit none
         integer, intent(in) :: isign, nx, ny, nz, kstrt, nvpy, nvpz
         integer, intent(in) :: nzv, kxyp, kyzp, nzhd
         real, intent(in) :: ax, ay, az, affp
         real, intent(inout) :: we
!        complex, dimension(nzv,kxyp,kyzp), intent(in) :: q
         complex, dimension(*), intent(in) :: q
!        complex, dimension(3,nzv,kxyp,kyzp), intent(inout) :: fxyz
         complex, dimension(*), intent(inout) :: fxyz
!        complex, dimension(nzhd,kxyp,kyzp), intent(inout) :: ffc
         complex, dimension(*), intent(inout) :: ffc
         end subroutine
      end interface
!
      interface
         subroutine PPCUPERP32(cu,nx,ny,nz,kstrt,nvpy,nvpz,nzv,kxyp,kyzp&
     &)
         implicit none
         integer, intent(in) :: nx, ny, nz, kstrt, nvpy, nvpz
         integer, intent(in) :: nzv, kxyp, kyzp
!        complex, dimension(3,nzv,kxyp,kyzp), intent(inout) :: cu
         complex, dimension(*), intent(inout) :: cu
         end subroutine
      end interface
!
      interface
         subroutine PPBBPOISP332(cu,bxyz,ffc,ci,wm,nx,ny,nz,kstrt,nvpy, &
     &nvpz,nzv,kxyp,kyzp,nzhd)
         implicit none
         integer, intent(in) :: nx, ny, nz, kstrt, nvpy, nvpz
         integer, intent(in) :: nzv, kxyp, kyzp, nzhd
         real, intent(in) :: ci
         real, intent(inout) :: wm
!        complex, dimension(3,nzv,kxyp,kyzp), intent(in) :: cu
         complex, dimension(*), intent(in) :: cu
!        complex, dimension(3,nzv,kxyp,kyzp), intent(inout) :: bxyz
         complex, dimension(*), intent(inout) :: bxyz
!        complex, dimension(nzhd,kxyp,kyzp), intent(in) :: ffc
         complex, dimension(*), intent(in) :: ffc
         end subroutine
      end interface
!
      interface
         subroutine PPBADDEXT32(bxyz,nyzp,omx,omy,omz,nx,nxe,nypmx,nzpmx&
     &,  idds)
         implicit none
         integer, intent(in) :: nx, nxe, nypmx, nzpmx, idds
         real, intent(in) :: omx, omy, omz
!        real, dimension(3,nxe,nypmx,nzpmx), intent(inout) :: bxyz
         real, dimension(*), intent(inout) :: bxyz
!        integer, dimension(idds), intent(in) :: nyzp
         integer, dimension(*), intent(in) :: nyzp
         end subroutine
      end interface
!
      interface
         subroutine PPDCUPERP32(dcu,amu,nx,ny,nz,kstrt,nvpy,nvpz,nzv,   &
     &kxyp,kyzp)
         implicit none
         integer, intent(in) :: nx, ny, nz, kstrt, nvpy, nvpz
         integer, intent(in) :: nzv, kxyp, kyzp
!        complex, dimension(3,nzv,kxyp,kyzp), intent(inout) :: dcu
         complex, dimension(*), intent(inout) :: dcu
!        complex, dimension(6,nzv,kxyp,kyzp), intent(in) :: amu
         complex, dimension(*), intent(in) :: amu
         end subroutine
      end interface
!
      interface
         subroutine PPADCUPERP32(dcu,amu,nx,ny,nz,kstrt,nvpy,nvpz,nzv,  &
     &kxyp,kyzp)
         implicit none
         integer, intent(in) :: nx, ny, nz, kstrt, nvpy, nvpz
         integer, intent(in) :: nzv, kxyp, kyzp
!        complex, dimension(3,nzv,kxyp,kyzp), intent(inout) :: dcu
         complex, dimension(*), intent(inout) :: dcu
!        complex, dimension(6,nzv,kxyp,kyzp), intent(in) :: amu
         complex, dimension(*), intent(in) :: amu
         end subroutine
      end interface
!
      interface
         subroutine PPEPOISP332(dcu,exyz,isign,ffe,ax,ay,az,affp,wp0,ci,&
     &wf,nx,ny,nz,kstrt,nvpy,nvpz,nzv,kxyp,kyzp,nzhd)
         implicit none
         integer, intent(in) :: isign, nx, ny, nz, kstrt, nvpy, nvpz
         integer, intent(in) :: nzv, kxyp, kyzp, nzhd
         real, intent(in) :: ax, ay, az, affp, wp0, ci
         real, intent(inout) :: wf
!        complex, dimension(3,nzv,kxyp,kyzp), intent(in) :: dcu
         complex, dimension(*), intent(in) :: dcu
!        complex, dimension(3,nzv,kxyp,kyzp), intent(inout) :: exyz
         complex, dimension(*), intent(inout) :: exyz
!        complex, dimension(nzhd,kxyp,kyzp), intent(inout) :: ffe
         complex, dimension(*), intent(inout) :: ffe
         end subroutine
      end interface
!
      interface
         subroutine PPADDVRFIELD32(a,b,c,ndim,nxe,nypmx,nzpmx)
         implicit none
         integer, intent(in) :: ndim, nxe, nypmx, nzpmx
!        real, dimension(ndim,nxe,nypmx,nzpmx), intent(inout) :: a
         real, dimension(*), intent(inout) :: a
!        real, dimension(ndim,nxe,nypmx,nzpmx), intent(in) :: b, c
         real, dimension(*), intent(in) :: b, c
         end subroutine
      end interface
!
      interface
         subroutine WPFFT32RINIT(mixup,sct,indx,indy,indz,nxhyzd,nxyzhd)
         implicit none
         integer, intent(in) :: indx, indy, indz, nxhyzd, nxyzhd
!        integer, dimension(nxhyzd), intent(inout) :: mixup
         integer, dimension(*), intent(inout) :: mixup
!        complex, dimension(nxyzhd), intent(inout) :: sct
         complex, dimension(*), intent(inout) :: sct
         end subroutine
      end interface
!
      interface
         subroutine WPPFFT32R(f,g,h,bs,br,isign,ntpose,mixup,sct,ttp,   &
     &indx,indy,indz,kstrt,nvpy,nvpz,nxvh,nyv,nzv,kxyp,kyp,kyzp,kzp,    &
     &kxypd,kypd,kyzpd,kzpd,kzyp,nxhyzd,nxyzhd)
         implicit none
         integer, intent(in) :: isign, ntpose, indx, indy, indz, kstrt
         integer, intent(in) :: nvpy, nvpz, nxvh, nyv, nzv, kxyp, kyp
         integer, intent(in) :: kyzp, kzp, kxypd, kypd, kyzpd, kzpd
         integer, intent(in) :: kzyp, nxhyzd, nxyzhd
         real, intent(inout) :: ttp
!        real, dimension(2*nxvh,kypd,kzpd), intent(inout) :: f
         real, dimension(*), intent(inout) :: f
!        complex, dimension(nyv,kxypd,kzpd), intent(inout) :: g
         complex, dimension(*), intent(inout) :: g
!        complex, dimension(nzv,kxypd,kyzpd), intent(inout) :: h
         complex, dimension(*), intent(inout) :: h
!        complex, dimension(kxyp*kzyp,kzp), intent(inout) :: bs, br
         complex, dimension(*), intent(inout) :: bs, br
!        integer, dimension(nxhyzd), intent(in) :: mixup
         integer, dimension(*), intent(in) :: mixup
!        complex, dimension(nxyzhd), intent(in) :: sct
         complex, dimension(*), intent(in) :: sct
         end subroutine
      end interface
!
      interface
         subroutine WPPFFT32R3(f,g,h,bs,br,isign,ntpose,mixup,sct,ttp,  &
     &indx,indy,indz,kstrt,nvpy,nvpz,nxvh,nyv,nzv,kxyp,kyp,kyzp,kzp,    &
     &kxypd,kypd,kyzpd,kzpd,kzyp,nxhyzd,nxyzhd)
         implicit none
         integer, intent(in) :: isign, ntpose, indx, indy, indz, kstrt
         integer, intent(in) :: nvpy, nvpz, nxvh, nyv, nzv, kxyp, kyp
         integer, intent(in) :: kyzp, kzp, kxypd, kypd, kyzpd, kzpd
         integer, intent(in) :: kzyp, nxhyzd, nxyzhd
         real, intent(inout) :: ttp
!        real, dimension(3,2*nxvh,kypd,kzpd), intent(inout) :: f
         real, dimension(*), intent(inout) :: f
!        complex, dimension(3,nyv,kxypd,kzpd), intent(inout) :: g
         complex, dimension(*), intent(inout) :: g
!        complex, dimension(3,nzv,kxypd,kyzpd), intent(inout) :: h
         complex, dimension(*), intent(inout) :: h
!        complex, dimension(3,kxyp*kzyp,kzp), intent(inout) :: bs, br
         complex, dimension(*), intent(inout) :: bs, br
!        integer, dimension(nxhyzd), intent(in) :: mixup
         integer, dimension(*), intent(in) :: mixup
!        complex, dimension(nxyzhd), intent(in) :: sct
         complex, dimension(*), intent(in) :: sct
         end subroutine
      end interface
!
      interface
         subroutine WPPFFT32RN(f,g,h,bs,br,ss,isign,ntpose,mixup,sct,ttp&
     &,indx,indy,indz,kstrt,nvpy,nvpz,nxvh,nyv,nzv,kxyp,kyp,kyzp,kzp,   &
     &kxypd,kypd,kyzpd,kzpd,kzyp,ndim,nxhyzd,nxyzhd)
         implicit none
         integer, intent(in) :: isign, ntpose, indx, indy, indz, kstrt
         integer, intent(in) :: nvpy, nvpz, nxvh, nyv, nzv, kxyp, kyp
         integer, intent(in) :: kyzp, kzp, kxypd, kypd, kyzpd, kzpd
         integer, intent(in) :: kzyp, ndim, nxhyzd, nxyzhd
         real, intent(inout) :: ttp
!        real, dimension(ndim,2*nxvh,kypd,kzpd), intent(inout) :: f
         real, dimension(*), intent(inout) :: f
!        complex, dimension(ndim,nyv,kxypd,kzpd), intent(inout) :: g
         complex, dimension(*), intent(inout) :: g
!        complex, dimension(ndim,nzv,kxypd,kyzpd), intent(inout) :: h
         complex, dimension(*), intent(inout) :: h
!        complex, dimension(ndim,kxyp*kzyp,kzp), intent(inout) :: bs, br
         complex, dimension(*), intent(inout) :: bs, br
!        complex, dimension(ndim,nxvh), intent(inout) :: ss
         complex, dimension(*), intent(inout) :: ss
!        integer, dimension(nxhyzd), intent(in) :: mixup
         integer, dimension(*), intent(in) :: mixup
!        complex, dimension(nxyzhd), intent(in) :: sct
         complex, dimension(*), intent(in) :: sct
         end subroutine
      end interface
!
      interface
         subroutine PPFFT32RXX(f,isign,mixup,sct,indx,indy,indz,kstrt,  &
     &nvp,kypi,kypp,nxvh,kzpp,kypd,kzpd,nxhyzd,nxyzhd)
         implicit none
         integer, intent(in) :: isign, indx, indy, indz, kstrt, nvp
         integer, intent(in) :: kypi, kypp, nxvh, kzpp, kypd, kzpd
         integer, intent(in) :: nxhyzd, nxyzhd
!        real, dimension(2*nxvh,kypd,kzpd), intent(inout) :: f
         real, dimension(*), intent(inout) :: f
!        integer, dimension(nxhyzd), intent(in) :: mixup
         integer, dimension(*), intent(in) :: mixup
!        complex, dimension(nxyzhd), intent(in) :: sct
         complex, dimension(*), intent(in) :: sct
         end subroutine
      end interface
!
      interface
         subroutine PPFFT32RXY(g,isign,mixup,sct,indx,indy,indz,kstrt,  &
     &nvpy,nvpz,kxypi,kxypp,nyv,kzpp,kxypd,kzpd,nxhyzd,nxyzhd)
         implicit none
         integer, intent(in) :: isign, indx, indy, indz, kstrt, nvpy
         integer, intent(in) :: nvpz, kxypi, kxypp, nyv, kzpp, kxypd
         integer, intent(in) :: kzpd, nxhyzd, nxyzhd
!        complex, dimension(nyv,kxypd,kzpd), intent(inout) :: g
         complex, dimension(*), intent(inout) :: g
!        integer, dimension(nxhyzd), intent(in) :: mixup
         integer, dimension(*), intent(in) :: mixup
!        complex, dimension(nxyzhd), intent(in) :: sct
         complex, dimension(*), intent(in) :: sct
         end subroutine
      end interface
!
      interface
         subroutine PPFFT32RXZ(h,isign,mixup,sct,indx,indy,indz,kstrt,  &
     &nvpy,nvpz,kxypi,kxypp,nzv,kyzp,kxypd,kyzpd,nxhyzd,nxyzhd)
         implicit none
         integer, intent(in) :: isign, indx, indy, indz, kstrt, nvpy
         integer, intent(in) :: nvpz, kxypi, kxypp, nzv, kyzp, kxypd
         integer, intent(in) :: kyzpd, nxhyzd, nxyzhd
!        complex, dimension(nzv,kxypd,kyzpd), intent(inout) :: h
         complex, dimension(*), intent(inout) :: h
!        integer, dimension(nxhyzd), intent(in) :: mixup
         integer, dimension(*), intent(in) :: mixup
!        complex, dimension(nxyzhd), intent(in) :: sct
         complex, dimension(*), intent(in) :: sct
         end subroutine
      end interface
!
      interface
         subroutine PPFFT32R3XX(f,isign,mixup,sct,indx,indy,indz,kstrt, &
     &nvp,kypi,kypp,nxvh,kzpp,kypd,kzpd,nxhyzd,nxyzhd)
         implicit none
         integer, intent(in) :: isign, indx, indy, indz, kstrt, nvp
         integer, intent(in) :: kypi, kypp, nxvh, kzpp, kypd, kzpd
         integer, intent(in) :: nxhyzd, nxyzhd
!        real, dimension(3,2*nxvh,kypd,kzpd), intent(inout) :: f
         real, dimension(*), intent(inout) :: f
!        integer, dimension(nxhyzd), intent(in) :: mixup
         integer, dimension(*), intent(in) :: mixup
!        complex, dimension(nxyzhd), intent(in) :: sct
         complex, dimension(*), intent(in) :: sct
         end subroutine
      end interface
!
      interface
         subroutine PPFFT32R3XY(g,isign,mixup,sct,indx,indy,indz,kstrt, &
     &nvpy,nvpz,kxypi,kxypp,nyv,kzpp,kxypd,kzpd,nxhyzd,nxyzhd)
         implicit none
         integer, intent(in) :: isign, indx, indy, indz, kstrt, nvpy
         integer, intent(in) :: nvpz, kxypi, kxypp, nyv, kzpp, kxypd
         integer, intent(in) :: kzpd, nxhyzd, nxyzhd
!        complex, dimension(3,nyv,kxypd,kzpd), intent(inout) :: g
         complex, dimension(*), intent(inout) :: g
!        integer, dimension(nxhyzd), intent(in) :: mixup
         integer, dimension(*), intent(in) :: mixup
!        complex, dimension(nxyzhd), intent(in) :: sct
         complex, dimension(*), intent(in) :: sct
         end subroutine
      end interface
!
      interface
         subroutine PPFFT32R3XZ(h,isign,mixup,sct,indx,indy,indz,kstrt, &
     &nvpy,nvpz,kxypi,kxypp,nzv,kyzp,kxypd,kyzpd,nxhyzd,nxyzhd)
         implicit none
         integer, intent(in) :: isign, indx, indy, indz, kstrt, nvpy
         integer, intent(in) :: nvpz, kxypi, kxypp, nzv, kyzp, kxypd
         integer, intent(in) :: kyzpd, nxhyzd, nxyzhd
!        complex, dimension(3,nzv,kxypd,kyzpd), intent(inout) :: h
         complex, dimension(*), intent(inout) :: h
!        integer, dimension(nxhyzd), intent(in) :: mixup
         integer, dimension(*), intent(in) :: mixup
!        complex, dimension(nxyzhd), intent(in) :: sct
         complex, dimension(*), intent(in) :: sct
         end subroutine
      end interface
!
      interface
         subroutine PPFFT32RNXX(f,ss,isign,mixup,sct,indx,indy,indz,    &
     &kstrt,nvp,kypi,kypp,nxvh,kzpp,kypd,kzpd,ndim,nxhyzd,nxyzhd)
         implicit none
         integer, intent(in) :: isign, indx, indy, indz, kstrt, nvp
         integer, intent(in) :: kypi, kypp, nxvh, kzpp, kypd, kzpd
         integer, intent(in) :: ndim, nxhyzd, nxyzhd
!        real, dimension(ndim,2*nxvh,kypd,kzpd), intent(inout) :: f
         real, dimension(*), intent(inout) :: f
         complex, dimension(ndim,nxvh), intent(inout) :: ss
!        integer, dimension(nxhyzd), intent(in) :: mixup
         integer, dimension(*), intent(in) :: mixup
!        complex, dimension(nxyzhd), intent(in) :: sct
         complex, dimension(*), intent(in) :: sct
         end subroutine
      end interface
!
      interface
         subroutine PPFFT32RNXY(g,isign,mixup,sct,indx,indy,indz,kstrt, &
     &nvpy,nvpz,kxypi,kxypp,nyv,kzpp,kxypd,kzpd,ndim,nxhyzd,nxyzhd)
         implicit none
         integer, intent(in) :: isign, indx, indy, indz, kstrt, nvpy
         integer, intent(in) :: nvpz, kxypi, kxypp, nyv, kzpp, kxypd
         integer, intent(in) :: ndim, kzpd, nxhyzd, nxyzhd
!        complex, dimension(ndim,nyv,kxypd,kzpd), intent(inout) :: g
         complex, dimension(*), intent(inout) :: g
!        integer, dimension(nxhyzd), intent(in) :: mixup
         integer, dimension(*), intent(in) :: mixup
!        complex, dimension(nxyzhd), intent(in) :: sct
         complex, dimension(*), intent(in) :: sct
         end subroutine
      end interface
!
      interface
         subroutine PPFFT32RNXZ(h,isign,mixup,sct,indx,indy,indz,kstrt, &
     &nvpy,nvpz,kxypi,kxypp,nzv,kyzp,kxypd,kyzpd,ndim,nxhyzd,nxyzhd)
         implicit none
         integer, intent(in) :: isign, indx, indy, indz, kstrt, nvpy
         integer, intent(in) :: nvpz, kxypi, kxypp, nzv, kyzp, kxypd
         integer, intent(in) :: ndim, kyzpd, nxhyzd, nxyzhd
!        complex, dimension(ndim,nzv,kxypd,kyzpd), intent(inout) :: h
         complex, dimension(*), intent(inout) :: h
!        integer, dimension(nxhyzd), intent(in) :: mixup
         integer, dimension(*), intent(in) :: mixup
!        complex, dimension(nxyzhd), intent(in) :: sct
         complex, dimension(*), intent(in) :: sct
         end subroutine
      end interface
!
      interface
         subroutine PPSWAPC32N(f,s,isign,nxh,kypi,kypt,nxvh,kzpp,kypd,  &
     &kzpd,ndim)
         implicit none 
         integer, intent(in) :: isign, nxh, kypi, kypt, nxvh, kzpp
         integer, intent(in) :: kypd, kzpd, ndim
!        real, dimension(ndim,2*nxvh,kypd,kzpd), intent(inout) :: f
         real, dimension(*), intent(inout) :: f
!        complex, dimension(ndim*nxvh), intent(inout) :: s
         complex, dimension(*), intent(inout) :: s
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
!-----------------------------------------------------------------------
! Interface file for pplib3.f
!     module pplib3_h
!     implicit none
!
      interface
         subroutine PPINIT2(idproc,nvp)
         implicit none
         integer, intent(inout) :: idproc, nvp
         end subroutine
      end interface
!
      interface
         subroutine PPEXIT
         implicit none
         end subroutine
      end interface
!
      interface
         subroutine PPABORT
         implicit none
         end subroutine
      end interface
!
      interface
         subroutine PWTIMERA(icntrl,time,dtime)
         implicit none
         integer, intent(in) :: icntrl
         real, intent(inout) :: time
         double precision, intent(inout) :: dtime
         end subroutine
      end interface
!
      interface
         subroutine PPSUM(f,g,nxp)
         implicit none
         integer, intent(in) :: nxp
!        real, dimension(nxp), intent(inout) :: f, g
         real, dimension(*), intent(inout) :: f, g
         end subroutine
      end interface
!
      interface
         subroutine PPDSUM(f,g,nxp)
         implicit none
         integer, intent(in) :: nxp
!        double precision, dimension(nxp), intent(inout) :: f, g
         double precision, dimension(*), intent(inout) :: f, g
         end subroutine
      end interface
!
      interface
         subroutine PPIMAX(if,ig,nxp)
         implicit none
         integer, intent(in) :: nxp
!        integer, dimension(nxp), intent(inout) :: if, ig
         integer, dimension(*), intent(inout) :: if, ig
         end subroutine
      end interface
!
      interface
         subroutine PPDMAX(f,g,nxp)
         implicit none
         integer, intent(in) :: nxp
!        double precision, dimension(nxp), intent(inout) :: f, g
         double precision, dimension(*), intent(inout) :: f, g
         end subroutine
      end interface
!
      interface
         subroutine PPNCGUARD32L(f,scs,nyzp,kstrt,nvpy,nvpz,nxv,nypmx,  &
     &nzpmx,idds)
         implicit none
         integer, intent(in) :: kstrt, nvpy, nvpz, nxv, nypmx, nzpmx
         integer, intent(in) :: idds
!        real, dimension(nxv,nypmx,nzpmx), intent(inout) :: f
         real, dimension(*), intent(inout) :: f
!        real, dimension(nxv,nzpmx,2), intent(inout) :: scs
         real, dimension(*), intent(inout) :: scs
!        integer, dimension(idds), intent(in) :: nyzp
         integer, dimension(*), intent(in) :: nyzp
         end subroutine
      end interface
!
      interface
         subroutine PPNAGUARD32L(f,scs,scr,nyzp,kstrt,nvpy,nvpz,nx,nxv, &
     &nypmx,nzpmx,idds)
         implicit none
         integer, intent(in) :: kstrt, nvpy, nvpz, nx, nxv, nypmx, nzpmx
         integer, intent(in) :: idds
!        real, dimension(nxv,nypmx,nzpmx), intent(inout) :: f
         real, dimension(*), intent(inout) :: f
!        real, dimension(nxv,nzpmx,2), intent(inout) :: scs
         real, dimension(*), intent(inout) :: scs
!        real, dimension(nxv,nypmx), intent(inout) :: scr
         real, dimension(*), intent(inout) :: scr
!        integer, dimension(idds), intent(in) :: nyzp
         integer, dimension(*), intent(in) :: nyzp
         end subroutine
      end interface
!
      interface
         subroutine PPNACGUARD32L(f,scs,scr,nyzp,ndim,kstrt,nvpy,nvpz,nx&
     &,nxv,nypmx,nzpmx,idds)
         implicit none
         integer, intent(in) :: ndim, kstrt ,nvpy, nvpz, nx, nxv, nypmx
         integer, intent(in) :: nzpmx, idds
!        real, dimension(ndim,nxv,nypmx,nzpmx), intent(inout) :: f
         real, dimension(*), intent(inout) :: f
!        real, dimension(ndim,nxv,nzpmx,2), intent(inout) :: scs
         real, dimension(*), intent(inout) :: scs
!        real, dimension(ndim,nxv,nypmx), intent(inout) :: scr
         real, dimension(*), intent(inout) :: scr
!        integer, dimension(idds), intent(in) :: nyzp
         integer, dimension(*), intent(in) :: nyzp
         end subroutine
      end interface
!
      interface
         subroutine PPTPOS3A(f,g,s,t,nx,ny,nz,kxyp,kyp,kzp,kstrt,nvpy,  &
     &nxv,nyv,kxypd,kypd,kzpd)
         implicit none
         integer, intent(in) :: nx, ny, nz, kxyp, kyp, kzp, kstrt, nvpy
         integer, intent(in) :: nxv, nyv, kxypd, kypd, kzpd
!        real, dimension(2*nxv,kypd,kzpd), intent(in) :: f
         real, dimension(*), intent(in) :: f
!        complex, dimension(nyv,kxypd,kzpd), intent(inout) :: g
         complex, dimension(*), intent(inout) :: g
!        complex, dimension(kxyp*kyp*kzp), intent(inout) :: s, t
         complex, dimension(*), intent(inout) :: s, t
         end subroutine
      end interface
!
      interface
         subroutine PPTPOS3B(g,h,s,t,nx,ny,nz,kxyp,kyzp,kzp,kstrt,nvpy, &
     &nvpz,nyv,nzv,kxypd,kyzpd,kzpd)
         implicit none
         integer, intent(in) :: nx, ny, nz, kxyp, kyzp, kzp, kstrt, nvpy
         integer, intent(in) :: nvpz, nyv, nzv, kxypd, kyzpd, kzpd
!        complex, dimension(nyv,kxypd,kzpd), intent(inout) :: g
         complex, dimension(*), intent(inout) :: g
!        complex, dimension(nzv,kxypd,kyzpd), intent(inout) :: h
         complex, dimension(*), intent(inout) :: h
!        complex, dimension(kyzp*kxyp*kzp), intent(inout) :: s, t
         complex, dimension(*), intent(inout) :: s, t
         end subroutine
      end interface
!
      interface
         subroutine PPNTPOS3A(f,g,s,t,nx,ny,nz,kxyp,kyp,kzp,kstrt,nvpy, &
     &ndim,nxv,nyv,kxypd,kypd,kzpd)
         implicit none
         integer, intent(in) :: nx, ny, nz, kxyp, kyp, kzp, kstrt, nvpy
         integer, intent(in) :: ndim, nxv, nyv, kxypd, kypd, kzpd
!        real, dimension(ndim,2*nxv,kypd,kzpd), intent(in) :: f
         real, dimension(*), intent(in) :: f
!        complex, dimension(ndim,nyv,kxypd,kzpd), intent(inout) :: g
         complex, dimension(*), intent(inout) :: g
!        complex, dimension(ndim,kxyp*kyp*kzp), intent(inout) :: s, t
         complex, dimension(*), intent(inout) :: s, t
         end subroutine
      end interface
!
      interface
         subroutine PPNTPOS3B(g,h,s,t,nx,ny,nz,kxyp,kyzp,kzp,kstrt,nvpy,&
     &nvpz,ndim,nyv,nzv,kxypd,kyzpd,kzpd)
         implicit none
         integer, intent(in) :: nx, ny, nz, kxyp, kyzp, kzp, kstrt, nvpy
         integer, intent(in) :: nvpz, ndim, nyv, nzv, kxypd, kyzpd, kzpd
!        complex, dimension(ndim,nyv,kxypd,kzpd), intent(inout) :: g
         complex, dimension(*), intent(inout) :: g
!        complex, dimension(ndim,nzv,kxypd,kyzpd), intent(inout) :: h
         complex, dimension(*), intent(inout) :: h
!        complex, dimension(ndim,kyzp*kxyp*kzp), intent(inout) :: s, t
         complex, dimension(*), intent(inout) :: s, t
         end subroutine
      end interface
!
      interface
         subroutine PPMOVE32(part,edges,npp,sbufr,sbufl,rbufr,rbufl,    &
     &ihole,ny,nz,kstrt,nvpy,nvpz,idimp,npmax,idps,nbmax,ntmax,info)
         implicit none
         integer, intent(in) :: ny, nz, kstrt, nvpy, nvpz, idimp, npmax
         integer, intent(in) :: idps, nbmax, ntmax
         integer, intent(inout) :: npp
!        real, dimension(idimp,npmax), intent(inout) :: part
         real, dimension(*), intent(inout) :: part
!        real, dimension(idps), intent(in) :: edges
         real, dimension(*), intent(in) :: edges
!        real, dimension(idimp,nbmax), intent(inout) :: sbufr, sbufl
         real, dimension(*), intent(inout) :: sbufr, sbufl
!        real, dimension(idimp,nbmax), intent(inout) :: rbufr, rbufl
         real, dimension(*), intent(inout) :: rbufr, rbufl
!        integer, dimension(ntmax+1,2) , intent(inout):: ihole
         integer, dimension(*) , intent(inout):: ihole
!        integer, dimension(7), intent(inout) :: info
         integer, dimension(*), intent(inout) :: info
         end subroutine
      end interface
!
!     end module
      end

