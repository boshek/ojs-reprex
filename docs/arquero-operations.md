---
title: Arquero Operations
---

## Concatenate a Single String

```js
const data = aq.table({ type: ['a', 'b'], x: ["foo", "bar"], y: ["chicken", "duck"]})
   .select('x', 'y')

display(Inputs.table(data))
```

```js
data.array("y").join(", ")
```
