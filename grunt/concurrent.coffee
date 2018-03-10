######################
## grunt-concurrent ##
######################
# Run multiple tasks:
# https://www.npmjs.com/package/grunt-concurrent
#################
## grunt-newer ##
#################
# grunt-newer
# Run task, only if src files change.
# https://www.npmjs.com/package/grunt-newer
# https://www.html5rocks.com/en/tutorials/tooling/supercharging-your-gruntfile/#toc-buildtime
module.exports =
	#
	# For development, “target build”
	#
	# [NOTE] Don't use “newer:” for shell tasks!
	# grunt-newer check, that your source (src) not change and doesn't run build process.
	tarb1: ['shell:generate']
	tarb2: ['newer:stylus']
	# [BUG] grunt-newer doesn't work with purifycss:
	# Warning: Cannot read property 'forEach' of undefined Use --force to continue.
	# https://github.com/purifycss/grunt-purifycss/issues/26
	tarb3: ['newer:string-replace', 'purifycss']
	tarb4: ['shell:tidymodify']
	#
	# For publishing, “target publish”
	#
	# Don't use “newer” for publishing, because output directory deleted →
	# all src files will newer.
	tarp1: ['shell:deploy']
	# Don't use “newer” for “move”! Files from “root-html” doesn't move.
	# Don't use “newer” with “realFavicon”! “index.html” will not changed!
	tarp2: ['move', 'realFavicon']
	tarp3: ['stylus', 'newer:unused']
	tarp4: ['clean', 'purifycss', 'imagemin']
	tarp5: ['postcss', 'string-replace']
	tarp6: ['shell:tidymodify']
	tarp7: ['jsbeautifier']
	#
	# For updating dependencies, “target update”
	#
	taru1: ['devUpdate', 'shell:pipenvupdate', 'shell:gitreflog']
	taru2: ['projectUpdate', 'shell:pipenvupdateall', 'shell:gitgarbagecollector']
	taru3: ['shell:pipenvcleanunused']