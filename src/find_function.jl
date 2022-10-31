function find(
    src_dir::String,
    mindepth::Int,
    maxdepth::Int,
    pattern::String)

    x = readchomp(`find $src_dir -mindepth $mindepth -maxdepth $maxdepth -iname "*$pattern*"`)
    return string.(split(x, "\n"))
end