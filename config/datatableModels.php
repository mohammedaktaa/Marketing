<?php

/**
 *  you must add here route and model and view foreach
 *
 *  model             : you must add model for datatable
 *  dataTableFunc     : default funcName is get_datatable // add name for maker method ,this name will be used in maker class or in factory class as get_func / build_func / store_func / update_fund / destroy_func
 *  middlewares       : you can make auth by pass string or array to this property
 *  middlewaresOption : this option allow you to only make auth on on action or except action from auth by pass array
 *  request           : this is must be Form Request Class
 *  stopOperation     : for stop normal oper and add custom oper ['store','update','destroy']
 *  factory           : the default factory is  modelFactory unless you add you own factory property
 *
 */

return [

    'products' => [
        'model'         => \App\Models\Product::class,
        'factory' => \App\Factories\ProductFactory::class
    ],
    'generals' => [
        'model'         => \App\Models\CmpGeneral::class,
        'factory' => \App\Factories\GeneralFactory::class
    ],
    'counters' => [
        'model'         => \App\Models\CmpCounter::class,
        'factory' => \App\Factories\CounterFactory::class
    ],
    'categories' => [
        'model'         => \App\Models\Category::class,
        'factory' => \App\Factories\CategoryFactory::class
    ],
    'menu-items' => [
        'model'         => \App\Models\MenuItem::class,
        'factory' => \App\Factories\MenuItemsFactory::class
    ],
    'pages' => [
        'model'         => \App\Models\Page::class,
        'factory' => \App\Factories\PageFactory::class
    ],
    'seos' => [
        'model'         => \App\Models\Seo::class,
        'factory' => \App\Factories\SeoFactory::class
    ],
    'services' => [
        'model'         => \App\Models\Service::class,
        'factory' => \App\Factories\ServiceFactory::class
    ],
    'font-awesomes' => [
        'model'         => \App\Models\FontAwesome::class,
        'factory' => \App\Factories\FontAwesomeFactory::class
    ],
    'courses' => [
        'model'         => \App\Models\Course::class,
        'factory' => \App\Factories\CourseFactory::class
    ],
    'clients-say' => [
        'model'         => \App\Models\ClientSay::class,
        'factory' => \App\Factories\ClientSayFactory::class
    ],
    'team' => [
        'model'         => \App\Models\Team::class,
        'factory' => \App\Factories\TeamsFactory::class
    ],
    'questions' => [
        'model'         => \App\Models\Question::class,
        'factory' => \App\Factories\QuestionFactory::class
    ],
    'sections' => [
        'model'         => \App\Models\Section::class,
        'factory' => \App\Factories\SectionFactory::class
    ],
    'advantages' => [
        'model'         => \App\Models\Advantage::class,
        'factory' => \App\Factories\AdvantageFactory::class
    ],
    'attributes' => [
        'model'         => \App\Models\Attribute::class,
        'factory' => \App\Factories\AttributeFactory::class
    ],
    'attribute-page' => [
        'model'         => \App\Models\Attribute_page::class,
        'factory' => \App\Factories\AttributePageFactory::class
    ],
    'tags' => [
        'model'         => \App\Models\Tag::class,
        'factory' => \App\Factories\TagFactory::class
    ],
    'requests' => [
        'model'         => \App\Models\Request::class,
        'factory' => \App\Factories\RequestFactory::class
    ],
    'cards' => [
        'model'         => \App\Models\Card::class,
        'factory' => \App\Factories\CardFactory::class
    ],
    'coupons' => [
        'model'         => \App\Models\Coupon::class,
        'factory' => \App\Factories\CouponFactory::class
    ],
    'sliders' => [
        'model'         => \App\Models\Slider::class,
        'factory' => \App\Factories\SliderFactory::class
    ],
    'manager' => [
        'model'         => \App\Models\Manager::class,
        'factory' => \App\Factories\ManagerFactory::class
    ],
    'careers' => [
        'model'         => \App\Models\Career::class,
        'factory' => \App\Factories\CareersFactory::class
    ],
    'privacy' => [
        'model'         => \App\Models\PrivacyPolicy::class,
        'factory' => \App\Factories\PrivacyFactory::class
    ],
    'styles' => [
        'model'         => \App\Models\Style::class,
        'factory' => \App\Factories\StyleFactory::class,

    ],

];
