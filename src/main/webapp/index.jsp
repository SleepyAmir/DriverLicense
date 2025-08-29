<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Driver License Management</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <style>
        :root {
            --primary-color: #2563eb;
            --secondary-color: #64748b;
            --success-color: #16a34a;
            --warning-color: #d97706;
            --danger-color: #dc2626;
            --light-bg: #f8fafc;
            --card-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1);
        }

        body {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

        .container {
            padding: 2rem 0;
        }

        .main-card {
            background: white;
            border-radius: 16px;
            box-shadow: var(--card-shadow);
            overflow: hidden;
            margin-bottom: 2rem;
        }

        .card-header {
            background: linear-gradient(135deg, var(--primary-color), #3b82f6);
            color: white;
            padding: 1.5rem;
            border: none;
        }

        .card-header h4 {
            margin: 0;
            font-weight: 600;
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }

        .form-section {
            padding: 2rem;
        }

        .form-group {
            margin-bottom: 1.5rem;
        }

        .form-label {
            font-weight: 600;
            color: var(--secondary-color);
            margin-bottom: 0.5rem;
            font-size: 0.875rem;
            text-transform: uppercase;
            letter-spacing: 0.05em;
        }

        .form-control, .form-select {
            border: 2px solid #e2e8f0;
            border-radius: 8px;
            padding: 0.75rem 1rem;
            transition: all 0.2s ease;
            font-size: 0.95rem;
        }

        .form-control:focus, .form-select:focus {
            border-color: var(--primary-color);
            box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.1);
        }

        .btn {
            border-radius: 8px;
            padding: 0.75rem 1.5rem;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 0.05em;
            transition: all 0.2s ease;
        }

        .btn-primary {
            background: linear-gradient(135deg, var(--primary-color), #3b82f6);
            border: none;
        }

        .btn-primary:hover {
            transform: translateY(-1px);
            box-shadow: 0 4px 12px rgba(37, 99, 235, 0.3);
        }

        .table-container {
            background: white;
            border-radius: 16px;
            box-shadow: var(--card-shadow);
            overflow: hidden;
        }

        .table {
            margin: 0;
        }

        .table thead th {
            background: var(--light-bg);
            border: none;
            padding: 1rem;
            font-weight: 600;
            color: var(--secondary-color);
            text-transform: uppercase;
            letter-spacing: 0.05em;
            font-size: 0.75rem;
        }

        .table tbody td {
            padding: 1rem;
            border-color: #f1f5f9;
            vertical-align: middle;
        }

        .table tbody tr:hover {
            background-color: #f8fafc;
        }

        .btn-sm {
            padding: 0.5rem 1rem;
            font-size: 0.875rem;
            margin: 0 0.25rem;
        }

        .btn-warning {
            background-color: var(--warning-color);
            border-color: var(--warning-color);
        }

        .btn-danger {
            background-color: var(--danger-color);
            border-color: var(--danger-color);
        }

        .icon-button {
            display: inline-flex;
            align-items: center;
            gap: 0.5rem;
        }

        .form-row {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
            gap: 1.5rem;
        }

        .badge {
            padding: 0.5rem 0.75rem;
            border-radius: 6px;
            font-size: 0.75rem;
            font-weight: 600;
        }

        .license-type-CAR { background-color: #dbeafe; color: #1e40af; }
        .license-type-MOTORCYCLE { background-color: #dcfce7; color: #166534; }
        .license-type-TRUCK { background-color: #fef3c7; color: #92400e; }
        .license-type-BUS { background-color: #fde2e7; color: #be123c; }
        .license-type-TRACTOR { background-color: #f3e8ff; color: #7c3aed; }

        @media (max-width: 768px) {
            .form-row {
                grid-template-columns: 1fr;
            }

            .table-responsive {
                border-radius: 16px;
            }
        }
    </style>
</head>
<body>
<div class="container">
    <!-- Form Section -->
    <div class="main-card">
        <div class="card-header">
            <h4><i class="fas fa-id-card"></i> Add New Driver License</h4>
        </div>
        <div class="form-section">
            <form action="driverLicenses" method="post">
                <div class="form-row">
                    <div class="form-group">
                        <label for="personId" class="form-label">Person ID</label>
                        <input type="number" class="form-control" id="personId" name="personId" placeholder="Enter Person ID" required>
                    </div>

                    <div class="form-group">
                        <label for="serialNumber" class="form-label">Serial Number</label>
                        <input type="number" class="form-control" id="serialNumber" name="serialNumber" placeholder="Enter Serial Number" required>
                    </div>
                </div>

                <div class="form-row">
                    <div class="form-group">
                        <label for="licenseType" class="form-label">License Type</label>
                        <select class="form-select" id="licenseType" name="licenseType" required>
                            <option value="">Select License Type</option>
                            <option value="CAR">Car</option>
                            <option value="MOTORCYCLE">Motorcycle</option>
                            <option value="TRUCK">Truck</option>
                            <option value="BUS">Bus</option>
                            <option value="TRACTOR">Tractor</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <label for="city" class="form-label">City</label>
                        <select class="form-select" id="city" name="city" required>
                            <option value="">Select City</option>
                            <option value="TEHRAN">Tehran</option>
                            <option value="Shiraz">Shiraz</option>
                            <option value="Karaj">Karaj</option>
                            <option value="Yazd">Yazd</option>
                            <option value="Mashhad">Mashhad</option>
                        </select>
                    </div>
                </div>

                <div class="form-row">
                    <div class="form-group">
                        <label for="registerDate" class="form-label">Register Date</label>
                        <input type="date" class="form-control" id="registerDate" name="registerDate" required>
                    </div>

                    <div class="form-group">
                        <label for="expiryDate" class="form-label">Expiry Date</label>
                        <input type="date" class="form-control" id="expiryDate" name="expiryDate" required>
                    </div>
                </div>

                <div class="text-center mt-4">
                    <button type="submit" class="btn btn-primary btn-lg">
                        <i class="fas fa-plus-circle"></i> Add License
                    </button>
                </div>
            </form>
        </div>
    </div>

    <!-- Table Section -->
    <div class="table-container">
        <div class="card-header">
            <h4><i class="fas fa-list"></i> Driver Licenses</h4>
        </div>
        <div class="table-responsive">
            <table class="table table-hover">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Person ID</th>
                    <th>Serial Number</th>
                    <th>License Type</th>
                    <th>City</th>
                    <th>Register Date</th>
                    <th>Expiry Date</th>
                    <th>Status</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                <!-- JSP version - uncomment and replace sample data -->
                <!--
                        <c:forEach var="license" items="${sessionScope.driverLicenseList}">
                            <tr>
                                <td>${license.id}</td>
                                <td>${license.personId}</td>
                                <td>${license.serialNumber}</td>
                                <td>
                                    <span class="badge license-type-${license.licenseType}">
                                        ${license.licenseType}
                                    </span>
                                </td>
                                <td>${license.city}</td>
                                <td>${license.registerDate}</td>
                                <td>${license.expiryDate}</td>
                                <td>
                                    <c:choose>
                                        <c:when test="${license.expiryDate.isBefore(LocalDate.now())}">
                                            <span class="badge bg-danger">Expired</span>
                                        </c:when>
                                        <c:when test="${license.expiryDate.isBefore(LocalDate.now().plusMonths(3))}">
                                            <span class="badge bg-warning">Expiring Soon</span>
                                        </c:when>
                                        <c:otherwise>
                                            <span class="badge bg-success">Active</span>
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                                <td>
                                    <button class="btn btn-warning btn-sm icon-button" onclick="edit(${license.id})">
                                        <i class="fas fa-edit"></i> Edit
                                    </button>
                                    <button class="btn btn-danger btn-sm icon-button" onclick="remove(${license.id})">
                                        <i class="fas fa-trash"></i> Remove
                                    </button>
                                </td>
                            </tr>
                        </c:forEach>
                        -->
                </tbody>
            </table>
        </div>
    </div>
</div>

<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
<script>
    function edit(id) {
        // Implement edit functionality
        console.log('Edit license with ID:', id);
        // You can redirect to edit page or show modal
        // window.location.href = 'editDriverLicense?id=' + id;
    }

    function remove(id) {
        if (confirm('Are you sure you want to remove this driver license?')) {
            // Implement remove functionality
            console.log('Remove license with ID:', id);
            // window.location.href = 'removeDriverLicense?id=' + id;
        }
    }

    // Auto-set register date to today
    document.getElementById('registerDate').valueAsDate = new Date();

    // Set minimum expiry date to register date + 1 day
    document.getElementById('registerDate').addEventListener('change', function() {
        const registerDate = new Date(this.value);
        const minExpiryDate = new Date(registerDate.getTime() + 24 * 60 * 60 * 1000);
        document.getElementById('expiryDate').min = minExpiryDate.toISOString().split('T')[0];
    });

    // Form validation
    document.querySelector('form').addEventListener('submit', function(e) {
        const registerDate = new Date(document.getElementById('registerDate').value);
        const expiryDate = new Date(document.getElementById('expiryDate').value);

        if (expiryDate <= registerDate) {
            e.preventDefault();
            alert('Expiry date must be after register date');
            return false;
        }
    });
</script>
</body>
</html>