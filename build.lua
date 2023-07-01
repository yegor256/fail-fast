module = "fail-fast"
ctanupload = true
typesetopts = "-interaction=batchmode -shell-escape -halt-on-error"
checkopts = "-interaction=batchmode -shell-escape -halt-on-error"
tagfiles = {"build.lua", "fail-fast.dtx"}
dynamicfiles = {"_minted-*"}
checkengines = {"pdftex", "luatex", "xetex"}

uploadconfig = {
  pkg = "fail-fast",
  version = "0.0.0",
  author = "Yegor Bugayenko",
  uploader = "Yegor Bugayenko",
  email = "yegor256@gmail.com",
  note = "Bug fixes",
  announcement = "",
  ctanPath = "/macros/latex/contrib/fail-fast",
  bugtracker = "https://github.com/yegor256/fail-fast/issues",
  home = "",
  description = "This LaTeX package helps you make the build more fragile by turning warnings into errors",
  development = "",
  license = "mit",
  summary = "Turns warnings into errors",
  repository = "https://github.com/yegor256/fail-fast",
  support = "",
  topic = {"tools"}
}

function update_tag(file, content, tagname, tagdate)
  return string.gsub(
    string.gsub(content, "0%.0%.0", tagname),
    "0000%-00%-00", os.date("%Y-%m-%d")
  )
end
