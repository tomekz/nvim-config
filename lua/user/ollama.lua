local status_ok, gen = pcall(require, "gen")
if not status_ok then
  return
end

gen.model = "codellama" -- default 'mistral:instruct'

gen.prompts["Fix_Code"] = {
  prompt = "Fix the following code. Only ouput the result in format ```$filetype\n...\n```:\n```$filetype\n$text\n```",
  -- replace = true,
  extract = "```$filetype\n(.-)```",
}

gen.prompts["Change_Code"] = {
  prompt = "Regarding the following code, $input, only ouput the result in format ```$filetype\n...\n```:\n```$filetype\n$text\n```",
  -- replace = true,
  extract = "```$filetype\n(.-)```",
}

gen.prompts["Review_Code"] = {
  prompt = "Review the following code and make concise suggestions:\n```$filetype\n$text\n```",
}
