#!/usr/bin/sh
svn info --show-item kind
svn info --show-item url 
svn info --show-item relative-url 
svn info --show-item repos-root-url 
svn info --show-item repos-uuid 
svn info --show-item revision 
svn info --show-item last-changed-revision
svn info --show-item last-changed-date
svn info --show-item last-changed-author
svn info --show-item wc-root
