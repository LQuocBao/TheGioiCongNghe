<?php
class CategoryModel extends Connect
{
    private $id;
    private $name;
    private $parent_id;
    private $created_at;
    private $updated_at;

    public function __construct()
    {
        parent::__construct();
        if (func_num_args() >= 5) {
            $this->id = func_get_arg(0);
            $this->name = func_get_arg(1);
            $this->parent_id = func_get_arg(2);
            $this->created_at = func_get_arg(3);
            $this->updated_at = func_get_arg(4);
        }
    }

    public function getAllCategories()
    {
        $sql = "SELECT * FROM categories";
        $result = $this->getList($sql);
        $categories = array();
        if ($result) {
            foreach ($result as $row) {
                $category = new CategoryModel($row['id'], $row['name'], $row['parent_id'], $row['created_at'], $row['updated_at']);
                array_push($categories, $category);
            }
        }
        return $categories;
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

    public function getParentId()
    {
        return $this->parent_id;
    }

    public function setParentId($parent_id)
    {
        $this->parent_id = $parent_id;
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
