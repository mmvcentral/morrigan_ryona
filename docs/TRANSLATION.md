# Translation Reference

This document provides translations for Japanese and other non-English text found in the Ryona Morrigan source files. The original text (or encoding-corrupted representation) is preserved alongside the English translation for reference.

**Note**: Some CNS, CMD, DEF, ST, AIR, and TXT files use Shift-JIS encoding. Comments containing Japanese may appear as garbled characters when viewed in UTF-8.

---

## Command.cmd (root) – Comment Translations

| Location | Original (Shift-JIS/Garbled) | English |
|----------|------------------------------|---------|
| Line 237-238 | チャージ (Charge) | Power Charge – B+Y command |
| Line 239-240 | チャージ (Charge) | Dodge/Roll – A+X command |
| Line 409-410 | チャージS（ゲージ1）(Charge S, Gauge 1) | Dog attack – requires 1 power gauge |
| Line 418-419 | チャージ (Charge) | Tongue attack – Rei-Rei |

---

## Portraits/Command.cmd – Comment Translations

| Location | Original (Japanese) | English |
|----------|---------------------|---------|
| Line 228-229 | 犬アタック (Inu attack) | Dog attack – B+Y |
| Line 231-232 | 犬アタック (Inu attack) | Tongue attack – A+X |
| Line 401-402 | 犬アタックS（ゲージレベル１） | Dog attack S (Gauge level 1) |
| Line 410-411 | 犬アタック | Tongue attack (Rei-Rei) |

---

## States/System.st – Comment Translations

| Location | Original (Shift-JIS/Garbled) | English |
|----------|------------------------------|---------|
| Line 2481 | アニメ (Anime) | Animation reference |
| Line 2491 | 音を鳴らす (Play sound) | Hit detection / Sound trigger |
| Line 2491 | 当たり判定 | Hit detection |
| Line 2516 | 終わらない (Owaranai) | Never end / Round not over |

---

## Anim.air – Comment Translations

| Location | Original (Shift-JIS/Garbled) | English |
|----------|------------------------------|---------|
| Line 10156 | ーーーImpregnation KO用ーーー | Impregnation KO dedicated |
| Line 10161 | マン避け待機 | Manguri (avoidance) standby |
| Line 10242 | マン避け枠用1 | Manguri avoidance slot 1 |
| Line 10247 | マン避け枠用2 | Manguri avoidance slot 2 |
| Line 10252 | マン避け枠用3 | Manguri avoidance slot 3 |
| Line 10261 | マン避け枠用4 | Manguri avoidance slot 4 |
| Line 10270 | マン避け枠用5 | Manguri avoidance slot 5 |
| Line 10279 | マン避け枠用6 | Manguri avoidance slot 6 |

---

## Portraits/Morrigan.txt – Comment Translations

| Original (Japanese) | English |
|---------------------|---------|
| キャッチの相手のステージ変更 | Target state change for catch |
| ステージ変更 | State change |
| キャッチの相手の位置 | Grabbed opponent position |
| 初期 | Initial |
| 移動及びジャンプ | Movement and jump |
| 相手前に出る画像、15910用 | Image displayed in front of opponent, for anim 15910 |
| 終了 | End / Exit |
| 画面の上限 | Screen upper bound |
| 単用アニメ | Single-use animation |
| 前枠グラフィック | Front slot graphic |
| 敵前に表示したい画像 | Image to display in front of enemy |
| 強弱1/2/3 | Strength 1/2/3 |
| 強弱判定 | Strength detection |

---

## Win Pose Speech Translations (from Readme)

| Japanese | English |
|----------|---------|
| Mata asonde ageru wa! | I will play again with you! |
| Waruiko ne! | Bad boy (girl)! |
| Kimochii deshou | That felt good |
| Denaoshitoide! | Come again! |
| Dou? Kirei deshou? | So? Am I beautiful? |
| Mikakedaoshi ne! | You're a mere show! |

---

## Character / Command Names (Ryona-specific)

| Japanese/Code | English |
|--------------|---------|
| マン避け (Manguri) | Manguri Gaeshi – reversal/counter move |
| チャージ (Charge) | Power Charge / Gauge charge |
| 犬 (Inu) | Dog – Doggystyle minion |
| レイレイ (Rei-Rei) | Rei-Rei – character summon |
| モリガン (Morrigan) | Morrigan – character variant |
| バレット (Barrette) | Barrette – character summon |
| リリス (Lilith) | Lilith – character summon |
| フェリシア (Felicia) | Felicia – character summon |
| Q-BEE | Q-BEE – character summon |

---

## inu.txt – Comment Translations

| Location | Original (Japanese) | English |
|----------|---------------------|---------|
| Line 552 | ★７ | Reference marker 7 – trigger condition |
| Line 573 | ★７：「triggerall」 | Note: triggerall limits conditions; trigger1 etc. valid only when all triggerall met |
