rule Windows_Trojan_IcedID_1cd868a6 {
    meta:
        author = "Elastic Security"
        id = "1cd868a6-d2ec-4c48-a69a-aaa6c7af876c"
        fingerprint = "3e76b3ac03c5268923cfd5d0938745d66cda273d436b83bee860250fdcca6327"
        creation_date = "2021-02-28"
        last_modified = "2021-08-23"
        threat_name = "Windows.Trojan.IcedID"
        reference = "https://www.fireeye.com/blog/threat-research/2021/02/melting-unc2198-icedid-to-ransomware-operations.html"
        reference_sample = "68dce9f214e7691db77a2f03af16a669a3cb655699f31a6c1f5aaede041468ff"
        severity = 100
        arch_context = "x86"
        scan_context = "file, memory"
        license = "Elastic License v2"
        os = "windows"
    strings:
        $a = { 24 2C B9 09 00 00 00 2A C2 2C 07 88 44 24 0F 0F B6 C3 6B C0 43 89 44 }
    condition:
        all of them
}

rule Windows_Trojan_IcedID_237e9fb6 {
    meta:
        author = "Elastic Security"
        id = "237e9fb6-b5fa-4747-af1f-533c76a5a639"
        fingerprint = "e2ea6d1477ce4132f123b6c00101a063f7bba7acf38be97ee8dca22cc90ed511"
        creation_date = "2021-02-28"
        last_modified = "2021-08-23"
        threat_name = "Windows.Trojan.IcedID"
        reference = "https://www.fireeye.com/blog/threat-research/2021/02/melting-unc2198-icedid-to-ransomware-operations.html"
        reference_sample = "b21f9afc6443548427bf83b5f93e7a54ac3af306d9d71b8348a6f146b2819457"
        severity = 100
        arch_context = "x86"
        scan_context = "file, memory"
        license = "Elastic License v2"
        os = "windows"
    strings:
        $a = { 60 8B 55 D4 3B D0 7E 45 83 F8 08 0F 4C 45 EC 3B D0 8D 3C 00 0F }
    condition:
        all of them
}

rule Windows_Trojan_IcedID_f1ce2f0a {
    meta:
        author = "Elastic Security"
        id = "f1ce2f0a-0d34-46a4-8e42-0906adf4dc1b"
        fingerprint = "1940c4bf5d8011dc7edb8dde718286554ed65f9e96fe61bfa90f6182a4b8ca9e"
        creation_date = "2021-02-28"
        last_modified = "2021-08-23"
        threat_name = "Windows.Trojan.IcedID"
        reference = "https://www.fireeye.com/blog/threat-research/2021/02/melting-unc2198-icedid-to-ransomware-operations.html"
        reference_sample = "b21f9afc6443548427bf83b5f93e7a54ac3af306d9d71b8348a6f146b2819457"
        severity = 100
        arch_context = "x86"
        scan_context = "file, memory"
        license = "Elastic License v2"
        os = "windows"
    strings:
        $a = { 8B C8 8B C6 F7 E2 03 CA 8B 54 24 14 2B D0 8B 44 24 14 89 54 }
    condition:
        all of them
}

rule Windows_Trojan_IcedID_08530e24 {
    meta:
        author = "Elastic Security"
        id = "08530e24-5b84-40a4-bc5c-ead74762faf8"
        fingerprint = "f2b5768b87eec7c1c9730cc99364cc90e87fd9201bf374418ad008fd70d321af"
        creation_date = "2021-03-21"
        last_modified = "2021-08-23"
        threat_name = "Windows.Trojan.IcedID"
        reference_sample = "31db92c7920e82e49a968220480e9f130dea9b386083b78a79985b554ecdc6e4"
        severity = 100
        arch_context = "x86"
        scan_context = "file, memory"
        license = "Elastic License v2"
        os = "windows"
    strings:
        $a1 = "c:\\ProgramData\\" ascii fullword
        $a2 = "loader_dll_64.dll" ascii fullword
        $a3 = "aws.amazon.com" wide fullword
        $a4 = "Cookie: __gads=" wide fullword
        $b1 = "LookupAccountNameW" ascii fullword
        $b2 = "GetUserNameA" ascii fullword
        $b3 = "; _gat=" wide fullword
        $b4 = "; _ga=" wide fullword
        $b5 = "; _u=" wide fullword
        $b6 = "; __io=" wide fullword
        $b7 = "; _gid=" wide fullword
        $b8 = "%s%u" wide fullword
        $b9 = "i\\|9*" ascii fullword
        $b10 = "WinHttpSetStatusCallback" ascii fullword
    condition:
        all of ($a*) and 5 of ($b*)
}

rule Windows_Trojan_IcedID_11d24d35 {
    meta:
        author = "Elastic Security"
        id = "11d24d35-6bff-4fac-83d8-4d152aa0be57"
        fingerprint = "155e5df0f3f598cdc21e5c85bcf21c1574ae6788d5f7e0058be823c71d06c21e"
        creation_date = "2022-02-16"
        last_modified = "2022-04-06"
        threat_name = "Windows.Trojan.IcedID"
        reference_sample = "b8d794f6449669ff2d11bc635490d9efdd1f4e92fcb3be5cdb4b40e4470c0982"
        severity = 100
        arch_context = "x86"
        scan_context = "file, memory"
        license = "Elastic License v2"
        os = "windows"
    strings:
        $a1 = "C:\\Users\\user\\source\\repos\\anubis\\bin\\RELEASE\\loader_dll_64.pdb" ascii fullword
        $a2 = "loader_dll_64.dll" ascii fullword
    condition:
        1 of ($a*)
}

rule Windows_Trojan_IcedID_0b62e783 {
    meta:
        author = "Elastic Security"
        id = "0b62e783-5c1a-4377-8338-1c53194b8d01"
        fingerprint = "2f473fbe6338d9663808f1a3615cf8f0f6f9780fbce8f4a3c24f0ddc5f43dd4a"
        creation_date = "2022-04-06"
        last_modified = "2022-06-09"
        threat_name = "Windows.Trojan.IcedID"
        reference_sample = "b9fb0a4c28613c556fb67a0b0e7c9d4c1236b60a161ad935e7387aec5911413a"
        severity = 100
        arch_context = "x86"
        scan_context = "file, memory"
        license = "Elastic License v2"
        os = "windows"
    strings:
        $a = { 89 44 95 E0 83 E0 07 8A C8 42 8B 44 85 E0 D3 C8 FF C0 42 89 44 }
    condition:
        all of them
}

rule Windows_Trojan_IcedID_91562d18 {
    meta:
        author = "Elastic Security"
        id = "91562d18-28a1-4349-9e4b-92ad165510c9"
        fingerprint = "024bbd15da6bc759e321779881b466b500f6364a1d67bbfdc950aedccbfbc022"
        creation_date = "2022-04-06"
        last_modified = "2022-06-09"
        threat_name = "Windows.Trojan.IcedID"
        reference_sample = "b9fb0a4c28613c556fb67a0b0e7c9d4c1236b60a161ad935e7387aec5911413a"
        severity = 100
        arch_context = "x86"
        scan_context = "file, memory"
        license = "Elastic License v2"
        os = "windows"
    strings:
        $a = { 44 8B 4C 19 2C 4C 03 D6 74 1C 4D 85 C0 74 17 4D 85 C9 74 12 41 }
    condition:
        all of them
}

rule Windows_Trojan_IcedID_2086aecb {
    meta:
        author = "Elastic Security"
        id = "2086aecb-161b-4102-89c7-580fb9ac3759"
        fingerprint = "c80ba4185d671811d8ea74fbe4e79353d3fa71d7ef29fa385a713bb7d565c13b"
        creation_date = "2022-04-06"
        last_modified = "2022-06-09"
        threat_name = "Windows.Trojan.IcedID"
        reference_sample = "b9fb0a4c28613c556fb67a0b0e7c9d4c1236b60a161ad935e7387aec5911413a"
        severity = 100
        arch_context = "x86"
        scan_context = "file, memory"
        license = "Elastic License v2"
        os = "windows"
    strings:
        $a = { 4C 8D 05 ?? ?? ?? ?? 42 8A 44 01 ?? 42 32 04 01 88 44 0D ?? 48 FF C1 48 83 F9 20 72 ?? }
    condition:
        all of them
}

rule Windows_Trojan_IcedID_48029e37 {
    meta:
        author = "Elastic Security"
        id = "48029e37-b392-4d53-b0de-2079f6a8a9d9"
        fingerprint = "375266b526fe14354550d000d3a10dde3f6a85e11f4ba5cab14d9e1f878de51e"
        creation_date = "2022-04-06"
        last_modified = "2022-06-09"
        threat_name = "Windows.Trojan.IcedID"
        reference_sample = "b9fb0a4c28613c556fb67a0b0e7c9d4c1236b60a161ad935e7387aec5911413a"
        severity = 100
        arch_context = "x86"
        scan_context = "file, memory"
        license = "Elastic License v2"
        os = "windows"
    strings:
        $a = { 48 C1 E3 10 0F 31 48 C1 E2 ?? 48 0B C2 0F B7 C8 48 0B D9 8B CB 83 E1 }
    condition:
        all of them
}

