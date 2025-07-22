<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="ResetPassword.aspx.vb" Inherits="AgroNest.ResetPassword" %>
<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Reset Password - AgroNest</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
    <link href="Content/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-page-container">
            <div class="login-box" style="max-width: 500px; display: block;">
                <div class="login-form-panel">
                    <asp:Panel ID="pnlReset" runat="server">
                        <h3 class="text-center mb-4"><i class="fas fa-key text-success"></i> Set New Password</h3>
                        <div class="mb-3">
                            <label class="form-label">New Password</label>
                            <asp:TextBox ID="txtNewPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Enter new password"></asp:TextBox>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">Confirm New Password</label>
                            <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Confirm new password"></asp:TextBox>
                        </div>
                        <div class="d-grid">
                            <asp:Button ID="btnUpdatePassword" runat="server" Text="Update Password" CssClass="btn btn-success" OnClick="btnUpdatePassword_Click" />
                        </div>
                    </asp:Panel>
                    <asp:Panel ID="pnlMessage" runat="server" Visible="false">
                        <div class="text-center">
                             <asp:Label ID="lblMessage" runat="server" CssClass="h5"></asp:Label>
                            <br /><br />
                            <a href="Login.aspx" class="btn btn-primary">Back to Login</a>
                        </div>
                    </asp:Panel>
                </div>
            </div>
        </div>
    </form>
</body>
</html>