<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="index.aspx.vb" Inherits="Captcha.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Simple Captcha</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous" />
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </head>
    <body>
        <form id="form1" runat="server">
            <script type="text/javascript">
                function RefreshCaptcha() {
                var img = document.getElementById("Captcha");
                    img.src = "Captcha.aspx?query=" + Math.random();
                }
            </script>
            <br /><br />
            <h3 style="text-align:center;">Fai il Captcha per verificare all'accesso!</h3>
                <center>
                    <div style="width:600px;">
                        <br />
                        <img src="Captcha.aspx" id="Captcha" style="border: solid 2px black; border-radius:5px" />
                        <br /><br />
                        <input type="text" class="form-control" style="width: 255px;" name="captcha" />
                        <br />
                    </div>
                </center>
            <center>
                <div class="btn-group" role="group" aria-label="Basic example">
                    <input type="submit" class="btn btn-primary" name="Verifica" value="Verifica" />
                    <a href="#" name="↻" class="btn btn-danger" value="↻" onclick="javascript:RefreshCaptcha();" style="margin-right:10px;" >&#160;↻&#160;</a>
                    <asp:Literal ID="L1" runat="server"></asp:Literal>
                </div>
            </center>
        </form>
    </body>
</html>