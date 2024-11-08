/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */

function validatePassword() {
    var newPassword = document.getElementById("newPassword").value;
    var confirmPassword = document.getElementById("confirmPassword").value;
    var passwordRegex = /^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=])(?=\S+$).{8,}$/;
    
    if (!passwordRegex.test(newPassword)) {
        alert("Mật khẩu không đáp ứng yêu cầu. Vui lòng đảm bảo mật khẩu có ít nhất 8 ký tự, bao gồm chữ hoa, chữ thường, số và ký tự đặc biệt.");
        return false;
    }
    
    if (newPassword !== confirmPassword) {
        alert("Mật khẩu mới không khớp.");
        return false;
    }
    
    return true;
}
