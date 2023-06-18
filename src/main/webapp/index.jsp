<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>pailagam</title>

    <style>
        body{
        background: #b4ecf1;

        }
        h1{
            color:rgb(237, 153, 153);
            margin: auto;

        }
        .cont{
            display:grid;
            grid-auto-flow: row;
            grid-auto-rows: 150px;
        }

        input{
            height: 30px ;
            width: 200px;
            border-radius: 10px;
            color: rgb(67, 13, 13);
            background: #b2eabf;
        }

    </style>
</head>
<body>


    <div class="cont">

        <h1>Welcome to my page</h1>

        <h2>submit your details</h2>

        <form action="adduser">
    
            <input type="text" name="id" placeholder="id " width="50px" height="200px"><br>
            <input type="text" name="name" placeholder="name">
            <input type="submit" valve="Submit"> 
        </form>
    
    
    
    
    
        <h1> Display user details</h1>
        <form action="getuser">
    
            Enter the ID to get <input type="text" name="id" placeholder="Enter the Id">
            <input type="submit" value="View Page">
        </form>
    
        <h1>delete the user</h1>
        <form action="del">
    
            enter the id to delete<input type="text" name="id" placeholder="Enter the Id">
            <input type="submit" value="Delete" >
        </form>
        
        <h1>Update user name</h1>
        <form action="update">
    
           Enter the ID to update <input type="text" name="id" placeholder="Enter the Id">
            <input type="submit" value="Submit">
        </form>
        

    </div>
   
</body>
</html>