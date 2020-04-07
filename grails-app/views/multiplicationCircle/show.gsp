<!doctype html>
<html>
<head>
    <title>Multiplication Circle</title>
    <style>
    circle, line {
        fill: white;
        stroke: rgb(70, 255, 54);
        stroke-width: 2px;
    }

    label {
        display: block;
        float: left;
        width: 5em;
    }
    </style>
    <script>
        function increase(valueName) {
            let input = document.getElementById(valueName);
            input.value = parseInt(input.value) + 1;
        }

        function decrease(valueName) {
            let input = document.getElementById(valueName);
            input.value = parseInt(input.value) - 1;
        }

    </script>
</head>

<body>
<form action="/multiplicationCircle/index">

    <tmpl:up_down_input name="segmentCount" label="Segments" value="${circleInstance.segmentCount}" />
    <tmpl:up_down_input name="tableBase" label="Table Base"  value="${circleInstance.tableBase}"    />

</form>
<svg width="400" height="400">
    <circle r="198" cx="200" cy="200"/>
    <g:each var="line" in="${circleInstance.lines}">
        <line x1="${line.x1}" y1="${line.y1}" x2="${line.x2}" y2="${line.y2}">
        </line>
    </g:each>
</svg>

</body>
</html>
