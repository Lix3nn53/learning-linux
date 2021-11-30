#!/usr/bin/env bash

# ====================CONFIG THIS =============================== #
export COLOR_01="#282A36"           # HOST
export COLOR_02="#F37F97"           # SYNTAX_STRING
export COLOR_03="#5ADECD"           # COMMAND
export COLOR_04="#F2A272"           # COMMAND_COLOR2
export COLOR_05="#8897F4"           # PATH
export COLOR_06="#C574DD"           # SYNTAX_VAR
export COLOR_07="#79E6F3"           # PROMP
export COLOR_08="#FDFDFD"           #

export COLOR_09="#414458"           #
export COLOR_10="#FF4971"           # COMMAND_ERROR
export COLOR_11="#18E3C8"           # EXEC
export COLOR_12="#FF8037"           #
export COLOR_13="#556FFF"           # FOLDER
export COLOR_14="#B043D1"           #
export COLOR_15="#3FDCEE"           #
export COLOR_16="#BEBEC1"           #

export BACKGROUND_COLOR="#1D1F28"   # Background Color
export FOREGROUND_COLOR="#FDFDFD"   # Text
export CURSOR_COLOR="$FOREGROUND_COLOR" # Cursor
export PROFILE_NAME="Lovelace"
# =============================================================== #







# =============================================================== #
# | Apply Colors
# ===============================================================|#
SCRIPT_PATH="${SCRIPT_PATH:-$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)}"
PARENT_PATH="$(dirname "${SCRIPT_PATH}")"

# Allow developer to change url to forked url for easier testing
# IMPORTANT: Make sure you export this variable if your main shell is not bash
BASE_URL=${BASE_URL:-"https://raw.githubusercontent.com/Mayccoll/Gogh/master"}


if [[ -e "${PARENT_PATH}/apply-colors.sh" ]]; then
  bash "${PARENT_PATH}/apply-colors.sh"
else
  if [[ "$(uname)" = "Darwin" ]]; then
    # OSX ships with curl and ancient bash
    bash -c "$(curl -so- "${BASE_URL}/apply-colors.sh")"
  else
    # Linux ships with wget
    bash -c "$(wget -qO- "${BASE_URL}/apply-colors.sh")"
  fi
fi