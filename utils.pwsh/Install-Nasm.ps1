function Install-Nasm {
    <#
        .SYNOPSIS
            Installs the pinned NASM version into MSYS2.
        .DESCRIPTION
            NASM 3.x writes CodeView debug info (-gcv8) that MSVC's lib.exe rejects with
            LNK1136 "invalid or corrupt file", which breaks the Debug configuration of the
            libvpx Visual Studio build. Install 2.16.03 from the MSYS2 package archive
            instead of whatever "pacman -S nasm" currently resolves to.
        .EXAMPLE
            Install-Nasm
    #>

    $NasmPackage = 'https://repo.msys2.org/msys/x86_64/nasm-2.16.03-1-x86_64.pkg.tar.zst'

    Invoke-External pacman.exe -U --noconfirm --needed --noprogressbar $NasmPackage
}
