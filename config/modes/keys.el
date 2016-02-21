;;
;; Anpassungen an Tastaturbelegungen
;;
;; Verwendet die Modes key-chord-mode.el und hydra.el
;;

(add-to-list 'load-path "~/.emacs.d/plugins/hydra")
(add-to-list 'load-path "~/.emacs.d/plugins/keychord")

(require 'hydra)
(require 'key-chord)

(key-chord-mode 1)

(defhydra hydra-window (global-map "C-M-o")
  "window"
  ("h" windmove-left "left")
  ("j" windmove-down "down")
  ("k" windmove-up "up")
  ("l" windmove-down "right")
  ("a" ace-window)
  ("o"))

;; chords

(key-chord-define-global "f." 'find-file)
(key-chord-define-global "ww" 'ace-window)
(key-chord-define-global ",," 'avy-goto-char-2)
(key-chord-define-global "yy" 'hydra-window/body)

;; global keyboard bindings
(global-set-key (kbd "M-k") 'kill-this-buffer)
(global-set-key (kbd "C-c j") 'avy-goto-char-2)
(global-set-key [f8] 'neotree-toggle)

;;
;; im deutschen ungewöhnliche Tastenkombinationen.
;; 
;; dp, dv, gw, hu, ms, mt, rw, fg, fw, hp, iy, sv, hö, bf, bh, bp, cd,
;; cf, cg, cp, cq, cv, cw, cy, dc, dm, fb, fc, fm, fy, fz, gc, gm, gy,
;; hb, hy, hz, iq, md, mf, mg, mv, mw, nx, pb, pc, pz, qc, qi, qr, qt,
;; rq, sx, sz, tq, uu, uv, vc, vm, vu, vy, wc, wm, ww, wy, xn, xs, yc,
;; yf, yg, yh, yv, yw, yy, zh, zp, zs, ,a, ,b, ,c, ,i, ,m, ,o, ,u, ,x,
;; ,y, ,z, ,ä, ,ü, .a, .b, .c, .i, .m, .o, .u, .x, .y, .z, .ä, .ü, a,,
;; a., aj, aq, aß, b,, b., bd, bj, bk, bq, bv, bw, c,, c., cj, cß, db,
;; dq, dx, dz, dä, dö, dü, fq, fv, fx, fö, gq, gx, gz, gä, gü, hx, i,,
;; i., ij, ja, jb, jc, ji, jm, jo, jr, jt, jx, jy, jz, jä, jü, kb, kx,
;; ky, kz, kä, kü, lx, lz, lö, lü, m,, m., mj, mq, mß, o,, o., oj, oq,
;; ox, oä, pq, pä, pö, pü, qa, qb, qd, qf, qg, qm, qo, qp, qs, qw, qx,
;; qy, qz, qä, qü, rj, rß, sq, sä, sö, tö, u,, u., ux, vb, vf, vg, vx,
;; vz, vä, vö, vü, wb, wq, wx, wö, x,, x., xd, xf, xg, xh, xj, xk, xl,
;; xo, xq, xu, xv, xw, xy, y,, y., yj, yk, yq, yx, yß, z,, z., zc, zd,
;; zf, zg, zj, zk, zl, zq, zv, zz, ßa, ßc, ßm, ßr, ßy, ä,, ä., äd, äg,
;; äj, äk, äo, äp, äq, äs, äv, öd, öf, öl, öp, ös, öt, öv, öw, ü,, ü.,
;; üd, üg, üj, ük, ül, üp, üq, üv, ,,, ,q, ,ö, .w, .ö, bß, cz, cö, fj,
;; gv, iä, jf, jg, jö, kd, kk, kq, nq, oü, q,, qö, tj, vw, w., wv, xß,
;; xö, xü, yä, zx, zß, ßb, ßd, ßt, ßx, ßz, ßä, ßö, äa, äy, äß, ää, ö,,
;; ö., öc, öj, öq, öx, öß, öö, üo, üx, ,w, .q, aä, bb, bz, dk, dß, fß,
;; gj, hh, iü, kv, lq, oö, pw, qk, ql, qn, qq, rx, sß, tß, vk, vv, w,,
;; wp, xx, xz, zb, ßf, ßg, ßs, äi, äö, öo, öä, üi, üm, üä, kf, äx, ,.,
;; .,, äü, xr, pv, vp, mü, jj, fk, öi, q., gß, xä, p,, yü, iö, üy, ,p,
;; ßß, v,, hq, qh, cx, xc, ,v, mx, öü, üa, jv, vj, aü, lj, üö, ßv, jl,
;; xm, vß, jh, ßj, jß, öu, hj, zy, lß, ßh, nj, kj, yz, jk, ßl, jn, öy,
;; yö, hß, uö, zä, ßn, nß, j,, jp, pj, äz, ,j, äb, bä, ß,, ßk, kß, jw,
;; ,ß, wj, ßp, pß, .v, v., k., .k, ßw, wß, zü, k,, öb, bö, üz, üu, ,k,
;; uü, ,f, f,, j., .j, vq, bx, qv, zo, xb, oz, ß., öa, .ß, aö, jq, qj,
;; ßq, qß, kw, wk, zö, öz,
