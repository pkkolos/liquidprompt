#######################################
# LIQUID PROMPT DEFAULT TEMPLATE FILE #
#######################################

# Available features:
# LP_JOBS screen sessions/running jobs/suspended jobs
# LP_USER user
# LP_HOST hostname
# LP_PERM a colon ":"
# LP_PWD current working directory
# LP_VENV Python virtual environment
# LP_PROXY HTTP proxy
# LP_VCS the content of the current repository
# LP_ERR last error code
# LP_MARK prompt mark
# LP_TIME current time
# LP_MARK_PREFIX user-defined prompt mark prefix (helpful if you want 2-line prompts)
# LP_PS1_PREFIX user-defined general-purpose prefix (default set a generic prompt as the window title)
# LP_PS1_POSTFIX user-defined general-purpose postfix
# LP_BRACKET_OPEN open bracket
# LP_BRACKET_CLOSE close bracket

# Remember that most features come with their corresponding colors

# add time and jobs
LP_PS1="${LP_PS1_PREFIX}${LP_TIME}${LP_JOBS}"
LP_TITLE="${LP_PS1_PREFIX}${LP_JOBS}"

# add user, host and permissions colon
LP_PS1="${LP_PS1}${LP_BRACKET_OPEN}${LP_USER}${LP_HOST}${LP_PERM}"
LP_TITLE="${LP_TITLE}${LP_BRACKET_OPEN}${LP_USER}${LP_HOST}${LP_PERM}"

LP_PS1="${LP_PS1}${LP_PWD}${LP_BRACKET_CLOSE}${LP_VENV}${LP_PROXY}"
LP_TITLE="${LP_TITLE}${LP_PWD}${LP_BRACKET_CLOSE}${LP_VENV}${LP_PROXY}"

# Add VCS infos
# If root, the info has not been collected unless LP_ENABLE_VCS_ROOT
# is set.
LP_PS1="${LP_PS1}${LP_VCS}"

# add return code and prompt mark
LP_PS1="${LP_PS1}${LP_ERR}${LP_MARK_PREFIX}${LP_COLOR_MARK}${LP_MARK}${LP_PS1_POSTFIX}"
LP_TITLE="${LP_TITLE} ${LP_COLOR_MARK}${LP_MARK}"

# "invisible" parts
# Get the current prompt on the fly and make it a title
LP_TITLE="$(_lp_title "$LP_TITLE")"

# Insert it in the prompt
LP_PS1="${LP_TITLE}${LP_PS1}"

# vim: set et sts=4 sw=4 tw=120 ft=sh: