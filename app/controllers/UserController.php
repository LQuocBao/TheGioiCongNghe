<?php
class UserController
{
    public function viewRegister()
    {
        // $viewRegister = new UserModel();
        // $viewRegister->viewRegister();
        $viewpage = new PageView();
        $viewpage->viewRegister();
    }

    public function viewLogin()
    {
        $viewpage = new PageView();
        $viewpage->viewLogin();
    }

    public function signUp()
    {
        try {
            $users = new UserModel();
            $errors = [];

            // kiểm tra email
            if (!isset($_POST['email']) || empty(trim($_POST['email']))) {
                $errors[] = "Email không được để trống.";
            }

            // kiểm tra password
            if (!isset($_POST['password']) || empty($_POST['password']) || !isset($_POST['confirmPassword']) || empty($_POST['confirmPassword'])) {
                $errors[] = "Mật khẩu không được để trống.";
            } else if ($_POST['password'] !== $_POST['confirmPassword']) {
                $errors[] = "Mật khẩu nhập lại không khớp.";
            }
            $email = $users->getAllUsers();
            foreach ($email as $item) {
                // echo $item->getEmail();
                if ($_POST['email'] === $item->getEmail()) {
                    $errors[] = "Email đã được sử dụng. Vui lòng chọn email khác.";
                    break;
                } else {
                }
            }

            // Nếu có lỗi, hiển thị alert và chuyển hướng
            if (!empty($errors)) {
                echo "<script>alert('" . implode("\\n", $errors) . "'); window.location.href='/PHP2/Assignment/register';</script>";
                exit();
            }
            // Nếu hợp lệ, thêm người dùng
            $users->setName($_POST['name']);
            $users->setEmail($_POST['email']);
            $users->setPassword($_POST['password']);
            $result = $users->insert();
            var_dump($result);
            if ($result) {
                echo "<script>alert('Đăng ký thành công'); window.location.href='/PHP2/Assignment/login';</script>";
                exit();
            } else {
                echo "<script>alert('Đăng ký không thành công. Vui lòng thử lại.');</script>";
            }
        } catch (Exception $e) {
            echo "<script>alert('Đăng ký không thành công. Vui lòng thử lại.'); window.location.href='/PHP2/Assignment/register';</script>";
        }
    }

    public function signIn()
    {
        try {
            $user = new UserModel();
            $errors = [];
            // kiểm tra email
            if (!isset($_POST['email']) || empty(trim($_POST['email']))) {
                $errors[] = "Email không được để trống.";
            }
            //kiểm tra password
            if (!isset($_POST['password']) || empty($_POST['password'])) {
                $errors[] = "Mật khẩu không được để trống.";
            }

            if (!empty($errors)) {
                echo "<script>alert('" . implode("\\n", $errors) . "'); window.location.href='/PHP2/Assignment/login';</script>";
                exit();
            }

            $check = $user->getUserByEmail( $_POST['email']);

            if ($check == null) {
                echo "<script>alert('Tài khoản không tồn tại.'); window.location.href='/PHP2/Assignment/login';</script>";
                exit();
            }

            // Kiểm tra trạng thái tài khoản
            if ($check->getStatus() == 1) {
                echo "<script>alert('Tài khoản chưa được kích hoạt.'); window.location.href='/PHP2/Assignment/login';</script>";
                exit();
            }
            if ($check->getStatus() == 2) {
                echo "<script>alert('Tài khoản của bạn đã bị khoá.'); window.location.href='/PHP2/Assignment/login';</script>";
                exit();
            }

            // Kiểm tra mật khẩu
            if ($check->getPassword() !== $_POST['password']) {
                echo "<script>alert('Tài khoản hoặc mật khẩu không chính xác.'); window.location.href='/PHP2/Assignment/login';</script>";
                exit();
            }

            // Đăng nhập thành công, kiểm tra quyền
            if ($check->getRole() == 1) {
                $_SESSION['user'] = $check->getEmail();
                $_SESSION['role'] = $check->getRole();
                echo "<script>alert('Chào mừng bạn đến với trang quản trị'); window.location.href='/PHP2/Assignment/admin/';</script>";
                // exit();
            } else {
                $_SESSION['user'] = $check->getEmail();
                $_SESSION['role'] = $check->getRole();
                echo "<script>alert('Chào mừng bạn đến với Thế Giới Công Nghệ'); window.location.href='/PHP2/Assignment/';</script>";
            }
        } catch (Exception $e) {
            echo "<script>alert('Đăng nhập không thành công. Vui lòng thử lại.'); window.location.href='/PHP2/Assignment/login';</script>";
        }
    }

    // public function signUp()
    // {
    //     try {
    //         $users = new UserModel();
    //         $errors = [];

    //         // kiểm tra email
    //         if (!isset($_POST['email']) || empty(trim($_POST['email']))) {
    //             $errors[] = "Email không được để trống.";
    //         }

    //         // kiểm tra password
    //         if (!isset($_POST['password']) || empty($_POST['password']) || !isset($_POST['confirmPassword']) || empty($_POST['confirmPassword'])) {
    //             $errors[] = "Mật khẩu không được để trống.";
    //         } else if ($_POST['password'] !== $_POST['confirmPassword']) {
    //             $errors[] = "Mật khẩu nhập lại không khớp.";
    //         }
    //         $email = $users->getAllUsers();
    //         foreach ($email as $item) {
    //             // echo $item->getEmail();
    //             if ($_POST['email'] === $item->getEmail()) {
    //                 $errors[] = "Email đã được sử dụng. Vui lòng chọn email khác.";
    //                 break;
    //             } else {
    //             }
    //         }

    //         // Nếu có lỗi, hiển thị alert và chuyển hướng
    //         if (!empty($errors)) {
    //             echo "<script>alert('" . implode("\\n", $errors) . "'); window.location.href='/PHP2/Assignment/register';</script>";
    //             exit();
    //         }
    //         // Nếu hợp lệ, thêm người dùng
    //         $users->setName($_POST['name']);
    //         $users->setEmail($_POST['email']);
    //         $users->setPassword($_POST['password']);
    //         $result = $users->insert();
    //         var_dump($result);
    //         if ($result) {
    //             echo "<script>alert('Đăng ký thành công'); window.location.href='/PHP2/Assignment/login';</script>";
    //             exit();
    //         } else {
    //             echo "<script>alert('Đăng ký không thành công. Vui lòng thử lại.');</script>";
    //         }
    //     } catch (Exception $e) {
    //         echo "<script>alert('Đăng ký không thành công. Vui lòng thử lại.'); window.location.href='/PHP2/Assignment/register';</script>";
    //     }
    // }

    public function logout()
    {
        session_destroy();
        header("Location: /PHP2/Assignment/");
        exit();
    }
}
