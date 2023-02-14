<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        button.boxPlusBtn {
            margin-bottom:10px;
            height: 30px;
            width:auto;
            cursor:pointer;
        }
        button.boxDel {
            font-size:larger;
            font-weight: bolder;
            cursor:pointer;
	        width:25px;
	        height:25px;
	        border-radius:0%;
	        border:0px;
	        margin-right:20px;
        }
        button.boxDel:hover {
            background-color:rgba(255, 255, 255, 0);
            transform: rotate( -20deg );
            transition: 0.1s;
            color:rgb(233, 41, 41);
        }
        div.boxDiv {
            float:left;
            margin-right: 0px;
            margin-bottom: 15px;
        }
        div.box {
            width:500px;
        }
        input.displayBox {
            width:500px;
        }
        input.boxInput {
            margin-top: 1px;
            color: rgb(86, 100, 125);
            width: 116px;
            height: 25px;
            font-size: 12px;
            border: 0;
            border-radius: 5px;
            outline: none;
            padding-left: 12px;
            background-color: rgb(230, 230, 230);
        }
        input[type="submit"] {
            height: 44px;
	        width: 500px;
	        font-weight: bolder;
	        color: white;
	        border: none;
	        background-color: #6e93ac;
	        cursor: pointer;
            margin-top:20px;
        }
        input[type="submit"]:hover {
            background-color: #476e88;
        }
    </style>
    <script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
    <script>
        $(function() {
		    $("button").click(function() {
			    event.preventDefault();
			    $("#displayBox").append(
				    "<div class='boxDiv'><input class='boxInput' type='text' name='box'> <button class='boxDel'>❌　</button></div>");
			})
    		$("#displayBox").on("click", "button", function() {
	    		event.preventDefault();
		    	$(this).parent().remove();
		    })
	    })
    </script>
</head>
<body>
    <form>
        <p>항목 추가하기</p>
        <div class="box">
            <button class="boxPlusBtn">항목 추가</button>
            <div id="displayBox"></div>
        </div>
        <div class="submitbox">
            <input type="submit" id='insertBtn' value='등록하기'>
        </div>
    </form>
</body>
</html>