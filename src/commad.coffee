module.exports =
  lastCommit: '
    git log -1 --pretty=format:"
      author:%an,
      authorEmail:%ae,
      modifyDate:%ad,
      commiter:%cn,
      commiterEmail:%ce,
      commitDate:%cd,
      hash:%h,
      Hash:%H,
      comment:%s"
  '
  lastTag: 'git describe --abbrev=0 --tags'


