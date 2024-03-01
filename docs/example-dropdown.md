---
title: Example Dropdown
---

```js
const river = FileAttachment("data/river.csv").csv({typed: true});
```

```js
const parameterValues = aq.from(river)
    .dedupe("Parameter")
    .array("Parameter");
```

```js
const selectedParam = view(Inputs.select(parameterValues , {label: "Foo", value: "Suscon"}))
```

```js
const filteredRiver = aq.from(river)
    .filter(aq.escape(d => d.Parameter === selectedParam))
```



## The plot

```js
display(Plot.plot({
    title: "HYDAT stuff",
    x: {label: "Date"},
    marks: [
      Plot.lineY(filteredRiver, {
        x: "Date",
        y: "Value",
        tip: true
      })
    ]
  }));
```