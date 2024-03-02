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
const selectedParam = view(Inputs.select(parameterValues , { value: "Suscon"}))
```

```js
const filteredRiver = aq.from(river)
    .filter(aq.escape(d => d.Parameter === selectedParam))
```


```js
display(Plot.plot({
    title: `${selectedParam} Values`,
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