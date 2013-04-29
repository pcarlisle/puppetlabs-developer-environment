define developer::environment (
    $user=$title,
    $homedir="/home/$user",
    $srcdir="$homedir/src",
    $ruby_versions=["1.8.7-p371", "1.9.3-p392", "2.0.0-p0"],
    $repositories = ["puppet", "facter", "hiera"]
) {
    rbenv::install { $user: }

    rbenv::compile { $ruby_versions:
        user => $user,
    }

    file { $srcdir:
        ensure => directory,
        owner  => $user,
        group  => $user,
    }

    developer::pl_repository { $repositories:
        user => $user,
        dest => $srcdir,
    }
}
