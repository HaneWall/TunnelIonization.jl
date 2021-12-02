#Electric field functions

function gaussian(amplitude, λ_central, τ_I_FWHM, τ, t)
    c = 299792458
    ω = 2 * π * c / λ_central
    E = @. amplitude * exp(-2*log(2)*((t - τ)/τ_I_FWHM)^2) * sin(ω*t)
    return E
end

function sinusoidal(amplitude, λ_central, t)
    c = 299792458
    ω = 2 * π * c / λ_central
    E = @. amplitude * sin(ω*t)
    return E
end
