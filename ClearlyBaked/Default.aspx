<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ClearlyBaked.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <script>
        function newRef() {
            const ref = document.getElementById("NewReferrer");
            if (ref.value) {
                window.location.href = "?" + ref.value;
            }
        }
    </script>
    <style>
        body, html {
            margin: 0;
            padding: 0;
            position: relative;
            font-family: sans-serif;
        }

        .main-container {
            width: 500px;
            height: 1000px;
            margin-left: auto;
            margin-right: auto;
            background-color: white;
            color: green;
            text-align: center;
        }

        img {
            width: 60%;
        }

        .reverse {
            width: 100%;
            background-color: forestgreen;
            color: white;
            padding-top: 5px;
            padding-bottom: 5px;
            font-size: 20px;
            font-weight: bold;
        }

        .domain {
            font-size: 40px;
            font-weight: bold;
            padding-top: 5px;
            padding-bottom: 5px;
        }

        table {
            width: 100%;
            table-layout: fixed;
            border-collapse: collapse;
            margin-top: 20px;
        }

        td {
            text-align: left;
            padding: 10px;
        }

        .left {
            width: 105px;
            border-right: 1px solid green;
        }

        input {
            margin-left: 10px;
            width: 100%;
            box-sizing: border-box;
            font-size: 18px;
            padding: 5px;
        }

        button {
            margin-top: 10px;
            width: 100%;
            box-sizing: border-box;
            font-size: 18px;
            padding: 5px;
            cursor:pointer;
        }

        .feedback {
            margin-top: 5px;
            box-sizing: border-box;
            color:red;
        }

        li{
            text-align:left;
        }
    </style>
    <title>Clearly Baked</title>
</head>
<body>

    <div class="main-container">
        <img src="StonedLeaf.PNG" />
        <div class="reverse">DOMAIN FOR SALE</div>
        <div class="domain">CLEARLYBAKED.COM</div>
        <div class="reverse">ONLY $3000</div>
        <form id="form1" runat="server">
            <table>
                <tr>
                    <td class="left">Referred By:</td>
                    <td>
                        <input id="ReferredBy" name="ReferredBy" value="" readonly="true" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td class="left">I'm Interested:</td>
                    <td>
                        <input id="PotentialBuyer" name="PotentialBuyer" value="" runat="server" type="email" />
                    </td>
                </tr>
            </table>
            <button type="submit">SUBMIT</button>
            <div id="Feedback" runat="server" class="feedback"></div>
        </form>
        <br />
        
        <div class="reverse">EARN $1000</div>

        <ol>
            <li>Enter your email address below and click "GO".</li>
            <li>We will create a page like this just for you.</li>
            <li>Share your page as often as you can.</li>
            <li>If someone you refer buys the domain, you get paid.</li>
        </ol>

        <table>
            <tr>
                <td class="left">Your Email</td>
                <td>
                    <input id="NewReferrer" type="email" />
                </td>
            </tr>
        </table>
        <button onclick="newRef();">GO</button>


    </div>
</body>
</html>
