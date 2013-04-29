define developer::pl_repository($user, $dest) {
    repository { $title:
        path    => "$dest/$title",
        source  => "git://github.com/puppetlabs/$title.git",
        require => Package["git"],
        user    => $user,
    }
}
