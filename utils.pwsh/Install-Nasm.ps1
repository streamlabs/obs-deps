function Install-Nasm {
    <#
        .SYNOPSIS
            Installs the pinned NASM version into MSYS2.
        .DESCRIPTION
            Pin NASM 2.16.03
        .EXAMPLE
            Install-Nasm
    #>

    $NasmPackage = 'https://repo.msys2.org/msys/x86_64/nasm-2.16.03-1-x86_64.pkg.tar.zst'

    Invoke-External pacman.exe -U --noconfirm --needed --noprogressbar $NasmPackage
}
