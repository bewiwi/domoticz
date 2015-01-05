# Extract the latest SVN revision from the Git commit log
EXECUTE_PROCESS(
  COMMAND git log --grep=git-svn-id --max-count 1
  COMMAND grep git-svn-id
  COMMAND cut -d@ -f 2
  COMMAND cut -d\  -f 1
  OUTPUT_VARIABLE gitrevision)

# write a file with the SVNVERSION define
file(WRITE svnversion.h.txt "#define SVNVERSION ${gitrevision}\n")
# copy the file to the final header only if the version changes
# reduces needless rebuilds
execute_process(COMMAND ${CMAKE_COMMAND} -E copy_if_different
                        svnversion.h.txt svnversion.h)
