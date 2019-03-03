######################
## Deprecated tasks ##
######################
# All buggy, obsolete and/or unneedable plugins.
# Save, because possibly I can use them again.


# ###################
# ## grunt-pelican ##
# ###################
# # Pelican tasks from Grunt
# # https://www.npmjs.com/package/grunt-pelican
# # [WARNING] Pipenv doesn't work in Grunt Pelican
# # https://github.com/chuwy/grunt-pelican/issues/4
# pelican:
# 	options:
# 		contentDir: 'content'
# 		outputDir: 'output'
# 	build:
# 		configFile: 'pelicanconf.py'
# 	publish:
# 		configFile: 'publishconf.py'


##############################
## grunt-http-convert-https ##
##############################
# # Convert http to https
# # https://www.npmjs.com/package/grunt-http-convert-https
# # [BUG] plugin doesn't work, “Warning: Task "converthttps" not found”.
# # Author long time inactive on GitHub, so no issue:
# # https://github.com/sina-mfe
# converthttps:
# 	config:
# 		expand: true
# 		cwd: 'output'
# 		src: '**/*.html'
# 		dest: 'output'
# 		httpsJson:
# 			"imgur": [
# 				"http": "i.imgur.com"
# 				"https": "i.imgur.com"
# 			]


########################
## grunt-text-replace ##
########################
# # [DEPRECATED] grunt-string-replace active maintained
# # https://www.npmjs.com/package/grunt-string-replace
# # Replace text, using regex
# # https://github.com/yoniholmes/grunt-text-replace
# replace:
# 	replacehtml:
# 		src: [ 'output/**/*.html' ]
# 		overwrite: true
# 		replacements: [
# 		## [NOTE] Use (.|\n|\r) for any symbol, not (.|\n)
# 		## [DEPRECATED] Cllipboard.js + Tooltipster for Rainbow
# 		## http://ru.stackoverflow.com/a/582520/199934
# 		## http://stackoverflow.com/a/33758293/5951529
# 		# {
# 		#   from: /<pre><code class="(.+?)">((.|\n|\r)+?)<\/code><\/pre>/g
# 		#   to: '<pre><code data-language="$1">$2</code><button class="SashaButton SashaTooltip">\
# 		<img class="SashaNotModify" src="../images/interface_images/clippy.svg" \
# 		alt="Clipboard button" width="13"></button></pre>'
# 		# }
# 		# Clipboard.js + Tooltipster for SuperFences
# 		# http://ru.stackoverflow.com/a/582520/199934
# 		# https://stackoverflow.com/a/33758435/5951529
# 		# <button> and <img> tags must be in one line;
# 		# no line breaks between them!
# 			from: /(<pre>)((.|\n|\r)+?)(<\/pre>(\s+?)<\/div>)/g
# 			to: '$1<button class="SashaButton SashaTooltip"><img class="SashaNotModify" \
# 			src="//gitcdn.xyz/repo/Kristinita/Kristinita.github.io/master/images/interface-images/clippy.svg" \
# 			alt="Clipboard button" width="13"></button>$2$4'
# 		# Fancybox and JQueryLazy images,
# 			from: /<img alt="([^"]+?)" src="(.+?)"( \/)?>/g
# 			to: '<a class="fancybox" href="$2"><img class="SashaLazy" \
# 			src="//gitcdn.xyz/repo/Kristinita/Kristinita.github.io/master/images/interface-images/transparent-one-pixel.png" \
# 			data-src="$2" alt="$1"></a>'
# 		# GitCDN
# 		# https://github.com/schme16/gitcdn.xyz
# 			from: /http:\/\/kristinita.ru\/(.+?)\.(js|css|ico|xml)/g
# 			to: '//gitcdn.xyz/repo/Kristinita/Kristinita.github.io/master/$1.$2'
# 		# Header permalink
# 			from: /(<p>\s*?<a name="(.+?)" id="(.+?)"><\/a>\s*?<\/p>\s+?<h\d+?>((.|\n|\r)+?))(<\/h\d+?>)/g
# 			to: '$1 <a class="headerlink" href="#$2" title="Permanent link">¶</a>$6'
# 		]


# ####################
# ## grunt-posthtml ##
# ####################
# # PostHTML wrapper for Grunt:
# # https://www.npmjs.com/package/grunt-posthtml
# # https://www.npmjs.com/package/posthtml
# # [BUG] Any PostHTML plugin doesn't work for me, details:
# # https://github.com/TCotton/grunt-posthtml/issues/3
# posthtml:
# 	options:
# 		use: [
# 			require('posthtml-aria-tabs')()
# 			require('posthtml-doctype')(doctype : 'HTML 4.01 Frameset')
# 			require('posthtml-alt-always')()
# 		]
# 	build:
# 		files: [
# 			expand: true
# 			cwd: 'output/Sublime-Text'
# 			src: '**/*.html'
# 			dest: 'output/Sublime-Text/tmp'
# 		]


# ####################
# ## grunt-htmltidy ##
# ####################
# # Fix HTML markup errors
# # https://github.com/gavinballard/grunt-htmltidy
# # [BUG] I don't use, because bug:
# # https://github.com/gavinballard/grunt-htmltidy/issues/6
# htmltidy:
# 	options:
# 		# indent: no
# 		# Disable line breaks
# 		# https://stackoverflow.com/a/7681425/5951529
# 		wrap: 0
# 		# 'vertical-space': no
# 	gingerinas:
# 		files: [
# 			expand: true
# 			cwd: 'output'
# 			src: '**/*.html'
# 			dest: 'output'
# 		]


##########################
## grunt-html5-validate ##
##########################
# # Validate HTML — https://github.com/rgladwell/grunt-html5-validate
# # [BUG] Plugin doesn't work:
# # https://github.com/rgladwell/grunt-html5-validate/issues/1
# html5validate:
	# src: 'output/IT-articles/*.html'


# #################
# ## grunt-image ##
# #################
# # Compress images:
# # https://github.com/1000ch/grunt-image
# # [BUG] Doesn't work with multiple images:
# # https://github.com/1000ch/grunt-image/issues/29
# image:
# 	static:
# 		options:
# 			pngquant: true
# 			optipng: true
# 			zopflipng: true
# 			jpegRecompress: true
# 			jpegoptim: true
# 			mozjpeg: true
# 			gifsicle: true
# 			svgo: true
# 		files:
# 			src: ['output/**/*.jpg']


# #################
# ## grunt-ngrok ##
# #################
# # ngrok implementation for Grunt
# # https://www.npmjs.com/package/grunt-ngrok
# # [BUG] Doesn't work:
# # https://github.com/bazilio91/grunt-ngrok/issues/7
# ngrok:
# 	options:
# 		authToken: '6FAzTiHpA7FhKkLKjUoQi_4TJMoSofsewziHE3XFC5J'
# 	server:
# 		proto: 'https'


# ########################
# ## grunt-nice-package ##
# ########################
# # package.json validator
# # https://www.npmjs.com/package/grunt-nice-package
# # [BUG] Some features works incorrect:
# # https://github.com/bahmutov/grunt-nice-package/issues/25
# # https://github.com/bahmutov/grunt-nice-package/issues/26
# # nicePackage shortcut:
# # https://www.npmjs.com/package/grunt-nice-package#alternative-default-options
# # "generate-package" generate package.json:
# # https://www.npmjs.com/package/generate-package
# # https://stackoverflow.com/a/49053110/5951529
# nicePackage:
# 	all:
# 		options:
# 			blankLine: false


# ###################
# ## gulp-htmltidy ##
# ###################
# # Validate HTML
# # https://www.npmjs.com/package/gulp-htmltidy

# ##########################
# ## grunt-gulp variables ##
# ##########################
# # https://www.npmjs.com/package/grunt-gulp#examples
# # CoffeeScript to JavaScript online — http://js2.coffee/

# gulp = require('gulp')
# htmltidy = require('gulp-htmltidy')

# # For in-place dest needs «base: "."», see:
# # https://stackoverflow.com/a/44337370/5951529
# # [BUG] Doesn't work for multiple commands, see:
# # https://github.com/shama/grunt-gulp/issues/13
# module.exports =
# 	gulptidy:
# 		gulp.src('<%= templates.paths.html %>', base: ".")
# 		.pipe(htmltidy(
# 			doctype: 'html5'
# 			indent: true
# 			wrap: 0)).pipe gulp.dest('./')


# [DEPRECATED] pip-licenses more customisable
# ############
# ## yolk3k ##
# ############
# # Generate licenses for all Python packages:
# # https://stackoverflow.com/a/26718306/5951529
# # https://pypi.org/project/yolk3k/
# yolk:
# 	command: 'pipenv run yolk -l -f license > python.txt'


# [DEPRECATED] SuperFences now preserve tabs:
# https://github.com/facelessuser/pymdown-extensions/issues/276
# ######################
# ## grunt-indentator ##
# ######################
# # Indent 4 spaces to tab:
# # https://www.npmjs.com/package/grunt-indentator
# # [WARNING]: Replace tabs to spaces only if first indentation — spaces:
# # Needs run before “eslint fix”:
# # https://github.com/gespinha/grunt-indentator/issues/1
# module.exports =
# 	options:
# 		type: 'tab'
# 		size: 1
# 		debug: true
# 	files:
# 		[
# 			"<%= templates.paths.html %>"
# 		]


# [DEPRECATED] Generate invalid license files:
# https://github.com/licenses/lice/issues/50
# I can't file Grunt package for this task;
# license-generator output error in installation process:
# https://pypi.org/project/license-generator/
# ##########
# ## lice ##
# ##########
# # Generate license for project:
# # https://pypi.org/project/lice/
# lice:
# 	# [BUG] lice doesn't work in AppVeyor:
# 	# https://github.com/appveyor/ci/issues/2226
# 	if process.platform == "win32"
# 		command: 'echo "Sorry, lice doesn\'t work in AppVeyor — https://github.com/appveyor/ci/issues/2226"'
# 	else
# 		command: 'pipenv run lice mit -o "Sasha Chernykh" --file output/LICENSE.md'


# [DEPRECATED] Doesn't work for CSS paths
# #########################
# # grunt-path-absolutely #
# #########################
# # https://www.npmjs.com/package/grunt-path-absolutely
# module.exports =
# 	cssimages:
# 		options:
# 			devRoot: "."
# 			releaseRoot: "https://kristinita.ru"
# 			resourceFilter: ["*.css"]
# 		files: [
# 			expand: true
# 			cwd: "."
# 			src: ["<%= templates.paths.output_path %>/<%= templates.yamlconfig.theme_static_dir %>/css/aside/*.css"]
# 			dest: "."
# 		]


# [DEPRECATED] Doesn't allow to have comments in JSON configuration files:
# #############################
# # grunt-strip-json-comments #
# #############################
# # Delete comments in JSON files
# # https://www.npmjs.com/package/strip-json-comments
# # https://www.npmjs.com/package/grunt-strip-json-comments
# stripJsonComments:
# 	dist:
# 		options:
# 			whitespace: false
# 		files:
# 			'.jsbeautifyrc': '.jsbeautifyrc'


# [DEPRECATED] I don't see plugins, that can come in handy
# ####################
# ## grunt-posthtml ##
# ####################
# # PostHTML support for Grunt:
# # https://github.com/posthtml/posthtml
# # https://www.npmjs.com/package/grunt-juwain-posthtml
# # [WARNING] Use “juwain-posthtml”, not native “posthtml” version:
# # https://github.com/TCotton/grunt-posthtml/issues/3
# module.exports =
# 	options:
# 		use: [
# 			#############
# 			# ARIA Tabs #
# 			#############
# 			# Add WAI-ARIA attributes:
# 			# http://prgssr.ru/development/ispolzovanie-aria-v-html5.html
# 			# http://jonathantneal.github.io/posthtml-aria-tabs/
# 			# [WARNING] Disable, because I use “ul/li” for progressive enhancements:
# 			# http://jonathantneal.github.io/posthtml-aria-tabs/#caveats
# 			# require('posthtml-aria-tabs')()
# 		]
# 	build:
# 		files: [
# 			expand: true
# 			cwd: "<%= templates.paths.output_path %>"
# 			src: ['**/*.html']
# 			dest: "<%= templates.paths.output_path %>"
# 			]


# [DEPRECATED][BUG] grunt-coffee-format make files wrong:
# https://github.com/NotBobTheBuilder/grunt-coffee-format/issues/3
# #######################
# # grunt-coffee-format #
# #######################
# # Formatter for CoffeeScript files:
# # https://www.npmjs.com/package/coffee-fmt
# # Grunt adapter:
# # https://www.npmjs.com/package/grunt-coffee-format
# module.exports =
# 	options:
# 		# [INFO] Use tabs, not spaces:
# 		# https://www.npmjs.com/package/grunt-coffee-format#optionstab
# 		tab: '\t'
# 	theme:
# 		files:
# 			src: ["<%= templates.yamlconfig.output_path %>/<%= templates.yamlconfig.theme_static_dir %>/coffee/**/*.coffee"]
# 	personal:
# 		files:
# 			src: ["<%= templates.paths.output_path %>/coffee/**/*.coffee"]


# [DEPRECATED] I migrate to HTML-minifier, arguments:
# [LINK] “htmlmin.coffee”
# ############
# # minimize #
# ############
# # Minify HTML:
# # https://www.npmjs.com/package/minimize
# # https://www.npmjs.com/package/grunt-minify-html
# # [NOTE] Use HTML parser, grunt-contrib-htmlmin use regexes.
# # grunt-htmlclean simply than grunt-minify-html:
# # https://github.com/anseki/htmlclean/issues/11#issuecomment-389386676
# module.exports =
# 	# https://github.com/Swaagie/minimize#options-1
# 	# All set false by default:
# 	# https://github.com/Swaagie/minimize#options
# 	options:
# 		# [INFO] I'm not support spare attirbutes for older browsers:
# 		# https://github.com/Swaagie/minimize#spare
# 		spare: false
# 		# [INFO] W3C recommends quotes:
# 		# https://www.w3schools.com/html/html_attributes.asp
# 		quotes: true
# 	minimize:
# 		files: [
# 			expand: true
# 			cwd: "."
# 			src: ["<%= templates.paths.output_path %>/**/*.html"]
# 			dest: "."
# 			]


# [DEPRECATED] I hate private discussions
# #########
# # ROT13 #
# #########
# # ROT13 algorithm for e-mail obfuscation:
# # https://en.wikipedia.org/wiki/ROT13
# # https://superuser.com/a/235965/572069
# # Generated by:
# # http://rot13.florianbersier.com/
# # [NOTE] In this script fixed «eo is not defined» bug:
# # https://github.com/xpressyoo/Email-Obfuscator/issues/1
# document.getElementById('obf').innerHTML = \
# '<n uers="znvygb:FnfunPurealxuRzcerffBsHavirefr@xevfgvavgn.eh?fhowrpg=R-znvy gb Fnfun Purealxu" \
# gnetrg="_oynax">r-znvy</n>'.replace(/[a-zA-Z]/g, (c) ->
# 	String.fromCharCode if (if c <= 'Z' then 90 else 122) >= (c = c.charCodeAt(0) + 13) then c else c - 26
# )


# [DEPRECATED] Compress files as cssnano; don't remove duplicates
#############
# css-purge #
#############
# Compress CSS:
# http://rbtech.github.io/css-purge/
# Grunt wrapper:
# https://github.com/dominikwilkowski/grunt-css-purge
# Options:
# https://www.npmjs.com/package/css-purge#config-options
# module.exports =
# 	task:
# 		files: [
# 			expand: true
# 			cwd: "<%= templates.paths.output_path %>/<%= templates.yamlconfig.theme_static_dir %>/css"
# 			src: ['!**/**/*.css'
# 					'**/**/*.min.css']
# 			dest: "<%= templates.paths.output_path %>/<%= templates.yamlconfig.theme_static_dir %>/css"
# 			ext: '.min.css'
# 			]
