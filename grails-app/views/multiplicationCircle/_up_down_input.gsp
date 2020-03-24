<div>
    <label for="${name}">${label}:</label>
    <input type="submit" value=" up " onclick="increase('${name}')" id="${name}Up">
    <input type="number" name="${name}" id="${name}" value="${value}">
    <input type="submit" value="down" onclick="decrease('${name}')" id="${name}Down">
</div>