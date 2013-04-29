define developer(
    $user = $title,
    $srcdir = "/home/$user/src",
    $ruby_versions = ["ruby-1.8.7-p371", "ruby-1.9.3-p392", "ruby-2.0.0-p0"]
) {
    rbenv::install { $user: }

    rbenv::compile { $ruby_versions:
        user => $user,
    }

    repository { ["puppet", "hiera", "facter"]:
        path    => "$srcdir/$name",
        source  => "git://github.com/puppetlabs/$name.git",
        require => Package["git"]
    }
}
