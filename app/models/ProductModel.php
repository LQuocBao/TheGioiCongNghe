<?php
class ProductModel extends Connect
{
    private $id;
    private $name;
    private $image;
    private $images;
    private $price;
    private $price_sale;
    private $stock;
    private $status;
    private $short_description;
    private $description;
    private $category_id;
    private $created_at;
    private $updated_at;

    public function __construct()
    {
        parent::__construct();
        if (func_num_args() >= 11) {
            $this->id = func_get_arg(0);
            $this->name = func_get_arg(1);
            $this->image = func_get_arg(2);
            $this->images = func_get_arg(3);
            $this->price = func_get_arg(4);
            $this->price_sale = func_get_arg(5);
            $this->stock = func_get_arg(6);
            $this->status = func_get_arg(7);
            $this->short_description = func_get_arg(8);
            $this->description = func_get_arg(9);
            $this->category_id = func_get_arg(10);
            $this->created_at = func_get_arg(11);
            $this->updated_at = func_get_arg(12);
        }
    }

    public function get8Products()
    {
        $sql = "SELECT * FROM products LIMIT 8";
        $result = $this->getList($sql);
        $products = array();
        if ($result) {
            foreach ($result as $row) {
                $product = new ProductModel($row['id'], $row['name'], $row['image'], $row['images'], $row['price'], $row['price_sale'], $row['stock'], $row['status'], $row['short_description'], $row['description'], $row['category_id'], $row['created_at'], $row['updated_at']);
                array_push($products, $product);
            }
        }
        return $products;
        // // tạo mảng sản phẩm
        // $product = new Product(1, "Quốc Bảo", "anh1.jpg", "anh1.jpg", 3500, 3000, 10, "Mô tả ngắn", "Mô tả dài", 1, "2021-06-01", "2021-06-02");
        // $products = array($product, $product);
        // //hiển thị tất cả sản phẩm
        // $productView = new ProductView();
        // $productView->renderProducts($products);
    }

    public function getProductsByCategoryId($category_id)
    {
        $sql = "SELECT * FROM products WHERE category_id = $category_id";
        $result = $this->getList($sql);
        $products = array();
        if ($result) {
            foreach ($result as $row) {
                $product = new ProductModel($row['id'], $row['name'], $row['image'], $row['images'], $row['price'], $row['price_sale'], $row['stock'], $row['status'], $row['short_description'], $row['description'], $row['category_id'], $row['created_at'], $row['updated_at']);
                array_push($products, $product);
            }
        }
        return $products;
    }

    public function getProductById($id)
    {
        $sql = "SELECT * FROM products WHERE id = $id ORDER BY updated_at DESC";
        $result = $this->getInstance($sql);
        // $product = null;
        if ($result) {
            $product = new ProductModel($result['id'], $result['name'], $result['image'], $result['images'], $result['price'], $result['price_sale'], $result['stock'], $result['status'], $result['short_description'], $result['description'], $result['category_id'], $result['created_at'], $result['updated_at']);
        }
        return $product;
    }


    //Admin
    //insert product
    //không cần truyền tham số
    public function insert()
    {
        try {
            if ($this->category_id == null) {
                // return false; loại sản phẩm không tồn tại -> không thêm vào csdl
                $this->category_id = 1; //Mặc định là 1 -> thêm vào csdl
            }
            $sql = "INSERT INTO products(name, image, images, price, price_sale, stock, status, short_description, description, category_id) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
            $param = [$this->name, $this->image, $this->images, $this->price, $this->price_sale, $this->stock, $this->status, $this->short_description, $this->description, $this->category_id];
            $result = $this->exec($sql, $param);
            // $result = $this->exec($sql, array($this->name, $this->image, $this->images, $this->price, $this->price_sale, $this->stock, $this->short_description, $this->description, $this->category_id));
            if ($result) {
                return true;
            }
            return false;
        } catch (Exception $e) {
            return $e->getMessage();
        }
    }

    public function update($id)
    {
        $sql = "UPDATE products SET name = :name, price = :price, price_sale = :priceSale, stock = :stock, status = :status,
            short_description = :shortDescription, description = :description, category_id = :category, 
            image = :image, images = :images
            WHERE id = :id";

        if (!$this->db) {
            throw new Exception("🚨 Kết nối CSDL bị lỗi! Vui lòng kiểm tra lại.");
        }
        $stmt = $this->db->prepare($sql);

        $jsonImages = json_encode($this->images); // Encode images as JSON string

        $stmt->bindParam(':name', $this->name);
        $stmt->bindParam(':price', $this->price);
        $stmt->bindParam(':priceSale', $this->price_sale);
        $stmt->bindParam(':stock', $this->stock);
        $stmt->bindParam(':status', $this->status);
        $stmt->bindParam(':shortDescription', $this->short_description);
        $stmt->bindParam(':description', $this->description);
        $stmt->bindParam(':category', $this->category_id);
        $stmt->bindParam(':image', $this->image);
        $stmt->bindParam(':images', $jsonImages); // Use the variable here
        $stmt->bindParam(':id', $id);
        return $stmt->execute();
    }

    public function delete()
    {
        try {
            $sql = "DELETE FROM products WHERE id = $this->id";
            $result = $this->exec($sql);
            if ($result) {
                return true;
            }
        } catch (Exception $e) {
            return false;
        }
    }

    public function getAllProducts()
    {
        try {
            $sql = "SELECT * FROM products ORDER BY updated_at DESC";
            $result = $this->getList($sql);
            $products = array();
            if ($result) {
                foreach ($result as $row) {
                    $product = new ProductModel($row['id'], $row['name'], $row['image'], $row['images'], $row['price'], $row['price_sale'], $row['stock'], $row['status'], $row['short_description'], $row['description'], $row['category_id'], $row['created_at'], $row['updated_at']);
                    array_push($products, $product);
                }
            }
            return $products;
        } catch (Exception $e) {
            return false;
        }
    }
    // get và set
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

    public function getImage()
    {
        return $this->image;
    }
    public function setImage($image)
    {
        $this->image = $image;
    }

    public function getImages()
    {
        return $this->images;
    }

    public function setImages($images)
    {
        $this->images = $images;
    }

    public function getPrice()
    {
        return $this->price;
    }

    public function setPrice($price)
    {
        $this->price = $price;
    }

    public function getPriceSale()
    {
        return $this->price_sale;
    }

    public function setPriceSale($price_sale)
    {
        $this->price_sale = $price_sale;
    }

    public function getStock()
    {
        return $this->stock;
    }

    public function setStock($stock)
    {
        $this->stock = $stock;
    }

    public function getStatus()
    {
        return $this->status;
    }
    public function setStatus($status)
    {
        $this->status = $status;
    }
    public function getShortDescription()
    {
        return $this->short_description;
    }

    public function setShortDescription($short_description)
    {
        $this->short_description = $short_description;
    }

    public function getDescription()
    {
        return $this->description;
    }

    public function setDescription($description)
    {
        $this->description = $description;
    }

    public function getCategoryId()
    {
        return $this->category_id;
    }

    public function setCategoryId($category_id)
    {
        $this->category_id = $category_id;
    }

    public function getCreatedAt()
    {
        return $this->created_at;
    }

    public function setCreatedAt($created_at)
    {
        $this->created_at = $created_at;
    }

    public function getUpdatedAt()
    {
        return $this->updated_at;
    }

    public function setUpdatedAt($updated_at)
    {
        $this->updated_at = $updated_at;
    }
}
