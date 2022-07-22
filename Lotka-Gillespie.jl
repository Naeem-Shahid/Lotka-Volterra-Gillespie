function gillespie(ω₀, ω₁, k₁, x₀, y₀, A)
    T = 100
    t = 0
    a = k₁ / A
    dt = 0.1
    n₁ = x₀ * A
    n₂ = y₀ * A
    tvals = Float64[t]
    n₁vals = [n₁ / A]
    n₂vals = [n₂ / A]
    reft = 0
    while t < T
        W₁ = ω₀ * n₁
        W₂ = ω₁ * n₂
        W₃ = a * n₁ * n₂
        W = W₁ + W₂ + W₃
        tnext = -log(rand()) / W
        t = t + tnext
        r = rand() * W
        if r < W₁
            n₁ = n₁ + 1
        elseif r < (W₁ + W₂)
            n₂ = n₂ - 1 
        else
            n₁ = n₁ - 1
            n₂ = n₂ + 1
        end
        if (t - reft) > dt
            push!(tvals, t)
            push!(n₁vals, n₁ / A)
            push!(n₂vals, n₂ / A)
            reft = t
        end
    end
    tvals, n₁vals, n₂vals
end