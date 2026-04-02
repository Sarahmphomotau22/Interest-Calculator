<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Simple Interest Calculator</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .calculator {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0,0,0,0.1);
            width: 300px;
        }
        .calculator h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        .calculator input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        .calculator button {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        .calculator button:hover {
            background-color: #45a049;
        }
        .result {
            margin-top: 20px;
            text-align: center;
            font-weight: bold;
        }
    </style>
</head>
<body>

<div class="calculator">
    <h2>Simple Interest Calculator</h2>
    <input type="number" id="principal" placeholder="Principal Amount" required>
    <input type="number" id="rate" placeholder="Rate of Interest (%)" required>
    <input type="number" id="time" placeholder="Time (years)" required>
    <button onclick="calculateSI()">Calculate</button>
    <div class="result" id="result"></div>
</div>

<script>
    function calculateSI() {
        // Get input values
        let principal = parseFloat(document.getElementById('principal').value);
        let rate = parseFloat(document.getElementById('rate').value);
        let time = parseFloat(document.getElementById('time').value);

        if (isNaN(principal) || isNaN(rate) || isNaN(time)) {
            document.getElementById('result').innerHTML = "Please enter valid numbers!";
            return;
        }

        // Calculate Simple Interest
        let interest = (principal * rate * time) / 100;

        // Display the result
        document.getElementById('result').innerHTML = 
            `Simple Interest = ${interest.toFixed(2)}`;
    }
</script>

</body>
</html>
