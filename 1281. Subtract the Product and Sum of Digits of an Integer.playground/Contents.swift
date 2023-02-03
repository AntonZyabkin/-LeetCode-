
func subtractProductAndSum(_ n: Int) -> Int {

    Array(String(n))
        .reduce("1") { a, b in
            String(Int(a) * Int(b))
        }
    return 1
}

print(subtractProductAndSum(123521526437455))


let n = 125135678

let p = Array(String(n))
    .reduce("1") { a, b in
        String(Int(a) * Int(b))
    }
print(p)
