const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#131116", /* black   */
  [1] = "#976D56", /* red     */
  [2] = "#D5963D", /* green   */
  [3] = "#F9AB3E", /* yellow  */
  [4] = "#EEA547", /* blue    */
  [5] = "#FBC170", /* magenta */
  [6] = "#38BAF5", /* cyan    */
  [7] = "#e4dfbe", /* white   */

  /* 8 bright colors */
  [8]  = "#9f9c85",  /* black   */
  [9]  = "#976D56",  /* red     */
  [10] = "#D5963D", /* green   */
  [11] = "#F9AB3E", /* yellow  */
  [12] = "#EEA547", /* blue    */
  [13] = "#FBC170", /* magenta */
  [14] = "#38BAF5", /* cyan    */
  [15] = "#e4dfbe", /* white   */

  /* special colors */
  [256] = "#131116", /* background */
  [257] = "#e4dfbe", /* foreground */
  [258] = "#e4dfbe",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
