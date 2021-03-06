<?php
/**
* @package   wsexport
* @subpackage wsexport
* @author Thomas Pellissier Tanon
* @copyright 2011 Thomas Pellissier Tanon
* @licence http://www.gnu.org/licenses/gpl.html GNU General Public Licence
*/


require_once ('jResponseHtml5.class.php');

class htmlResponse extends jResponseHtml5 {

        public $bodyTpl = 'wsexport~main.html';

        public $noRobots = false;

        public $xhtmlContentType = true;

        public $action = '';

        public $lang = '';

        public $languages = array();

        function __construct() {
                parent::__construct();
                $this->headTagAttributes['profile'] = '';
        }

        protected function doAfterActions() {
                if($this->noRobots) {
                        $this->addHeadContent('<meta name="robots" content="noindex,nofollow" />');
                }
                $this->addHeadContent('<meta name="viewport" content="width=device-width, initial-scale=1.0" />');
                $this->addLink(jUrl::get('wsexport~default:home', array('lang' => $this->lang, 'format' => 'html')), 'start', '', jLocale::get('wsexport~wsexport.mainpage'));
                $this->addLink(jUrl::get('wsexport~default:index', array('format' => 'opensearchdescription')), 'search', 'application/opensearchdescription+xml', jLocale::get('wsexport.search'));
                $this->body->assignIfNone('MAIN', '<p>no content</p>');
                $this->body->assignIfNone('languages', $this->languages);
                $this->body->assignIfNone('action', $this->action);
                $this->body->assignIfNone('lang', $this->lang);
        }
}

