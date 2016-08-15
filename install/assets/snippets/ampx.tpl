/**
 * ampx
 *
 * Accelerated Mobile Pages for Evo
 *
* @version  Beta 1.0.1
 * @author  Nicola Lambathakis http://www.tattoocms.it/
 * @category	snippet
 * @internal	@modx_category ampx
 * @license 	http://www.gnu.org/copyleft/gpl.html GNU Public License (GPL)
 */

/* add inside the head tag of your template (where 57 is the resource containing ampx snippet call)
	<link rel="amphtml" href="[(site_url)][~57~]&ampid=[*id*]" />
*/	
	
$tpl = (isset($tpl)) ? $tpl : 'amp-Template';
$imageTv = isset($imageTv) ? $imageTv : 'Thumbnail';

DEFINE('AMP__DIR__', 'assets/snippets/ampx/');
require_once( AMP__DIR__ . 'includes/class-amp-post-template.php' );

$content['content']='<p>no document was given to generate AMP html page, missing ampid parameter</p>';
if (isset($_GET['ampid'])){
	
//get resource id
$id=$modx->db->escape($_GET['ampid']);

//add modx resource placeholder
$title = $modx->getPageInfo($id,1,'pagetitle'); 
$longtitle = $modx->getPageInfo($id,1,'longtitle'); 
$description = $modx->getPageInfo($id,1,'description'); 
$introtext = $modx->getPageInfo($id,1,'introtext'); 
	
//get content and sanitize images 	
$sourcecontent = $modx->getPageInfo($id,1,'content'); 
$ampContent = new AMP_Content($sourcecontent['content'], array(), array('AMP_Img_Sanitizer' => array()), array());
$content = $ampContent->get_amp_content();

//get datePublished from publishedon
$publishedon = $modx->getPageInfo($id,1,'publishedon'); 
$datePublished = date(r,$publishedon['publishedon']);

//get canonical url from page
$canonicalurl = $modx->makeUrl($id, '', '', 'full');	

//get image tv
$getimage = $modx->getTemplateVarOutput($imageTv,$id);
$imagetvar = $getimage[$imageTv];


//get author
$createdby = $modx->getPageInfo($id,1,'createdby'); 
$user_info = $modx->getUserInfo($createdby['createdby']);
$author = $user_info['username'];
}

//parse chunk placeholders
$values = array('canonicalurl' => $canonicalurl, 'ampcontent' => $content, 'amplongtitle' => $longtitle['longtitle'], 'ampdescription' => $description['description'], 'ampintrotext' => $introtext['introtext'],'ampimage' => $imagetvar, 'datePublished' => $datePublished, 'author' => $author);
$output =  $output . $modx->parseChunk($tpl, $values, '[+', '+]');

return $output;
