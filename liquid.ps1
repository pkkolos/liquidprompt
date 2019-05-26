#######################################
# LIQUID PROMPT DEFAULT TEMPLATE FILE #
#######################################

# Available sections can be found in the documentation:
# https://liquidprompt.readthedocs.io/en/stable/theme/default.html#templates

# Remember that most features come with their corresponding colors.

# add time and jobs
LP_PS1="${LP_TIME}${LP_JOBS}"
LP_TITLE="${LP_JOBS}"

# add user, host and permissions colon
LP_PS1+="${LP_BRACKET_OPEN}${LP_USER}${LP_HOST}${LP_PERM}"
LP_TITLE+="${LP_BRACKET_OPEN}${LP_USER}${LP_HOST}${LP_PERM}"

LP_PS1+="${LP_PWD}${LP_BRACKET_CLOSE}${LP_SCLS}${LP_VENV}${LP_PROXY}"
LP_TITLE+="${LP_PWD}${LP_BRACKET_CLOSE}${LP_SCLS}${LP_VENV}${LP_PROXY}"

# Add VCS infos
LP_PS1+="${LP_VCS}"

# add return code and prompt mark
LP_PS1+="${LP_ERR}${LP_MARK_PREFIX}${LP_COLOR_MARK}${LP_MARK}"
LP_TITLE+="${LP_ERR} ${LP_MARK}"

# Get the current prompt on the fly and make it a title
_lp_title "${LP_TAG:-"$LP_TITLE"}"

# vim: set et sts=4 sw=4 tw=120 ft=sh:
