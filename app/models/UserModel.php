<?php
class UserModel extends Connect
{
    private $id;
    private $name;
    private $email;
    private $password;
    private $role;
    private $status;
    private $created_at;
    private $updated_at;

    public function __construct()
    {
        parent::__construct();
        if (func_num_args() >= 8) {
            $this->id = func_get_arg(0);
            $this->name = func_get_arg(1);
            $this->email = func_get_arg(2);
            $this->password = func_get_arg(3);
            $this->role = func_get_arg(4);
            $this->status = func_get_arg(5);
            $this->created_at = func_get_arg(6);
            $this->updated_at = func_get_arg(7);
        }
    }

    // public function signUp()
    // {
    //     try {
    //         $sql = "INSERT INTO users(name, email, password, role, status) VALUES(?, ?, ?, ?, ?)";
    //         $param = [$this->name, $this->email, $this->password, $this->role, $this->status];
    //         $result = $this->exec($sql, $param);
    //         if ($result) {
    //             return true;
    //         }
    //         return false;
    //     } catch (Exception $e) {
    //         return $e->getMessage();
    //     }
    // }

    // public function signIn(){
    //     try {
    //         $sql = "SELECT * FROM users WHERE email = ? AND password = ?";
    //         $param = [$this->email, $this->password];
    //         $result = $this->exec($sql, $param);
    //         if($result){
    //             return $result;
    //         }
    //         return false;
    //     } catch (Exception $e) {
    //         return $e->getMessage();
    //     }
    // }

    public function getAllUsers()
    {
        try {
            $sql = "SELECT * FROM users";
            $result = $this->getList($sql);
            $users = [];
            if ($result) {
                foreach ($result as $row) {
                    $user = new UserModel($row['id'], $row['name'], $row['email'], $row['password'], $row['role'], $row['status'], $row['created_at'], $row['updated_at']);
                    array_push($users, $user);
                }
            }


            return $users;
        } catch (Exception $e) {
            error_log("L��i khi lấy dữ liệu: " . $e->getMessage());
            return false;
        }
    }

    public function getOneUser($id)
    {
        try {
            $sql = "SELECT * FROM users WHERE id = $id";
            $result = $this->getInstance($sql);
            if ($result) {
                $user = new UserModel($result['id'], $result['name'], $result['email'], $result['password'], $result['role'], $result['status']);
                return $user;
            }
        } catch (Exception $e) {
            error_log("Lỗi khi lấy dữ liệu: " . $e->getMessage());
            return false;
        }
    }

    public function getUserByEmail($email)
    {
        try {
            $sql = "SELECT * FROM users WHERE email = '$email'";
            $result = $this->getInstance($sql);
            if ($result) {
                $user = new UserModel($result['id'], $result['name'], $result['email'], $result['password'], $result['role'], $result['status'], $result['created_at'], $result['updated_at']);
                return $user;
            }
        } catch (Exception $e) {
            error_log("Lỗi khi lấy dữ liệu: " . $e->getMessage());
            return false;
        }
    }

    public function insert()
    {
        try {
            $sql = "INSERT INTO users (name, email, password) VALUES (?,?,?)";
            $param = [$this->name, $this->email, $this->password];
            $result = $this->exec($sql, $param);
            if ($result) {
                return true;
            }
        } catch (Exception $e) {
            error_log("Lỗi khi chèn dữ liệu: " . $e->getMessage());
            return false;
        }
    }

    public function update($id)
    {
        try {
            $sql = "UPDATE Users SET role = ?, status = ? WHERE idUser = $id";
            $param = [$this->role, $this->status];
            $result = $this->exec($sql, $param);
            if ($result) {
                return true;
            }
        } catch (Exception $e) {
            error_log("Lỗi khi cập nhật dữ liệu: " . $e->getMessage());
            return false;
        }
    }

    public function getId()
    {
        return $this->id;
    }

    public function setId($id)
    {
        $this->id = $id;
    }

    public function getName()
    {
        return $this->name;
    }

    public function setName($name)
    {
        $this->name = $name;
    }

    public function getEmail()
    {
        return $this->email;
    }

    public function setEmail($email)
    {
        $this->email = $email;
    }

    public function getPassword()
    {
        return $this->password;
    }

    public function setPassword($password)
    {
        $this->password = $password;
    }

    public function getRole()
    {
        return $this->role;
    }

    public function setRole($role)
    {
        $this->role = $role;
    }

    public function getStatus()
    {
        return $this->status;
    }

    public function setStatus($status)
    {
        $this->status = $status;
    }

    public function getCreated_at()
    {
        return $this->created_at;
    }

    public function setCreated_at($created_at)
    {
        $this->created_at = $created_at;
    }

    public function getUpdated_at()
    {
        return $this->updated_at;
    }

    public function setUpdated_at($updated_at)
    {
        $this->updated_at = $updated_at;
    }
}
