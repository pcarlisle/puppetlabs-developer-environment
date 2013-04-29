developer::environment {"vagrant":
    srcdir        => "/home/vagrant/src",
    ruby_versions => ["1.8.7-p371", "1.9.3-p392", "2.0.0-p0"],
}

package {"vim":
    ensure => latest,
}
