static const char norm_fg[] = "#e4dfbe";
static const char norm_bg[] = "#131116";
static const char norm_border[] = "#9f9c85";

static const char sel_fg[] = "#e4dfbe";
static const char sel_bg[] = "#D5963D";
static const char sel_border[] = "#e4dfbe";

static const char urg_fg[] = "#e4dfbe";
static const char urg_bg[] = "#976D56";
static const char urg_border[] = "#976D56";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
