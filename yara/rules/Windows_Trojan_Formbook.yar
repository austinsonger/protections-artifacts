rule Windows_Trojan_Formbook_1112e116 {
    meta:
        author = "Elastic Security"
        id = "1112e116-dee0-4818-a41f-ca5c1c41b4b8"
        fingerprint = "b8b88451ad8c66b54e21455d835a5d435e52173c86e9b813ffab09451aff7134"
        creation_date = "2021-06-14"
        last_modified = "2021-08-23"
        threat_name = "Windows.Trojan.Formbook"
        reference_sample = "6246f3b89f0e4913abd88ae535ae3597865270f58201dc7f8ec0c87f15ff370a"
        severity = 100
        arch_context = "x86"
        scan_context = "file, memory"
        license = "Elastic License v2"
        os = "windows"
    strings:
        $a1 = { 3C 30 50 4F 53 54 74 09 40 }
        $a2 = { 74 0A 4E 0F B6 08 8D 44 08 01 75 F6 8D 70 01 0F B6 00 8D 55 }
        $a3 = { 1A D2 80 E2 AF 80 C2 7E EB 2A 80 FA 2F 75 11 8A D0 80 E2 01 }
        $a4 = { 04 83 C4 0C 83 06 07 5B 5F 5E 8B E5 5D C3 8B 17 03 55 0C 6A 01 83 }
    condition:
        any of them
}

rule Windows_Trojan_Formbook_772cc62d {
    meta:
        author = "Elastic Security"
        id = "772cc62d-345c-42d8-97ab-f67e447ddca4"
        fingerprint = "3d732c989df085aefa1a93b38a3c078f9f0c3ee214292f6c1e31a9fc1c9ae50e"
        creation_date = "2022-05-23"
        last_modified = "2022-07-18"
        threat_name = "Windows.Trojan.Formbook"
        severity = 100
        arch_context = "x86"
        scan_context = "file, memory"
        license = "Elastic License v2"
        os = "windows"
    strings:
        $a1 = "User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; Trident/7.0; rv:11.0) like Gecko"
        $a2 = "signin"
        $a3 = "persistent"
        $r1 = /.\:\\Users\\[^\\]{1,50}\\AppData\\Roaming\\[a-zA-Z0-9]{8}\\[a-zA-Z0-9]{3}log\.ini/ wide
    condition:
        2 of ($a*) and $r1
}

