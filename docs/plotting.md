---
title: Plotting
---

```js
const river = FileAttachment("data/river.csv").csv({typed: true});
```

```js
const subRiver = river
  .filter(d => d.Parameter != "Load")
```

## Make a simple plot coloured by Parameters

```js
display(Plot.plot({
    x: {label: "Date"},
    color: {
        domain: ["Flow", "Suscon", "Level"],
        range: ["yellow", "purple", "green"]
        },
    marks: [
      Plot.lineY(subRiver , {
        x: "Date",
        y: "Value",
        stroke: "Parameter",
        tip: true
      })
    ]
  }));
```
