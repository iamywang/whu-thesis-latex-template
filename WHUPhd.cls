% -----------------------------------------------------------------------------
% Latex Template for Wuhan University Thesis
%
% Ack to Huang Zhenghua (http://aff.whu.edu.cn/huangzh/)
%
% Modified by iamywang
% Date: Jan 29, 2024
% Updated: Apr 13, 2024
% -----------------------------------------------------------------------------

\ProvidesClass{WHUPhd}

\LoadClass[a4paper,zihao=-4,twoside,openany]{ctexbook}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions
%------------------------ Page layout ----------------------------------
\RequirePackage{fancyhdr,hyperref}
\RequirePackage[top=3truecm,bottom=2.9truecm,left=2.8truecm,right=2.5truecm,xetex]{geometry}

\newtoks\fenleihao
\newtoks\bianhao
\newtoks\UDC
\newtoks\miji

\newtoks\Cstudentid
\newtoks\Csupervisor
\newtoks\Cmajor
\newtoks\Cspeciality

\newtoks\Etitle
\newtoks\Eauthor
\newtoks\Esupervisor
\newtoks\Eschoolname
\newtoks\Edate

\setCJKfamilyfont{song}{SimSun}
\setCJKfamilyfont{hei}{SimHei}
\setCJKfamilyfont{kai}{KaiTi}
\setCJKfamilyfont{fs}{FangSong}

\renewcommand{\songti}{\CJKfamily{song}}    % 宋体
\renewcommand{\heiti}{\CJKfamily{hei}}      % 黑体
\renewcommand{\kaishu}{\CJKfamily{kai}}     % 楷体
\renewcommand{\fangsong}{\CJKfamily{fs}}    % 仿宋

\setmainfont{Times New Roman}
\setsansfont{Times New Roman}
\setCJKmainfont{SimSun}
\setCJKsansfont{KaiTi}

%===============================================页眉设置=====================================================%
\renewcommand{\headrulewidth}{0.5pt}    %在页眉下画一个0.5pt宽的分隔线
\renewcommand{\footrulewidth}{0pt}      % 在页脚不画分隔线。

\let\ps@oldplain\ps@plain

 \fancyhf{}  %清除以前对页眉页脚的设置
 \fancyhead[CE]{\zihao{-5}武汉大学博士学位论文}                       %偶数页页眉居中位置的设置. 不填则为空.
 \fancyhead[CO]{\zihao{-5}\@title}    %L,C,R 是左中右; O,E 是奇偶. 可以自己组合调整.
 \fancyfoot[C]{\zihao{-5}\thepage}                     %页面下侧的设置. 大括号内置空, 表示什么也不填. 反之, 没有此命令的话, 会在页脚出现页码
 \newcommand{\fancyfancy}{\fancypagestyle{plain}{%
  \fancyhf{}
   \fancyhead[CE]{\zihao{-5}武汉大学博士学位论文}                       %偶数页页眉居中位置的设置. 不填则为空.
 \fancyhead[CO]{\zihao{-5}\@title}    %L,C,R 是左中右; O,E 是奇偶. 可以自己组合调整.
 \fancyfoot[C]{\zihao{-5}\thepage}}}
%%%=== 封面 ===%%%
\def\maketitle{%
  \null
  \thispagestyle{empty}%
  \begin{center}\leavevmode
    {\fangsong \zihao{4}%
    \begin{tabular}{lp{2cm}p{6cm}lp{2cm}}
      \raisebox{-0.5ex}[0pt]{\makebox[1.5cm][s]{分\hfill 类\hfill 号}} &
      \raisebox{-0.5ex}[0pt]{\makebox[2cm][c]{\the\fenleihao}} & \hfill &
      \raisebox{-0.5ex}[0pt]{\makebox[1.5cm][s]{密\hfill 级}} &
      \raisebox{-0.5ex}[0pt]{\makebox[2cm][c]{\the\miji}} \\
      \cdashline{2-2}[1.5pt/0.5pt]\cdashline{5-5}[1.5pt/0.5pt]
      \raisebox{-0.5ex}[0pt]{\makebox[1.5cm][s]{U\hfill D\hfill C}} &
      \raisebox{-0.5ex}[0pt]{\makebox[2cm][c]{\the\UDC}} & \hfill &
      \raisebox{-0.5ex}[0pt]{\makebox[1.5cm][s]{编\hfill 号}} &
      \raisebox{-0.5ex}[0pt]{\makebox[2cm][c]{\the\bianhao}} \\
      \cdashline{2-2}[1.5pt/0.5pt]\cdashline{5-5}[1.5pt/0.5pt]
    \end{tabular}
    }
    \par
    \vspace*{15mm} %插入空白
    {\songti \zihao{2} \ziju{1} %武汉大学
    \includegraphics[width=0.4\textwidth]{wudaname.eps}\\
    \bfseries 博士学位论文 \\[8mm]
    \ziju{0} \zihao{-2}（学术学位）}\\
    \vspace{2cm}
    {\kaishu \zihao{1}  \@title \par}%
%    \vspace{4cm}
     \vfill\vfill\vfill
    {\songti \zihao{4}
    \setlength{\tabcolsep}{0pt}
    \begin{tabular}{ccc}
      \makebox[5cm][s]{研\hfill 究\hfill 生\hfill 姓\hfill 名} &
      \makebox[0.7cm][r]{：} &
      \makebox[5cm][s]{\@author} \\
      \makebox[5cm][s]{学\hfill 号} &
      \makebox[0.7cm][r]{：} &
      \makebox[5cm][s]{\the\Cstudentid} \\
      \makebox[5cm][s]{校\hfill 内\hfill 导\hfill 师\hfill 姓\hfill 名、\hfill 职\hfill 称} &
      \makebox[0.7cm][r]{：} &
      \makebox[5cm][s]{\the\Csupervisor} \\
      \makebox[5cm][s]{学\hfill 科、\hfill 专\hfill 业\hfill 名\hfill 称} &
      \makebox[0.7cm][r]{：} &
      \makebox[5cm][s]{\the\Cmajor} \\
      \makebox[5cm][s]{研\hfill 究\hfill 方\hfill 向} &
      \makebox[0.7cm][r]{：} &
      \makebox[5cm][s]{\the\Cspeciality} \\
     \end{tabular}
    }
    \par
    \vspace{25mm}
    {
    {\heiti \zihao{3} \@date \par}%
    }
  \end{center}%
  \null
  }

%%------------------------常用宏包-----------------------------------
\RequirePackage{amsmath,amssymb}% AMSLaTeX宏包.
\RequirePackage[amsmath,thmmarks]{ntheorem}
\RequirePackage{graphicx}                 % 图形
\RequirePackage{color,xcolor}             %支持彩色
\RequirePackage{cite} % 参考文献引用, 得到形如 [3-7] 的样式.
\RequirePackage{url}
\RequirePackage{enumerate}
\RequirePackage{bookmark}
\RequirePackage{arydshln}
\RequirePackage{colortbl}
%%----------------------- Theorems -----------------------------------
\theoremstyle{plain}
\theoremheaderfont{\heiti}
\theorembodyfont{\songti} \theoremindent0em
\theorempreskip{0pt}
\theorempostskip{0pt}
\theoremnumbering{arabic}
\newtheorem{theorem}{\hspace{2em}定理}[section]
\newtheorem{definition}{\hspace{2em}定义}[section]
\newtheorem{lemma}{\hspace{2em}引理}[section]
\newtheorem{corollary}{\hspace{2em}推论}[section]
\newtheorem{proposition}{\hspace{2em}性质}[section]
\newtheorem{example}{\hspace{2em}例}[section]
\newtheorem{remark}{\hspace{2em}注}[section]

\theoremstyle{nonumberplain}
\theoremheaderfont{\heiti}
\theorembodyfont{\normalfont \rm \songti}
\theoremindent0em \theoremseparator{\hspace{1em}}
\theoremsymbol{$\square$}
\newtheorem{proof}{\hspace{2em}证明}

%%%---  Publications -------------------------------
\newenvironment{publications}[1]
  {\renewcommand\bibname{}\begin{thebibliography}{#1}}
  {\end{thebibliography}}

%%%--- \upcite ----------------------------------------
\newcommand{\upcite}[1]{\textsuperscript{\cite{#1}}}  %自定义新命令\upcite, 使参考文献引用以上标出现

%%%===  suppress extra inter-line spacing in \list environments
\makeatletter \setlength\partopsep{0pt}
\def\@listI{\leftmargin\leftmargini
            \parsep 0pt
            \topsep \parsep
            \itemsep \parsep}
\@listI
\def\@listii {\leftmargin\leftmarginii
              \labelwidth\leftmarginii
              \advance\labelwidth-\labelsep
              \parsep    \z@ \@plus\z@  \@minus\z@
              \topsep    \parsep
              \itemsep   \parsep}
\def\@listiii{\leftmargin\leftmarginiii
              \labelwidth\leftmarginiii
              \advance\labelwidth-\labelsep
              \parsep    \z@ \@plus\z@  \@minus\z@
              \topsep    \parsep
              \itemsep   \parsep}
\def\@listiv{\leftmargin\leftmarginiv
              \labelwidth\leftmarginiv
              \advance\labelwidth-\labelsep
              \parsep    \z@ \@plus\z@  \@minus\z@
              \topsep    \parsep
              \itemsep   \parsep}
\def\@listv{\leftmargin\leftmarginv
              \labelwidth\leftmarginv
              \advance\labelwidth-\labelsep
              \parsep    \z@ \@plus\z@  \@minus\z@
              \topsep    \parsep
              \itemsep   \parsep}
\def\@listvi{\leftmargin\leftmarginvi
              \labelwidth\leftmarginvi
              \advance\labelwidth-\labelsep
              \parsep    \z@ \@plus\z@  \@minus\z@
              \topsep    \parsep
              \itemsep   \parsep}
%
% Change default margins for \list environments
\setlength\leftmargini   {2\ccwd} \setlength\leftmarginii
{\leftmargini} \setlength\leftmarginiii {\leftmargini}
\setlength\leftmarginiv  {\leftmargini} \setlength\leftmarginv
{\ccwd} \setlength\leftmarginvi  {\ccwd} \setlength\leftmargin
{\leftmargini} \setlength\labelsep      {.5\ccwd}
\setlength\labelwidth    {\leftmargini}
%
\setlength\listparindent{2\ccwd}
% Change \listparindent to 2\ccwd in \list
\def\list#1#2{\ifnum \@listdepth >5\relax \@toodeep
     \else \global\advance\@listdepth\@ne \fi
  \rightmargin \z@ \listparindent2\ccwd \itemindent \z@
  \csname @list\romannumeral\the\@listdepth\endcsname
  \def\@itemlabel{#1}\let\makelabel\@mklab \@nmbrlistfalse #2\relax
  \@trivlist
  \parskip\parsep \parindent\listparindent
  \advance\linewidth -\rightmargin \advance\linewidth -\leftmargin
  \advance\@totalleftmargin \leftmargin
  \parshape \@ne \@totalleftmargin \linewidth
  \ignorespaces}

\makeatother

%%% ---- 章节标题设置 ----- %%%%
\CTEXsetup[nameformat={\normalfont\zihao{-2}\heiti},
titleformat={\normalfont\zihao{-2}\heiti},
number={\arabic{chapter}},name={,},afterskip={8pt},beforeskip={-28pt}]{chapter}
\CTEXsetup[format+={\normalfont\zihao{3}\heiti\raggedright},afterskip={2pt},beforeskip={0pt}]{section}
\CTEXsetup[format+={\normalfont\zihao{4}\heiti\raggedright},afterskip={2pt},beforeskip={0pt}]{subsection}
\CTEXsetup[format+={\normalfont\zihao{-4}\heiti\raggedright},afterskip={2pt},beforeskip={0pt}]{subsubsection}
\CTEXoptions[bibname={\zihao{4} \bfseries 参考文献}]
\setcounter{tocdepth}{2}
\setcounter{secnumdepth}{4}

%---------------------------------------------------
\renewcommand{\contentsname}{\ziju{1}目录}
\renewcommand{\listfigurename}{插图索引}
\renewcommand{\listtablename}{表格索引}

\renewcommand{\arraystretch}{1.39}
\newcommand\acknowledgement{\backmatter\chapter[致谢]{\ziju{1}致谢}}
\newcommand\reseachresult{\backmatter\chapter{攻博期间发表的科研成果目录}}

%%%=== 图片路径=== %%%
\RequirePackage[font=small,textfont=sf,labelfont=sf]{caption}
\RequirePackage[list=false,hypcap=true]{subcaption}
\graphicspath{{figures/title/}, {figures/chapter1/},
{figures/chapter2/}, {figures/chapter3/},
{figures/chapter4/}, {figures/chapter5/},
{figures/chapter6/}}

\allowdisplaybreaks
\endlinechar `\^^M
\endinput
