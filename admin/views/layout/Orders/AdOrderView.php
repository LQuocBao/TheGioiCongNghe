<!-- Main Content -->
<style>
    .sidebar {
        height: 100vh;
        box-shadow: 2px 0 5px rgba(0, 0, 0, 0.1);
    }

    .sidebar h5 {
        font-weight: bold;
        color: #007bff;
    }

    .sidebar .nav-link {
        color: #333;
        font-size: 16px;
        margin: 5px 0;
    }

    .sidebar .nav-link.active {
        background-color: #007bff;
        color: #fff;
        border-radius: 5px;
    }

    .sidebar .nav-link:hover {
        background-color: #f0f0f0;
        color: #007bff;
    }
</style>
<main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
    <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
        <h2>Quản Lý Đơn Hàng</h2>
    </div>

    <!-- Summary Section -->
    <div class="row mb-4">
        <div class="col-md-4">
            <div class="p-3 bg-primary text-white text-center rounded">
                <h5>Tổng Đơn Hàng</h5>
                <h2>1,024</h2>
            </div>
        </div>
        <div class="col-md-4">
            <div class="p-3 bg-warning text-dark text-center rounded">
                <h5>Đơn Hàng Chờ</h5>
                <h2>128</h2>
            </div>
        </div>
        <div class="col-md-4">
            <div class="p-3 bg-success text-white text-center rounded">
                <h5>Đơn Hàng Hoàn Thành</h5>
                <h2>896</h2>
            </div>
        </div>
    </div>

    <!-- Order List -->
    <div class="table-responsive">
        <table class="table table-striped table-bordered">
            <thead class="table-dark">
                <tr>
                    <th>#</th>
                    <th>Khách Hàng</th>
                    <th>Email</th>
                    <th>Ngày Đặt</th>
                    <th>Trạng Thái</th>
                    <th>Hành Động</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>Nguyễn Văn A</td>
                    <td>vana@gmail.com</td>
                    <td>2025-01-20</td>
                    <td>Chờ xử lý</td>
                    <td><button class="btn btn-primary btn-sm">Chi tiết</button></td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Trần Thị B</td>
                    <td>tranb@gmail.com</td>
                    <td>2025-01-19</td>
                    <td>Hoàn thành</td>
                    <td><button class="btn btn-primary btn-sm">Chi tiết</button></td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>Lê Văn C</td>
                    <td>levanc@gmail.com</td>
                    <td>2025-01-18</td>
                    <td>Đã hủy</td>
                    <td><button class="btn btn-primary btn-sm">Chi tiết</button></td>
                </tr>
            </tbody>
        </table>
    </div>
</main>