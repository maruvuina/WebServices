<html>
<head>
    <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }
    </style>
</head>
<body>

<h2>HTML Table</h2>

<table id="usersList">

</table>

<form action="#">
    <input id="user_full_name" placeholder="User full name">
    <input id="user_email" placeholder="User email">
    <input id="user_password" placeholder="User password">
    <input id="user_role" hidden value="USER">
    <button onclick="createUser()">Create user</button>
</form>

<input id="search_field">
<button onclick="searchByEmail()">Search by Email</button>
<script>
    function searchByEmail() {
        let email = document.getElementById("search_field").value;
        let xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function () {
            if (this.readyState === 4 && this.status === 200) {
                let user = JSON.parse(this.responseText);
                let html = '<tr>\n' +
                    '        <th>User id</th>\n' +
                    '        <th>User full_name</th>\n' +
                    '        <th>User role</th>\n' +
                    '        <th>User email</th>\n' +
                    '        <th>Delete</th>\n' +
                    '    </tr>';
                html = html + '<tr><td>' + user.id + '</td>\n' +
                    '        <td>' + user.fullName + '</td>\n' +
                    '        <td>' + user.role + '</td>\n' +
                    '        <td>' + user.email + '</td>' +
                    '        <td><button onclick="deleteUser(' + user.id + ')">Delete</button></td></tr>';
                document.getElementById("usersList").innerHTML = html;
            }
        };
        xhttp.open("GET", "http://localhost:8080/users/findByEmail?email=" + email, true);
        xhttp.send();

    }

    function deleteUser(userId) {
        let xhttp = new XMLHttpRequest();
        xhttp.open("DELETE", "http://localhost:8080/users/delete/" + userId, true);
        xhttp.send();
    }

    function createUser() {
        let userFullName = document.getElementById("user_full_name").value;
        let userPassword = document.getElementById("user_password").value;
        let userEmail = document.getElementById("user_email").value;
        let userRole = document.getElementById("user_role").value;

        let xmlhttp = new XMLHttpRequest();   // new HttpRequest instance
        xmlhttp.open("POST", "http://localhost:8080/users/save");
        xmlhttp.setRequestHeader("Content-Type", "application/json");
        xmlhttp.send(JSON.stringify({fullName: userFullName, password: userPassword, email: userEmail, role: userRole}));

        loadUsers();
    }

    function loadUsers() {
        let xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function () {
            if (this.readyState === 4 && this.status === 200) {
                let user = JSON.parse(this.responseText);
                let html = '<tr>\n' +
                    '        <th>User id</th>\n' +
                    '        <th>User full_name</th>\n' +
                    '        <th>User role</th>\n' +
                    '        <th>User email</th>\n' +
                    '        <th>Delete</th>\n' +
                    '    </tr>';
                for (let i = 0; i < user.length; i++) {
                    let user0 = user[i];
                    console.log(user0);
                    html = html + '<tr><td>' + user0.id + '</td>\n' +
                        '        <td>' + user0.fullName + '</td>\n' +
                        '        <td>' + user0.role + '</td>\n' +
                        '        <td>' + user0.email + '</td>' +
                        '        <td><button onclick="deleteUser(' + user0.id + ')">Delete</button></td></tr>';

                }
                document.getElementById("usersList").innerHTML = html;
            }
        };
        xhttp.open("GET", "http://localhost:8080/users/findAll", true);
        xhttp.send();
    }

    loadUsers();
</script>
</body>
</html>