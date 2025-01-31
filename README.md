[![make](https://github.com/yegor256/fail-fast/actions/workflows/l3build.yml/badge.svg)](https://github.com/yegor256/fail-fast/actions/workflows/l3build.yml)
[![CTAN](https://img.shields.io/ctan/v/fail-fast)](https://ctan.org/pkg/fail-fast)
[![License](https://img.shields.io/badge/license-MIT-green.svg)](https://github.com/yegor256/fail-fast/blob/master/LICENSE.txt)

This LaTeX package helps you make your build more fragile, which is good if you care about quality.
Every warning it will turn into an error and LaTeX engine will fail with a non-zero error message.

First, [install it](https://en.wikibooks.org/wiki/LaTeX/Installing_Extra_Packages)
from [CTAN](https://ctan.org/pkg/fail-fast)
and then use in the preamble:

```tex
\documentclass{article}
\usepackage{fail-fast}
\begin{document}
This reference is broken: \ref{foo}
\end{fail-fast}
\end{document}
```

Otherwise, you can download [`fail-fast.sty`](https://raw.githubusercontent.com/yegor256/fail-fast/gh-pages/fail-fast/fail-fast.sty) and add to your project.

If you want to contribute yourself, make a fork, then create a branch,
then run `l3build ctan` in the root directory.
It should compile everything without errors. If not, submit an issue and wait.
Otherwise, make your changes and then run `l3build ctan` again. If the build is
still clean, submit a pull request.

Copyright (c) 2023-2025 Yegor Bugayenko, MIT License
