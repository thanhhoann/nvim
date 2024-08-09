local M = {}

-- RULES
local prompt_good = "Check my commit message is follow these rules:"
local prompt_bad = "And also check my commit message is avoid these:"
local prompt_good_a =
  "Atomic and Focused: Each commit should represent a single logical change. Avoid combining multiple changes into one commit."
local prompt_good_b =
  "Descriptive Commit Message: A clear commit message explains what the commit does and why the change was made, providing enough context without reading the code."
local prompt_good_c =
  "Follow Conventional Commit Guidelines: Using standard commit guidelines keeps the history clean and consistent. Common prefixes include feat, fix, chore, refactor, and docs."
local prompt_good_d =
  "Properly Scoped: Commits should include all changes related to a specific feature or bug fix, avoiding partial changes that might leave the codebase in an inconsistent state."
local prompt_bad_a = "Large and Unfocused: Commits with too many changes are hard to understand and review."
local prompt_bad_b = "Vague or Misleading Messages: Non-informative messages make tracking changes difficult."
local prompt_bad_c =
  "Unrelated Changes: Combining unrelated changes in a single commit complicates the review process and introduces bugs."
local prompt_bad_d =
  "Lack of Context: A bad commit lacks context, making it hard to understand the reason behind a change."

-- ACTIONS
local prompt_action =
  "Provide for me a a suggestion to improve my commit message. Then provide a fix for the commit message, it must follow the conventional commit guidelines. When answering, make sure to provide the commit message, avoid long explainations."

M.prompt = prompt_good
  .. "\n"
  .. prompt_good_a
  .. "\n"
  .. prompt_good_b
  .. "\n"
  .. prompt_good_c
  .. "\n"
  .. prompt_good_d
  .. "\n"
  .. prompt_bad
  .. "\n"
  .. prompt_bad_a
  .. "\n"
  .. prompt_bad_b
  .. "\n"
  .. prompt_bad_c
  .. "\n"
  .. prompt_bad_d
  .. "\n"
  .. prompt_action

return M
