Makes Editing Faster
--------------------
1. mini-surround: gs, cs, ds, ysf, ysh, ysn adds/deletes/changes/finds surrounding like {}, ""
2. substitute: s, S, substitute(select and paste)
               <A-s>, exchange two text-obj
3. mini-move:{"n","v"}    <A-h>, <A-j>, <A-k>, <A-l> move line/selection
          -  {"v"}        <A-w>, <A-e>, <A-b>,...    custom move binds to move selection
          -  {"n","v"}          <A-J>, <A-K>  clone line/selection up/down or left/right
          -  {"n"}              <A-H>, <A-L>  jump to high or lowest line on screen
          -  {"n"}              <A-M>         jump to center of current line
4. neo-swap: {"n"} gh, gl,                   swap word left/right
5. comment:     gcc, ,gcb, gco, gcO, gc$,  comment line/block/after/before/end
6. expand.nvim: {"i"} <A-space> meta/alt+space on insert mode to expand
7. dial.nvim: {"n","v"} <C-a>, <C-x>, g<C-a>, g<C-x>, increments or decrements string like 1->2, left->right
        <space>c<C-a> to switch between different colors conventions using *ccc.nvim*
8. coerce.nvim: {"v"} cr + path-case(/) + camel(c) + pascal(p) + kebab(k) + dot(d) etc
                changes the naming convention or string case 
9. better-escape: {"i"} jk to leave insert mode 
10. conform.nvim: {"n"} <space>ef to format the buffer
11. treesj: {"n"} <space>m to split or join lines

Plugins that open different panel
---------------------------------
1. treesj: {"n"} <A-u> to open undo tree panel
2. mini-align: {"v"} ga to open alignment
3. mueren: {"n"} <leader>rr to open Muren replace with live preview
4. ccc: {"n"} <leader>ccc to open color picker 

Buffer Jumping
--------------
1. <leader>f for arrow.nvim pinned files jumping
2. <leader><leader>f for reach.nvim for local buffers
3. <leader>j for arrow.nvim pinned line jumping
4. <leader>s prefix for telescope

Telescope(<leader> + s + ?)
---------------------------


Toggleables(<leader> + , + ?)
-----------------------------
1. hydra.nvim panel for all 'o'
2. nn for number 
3. nr for relative number
4. w for wrap
5. v for venn.nvim to draw preety ascii diagrams
6. sp for spell
7. mc for multi-cursor.nvim
8. t for transparency
9. ii for invisible chars
10. cc for highlight colors like #ffffff using ccc.nvim
11. cl for cursor line
12. co for treesitter context
13. cc for highlight colors like #ffffff using ccc.nvim
14. lc for loading color scheme for telescope to be able to select
15. ho for enabling hologram image preview

TODO: 
- [x] lol
- [ ] lol
- [x] lol

# Heading1
## Heading2
### Heading2
#### Heading2
##### Heading2
###### Heading2
