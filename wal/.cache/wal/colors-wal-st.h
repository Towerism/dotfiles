const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#0B1A2F", /* black   */
  [1] = "#595B75", /* red     */
  [2] = "#585886", /* green   */
  [3] = "#6B6A96", /* yellow  */
  [4] = "#71719E", /* blue    */
  [5] = "#7F80A5", /* magenta */
  [6] = "#8E8EB0", /* cyan    */
  [7] = "#cacad1", /* white   */

  /* 8 bright colors */
  [8]  = "#8d8d92",  /* black   */
  [9]  = "#595B75",  /* red     */
  [10] = "#585886", /* green   */
  [11] = "#6B6A96", /* yellow  */
  [12] = "#71719E", /* blue    */
  [13] = "#7F80A5", /* magenta */
  [14] = "#8E8EB0", /* cyan    */
  [15] = "#cacad1", /* white   */

  /* special colors */
  [256] = "#0B1A2F", /* background */
  [257] = "#cacad1", /* foreground */
  [258] = "#cacad1",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
