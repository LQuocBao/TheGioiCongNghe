<?php
class Connect
{
    //khai báo thuộc tính 
    protected $db;

    //phương thức khởi tạo 
    function __construct()
    {
        try {

            $dsn = "mysql:host=localhost;dbname=technology";
            $user = "root";
            $pass = "";
            $this->db = new PDO(
                $dsn,
                $user,
                $pass,
                array(PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES utf8")
            );
            $this->db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch (PDOException $e) {
            die("Lỗi kết nối CSDL: " . $e->getMessage());
        }
    }

    //gửi câu truy vấn lấy nguyên bảng dl 
    function getList($select)
    {
        $result = $this->db->query($select);
        $result = $result->fetchAll(); // lấy luôn dữ liệu
        return $result;
    }

    //lấy 1 dòng dl 
    function getInstance($select)
    {
        $results = $this->db->query($select);
        $result = $results->fetch();
        return $result;
    }

    //thực thi câu lệnh insert, update, delete
    function exec($query, $param = [])
    {
        try {
            $stmt = $this->db->prepare($query);
            $result = $stmt->execute($param);
            return $result;
        } catch (Exception $e) {
            error_log("Lỗi khi thực thi truy vấn: " . $e->getMessage());
            return false;
        }
    }
}
