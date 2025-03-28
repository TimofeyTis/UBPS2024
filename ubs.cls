%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%  LaTeX class for preparing papers for "Upravlenie Bolshimi Sistemami"
%%  (under MikTeX 1.2c--2.4 platform)
%%  The class is based on the analogous class of "Avtomatika i Telemekhanika".
%%  charset=windows-1251
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\NeedsTeXFormat{LaTeX2e}[1998/12/01]
\ProvidesClass{ubs}[2005/05/07 alpha v2.1
LaTeX class for preparing papers to "Upravlenie Bolshimi Sistemami.
Requires A.Lebedev's Russian fonts set "pscyr" (http://tex.imm.uran.ru/texserver/fonts/pscyr/pscyr4c/)."]
\ClassWarningNoLine{ubs}{This class requires MikTeX 1.2c--2.4}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}

\ProcessOptions
\LoadClass[a5paper,11pt,twoside]{article} % ����������� �����
\RequirePackage{cmap} % ������������� ��������� ��� copy-paste
\RequirePackage[T1,T2A]{fontenc} % ������
\RequirePackage[cp1251]{inputenc} % � ��������� Windows
\RequirePackage[english,russian]{babel} % �����������
\RequirePackage{pscyr} % !!! ����� ������� ������� �. �������� (http://tex.imm.uran.ru/texserver/fonts/pscyr/pscyr4c/). ����� ��� ����������� ���������� � BOLD ARIAL, BOLD ITALIC ARIAL. ���� ����� ���������� ����������, ���� ������ �������� ������� ��� "as it is".
\RequirePackage[leqno]{amsmath} % ����������� ����������� ��� ������� ������
\RequirePackage{amsfonts} % �� �� �����
\RequirePackage{amssymb} % �� �� �����
\RequirePackage{ifthen} % ����������� ����������� ���������� ��������
\RequirePackage{calc} % ����������� ����������� �������������� ��������
\RequirePackage{myruss} % !!! ������������� ����� ���������� (������ ����� ������� ��������)
\RequirePackage{ruslist} % !!! �������
\RequirePackage{verbatim} % ��� ����������� ���������������� ����� ������ \begin{comment} ... \end{comment}
\RequirePackage{108-170} % !!! ������� �����
\RequirePackage{ccaption} % ����������� ����������� ������ � ��������� � �������� � ��������.
%%  !!! --- ��� �������� ������������� ������

%% ������
\renewcommand{\sfdefault}{far}
\renewcommand{\rmdefault}{ftm}

%%  ����� ������ ������ ������
\sloppy

% ���������
\setlength{\parindent}{7.5 mm} % �������� ������
\setlength\parskip{0\p@ \@plus \p@} % �������� ����� ��������
\setlength\baselineskip{12pt plus 1 pt minus 1 pt} % ����������� �������� 12 ��

%%  ����� ��������� �������� (��� ������� � ���)
\def\le{\leqslant}
\def\leq{\leqslant}
\def\ge{\geqslant}
\def\geq{\geqslant}

%%  ���������
\renewenvironment{abstract}%
{\vspace{0pt}
\begin{center}}%
{\end{center}\vspace{6pt}}

%%  ������ ����������
\def\@biblabel#1{#1.\hfill}
\addto\extrasrussian{%
\def\bibname{\center\normalsize\textsf\textbf\textit{����������}}
\def\refname{\center\normalsize\textsf\textbf\textit{����������}}}

%% The following definition is based on OL.sty VERSION: 1.1 of Optical Society of America
%% to normalize parskib bewteen bibitems and the vertical indent before the bibliography
\renewenvironment{thebibliography}[1]
     {\vspace{-24pt}\section*{\refname
        \@mkboth{\MakeUppercase\refname}{\MakeUppercase\refname}}%
      \list{\@arabic\c@enumiv .}
           {\settowidth\labelwidth{0in}%
            \leftmargin\labelwidth
  \setlength{\parsep}{0pc}
  \setlength{\labelsep}{12 pt}
  \setlength{\itemsep}{0.05pc}%{-0.06in}
  \setlength{\listparindent}{0in}
  \setlength{\itemindent}{0in}
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m \normalsize}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist \vskip.2in}
\let\@openbib@code\@empty
\newcommand\OSAJNLReferences{\thebibliography{}}
\newcommand\OSAJNLReflinks{\thebibliography{}}
\newcommand\References{\thebibliography{}}
\let\endOSAJNLReferences\endthebibliography
\let\endOSAJNLlinks\endthebibliography
\let\endReferences\endthebibliography

%%  ����������
\newcounter{isappendix}
\setcounter{isappendix}{0}
\def\appendix%
{\section*{����������}%
\refstepcounter{isappendix}}
\@addtoreset{equation}{isappendix}
\def\theequation%
{{\ifnum \arabic{isappendix} > 0 {\mbox{�.}\arabic{equation}}%
\else{\arabic{equation}}\fi}}

%%  ������� ��� ����������� ���������
\def\udk#1{\gdef\@udk{\small#1\\}} %% ��� ���
\def\bbk#1{\gdef\@bbk{\small#1\\}} %% ��� ���
%%\def\bbk#1{\gdef\@bbk{#1}} %% ��� ���
\def\title#1{\gdef\@title{#1}} %% �������� ������
\def\engtitle#1{\gdef\@engtitle{#1}} %% �������� ������ �� ����������
\def\thanks#1{\gdef\@thanks{#1}} %% ������������� � ������ �� ��������������
\def\authors#1{\gdef\@authors{#1}} %% ������
\def\engauthors#1{\gdef\@engauthors{#1}} %% ������ �� ����������
\def\organization#1{\gdef\@organization{{\large(\textit{#1})}}} %% ����� ������
\def\abstract#1{\gdef\@abstract{\parbox{108mm}{ \textit{\footnotesize #1} }}} %% ����� ���������
\def\engabstract#1{\gdef\@engabstract{\parbox{108mm}{\textit{\footnotesize Abstract: #1}}}} %% ����� ��������� �� ����������
\def\emails#1{\gdef\@emails{#1}} %% ������ ����������� �����
\def\rubric#1{\gdef\@rubric{\leavevmode\par #1}}
\def\issue#1{\gdef\@issue{#1}} %% ������ ��������
\def\keywords#1{\gdef\@keywords{#1}} %% �������� �����
\def\engkeywords#1{\gdef\@engkeywords{#1}} %% �������� ����� �� ����������
\def\presented#1{\gdef\@presented{#1}} %% ������������ ������
\def\received#1{\gdef\@received{#1}} %% ������ ��������
\def\published#1{\gdef\@published{#1}} %% ���� �������������

%�����������%
\renewcommand{\@evenhead}{\textrm{\textit{���������� �������� ���������. ������ \@issue\hfil}}}
\renewcommand{\@oddhead}{\textrm{\textit{\parbox{\textwidth}{\raggedleft \@rubric}}}}
\renewcommand{\@evenfoot}{\textrm{\thepage\hfil}}
\renewcommand{\@oddfoot}{\textrm{\hfil\thepage}}

%% ������
\renewcommand{\footnoterule}{\vspace*{-6pt}%
     \hrule width .4\columnwidth%
     \vspace*{5.6pt}}
\renewcommand{\@makefnmark}{\noindent\hbox{\mathsurround=1pt%
$^{\@thefnmark}$}}
\renewcommand{\@makefntext}[1]{\parindent=1em\noindent%
\hbox to 1.8em{\hss\@makefnmark}\footnotesize\textit{#1}}

%%  ���������
\renewcommand{\maketitle}{%
\begin{center}
\large\bfseries\MakeUppercase{\textar{\textbf{\@title}}}\@thanks%
\\[6pt] %
\normalsize\normalfont
\@authors\\[6pt]
\@abstract\\[6pt]
\end{center}
{\small �������� �����: \@keywords.}}

%%  ���������� � ������ �� ���������� �����
\newcommand{\makeenginfo}{%
\begin{flushleft}
\large\bfseries\MakeUppercase{\textbf{\@engtitle}}\\[6pt]
\normalsize\normalfont
\@engauthors\\[6pt]
\@engabstract\\[6pt]
\end{flushleft}
{\small Keywords: \@engkeywords.}
\begin{flushleft}
\@udk%
\@bbk%
\end{flushleft}
}

%%  �������������� ���������� � ����� ������
\newcommand{\makeauxinfo}{%
\vspace{6pt}\begin{flushright}
\emph{������ ������������ � ����������\\������ ������������ �������� \@presented\\[6pt]��������� � �������� \@received\\���� ������������� \@published}
\end{flushright}
}

%%  ����� ����� ������� ��������
\def\@aftersepkern{\kern-.5em}
\def\postsection{.\@aftersepkern}
\def\postsubsection{.\@aftersepkern}
\def\postsubsubsection{.\@aftersepkern}
\def\postparagraph{.\@aftersepkern}
\def\postsubparagraph{.\@aftersepkern}
\def\presection{}
\def\presubsection{}
\def\presubsubsection{}
\def\preparagraph{}
\def\presubparagraph{}
\def\sectioncenterstyle{\centering}
\def\subsectioncenterstyle{\centering}

%%  ����� ����� ������� ������
\def\afterthmseparator{.}
\def\@begintheorem#1#2{%
\setlength{\topsep}{1pt}%
\setlength{\partopsep}{0mm}%
\trivlist\item[\hspace{\parindent}\hskip\labelsep{\underline{\rm
#1\ \textup{#2}\unskip\afterthmseparator}}]\itshape}
\def\@opargbegintheorem#1#2#3{%
\setlength{\topsep}{1pt}%
\setlength{\partopsep}{0mm}%
\trivlist\item[\hspace{\parindent}\hskip\labelsep{\underline{\rm
#1\ \textup{#2}\ {\rm{#3}}\afterthmseparator}}]\itshape}

%%  ������
\renewcommand\section{\@startsection{section}{1}{\z@}%
{12\p@ \@plus 1\p@ \@minus 1\p@}%
{12\p@ \@plus 1\p@ \@minus 1\p@}%
{\sffamily\normalsize\flushleft\bfseries\itshape}}

%%  ���������
\renewcommand\subsection{\@startsection{subsection}{2}{\z@}%
{12\p@ \@plus 1\p@ \@minus 4\p@}%
{1\p@ \@plus 1\p@ \@minus 1\p@}%
{\rmfamily\normalsize\flushleft\slshape}}

%%  ������� � ��������, � �������������� ������ ccaption
\captiondelim{.~} % ����� ������ ������� ��� ������� �������� �����, � �� ���������
\captionnamefont{\itshape}
\captiontitlefont{\itshape}

%%  �������
\renewenvironment{figure}[1][\htbp@figure]{
    \vspace{6 pt}
    \@float{figure}[#1]%
    \setlength{\abovecaptionskip}{0 pt}%
    \setlength{\belowcaptionskip}{-12 pt}%
    \captionstyle{\centerlastline\centering}%
    \begin{center}
    }
    {\end{center}\end@float}

%%  �������
\renewenvironment{table}[1][\htbp@table]{
    \@float{table}[#1]%
    \setlength{\abovecaptionskip}{6 pt}%
    \setlength{\belowcaptionskip}{0 pt}%
    \captionstyle{\raggedright}%
    }
    {\end@float}

%%  �������
\newtheorem{theorem}{\bfseries �������}

%%  ���������
\newtheorem{corollary}{\bfseries\itshape ���������}

%%  �����
\newtheorem{lemma}{\bfseries\itshape �����}

%%  �����������
\newtheorem{statement}{\bfseries\itshape �����������}

%%  �����������
\newtheorem{proposition}{\bfseries\itshape �����������}

%%  ��������
%\newtheorem{algorithm}{\bfseries ��������}

%%  �����������
\newtheorem{definition}{\itshape �����������}

%%  ������
\newtheorem{problem}{\bfseries ������}

%%  ��������������
\newenvironment{proof}
{\vspace{0pt}\par{\textbf%
{{��������������.\ }}}}%
{\noindent\vspace{0pt}}

%%  �������������� �������
\newenvironment{proofoftheorem}[1]
{\vspace{0pt}\par{\textbf%
{{�������������� ������� #1.}}}}%
{\noindent\vspace{0pt}}

%%  �������������� ���������
\newenvironment{proofofcorollary}[1]
{\vspace{0pt}\par{\textbf%
{{�������������� ��������� #1.}}}}%
{\noindent\vspace{0pt}}

%%  �������������� �����
\newenvironment{proofoflemma}[1]
{\vspace{0pt}\par{\textbf%
{{�������������� ����� #1.}}}}%
{\noindent\vspace{0pt}}

%%  �������������� �����������
\newenvironment{proofofstatement}[1]
{\vspace{0pt}\par{\textbf%
{{�������������� ����������� #1.}}}}%
{\noindent\vspace{0pt}}

%%  �������������� �����������
\newenvironment{proofofproposition}[1]
{\vspace{0pt}\par{\textbf%
{{�������������� ����������� #1.}}}}%
{\noindent\vspace{0pt}}

%%  ��������
\newtheorem{alg}{\bfseries ��������}%
\newenvironment{algorithm}[1][\unskip]{\begin{alg}[#1]\em}{\end{alg}}%
\def\thealgorithm{\thealg}

%%  ���������
\newtheorem{rem}{\bfseries\itshape ���������}%
\newenvironment{remark}[1][\unskip]{\begin{rem}[#1]\em}{\end{rem}}%
\def\theremark{\therem}

%%  ������
\newtheorem{exmpl}{\bfseries ������}%
\newenvironment{example}[1][\unskip]{\begin{exmpl}[#1]\rm}{\protect$\bullet$\end{exmpl}}%
\def\theexample{\theexmpl}

%%  ������ �� �������
\def\formref#1{{\rm(\ref{#1})}}

%%  ������ �� ������� �������
\def\itemref#1{{\rm\ref{#1})}}

%%  � ��������� multline �����=0
\multlinegap=0pt

%% ��������� ����� ���������� ��������� � ����� ��� ������� ����������� ������ �����������.
%% ��������� �������������� ��� equation, gather � multline.

\setlength{\abovedisplayskip}{1 pt plus 4 pt minus 2 pt}
\setlength{\abovedisplayshortskip}{1 pt plus 2 pt minus 2 pt}
\setlength{\belowdisplayskip}{1 pt plus 4 pt minus 2 pt}
\setlength{\belowdisplayshortskip}{1 pt plus 2 pt minus 2 pt}

\let\mygather\gather
\let\endmygather\endgather
\renewenvironment{gather}
    {\abovedisplayskip=1 pt plus 4 pt minus 2 pt%
    \abovedisplayshortskip=1 pt plus 2 pt minus 2 pt%
    \belowdisplayskip=1 pt plus 4 pt minus 2 pt%
    \belowdisplayshortskip=1 pt plus 2 pt minus 2 pt%
    \mygather
    }{\endmygather}

\let\myeq\equation
\let\endmyeq\endequation
\renewenvironment{equation}
    {\abovedisplayskip=1 pt plus 4 pt minus 2 pt%
    \abovedisplayshortskip=1 pt plus 2 pt minus 2 pt%
    \belowdisplayskip=1 pt plus 4 pt minus 2 pt%
    \belowdisplayshortskip=1 pt plus 2 pt minus 2 pt%
    \myeq
    }{\endmyeq}

\let\myml\multline
\let\endmyml\endmultline
\renewenvironment{multline}
    {\abovedisplayskip=1 pt plus 4 pt minus 2 pt%
    \abovedisplayshortskip=1 pt plus 2 pt minus 2 pt%
    \belowdisplayskip=1 pt plus 4pt minus 2 pt%
    \belowdisplayshortskip=1 pt plus 2 pt minus 2 pt%
    \myml
    }{\endmyml}

% ����� ������� ������ �� ������� ������
\widowpenalty 250
\clubpenalty 250

% ������������ ������ ����� ����� �������� - �� ���������� �� ���� �� ���� ����������
% �������� ��������� MS Word ��� ������������� ��������
\raggedbottom

\endinput
