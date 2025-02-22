<style>
    body {
        background-color: #e9ecef;
    }

    .auth-card {
        border-radius: 1rem;
        box-shadow: 0 8px 15px rgba(0, 0, 0, 0.2);
    }

    .auth-header {
        border-top-left-radius: 1rem;
        border-top-right-radius: 1rem;
        background: linear-gradient(135deg, #2A4D9E, #1E3A78);
        color: white;
    }

    .auth-header h4 {
        font-weight: bold;
    }

    .btn-custom {
        border-radius: 30px;
        background: linear-gradient(135deg, #2A4D9E, #1E3A78);
        color: white;
        font-weight: bold;
        width: 200px;
        margin: 0 auto;
    }

    .btn-custom:hover {
        color: linear-gradient(135deg, #233b7d, #1A3166);
        background: white;
        border: 1px solid #2A4D9E;
        transition: background 3s ease-in-out;
    }

    .form-control {
        border-radius: 0.5rem;
    }

    .card-body {
        padding: 2rem;
    }
</style>
</head>

<body>
    <div class="container py-5">
        <div class="row justify-content-center align-items-center">
            <div class="col-lg-6">
                <div class="card auth-card">
                    <div class="card-header auth-header text-center">
                        <h4>ĐĂNG NHẬP</h4>
                    </div>
                    <div class="card-body">
                        <form action="/PHP2/Assignment/signIn" method="POST">
                            <div class="mb-3">
                                <label for="email" class="form-label">Địa Chỉ Email</label>
                                <input type="email" class="form-control" id="email" name="email" placeholder="Nhập email của bạn">
                            </div>
                            <div class="mb-3">
                                <label for="password" class="form-label">Mật Khẩu</label>
                                <input type="password" class="form-control" id="password" name="password" placeholder="Nhập mật khẩu của bạn">
                            </div>
                            <div class="d-grid gap-2">
                                <button type="submit" class="btn btn-custom">Đăng nhập</button>
                            </div>
                            <p class="mt-3 text-center">Chưa có tài khoản? <a href="/PHP2/Assignment/register">Đăng ký ngay</a></p>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>