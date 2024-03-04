---
title: Example Dropdown
---

```js
const river = FileAttachment("data/river.csv").csv({typed: true});
```

## Navigate to a specific value of a dropdown

```js
const parameterValues = aq.from(river)
    .dedupe("Parameter")
    .array("Parameter");
```

```js
const selectedParam = view(Inputs.select(parameterValues , { value: new URLSearchParams(location.search).get("parameter") ?? "Suscon" }))
```


```js
const filteredRiver = aq.from(river)
    .filter(aq.escape(d => d.Parameter === selectedParam))
const url = `https://sam-albers.observablehq.cloud/ojs-reprex/example-dropdown?parameter=${selectedParam}`
```



```js
Inputs.button("Share this chart", {value: null, reduce: () => navigator.clipboard.writeText(url)})
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