<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Login.aspx.vb" Inherits="AgroNest.Login" %>

<!DOCTYPE html>
<html lang="en">
<head runat="server">
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login - AgroNest</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" />
    <link href="Content/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="login-page-container">
            <div class="login-box">
                <div class="login-form-panel">
                    
                    <!-- Login Form (The only thing visible on the main screen) -->
                    <div id="loginForm">
                        <h3 class="text-center mb-4"><i class="fas fa-leaf text-success"></i> AgroNest Login</h3>
                        <div class="mb-3">
                            <label for="txtUsername" class="form-label">Username</label>
                            <asp:TextBox ID="txtUsername" runat="server" CssClass="form-control" placeholder="Enter username"></asp:TextBox>
                        </div>
                        <div class="mb-3">
                            <label for="txtPassword" class="form-label">Password</label>
                            <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Enter password"></asp:TextBox>
                        </div>
                        <div class="d-grid mb-3">
                            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="btn btn-success" OnClick="btnLogin_Click" />
                        </div>
                        <asp:Label ID="lblLoginError" runat="server" CssClass="text-danger mt-2 d-block text-center" Text=""></asp:Label>
                        <hr />
                        <div class="text-center small">
                            <a href="#" class="form-switch-link" data-bs-toggle="modal" data-bs-target="#forgotPasswordModal">Forgot Password?</a>
                            <span class="mx-2">|</span>
                            <a href="#" class="form-switch-link" data-bs-toggle="modal" data-bs-target="#registerModal">Sign Up</a>
                        </div>
                    </div>

                    <!-- Registration Modal -->
                    <div class="modal fade" id="registerModal" tabindex="-1">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title"><i class="fas fa-user-plus me-2"></i>Create Account</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                </div>
                                <div class="modal-body">
                                    <div class="mb-3"><label class="form-label">Full Name</label><asp:TextBox ID="txtNewFullName" runat="server" CssClass="form-control" placeholder="Enter your full name"></asp:TextBox></div>
                                    <div class="mb-3"><label class="form-label">Username</label><asp:TextBox ID="txtNewUsername" runat="server" CssClass="form-control" placeholder="Choose a username"></asp:TextBox></div>
                                    <div class="mb-3"><label class="form-label">Email</label><asp:TextBox ID="txtNewEmail" runat="server" TextMode="Email" CssClass="form-control" placeholder="Enter your email"></asp:TextBox></div>
                                    <div class="mb-3"><label class="form-label">Password</label><asp:TextBox ID="txtNewPassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Create a password"></asp:TextBox></div>
                                    <asp:Label ID="lblRegisterError" runat="server" CssClass="text-danger mt-2 d-block text-center" Text=""></asp:Label>
                                    <asp:Label ID="lblRegisterSuccess" runat="server" CssClass="text-success mt-2 d-block text-center" Text=""></asp:Label>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                    <asp:Button ID="btnRegister" runat="server" Text="Register" CssClass="btn btn-primary" OnClick="btnRegister_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <!-- Forgot Password Modal -->
                    <div class="modal fade" id="forgotPasswordModal" tabindex="-1">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title"><i class="fas fa-key text-warning"></i> Reset Password</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                                </div>
                                <div class="modal-body">
                                     <p class="text-muted text-center small">Enter your email and we will send you instructions.</p>
                                     <div class="mb-3"><label class="form-label">Email Address</label><asp:TextBox ID="txtForgotEmail" runat="server" CssClass="form-control" TextMode="Email" placeholder="Enter your registered email"></asp:TextBox></div>
                                     <asp:Label ID="lblResetInfo" runat="server" CssClass="text-info mt-2 d-block text-center" Text=""></asp:Label>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                                    <asp:Button ID="btnReset" runat="server" Text="Send Reset Link" CssClass="btn btn-warning" OnClick="btnReset_Click" />
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            // If there's a registration error/success, open the registration modal on page load
            if ($('#<%= lblRegisterError.ClientID %>').text().trim().length > 0 || $('#<%= lblRegisterSuccess.ClientID %>').text().trim().length > 0) {
                var registerModal = new bootstrap.Modal(document.getElementById('registerModal'));
                registerModal.show();
            }
            
            // If there's a password reset info message, open the forgot password modal on page load
            if ($('#<%= lblResetInfo.ClientID %>').text().trim().length > 0) {
                var forgotModal = new bootstrap.Modal(document.getElementById('forgotPasswordModal'));
                forgotModal.show();
            }
        });
    </script>
</body>
</html>