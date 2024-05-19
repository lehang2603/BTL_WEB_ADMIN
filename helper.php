
<?php
class Helper
{
  static function createSlug($string) {
    $string = strtolower($string);

    $string = preg_replace('/[áàảãạăắằẳẵặâấầẩẫậ]/u', 'a', $string);
    $string = preg_replace('/[éèẻẽẹêếềểễệ]/u', 'e', $string);
    $string = preg_replace('/[iíìỉĩị]/u', 'i', $string);
    $string = preg_replace('/[óòỏõọôốồổỗộơớờởỡợ]/u', 'o', $string);
    $string = preg_replace('/[úùủũụưứừửữự]/u', 'u', $string);
    $string = preg_replace('/[ýỳỷỹỵ]/u', 'y', $string);
    $string = preg_replace('/[đ]/u', 'd', $string);

    $string = preg_replace('/[^a-z0-9\s-]/', '', $string);

    $string = preg_replace('/[\s-]+/', '-', $string);
    $string = trim($string, '-');

    return $string;
  }
}
