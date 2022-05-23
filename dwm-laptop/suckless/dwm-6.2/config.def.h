/* Import themes: */

#include "/usr/share/dwm-themes/tokyo-night-orange.h"

/* appearance */
static const unsigned int borderpx  = 1;        /* border pixel of windows */
static const unsigned int snap      = 32;       /* snap pixel */
static const unsigned int systraypinning = 0;   /* 0: sloppy systray follows selected monitor, >0: pin systray to monitor X */
static const unsigned int systrayspacing = 2;   /* systray spacing */
static const int systraypinningfailfirst = 1;   /* 1: if pinning fails, display systray on the first monitor, False: display systray on the last monitor*/
static const int showsystray        = 1;     /* 0 means no systray */
static const unsigned int gappih    = 10;       /* horiz inner gap between windows */
static const unsigned int gappiv    = 10;       /* vert inner gap between windows */
static const unsigned int gappoh    = 10;       /* horiz outer gap between windows and screen edge */
static const unsigned int gappov    = 10;       /* vert outer gap between windows and screen edge */
static       int smartgaps          = 0;        /* 1 means no outer gap when there is only one window */
static const int showbar            = 1;        /* 0 means no bar */
static const int topbar             = 1;        /* 0 means bottom bar */
static const char *fonts[]          = { "Comic Mono:size=12:antialias=true;autohint=true", "fontawesome:size=12", "SymbolsNerdFont:size=12:antialias=true:autohint=true" };
static const char dmenufont[]       = "Comic Mono:size=12";
static const char *colors[][3]      = {
	/*               fg         bg         border   */
	[SchemeNorm] = { col_gray3, col_gray1, col_gray2 },
	[SchemeSel]  = { col_gray4, col_cyan,  col_cyan  },
};

/* tagging */
/*static const char *tags[] = { "1", "2", "3", "4", "5", "6", "7", "8", "9" }; */
static const char *tags[] = { "", "", "", "", "", "", "", "", "" };

static const Rule rules[] = {
	/* xprop(1):
	 *	WM_CLASS(STRING) = instance, class
	 *	WM_NAME(STRING) = title
	 */
	/* class                                 instance    title       tags mask     isfloating   monitor */
	{ "st-256color",                         NULL,       NULL,       1 << 0,       0,           -1 },
	{ "Termite",                             NULL,       NULL,       1 << 0,       0,           -1 },
	{ "Vivaldi-stable",                      NULL,       NULL,       1 << 1,       0,           -1 },
	{ "firefox",                             NULL,       NULL,       1 << 1,       0,           -1 },
	{ "Chromium",                            NULL,       NULL,       1 << 1,       0,           -1 },
	{ "Google-chrome",                       NULL,       NULL,       1 << 1,       0,           -1 },
	{ "code-oss",                            NULL,       NULL,       1 << 2,       0,           -1 },
	{ "Pcmanfm",                             NULL,       NULL,       1 << 3,       0,           -1 },
	{ "OpenOffice 4.1.11",                   NULL,       NULL,       1 << 4,       0,           -1 },
	{ "libreoffice-writer",                  NULL,       NULL,       1 << 4,       0,           -1 },
	{ "whatsapp-nativefier-d40211",          NULL,       NULL,       1 << 5,       0,           -1 },
	{ "TelegramDesktop",                     NULL,       NULL,       1 << 5,       0,           -1 },
	{ "ViberPC",                             NULL,       NULL,       1 << 5,       0,           -1 },
	{ "vlc",                                 NULL,       NULL,       1 << 6,       0,           -1 },
	{ "mpv",                                 NULL,       NULL,       1 << 6,       0,           -1 },
	{ "Deadbeef",                            NULL,       NULL,       1 << 7,       0,           -1 },
	{ "Spotify",                             NULL,       NULL,       1 << 7,       0,           -1 },
	{ "qBittorrent",                         NULL,       NULL,       1 << 8,       0,           -1 },
	{ "Image Lounge",                        NULL,       NULL,       1 << 8,       0,           -1 },
	{ "gwenview",                            NULL,       NULL,       1 << 8,       0,           -1 },
};

/* layout(s) */      
static const float mfact     = 0.50; /* factor of master area size [0.05..0.95] */
static const int nmaster     = 1;    /* number of clients in master area */
static const int resizehints = 1;    /* 1 means respect size hints in tiled resizals */

#define FORCE_VSPLIT 1  /* nrowgrid layout: force two clients to always split vertically */
#include "vanitygaps.c"

static const Layout layouts[] = {
	/* symbol     arrange function */
	{ "[]=",      tile },    /* first entry is default */
	{ "[M]",      monocle },
	{ "[@]",      spiral },
	{ "[\\]",     dwindle },
	{ "H[]",      deck },
	{ "TTT",      bstack },
	{ "===",      bstackhoriz },
	{ "HHH",      grid },
	{ "###",      nrowgrid },
	{ "---",      horizgrid },
	{ ":::",      gaplessgrid },
	{ "|M|",      centeredmaster },
	{ ">M>",      centeredfloatingmaster },
	{ "><>",      NULL },    /* no layout function means floating behavior */
	{ NULL,       NULL },
};

/* key definitions */
#define MODKEY Mod1Mask /* MODKEY defined as ALT key on keyboard */
#define SUPERKEY Mod4Mask /* SUPERKEY defined as WINDOWS key on keyboard */
#define TAGKEYS(KEY,TAG) \
	{ MODKEY,                       KEY,      view,           {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask,           KEY,      toggleview,     {.ui = 1 << TAG} }, \
	{ MODKEY|ShiftMask,             KEY,      tag,            {.ui = 1 << TAG} }, \
	{ MODKEY|ControlMask|ShiftMask, KEY,      toggletag,      {.ui = 1 << TAG} },

/* helper for spawning shell commands in the pre dwm-5.0 fashion */
#define SHCMD(cmd) { .v = (const char*[]){ "/bin/sh", "-c", cmd, NULL } }

/* commands */
static char dmenumon[2] = "0"; /* component of dmenucmd, manipulated in spawn() */
static const char *rofi[] = { "rofi", "-show", "drun", "-show-icons", NULL }; /* Use rofi launcher */
static const char *powermenu[] = { "rofi", "-show", "session-menu", "-modi", "session-menu:~/.scripts/rofi-power-menu", "--choices=shutdown/reboot/logout/lockscreen", NULL }; /*rofi power menu*/
static const char *dmenucmd[] = { "dmenu_run", "-m", dmenumon, "-fn", dmenufont, "-nb", col_gray1, "-nf", col_gray3, "-sb", col_cyan, "-sf", col_gray4, NULL };
static const char *termcmd[]  = { "st", NULL }; /* ST terminal launcher */
static const char *alacritty[] = { "alacritty", NULL }; /* Alacritty terminal  */
static const char *termite[]  = { "termite", NULL }; /* Termite terminal laucher */
static const char *web[] = { "firefox", NULL }; /* Firefox launcher */
static const char *firefox[] = { "firefox", "-p", NULL }; /* Firefox profile launcher*/
static const char *brave[] = {"brave", NULL }; /* Brave launcher */
static const char *whatsapp[] = { "whatsapp-nativefier", NULL }; /* Whatsapp laucher */
static const char *telegram[] = { "telegram-desktop", NULL }; /* Telegram launcher*/
static const char *spotify[] = { "spotify", NULL }; /* Spotify launcher */
static const char *pcmanfm[] = { "pcmanfm", NULL }; /* File manager */
static const char *code[] = { "code", NULL }; /* Code Editor */
static const char *pavucontrol[] = {"pavucontrol", NULL }; /* Pulse Audio control*/
static const char *volup[] = { "pamixer", "-i", "5", NULL }; /* Pulse Audio Volume Up string */
static const char *voldown[] = { "pamixer", "-d", "5", NULL }; /* Pulse Audio Volume Down string */

#include "shiftview.c"

static Key keys[] = {
	/* modifier                      key              function        argument */
	/*My own made hotkeys:*/
	/*Alacritty terminal*/
	{ SUPERKEY,			 XK_Return,       spawn,          {.v = alacritty } },
	/*Power Menu*/
	{ SUPERKEY,                      XK_p,            spawn,          {.v = powermenu } },
	/*Browser hotkey:*/
	{ SUPERKEY,                      XK_f,            spawn,          {.v = web } },
	/* Firefox profiles launcher */
	{ SUPERKEY|ShiftMask,            XK_f,            spawn,          {.v = firefox } },
	/* Brave launcher */
	{ SUPERKEY,                      XK_b,            spawn,          {.v = brave } },
	/*Chat clients:*/
	/*Whatsapp */
	{ MODKEY,                        XK_w,            spawn,          {.v = whatsapp } },
	/* Telegram launcher */
	{ SUPERKEY,                      XK_s,            spawn,          {.v = telegram } },
	/*Dmenu hotkey */
	{ MODKEY,                        XK_p,            spawn,          {.v = dmenucmd } },
	/*Rofi hotkey */
	{ MODKEY,                        XK_r,            spawn,          {.v = rofi } },
	/*Terminal control hotkey */
	{ MODKEY|ShiftMask,              XK_Return,       spawn,          {.v = termcmd } },
	/*Termite terminal hotkey */
	{ MODKEY|ControlMask,            XK_Return,       spawn,          {.v = termite } },
	/*Spotify hotkeys */
	{ MODKEY|ControlMask,            XK_s,            spawn,          {.v = spotify } },
	/* File manager */
	{ SUPERKEY,                      XK_d,            spawn,          {.v = pcmanfm } },
	/* Code Editor */
	{ SUPERKEY,                      XK_c,            spawn,          {.v = code } },
	/* Pavucontrol */
	{ SUPERKEY,                      XK_v,            spawn,          {.v = pavucontrol } },
	/*VolumeUp-PulseAudio */
	{ MODKEY,                        XK_F12,          spawn,          {.v = volup } },
	/*VolumeDown-PulseAudio */
	{ MODKEY,                        XK_F11,          spawn,          {.v = voldown } },
	/*Bar on or off */
	{ MODKEY|ShiftMask,              XK_b,            togglebar,      {0} },
	/* Shifting tags */
	{ MODKEY,                        XK_Left,         shiftview,      {.i = -1 } },
	{ MODKEY,                        XK_Right,        shiftview,      {.i = +1 } },
	/* Shift layouts */
	{ MODKEY|ShiftMask,              XK_Left,         cyclelayout,    {.i = -1 } },
	{ MODKEY|ShiftMask,              XK_Right,        cyclelayout,    {.i = +1 } },	
	/* Resizing windows */
	{ MODKEY|ControlMask,            XK_Left,         setmfact,       {.f = -0.05} },
	{ MODKEY|ControlMask,            XK_Right,        setmfact,       {.f = +0.05} },	
	/*Changing focus */
	{ SUPERKEY,                      XK_Left,         focusstack,     {.i = -1 } },
	{ SUPERKEY,                      XK_Right,        focusstack,     {.i = +1 } },	
	/*Shifting between master and stack */
	{ SUPERKEY|ShiftMask,            XK_Left,         rotatestack,    {.i = -1 } },
	{ SUPERKEY|ShiftMask,            XK_Right,        rotatestack,    {.i = +1 } },
	/* Window control keys */	
	{ MODKEY,                       XK_i,      incnmaster,     {.i = +1 } },
	{ MODKEY,                       XK_d,      incnmaster,     {.i = -1 } },
	{ MODKEY,                       XK_Return, zoom,           {0} },
	/*Gaps control */
	{ MODKEY|Mod4Mask,              XK_u,      incrgaps,       {.i = +1 } },
	{ MODKEY|Mod4Mask|ShiftMask,    XK_u,      incrgaps,       {.i = -1 } },
	{ MODKEY|Mod4Mask,              XK_i,      incrigaps,      {.i = +1 } },
	{ MODKEY|Mod4Mask|ShiftMask,    XK_i,      incrigaps,      {.i = -1 } },
	{ MODKEY|Mod4Mask,              XK_o,      incrogaps,      {.i = +1 } },
	{ MODKEY|Mod4Mask|ShiftMask,    XK_o,      incrogaps,      {.i = -1 } },
	{ MODKEY|Mod4Mask,              XK_6,      incrihgaps,     {.i = +1 } },
	{ MODKEY|Mod4Mask|ShiftMask,    XK_6,      incrihgaps,     {.i = -1 } },
	{ MODKEY|Mod4Mask,              XK_7,      incrivgaps,     {.i = +1 } },
	{ MODKEY|Mod4Mask|ShiftMask,    XK_7,      incrivgaps,     {.i = -1 } },
	{ MODKEY|Mod4Mask,              XK_8,      incrohgaps,     {.i = +1 } },
	{ MODKEY|Mod4Mask|ShiftMask,    XK_8,      incrohgaps,     {.i = -1 } },
	{ MODKEY|Mod4Mask,              XK_9,      incrovgaps,     {.i = +1 } },
	{ MODKEY|Mod4Mask|ShiftMask,    XK_9,      incrovgaps,     {.i = -1 } },
	{ MODKEY|Mod4Mask,              XK_0,      togglegaps,     {0} },
	{ MODKEY|Mod4Mask|ShiftMask,    XK_0,      defaultgaps,    {0} },
	{ MODKEY,                       XK_Tab,    view,           {0} },
	/*Close apps hotkey */
	{ MODKEY|ShiftMask,             XK_c,      killclient,     {0} },
	/*Layout controls hotkeys */
	{ MODKEY|ShiftMask,             XK_t,      setlayout,      {.v = &layouts[0]} },
	{ MODKEY|ShiftMask,             XK_f,      setlayout,      {.v = &layouts[1]} },
	{ MODKEY|ShiftMask,             XK_m,      setlayout,      {.v = &layouts[2]} },

	{ MODKEY,                       XK_space,  setlayout,      {0} },
	{ MODKEY|ShiftMask,             XK_space,  togglefloating, {0} },
	{ MODKEY,                       XK_0,      view,           {.ui = ~0 } },
	{ MODKEY|ShiftMask,             XK_0,      tag,            {.ui = ~0 } },
	/*Shift tags */
	{ MODKEY,                       XK_comma,  focusmon,       {.i = -1 } },
	{ MODKEY,                       XK_period, focusmon,       {.i = +1 } },
	{ MODKEY|ShiftMask,             XK_comma,  tagmon,         {.i = -1 } },
	{ MODKEY|ShiftMask,             XK_period, tagmon,         {.i = +1 } },
	TAGKEYS(                        XK_1,                      0)
	TAGKEYS(                        XK_2,                      1)
	TAGKEYS(                        XK_3,                      2)
	TAGKEYS(                        XK_4,                      3)
	TAGKEYS(                        XK_5,                      4)
	TAGKEYS(                        XK_6,                      5)
	TAGKEYS(                        XK_7,                      6)
	TAGKEYS(                        XK_8,                      7)
	TAGKEYS(                        XK_9,                      8)
	{ MODKEY|ShiftMask,             XK_q,      quit,           {0} },
};

/* button definitions */
/* click can be ClkTagBar, ClkLtSymbol, ClkStatusText, ClkWinTitle, ClkClientWin, or ClkRootWin */
static Button buttons[] = {
	/* click                event mask      button          function        argument */
	{ ClkLtSymbol,          0,              Button1,        setlayout,      {0} },
	{ ClkLtSymbol,          0,              Button3,        setlayout,      {.v = &layouts[2]} },
	{ ClkWinTitle,          0,              Button2,        zoom,           {0} },
	{ ClkStatusText,        0,              Button2,        spawn,          {.v = termcmd } },
	{ ClkClientWin,         MODKEY,         Button1,        movemouse,      {0} },
	{ ClkClientWin,         MODKEY,         Button2,        togglefloating, {0} },
	{ ClkClientWin,         MODKEY,         Button3,        resizemouse,    {0} },
	{ ClkTagBar,            0,              Button1,        view,           {0} },
	{ ClkTagBar,            0,              Button3,        toggleview,     {0} },
	{ ClkTagBar,            MODKEY,         Button1,        tag,            {0} },
	{ ClkTagBar,            MODKEY,         Button3,        toggletag,      {0} },
};

