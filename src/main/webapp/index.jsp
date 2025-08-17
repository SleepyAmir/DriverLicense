<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Driver License Management</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 30px;
            background: #f4f4f4;
        }
        h2 {
            color: #333;
        }
        form {
            background: white;
            padding: 15px;
            border-radius: 5px;
            margin-bottom: 20px;
            box-shadow: 0 0 5px rgba(0,0,0,0.1);
        }
        form input, form select {
            padding: 8px;
            margin: 5px;
            width: 200px;
        }
        form button {
            padding: 8px 15px;
            background: #28a745;
            color: white;
            border: none;
            cursor: pointer;
            border-radius: 4px;
        }
        form button:hover {
            background: #218838;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            background: white;
            box-shadow: 0 0 5px rgba(0,0,0,0.1);
        }
        th, td {
            padding: 10px;
            border: 1px solid #ccc;
            text-align: center;
        }
        th {
            background: #007bff;
            color: white;
        }
        .btn {
            padding: 5px 10px;
            border: none;
            color: white;
            cursor: pointer;
            border-radius: 4px;
        }
        .btn-edit {
            background: #ffc107;
        }
        .btn-delete {
            background: #dc3545;
        }
    </style>
</head>
<body>

<h2>Add New Driver License</h2>
<form>
    <input type="text" name="personId" placeholder="Person ID" required>
    <input type="text" name="serial" placeholder="Serial" required>
    <input type="text" name="licenseType" placeholder="License Type" required>
    <input type="text" name="city" placeholder="City" required>
    <input type="date" name="registerDate" required>
    <input type="date" name="expireDate" required>
    <button type="submit">Save</button>
</form>

<h2>Licenses List</h2>
<table>
    <thead>
    <tr>
        <th>ID</th>
        <th>Person ID</th>
        <th>Serial</th>
        <th>Type</th>
        <th>City</th>
        <th>Register Date</th>
        <th>Expire Date</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td>
            <button class="btn btn-edit">Edit</button>
            <button class="btn btn-delete">Delete</button>
        </td>
    </tr>
    </tbody>
</table>

</body>
</html>
