utility
getTestRepository: repositoryName
    | repo dir |
    dir := utilityClass directoryFromPath: repositoryName relativeTo: self getTestRepositoriesDirectory.
    repo := MCFileTreeRepository new directory: dir.
    ^ MCRepositoryGroup default repositories detect: [ :each | each = repo ] ifNone: [ repo ]