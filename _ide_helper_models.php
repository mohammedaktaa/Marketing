<?php
/**
 * A helper file for your Eloquent Models
 * Copy the phpDocs from this file to the correct Model,
 * And remove them from this file, to prevent double declarations.
 *
 * @author Barry vd. Heuvel <barryvdh@gmail.com>
 */


namespace App\Models{
/**
 * App\Models\Advantage
 *
 * @property int $advantage_id
 * @property string $title_en
 * @property string $title_ar
 * @property string $content_en
 * @property string $content_ar
 * @property string $icon
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Advantage whereAdvantageId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Advantage whereContentAr($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Advantage whereContentEn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Advantage whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Advantage whereIcon($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Advantage whereTitleAr($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Advantage whereTitleEn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Advantage whereUpdatedAt($value)
 */
	class Advantage extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Attribute
 *
 * @property int $attribute_id
 * @property string $text
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Attribute whereAttributeId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Attribute whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Attribute whereText($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Attribute whereUpdatedAt($value)
 */
	class Attribute extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Attribute_page
 *
 * @property int $id
 * @property int $page_id
 * @property int $attribute_id
 * @property string $attribute_value
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Attribute_page whereAttributeId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Attribute_page whereAttributeValue($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Attribute_page whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Attribute_page whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Attribute_page wherePageId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Attribute_page whereUpdatedAt($value)
 */
	class Attribute_page extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Blog
 *
 * @property int $blog_id
 * @property string $title
 * @property string $content
 * @property string $image
 * @property int $tag_id
 * @property int $user_id
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @property string|null $deleted_at
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Blog whereBlogId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Blog whereContent($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Blog whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Blog whereDeletedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Blog whereImage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Blog whereTagId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Blog whereTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Blog whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Blog whereUserId($value)
 */
	class Blog extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Card
 *
 * @property int $card_id
 * @property string|null $title
 * @property string $number
 * @property string|null $value
 * @property string|null $price
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Card whereCardId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Card whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Card whereNumber($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Card wherePrice($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Card whereTitle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Card whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Card whereValue($value)
 */
	class Card extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Category
 *
 * @property int $category_id
 * @property string $name_en
 * @property string $name_ar
 * @property string|null $code
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Category whereCategoryId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Category whereCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Category whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Category whereNameAr($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Category whereNameEn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Category whereUpdatedAt($value)
 */
	class Category extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\ClientSay
 *
 * @property int $client_say_id
 * @property string $client_name
 * @property string $say
 * @property string $work
 * @property string|null $active
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ClientSay whereActive($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ClientSay whereClientName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ClientSay whereClientSayId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ClientSay whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ClientSay whereSay($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ClientSay whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\ClientSay whereWork($value)
 */
	class ClientSay extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\CmpCounter
 *
 * @property int $counter_id
 * @property string $title_en
 * @property string $title_ar
 * @property int $count
 * @property string $icon
 * @property string $code
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @property string|null $deleted_at
 * @method static bool|null forceDelete()
 * @method static \Illuminate\Database\Query\Builder|\App\Models\CmpCounter onlyTrashed()
 * @method static bool|null restore()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\CmpCounter whereCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\CmpCounter whereCount($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\CmpCounter whereCounterId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\CmpCounter whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\CmpCounter whereDeletedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\CmpCounter whereIcon($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\CmpCounter whereTitleAr($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\CmpCounter whereTitleEn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\CmpCounter whereUpdatedAt($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Models\CmpCounter withTrashed()
 * @method static \Illuminate\Database\Query\Builder|\App\Models\CmpCounter withoutTrashed()
 */
	class CmpCounter extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\CmpGeneral
 *
 * @property int $general_id
 * @property string $type
 * @property string $value
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\CmpGeneral whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\CmpGeneral whereGeneralId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\CmpGeneral whereType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\CmpGeneral whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\CmpGeneral whereValue($value)
 */
	class CmpGeneral extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Comment
 *
 * @property int $id
 * @property int $user_id
 * @property string $content
 * @property int $blog_id
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon $updated_at
 * @property string|null $deleted_at
 * @method static bool|null forceDelete()
 * @method static \Illuminate\Database\Query\Builder|\App\Models\Comment onlyTrashed()
 * @method static bool|null restore()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Comment whereBlogId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Comment whereContent($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Comment whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Comment whereDeletedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Comment whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Comment whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Comment whereUserId($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Models\Comment withTrashed()
 * @method static \Illuminate\Database\Query\Builder|\App\Models\Comment withoutTrashed()
 */
	class Comment extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Coupon
 *
 * @property int $coupon_id
 * @property string $code
 * @property string $value
 * @property string $expire_date
 * @property \Carbon\Carbon $created_at
 * @property string|null $deleted_at
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Coupon whereCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Coupon whereCouponId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Coupon whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Coupon whereDeletedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Coupon whereExpireDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Coupon whereValue($value)
 */
	class Coupon extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Course
 *
 * @property int $course_id
 * @property string $title_en
 * @property string $title_ar
 * @property string|null $content_en
 * @property string|null $content_ar
 * @property string $place
 * @property string $date
 * @property string $time
 * @property string|null $image
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Course whereContentAr($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Course whereContentEn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Course whereCourseId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Course whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Course whereDate($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Course whereImage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Course wherePlace($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Course whereTime($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Course whereTitleAr($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Course whereTitleEn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Course whereUpdatedAt($value)
 */
	class Course extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\FontAwesome
 *
 * @property int $font_id
 * @property string $icon
 * @property string $content
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\FontAwesome whereContent($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\FontAwesome whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\FontAwesome whereFontId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\FontAwesome whereIcon($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\FontAwesome whereUpdatedAt($value)
 */
	class FontAwesome extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Manager
 *
 * @property int $id
 * @property string $name
 * @property string|null $about_manager
 * @property string|null $image_manager
 * @property string|null $overview
 * @property string|null $mission
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Manager whereAboutManager($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Manager whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Manager whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Manager whereImageManager($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Manager whereMission($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Manager whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Manager whereOverview($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Manager whereUpdatedAt($value)
 */
	class Manager extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\MenuItem
 *
 * @property int $menu_item_id
 * @property string $name_en
 * @property string $name_ar
 * @property string|null $target
 * @property string|null $target_extra
 * @property string $type
 * @property string|null $order
 * @property string $is_root
 * @property int|null $parent_id
 * @property string|null $deleted_at
 * @property \Carbon\Carbon|null $updated_at
 * @property \Carbon\Carbon $created_at
 * @property-read mixed $url
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\MenuItem whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\MenuItem whereDeletedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\MenuItem whereIsRoot($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\MenuItem whereMenuItemId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\MenuItem whereNameAr($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\MenuItem whereNameEn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\MenuItem whereOrder($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\MenuItem whereParentId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\MenuItem whereTarget($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\MenuItem whereTargetExtra($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\MenuItem whereType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\MenuItem whereUpdatedAt($value)
 */
	class MenuItem extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Page
 *
 * @property int $page_id
 * @property string $page_name
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Page whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Page wherePageId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Page wherePageName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Page whereUpdatedAt($value)
 */
	class Page extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Product
 *
 * @property int $product_id
 * @property string $name_en
 * @property string $name_ar
 * @property int $category_id
 * @property string|null $image
 * @property string|null $description_en
 * @property string|null $description_ar
 * @property int $price
 * @property string|null $is_saled
 * @property int|null $sale
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @property string|null $deleted_at
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Product whereCategoryId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Product whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Product whereDeletedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Product whereDescriptionAr($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Product whereDescriptionEn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Product whereImage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Product whereIsSaled($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Product whereNameAr($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Product whereNameEn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Product wherePrice($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Product whereProductId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Product whereSale($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Product whereUpdatedAt($value)
 */
	class Product extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Question
 *
 * @property int $question_id
 * @property string $text
 * @property string $answer
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Question whereAnswer($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Question whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Question whereQuestionId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Question whereText($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Question whereUpdatedAt($value)
 */
	class Question extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Request
 *
 * @property int $request_id
 * @property string|null $name
 * @property string|null $email
 * @property string|null $phone
 * @property string|null $delivery_plcae
 * @property string|null $delivery_way
 * @property string|null $shipping_bool
 * @property string|null $payment_way
 * @property string|null $paper_type
 * @property string|null $doc_type
 * @property string|null $print_type
 * @property string|null $other_choices
 * @property string|null $description_design
 * @property string|null $experiences
 * @property string|null $reason
 * @property string|null $side_type
 * @property int|null $price
 * @property string|null $is_accepted
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Request whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Request whereDeliveryPlcae($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Request whereDeliveryWay($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Request whereDescriptionDesign($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Request whereDocType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Request whereEmail($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Request whereExperiences($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Request whereIsAccepted($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Request whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Request whereOtherChoices($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Request wherePaperType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Request wherePaymentWay($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Request wherePhone($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Request wherePrice($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Request wherePrintType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Request whereReason($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Request whereRequestId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Request whereShippingBool($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Request whereSideType($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Request whereUpdatedAt($value)
 */
	class Request extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Section
 *
 * @property int $section_id
 * @property string $name_en
 * @property string $name_ar
 * @property int $value
 * @property int $order
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Section whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Section whereNameAr($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Section whereNameEn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Section whereOrder($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Section whereSectionId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Section whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Section whereValue($value)
 */
	class Section extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Seo
 *
 * @property int $id
 * @property string $title_en
 * @property string $title_ar
 * @property string $description_en
 * @property string $description_ar
 * @property string $keyword_en
 * @property string $keyword_ar
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Seo whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Seo whereDescriptionAr($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Seo whereDescriptionEn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Seo whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Seo whereKeywordAr($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Seo whereKeywordEn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Seo whereTitleAr($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Seo whereTitleEn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Seo whereUpdatedAt($value)
 */
	class Seo extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Service
 *
 * @property int $service_id
 * @property string $name_en
 * @property string $name_ar
 * @property string $content_en
 * @property string $content_ar
 * @property string|null $icon
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Service whereContentAr($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Service whereContentEn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Service whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Service whereIcon($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Service whereNameAr($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Service whereNameEn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Service whereServiceId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Service whereUpdatedAt($value)
 */
	class Service extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Slider
 *
 * @property int $id
 * @property string|null $text_en
 * @property string|null $text_ar
 * @property int|null $num_of_btn
 * @property string|null $btn1_text
 * @property string|null $btn2_text
 * @property string|null $url1
 * @property string|null $url2
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Slider whereBtn1Text($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Slider whereBtn2Text($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Slider whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Slider whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Slider whereNumOfBtn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Slider whereTextAr($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Slider whereTextEn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Slider whereUpdatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Slider whereUrl1($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Slider whereUrl2($value)
 */
	class Slider extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Tag
 *
 * @property int $tag_id
 * @property string $name_en
 * @property string $name_ar
 * @property string $code
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Tag whereCode($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Tag whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Tag whereNameAr($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Tag whereNameEn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Tag whereTagId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Tag whereUpdatedAt($value)
 */
	class Tag extends \Eloquent {}
}

namespace App\Models{
/**
 * App\Models\Team
 *
 * @property int $team_id
 * @property string $name_en
 * @property string $name_ar
 * @property string $job_title_en
 * @property string $job_title_ar
 * @property string|null $facebook
 * @property string|null $linkedin
 * @property string|null $google
 * @property int $team_order
 * @property string|null $image
 * @property string|null $active
 * @property \Carbon\Carbon $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @property string|null $deleted_at
 * @method static bool|null forceDelete()
 * @method static \Illuminate\Database\Query\Builder|\App\Models\Team onlyTrashed()
 * @method static bool|null restore()
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Team whereActive($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Team whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Team whereDeletedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Team whereFacebook($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Team whereGoogle($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Team whereImage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Team whereJobTitleAr($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Team whereJobTitleEn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Team whereLinkedin($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Team whereNameAr($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Team whereNameEn($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Team whereTeamId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Team whereTeamOrder($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\Models\Team whereUpdatedAt($value)
 * @method static \Illuminate\Database\Query\Builder|\App\Models\Team withTrashed()
 * @method static \Illuminate\Database\Query\Builder|\App\Models\Team withoutTrashed()
 */
	class Team extends \Eloquent {}
}

namespace App{
/**
 * App\User
 *
 * @property int $id
 * @property string $name
 * @property string $email
 * @property string|null $account_money
 * @property int $is_admin
 * @property string|null $image
 * @property string $password
 * @property string|null $remember_token
 * @property \Carbon\Carbon|null $created_at
 * @property \Carbon\Carbon|null $updated_at
 * @property-read \Illuminate\Notifications\DatabaseNotificationCollection|\Illuminate\Notifications\DatabaseNotification[] $notifications
 * @method static \Illuminate\Database\Eloquent\Builder|\App\User whereAccountMoney($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\User whereCreatedAt($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\User whereEmail($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\User whereId($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\User whereImage($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\User whereIsAdmin($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\User whereName($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\User wherePassword($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\User whereRememberToken($value)
 * @method static \Illuminate\Database\Eloquent\Builder|\App\User whereUpdatedAt($value)
 */
	class User extends \Eloquent {}
}

