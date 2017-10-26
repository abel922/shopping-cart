<?php

use Illuminate\Database\Seeder;

class ProductTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $product = new \App\Product([
          'imagePath' => 'http://ecx.images-amazon.com/images/I/51ZU%2BCvkTyL.jpg',
          'title' => 'Harry Potter',
          'description' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores error eum inventore officia quis quos totam!',
          'price' => 10
        ]);

        $product ->save();

        $product = new \App\Product([
          'imagePath' => 'https://images-na.ssl-images-amazon.com/images/I/41D8xofbLNL.jpg',
          'title' => 'Funko Ryuk',
          'description' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores error eum inventore officia quis quos totam!',
          'price' => 22
        ]);

        $product ->save();

        $product = new \App\Product([
          'imagePath' => 'http://kh13.com/forum/uploads/gallery/album_1295/gallery_37033_1295_335885.jpg',
          'title' => 'Kingdom Hearts 2.8',
          'description' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores error eum inventore officia quis quos totam!',
          'price' => 60
        ]);

        $product ->save();

        $product = new \App\Product([
          'imagePath' => 'https://www.rightstufanime.com/images/productImages/4543112934024_figure-super-saiyan-son-gohan-dragon-ball-z-primary.jpg',
          'title' => 'Gohan Dragon Ball Z',
          'description' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores error eum inventore officia quis quos totam!',
          'price' => 100
        ]);

        $product ->save();

        $product = new \App\Product([
          'imagePath' => 'https://cdn.playmax.mx/img/c/400/1/1448300621/331.jpg',
          'title' => 'Supernatural',
          'description' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores error eum inventore officia quis quos totam!',
          'price' => 100
        ]);

        $product ->save();

        $product = new \App\Product([
          'imagePath' => 'https://ae01.alicdn.com/kf/HTB1jJFCQVXXXXbeXFXXq6xXFXXXL/21-estilos-Capit-n-Am-rica-Aptitud-camiseta-superman-camiseta-transpirable-ropa-de-Entrenamiento-de-los.jpg',
          'title' => 'Camiseta Superman',
          'description' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores error eum inventore officia quis quos totam!',
          'price' => 36
        ]);

        $product ->save();

        $product = new \App\Product([
          'imagePath' => 'https://i.pinimg.com/736x/fe/09/8e/fe098ee7181e1dfcf692e0145d0491cd.jpg',
          'title' => 'Colgante Targaryen',
          'description' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores error eum inventore officia quis quos totam!',
          'price' => 43
        ]);

        $product ->save();

        $product = new \App\Product([
          'imagePath' => 'http://i68.tinypic.com/2gybrq1.jpg',
          'title' => 'Metal Gear 5',
          'description' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores error eum inventore officia quis quos totam!',
          'price' => 70
        ]);

        $product ->save();

        $product = new \App\Product([
          'imagePath' => 'https://images-na.ssl-images-amazon.com/images/I/51mAejSjP6L._SL1066_.jpg',
          'title' => 'Lámpara Thor',
          'description' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores error eum inventore officia quis quos totam!',
          'price' => 45
        ]);

        $product ->save();

        $product = new \App\Product([
          'imagePath' => 'http://www.fotogramas.es/var/ezflow_site/storage/images/cinefilia/75-posters-de-peliculas-para-decorar-tu-casa/frameimage/46830861-1-esl-ES/frameimage_ampliacion.jpg',
          'title' => 'Poster Darth Vader',
          'description' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores error eum inventore officia quis quos totam!',
          'price' => 23
        ]);

        $product ->save();

        $product = new \App\Product([
          'imagePath' => 'http://los40mx00.epimg.net/los40/imagenes/2016/01/12/album/1452624945_763226_1452625092_album_normal.jpg',
          'title' => 'Tacones Batman',
          'description' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores error eum inventore officia quis quos totam!',
          'price' => 55
        ]);

        $product ->save();

        $product = new \App\Product([
          'imagePath' => 'https://i.pinimg.com/originals/16/31/c1/1631c1078fd33a24896d523756adc283.jpg',
          'title' => 'Pelucha Flash',
          'description' => 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dolores error eum inventore officia quis quos totam!',
          'price' => 30
        ]);

        $product ->save();
    }
}
