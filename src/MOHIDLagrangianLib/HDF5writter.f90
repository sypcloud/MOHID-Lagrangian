    !------------------------------------------------------------------------------
    !        IST/MARETEC, Water Modelling Group, Mohid modelling system
    !------------------------------------------------------------------------------
    !
    ! TITLE         : Mohid Model
    ! PROJECT       : Mohid Lagrangian Tracer
    ! MODULE        : simulation_vtkwritter
    ! URL           : http://www.mohid.com
    ! AFFILIATION   : IST/MARETEC, Marine Modelling Group
    ! DATE          : July 2018
    ! REVISION      : Canelas 0.1
    !> @author
    !> Ricardo Birjukovs Canelas
    !
    ! DESCRIPTION:
    !> Defines a vtk writer class with an object exposable to the Output streamer.
    !> Writes files in .xml vtk, both in serial and parallel model. Uses an
    !> unstructured mesh format specifier to store any type of data, both meshes and
    !> Tracers. Supports scalar and vectorial data.
    !------------------------------------------------------------------------------

    module hdf5Writter_mod

    use common_modules
    use blocks_mod

    use ModuleHDF5
    use ModuleTime
    use ModuleGlobalData

    implicit none
    private

    type :: hdf5writter_class    !< VTK writter class
        integer :: numHdf5Files      !< number of hdf5 files written
    contains
    procedure :: initialize => initHDF5writter
    procedure :: finalize => closeHDF5writer
    procedure :: TracerSerial
    end type hdf5writter_class

    !Public access vars
    public :: hdf5writter_class

    public :: writeTestmatrix

    contains

    !---------------------------------------------------------------------------
    !> @author Ricardo Birjukovs Canelas - MARETEC
    !> @brief
    !> Initializes a HDF5 writer object
    !---------------------------------------------------------------------------
    subroutine initHDF5writter(self)
    class(hdf5writter_class), intent(inout) :: self
    self%numHdf5Files = 0
    end subroutine initHDF5writter

    !---------------------------------------------------------------------------
    !> @author Ricardo Birjukovs Canelas - MARETEC
    !> @brief
    !> Closes a HDF5 writer object
    !---------------------------------------------------------------------------
    subroutine closeHDF5writer(self)
    class(hdf5writter_class), intent(inout) :: self

    end subroutine closeHDF5writer

    !---------------------------------------------------------------------------
    !> @author Ricardo Birjukovs Canelas - MARETEC
    !> @brief
    !> Public Tracer writting routine. Writes Tracer data in MOHID HDF5 format.
    !> @param[in] self, filename, blocks
    !---------------------------------------------------------------------------
    subroutine TracerSerial(self, filename, blocks)
    class(hdf5writter_class), intent(inout) :: self
    type(string), intent(in) :: filename
    class(block_class), dimension(:), intent(in) :: blocks  !< Case Blocks

    type(string) :: fullfilename, extfilename
    type(string) :: outext
    integer :: error, i, j, b
    integer :: ID, HDF5_CREATE, STAT_CALL
    integer :: np
    logical, allocatable, dimension(:) :: active
    
    integer, dimension(:,:), pointer :: mat

    extfilename = filename%chars()//'.hdf5'
    fullfilename = Globals%Names%outpath//'/'//extfilename

    ID = 0
    
    mat = blocks(1)%BlockState(1)%state

    !Gets File Access Code
    call GetHDF5FileAccess(HDF5_CREATE = HDF5_CREATE)
    !Opens HDF File
    call ConstructHDF5(ID, fullfilename%chars(), HDF5_CREATE, STAT = STAT_CALL)
    if (STAT_CALL /= SUCCESS_) then
        outext = '[HDF5Writter::TracerSerial]: unnable to create '//fullfilename//' file, stoping'
        call Log%put(outext)
        stop
    end if
    !writting data    

    call HDF5WriteData(ID, "/Data", "TestMatrix", "-",         &
        Array2D = mat,            &
        STAT = STAT_CALL)
    if (STAT_CALL /= SUCCESS_) then
        outext = '[HDF5Writter::TracerSerial]: unnable to write to '//fullfilename//' file, stoping'
        call Log%put(outext)
        stop
    end if

    self%numHdf5Files = self%numHdf5Files + 1

    end subroutine TracerSerial

    
    
    

    subroutine writeTestmatrix(mat)
    integer, dimension(:, :), pointer, intent(in) :: mat
    integer :: ID, HDF5_CREATE, STAT_CALL

    ID = 0

    !Gets File Access Code
    call GetHDF5FileAccess(HDF5_CREATE = HDF5_CREATE)

    !Opens HDF File
    call ConstructHDF5(ID, "filehdf", HDF5_CREATE, STAT = STAT_CALL)
    if (STAT_CALL /= SUCCESS_) stop 'writeTestmatrix - module hdf5Writter_mod - ERR01'

    call HDF5WriteData(ID, "/Data", "TestMatrix", "-",         &
        Array2D = mat,            &
        STAT = STAT_CALL)
    if (STAT_CALL /= SUCCESS_) stop 'writeTestmatrix - module hdf5Writter_mod - ERR07'

    end subroutine writeTestmatrix


    end module hdf5Writter_mod
