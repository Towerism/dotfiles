static const char norm_fg[] = "#cacad1";
static const char norm_bg[] = "#0B1A2F";
static const char norm_border[] = "#8d8d92";

static const char sel_fg[] = "#cacad1";
static const char sel_bg[] = "#585886";
static const char sel_border[] = "#cacad1";

static const char urg_fg[] = "#cacad1";
static const char urg_bg[] = "#595B75";
static const char urg_border[] = "#595B75";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
    [SchemeUrg] =  { urg_fg,      urg_bg,    urg_border },
};
