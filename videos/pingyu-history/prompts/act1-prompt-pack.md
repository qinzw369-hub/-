# 第一幕样片 · 提示词包 v1

> 《平舆》第一幕"一个名字，出现在战场上"，约 30 秒，4 个 AI 写实镜头 + 后期图形。
> 账号：Google AI Pro（Flow 每月 1,000 积分，不结转）。积分价格以 Flow 内显示为准。

---

## 0. 积分预算（本幕约用 40%）

| 镜头 | 模型 | 时长 | 计划尝试 | 预估积分 |
|---|---|---|---|---|
| 定妆照 / 首帧图 | Nano Banana Pro（Gemini App） | — | 8–12 张 | 通常按每日次数计，一般不占 Flow 积分（以实际为准） |
| S1 秦军南下航拍 | Gemini Omni Flash | 8s | 3 | ≈ 75 |
| S2 李信特写 | Gemini Omni Flash（图生视频） | 6s | 3 | ≈ 60 |
| S3 攻城（英雄镜头） | Veo 3.1 Quality | 8s | 2 | ≈ 200 |
| S4 楚军夜追 | Gemini Omni Flash | 8s | 3 | ≈ 75 |
| **合计** | | | | **≈ 410** |

**省积分的顺序：** 先在 Gemini App 用 Nano Banana Pro 把每个镜头的**首帧图**做满意，再拿首帧去生成视频。图便宜，视频贵，构图问题在图上解决。

---

## 1. 统一风格块（每条视频提示词末尾都粘上，保证全片一致）

```
Style: epic historical film, photorealistic, shot on large-format digital cinema camera with anamorphic lenses, 2.39:1 framing feel, natural light, desaturated earth tones with deep blacks and muted ochre, subtle film grain, atmospheric haze, restrained color grade similar to a prestige historical drama.
Constraints: no modern objects, no visible writing or characters on banners or anywhere in frame, no stirrups on horses, no fantasy armor, no Ming or Qing style brick city walls, no anime look.
Audio: natural ambient sound only (wind, hooves, armor, crowd), no music, no speech.
```

> 音乐和旁白由我们后期统一加，所以生成时只要环境音。

## 2. 史实约束（看样片时用来挑错）

- **秦军**：参照秦始皇陵兵马俑——皮质札甲（小甲片编缀），多数士兵**不戴头盔、头顶右侧梳发髻**；军官戴冠。兵器：戈、戟、矛、铍、弩。战袍颜色杂（红、绿、紫、蓝），甲片深褐近黑。
- **骑兵**：**没有马镫**，马匹体型偏小；另有四马战车。
- **楚军**：楚地漆器文化，**红黑髹漆皮甲**，盾牌有漆绘纹样。
- **平舆城**：**夯土城墙**，木构城门楼，城外有护城河与田野，地势平坦（黄淮平原，无山）。
- **旗帜**：只要颜色和纹样，**不要任何文字**（AI 写字必错，文字后期加）。

---

## 3. 定妆照（Nano Banana Pro，在 Gemini App 里生成）

### C1 · 李信（秦将，年轻）

```
Character reference sheet, photorealistic, of Li Xin, a young Qin dynasty general in 225 BC, about 28 years old, lean and determined face, light stubble, hair tied in a topknot with a dark officer's cap. He wears dark lacquered leather lamellar armor modeled on the Terracotta Army general figures, over a deep red robe, with a long bronze sword at his hip. Show four views on a neutral grey background: front, three-quarter, profile, and back. Even studio lighting, high detail on armor plates and lacing. No text.
```

### C2 · 秦军士兵（群演基准）

```
Photorealistic costume reference of Qin dynasty infantry soldiers, 225 BC, based closely on the Terracotta Army: bareheaded with hair in a topknot on the right side of the head, leather lamellar armor vests over knee-length robes in varied muted colors (red, green, purple, blue), leg wraps, square-toed shoes. One holds a bronze ji halberd, one a crossbow. Neutral grey background, front and three-quarter views, no text.
```

### C3 · 楚军士兵 / 项燕（只做剪影级别也可）

```
Photorealistic costume reference of Chu state soldiers, 225 BC: red and black lacquered leather armor with painted patterns inspired by Chu lacquerware, bronze dagger-axes, tall shields with red and black lacquer designs. An older commanding general, Xiang Yan, about 55, grey beard, stern face, stands in front. Neutral grey background, front and three-quarter views, no text.
```

> 定妆照满意后，**保存下来**。后面生成镜头时作为参考图上传，人物才能前后一致。

---

## 4. 镜头提示词

### S1 · 秦军南下（8 秒，Omni Flash）

**画面：** 晨雾中的黄淮平原，秦军方阵沿汝水向南行进。全片的第一个画面，要"大"。

**首帧图（Nano Banana Pro）：**
```
Wide aerial view at dawn over a vast flat river plain in ancient central China, 225 BC. Thick mist over a winding river. A massive Qin army of tens of thousands, matching the attached soldier reference, marches south along the riverbank in long dense columns, with dark banners without any text and four-horse war chariots. Low sun breaking through the mist from the left. Photorealistic, epic historical film still, desaturated earth tones, deep blacks.
```

**视频：** 上传首帧图，然后输入：
```
Slow forward drone push over the marching army toward the misty horizon, very slight descent. The columns keep moving steadily, banners ripple in the wind, mist drifts across the river. 8 seconds.
```
＋ 第 1 节统一风格块

---

### S2 · 李信（6 秒，Omni Flash 图生视频）

**画面：** 李信骑在马上，回望身后大军，再转头看向南方。

**首帧图：**
```
Medium close-up of Li Xin from the attached character reference, mounted on a dark horse without stirrups, on a hilltop at dawn, his army blurred in the background below. Side light from the low sun, mist, shallow depth of field. Photorealistic historical film still, no text.
```

**视频：**
```
Li Xin looks back over his shoulder at the army, then turns his head forward to look south with quiet determination. His horse shifts its weight, his cloak and banners behind him move in the wind. Slow push-in on his face. 6 seconds.
```
＋ 统一风格块

---

### S3 · 兵临平舆（8 秒，Veo 3.1 Quality —— 本幕英雄镜头）

**画面：** 平舆城外，秦军弩阵齐射，箭雨飞向夯土城墙。

**首帧图：**
```
Wide low-angle shot outside an ancient rammed-earth walled town on a flat plain, 225 BC. Massive tamped-earth walls with wooden gate towers, a moat in front. In the foreground, ranks of Qin crossbowmen from the attached reference kneel and raise their crossbows. Overcast dramatic sky, smoke rising from inside the walls. Photorealistic, epic historical film still, no text, no brick walls.
```

**视频（Veo 3.1 Quality，上传首帧图）：**
```
The front rank of Qin crossbowmen fires in unison; a dense volley of arrows arcs high across the sky toward the rammed-earth walls. The camera tracks slowly sideways along the line of crossbowmen, then tilts up to follow the arrows. Dust kicks up, officers shout silently, smoke drifts from the town. 8 seconds.
```
＋ 统一风格块

---

### S4 · 楚军夜追（8 秒，Omni Flash）

**画面：** 对应文案"楚人因随之，三日三夜不顿舍"。夜色中楚军火把连成长龙，追击秦军。

**首帧图：**
```
Night, wide high-angle shot over a flat plain. A Chu army from the attached reference, carrying thousands of torches, forms a long snaking river of fire as it pursues a retreating army into the darkness. Cold moonlight, low fog, warm torchlight. Photorealistic epic historical film still, no text.
```

**视频：**
```
The river of torches surges forward across the plain, faster and faster. Slow aerial drift following the pursuit; sparks and embers rise from the torches, fog swirls. Tense, relentless mood. 8 seconds.
```
＋ 统一风格块

---

## 5. 后期（我来做，HyperFrames）

| 时间 | 叠加内容 |
|---|---|
| 0–3s | 黑场，"公元前225年"字幕淡入，接 S1 |
| S1 结尾 | 画面压暗，一张示意地图浮现：咸阳 → 平舆的行军线 |
| S2 | 人物字幕：李信 · 秦将 |
| S3 | 箭雨落下的瞬间，书法大字"李信攻平舆"落版，下附"《史记·白起王翦列传》" |
| S4 | 字幕："楚人因随之，三日三夜不顿舍" |
| 全片 | 统一调色，加胶片颗粒和遮幅；配乐和旁白另做 |

---

## 6. 交付给我

- 每个满意的镜头**下载最高画质**（如果 Flow 提供 4K 放大，定稿镜头再放大，测试阶段不用）。
- 文件命名：`S1.mp4`、`S2.mp4`……，连同定妆照一起传给我。
- 不满意的镜头也可以发给我，告诉我哪里不对，我来改提示词。
