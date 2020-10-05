%Layout
\LoadClass{extarticle}
\RequirePackage[margin=2cm]{geometry}
\setlength{\parindent}{0pt}
\newcommand{\divider}{\textcolor{body!30}{\hdashrule{\linewidth}{0.6pt}{0.5ex}}\medskip}


%Colours
\RequirePackage[skins]{tcolorbox}
\definecolor{airforceblue}{rgb}{0.36, 0.54, 0.66}
\definecolor{BurntOrange}{rgb}{0.8, 0.33, 0.0}
\definecolor{SlateGrey}{HTML}{2E2E2E}
\definecolor{LightGrey}{HTML}{666666}
\colorlet{heading}{airforceblue}
\colorlet{accent}{airforceblue}
\colorlet{emphasis}{SlateGrey}
\colorlet{title}{airforceblue}
\colorlet{body}{LightGrey}


%Fonts
\RequirePackage{fontawesome}
\usepackage[default]{lato} 
\usepackage{hyperref}
\hypersetup{
    colorlinks=true,
    linkcolor=BurntOrange,
    filecolor=BurntOrange,      
    urlcolor=BurntOrange,
}

%title
\renewcommand\maketitle{    
\begin{center}
    {\color{title}\Huge\bfseries\MakeUppercase\@title}%
   \medskip\par
   {\color{emphasis}\large\MakeUppercase\@date}
   \medskip\par
   {\color{emphasis}\large\@author}
   \bigskip\par
\end{center}
}

%staffprofile
\RequirePackage{enumitem}
\setlist{leftmargin=*,labelsep=0.5em,nosep,itemsep=0.25\baselineskip,after=\vskip0.25\baselineskip}
\setlist[itemize]{label=\itemmarker}
\newcommand{\emailsymbol}{\faAt}
\newcommand{\email}[1]{\printinfo{\emailsymbol}{#1}}
\newcommand{\staffprofile}[3]{
  \smallskip
  \textcolor{emphasis}{\textbf{#1}}\par %Name
  \textcolor{body}{#2}\par %Expertise
  {\color{accent}\emailsymbol}\textcolor{accent}{\textbf{\textit{#3}}}\par %Email
}

%projectsection
\newcommand{\projectsection}[2][]{%
  \bigskip%
  \ifstrequal{#1}{}{}{\marginpar{\vspace*{\dimexpr1pt-\baselineskip}\raggedright\input{#1}}}%
  {\color{heading}\Large\bfseries\MakeUppercase{#2}}\\[-1ex]%
  {\color{heading}\rule{\linewidth}{2pt}\par}\medskip
}

%projecttitle
\newcommand{\projecttitle}[1]{
  \bigskip
    {\color{heading}\bfseries\MakeUppercase{#1}}\par
    \smallskip
}


%projectcontact
\newcommand{\groupsymbol}{\faGroup}
\newcommand{\groupcontact}[1]{\printinfo{\groupsymbol}{#1}}
\newcommand{\projectcontact}[1]{
\medskip\par
  {\color{accent}\groupsymbol}  \textcolor{accent}{\textbf{\textit{#1}}}\par %Group
    {\color{heading}\rule{\linewidth}{0.5pt}\par}\medskip
}

