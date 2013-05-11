class helloworld {
    file { '/tmp/helloPuppet':
        content => "Howdy partner!"
    }
}
