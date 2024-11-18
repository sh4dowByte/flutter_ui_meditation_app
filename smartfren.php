<?php

class Smartfren
{
    private $url;
    private $cookieFile;
    private $headers;

    public function __construct($url)
    {
        $this->url = $url;
        $this->cookieFile = __DIR__ . "/cookie.txt";
        $this->headers = [
            // "Cache-Control: max-age=0",
            "Sec-Ch-Ua: \"Chromium\";v=\"130\", \"Brave\";v=\"130\", \"Not?A_Brand\";v=\"99\"",
            "Sec-Ch-Ua-Mobile: ?0",
            "Sec-Ch-Ua-Platform: \"macOS\"",
            // "Origin: https://dms.smartfren.com",
            // "Cookie:JSESSIONID=118b2bdd-74fd-4c2c-8ae1-4192a6e18dc0; TS011b624a=01b5cb327f424e9bb08ba28a6bd230f9d1344103413203044a9ee66f85ef7ecd762a62c97931fe8c8878b45bc6dbfa5ab32bfd2fad073be961a27e49d869f20839481e10f92e3383ba2d10d40e966a09a8007321305176b0822c1ae4c7924b427a5492e501f95d0cb9100d232140c5aa3d65126682; BIGipServerPool_VIVA_UI=295702538.47873.0000; org.springframework.web.servlet.i18n.CookieLocaleResolver.LOCALE=en_US; TS01a046e1=01b5cb327f7e886923e4432054acf56f94fc43acf49ea8bdb631cfee826c27024e30bcd71de3822fb0c4d33ead36c4bdd11ab1ce7f3b9bb067807cd81a23f419d3b3492053d846c58b83cca73b14a2ced5612fad92",
            "Content-Type: application/x-www-form-urlencoded",
            "Upgrade-Insecure-Requests: 1",
            "User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/130.0.0.0 Safari/537.36",
            "Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8",
            "Sec-Gpc: 1",
            "Accept-Language: en-US,en;q=0.8",
            "Sec-Fetch-Site: same-origin",
            "Sec-Fetch-Mode: navigate",
            "Sec-Fetch-User: ?1",
            "Sec-Fetch-Dest: document",
            // "Referer: {$this->url}",
            "Accept-Encoding: gzip, deflate, br",
            "Priority: u=0, i"
        ];

        if (!file_exists($this->cookieFile)) {
            file_put_contents($this->cookieFile, "");
        }
    }

    /**
     * Get cookie by file cookie.txt
     *
     * @param [type] $path
     * @param [type] $name
     * @return void
     */
    function getCookieSession($path, $name) {
        $cookies = file($this->cookieFile, FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES);
        foreach ($cookies as $line) {
            $columns = explode("\t", $line);
            
            if (count($columns) < 7) {
                continue;
            }
    
            list($domain, , $cookiePath, , , $cookieName, $cookieValue) = $columns;
    
            if ($cookiePath === $path && $cookieName === $name) {
                return $cookieValue;
            }
        }
        
        return null;
    }
    

    /**
     * Get Execution value for login
     *
     * @param [type] $url
     * @return void
     */
    private function getExecutionValue($url)
    {
        $ch = curl_init($this->url.$url);

        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_COOKIEJAR, $this->cookieFile);
        curl_setopt($ch, CURLOPT_COOKIEFILE, $this->cookieFile);

        $response = curl_exec($ch);
        curl_close($ch);

        if ($response) {
            if (preg_match('/<input[^>]*name="execution"[^>]*value="([^"]*)"/', $response, $matches)) {
                return $matches[1];
            }
        }

        return null;

        throw new Exception("Failed to retrieve execution value.");
    }

    /**
     * Get CSRF in current page
     *
     * @param [type] $url
     * @return void
     */
    private function getCsrf($url)
    {
     
        $ch = curl_init($this->url.$url);

        curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_COOKIEJAR, $this->cookieFile);
        curl_setopt($ch, CURLOPT_COOKIEFILE, $this->cookieFile);

        $response = curl_exec($ch);

        curl_close($ch);

        if ($response) {
            if (preg_match('/<meta[^>]*name="_csrf"[^>]*content="([^"]*)"/i', $response, $matches)) {
                return $matches[1];
            }
        }

        return null;

        throw new Exception("Failed to retrieve execution value.");
    }

    /**
     * Skip prompt change password
     *
     * @return void
     */
    private function skipChangePassword()
    {
        $ch = curl_init($this->url.'/dashboard/main/skipChangePassword');

        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_COOKIEJAR, $this->cookieFile);
        curl_setopt($ch, CURLOPT_COOKIEFILE, $this->cookieFile);

        $response = curl_exec($ch);
        curl_close($ch);
        
        return null;

        throw new Exception("Failed to retrieve execution value.");
    }

    /**
     * Login
     *
     * @param [type] $username
     * @param [type] $password
     * @return void
     */
    public function login($username, $password)
    {
        $urlLogin = '/snoc/login?locale=en_US';
        $execution = $this->getExecutionValue($urlLogin);

        $postData = http_build_query([
            'username' => $username,
            'password' => $password,
            'execution' => $execution,
            '_eventId' => 'submit',
            'geolocation' => '',
            'timezoneOffset' => '-480'
        ]);

        $ch = curl_init($this->url.$urlLogin);

        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $postData);
        curl_setopt($ch, CURLOPT_HTTPHEADER, $this->headers);
        curl_setopt($ch, CURLOPT_FOLLOWLOCATION, true);
        curl_setopt($ch, CURLOPT_COOKIEJAR, $this->cookieFile);
        curl_setopt($ch, CURLOPT_COOKIEFILE, $this->cookieFile);

        $response = curl_exec($ch);

        if (curl_errno($ch)) {
            throw new Exception('Error: ' . curl_error($ch));
        }

        curl_close($ch);

        if (!preg_match('/window\.location\.pathname\s*=\s*["\']\/organization\/services["\']/', $response)) {
            return "Login Failed";
        }else{
            $this->skipChangePassword();
            return "Login Success";
        }



        return $response;
    }

    /**
     * Base Get Data
     *
     * @param [type] $pathSession
     * @param [type] $urlCsrf
     * @param [type] $urlRequest
     * @param [type] $data
     * @return void
     */
    private function getData($pathSession, $urlCsrf, $urlRequest, $data){
        $CSRF = $this->getCsrf($urlCsrf);
        $JSESSIONID=$this->getCookieSession($pathSession, 'JSESSIONID');
        $BIGipServerPool_VIVA_UI=$this->getCookieSession('/', 'BIGipServerPool_VIVA_UI');

        print_r([
            [
                'CSRF' => $CSRF,
                'JSESSIONID' => $JSESSIONID,
            ]
        ]);

        $ch = curl_init();

        curl_setopt_array($ch, array(
            CURLOPT_URL => $this->url.$urlRequest,
            CURLOPT_RETURNTRANSFER => true,
            CURLOPT_ENCODING => '',
            CURLOPT_MAXREDIRS => 10,
            CURLOPT_TIMEOUT => 0,
            CURLOPT_FOLLOWLOCATION => true,
            CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
            CURLOPT_CUSTOMREQUEST => 'POST',
            CURLOPT_POSTFIELDS =>$data,
            CURLOPT_HTTPHEADER => array(
                'Cookie: 
                    JSESSIONID='.$JSESSIONID.'; 
                    BIGipServerPool_VIVA_UI='.$BIGipServerPool_VIVA_UI.';
                    ',
                'X-CSRF-TOKEN: '.$CSRF,
            ),
          ));

        $response = curl_exec($ch);

        curl_close($ch);
        return $response;
    }

    /**
     * ===================== DATA REQUEST =====================
     */

    
    public function userInfo()
    {
        $sessionPath = '/orders';
        $urlCsrf = '/orders/main/userinfo?cat=profile';
        $urlRequest = '/orders/main/generateGrid?cat=searchUserData&get=rowData';
        $data = 'masterConfig=%7B%22status%22%3A%7B%22queryField%22%3A%22transitionTypeId%22%2C%22collection%22%3A%22genericMasterValueCollection%22%2C%22value%22%3A%22description%22%2C%22key%22%3A%22s_id%22%7D%7D&queryData=&_search=false&nd=1731660942187&rows=20&page=1&sidx=_id&sord=desc';
        return $this->getData($sessionPath, $urlCsrf, $urlRequest, $data);
    }

    public function getProduct()
    {
        $sessionPath = '/product';
        $urlCsrf = '/product/main/product?cat=productDefViewTabs';
        $urlRequest = '/product/main/getProductValueGrid?cat=productSKUValueGrid&get=rowData';
        $data = 'masterConfig=%7B%7D&queryData=&_search=true&nd=1731713749493&rows=20&page=1&sidx=_id&sord=desc&filters=%7B%22groupOp%22%3A%22AND%22%2C%22rules%22%3A%5B%7B%22field%22%3A%22statusLabel%22%2C%22op%22%3A%22eq%22%2C%22data%22%3A%22174%22%7D%5D%7D';
        return $this->getData($sessionPath, $urlCsrf, $urlRequest, $data);
    }

    public function inventoryAccount()
    {
        $sessionPath = '/organization';
        $urlCsrf = '/organization/main/nodeinfo/inventory?cat=inventoryAccounts';
        $urlRequest = '/organization/main/invAccountsGrid?cat=invAccountsGrid&get=rowData';
        $data = 'masterConfig=%7B%7D&queryData=&_search=false&nd=1731717029674&rows=20&page=1&sidx=_id&sord=desc&filters=%7B%22groupOp%22%3A%22AND%22%2C%22rules%22%3A%5B%5D%7D';
        return $this->getData($sessionPath, $urlCsrf, $urlRequest, $data);
    }

    public function fgGroup()
    {
        $sessionPath = '/product';
        $urlCsrf = '/product/main/product?cat=fgGroup';
        $urlRequest = '/product/main/CreateFgCodeGrid?cat=fgGroupGrid&get=rowData';
        $data = 'masterConfig=%7B%7D&type=create&queryData=&_search=false&nd=1731717222555&rows=20&page=1&sidx=_id&sord=desc';
        return $this->getData($sessionPath, $urlCsrf, $urlRequest, $data);
    }

    public function myOrder()
    {
        $sessionPath = '/orders';
        $urlCsrf = '/orders/main/ordermanagement?cat=order';
        $urlRequest = '/orders/main/orderGrid?cat=ordersColumnData&get=rowData';
        $data = 'masterConfig=%7B%22status%22%3A%7B%22queryField%22%3A%22transitionTypeId%22%2C%22collection%22%3A%22status_module_link%22%2C%22tableRefKey%22%3A%22status%22%2C%22value%22%3A%22description%22%2C%22key%22%3A%22status_id%22%7D%7D&nested=false&type=ent_no&id=&queryData=&_search=false&nd=1731717363347&rows=20&page=1&sidx=ord_id&sord=desc&filters=%7B%22groupOp%22%3A%22AND%22%2C%22rules%22%3A%5B%5D%7D';
        return $this->getData($sessionPath, $urlCsrf, $urlRequest, $data);
    }

    public function organizationOrder()
    {
        $sessionPath = '/orders';
        $urlCsrf = '/orders/main/ordermanagement?cat=order';
        $urlRequest = '/orders/main/orderGrid?cat=ordersColumnData&get=rowData';
        $data = 'masterConfig=%7B%22status%22%3A%7B%22queryField%22%3A%22transitionTypeId%22%2C%22collection%22%3A%22status_module_link%22%2C%22tableRefKey%22%3A%22status%22%2C%22value%22%3A%22description%22%2C%22key%22%3A%22status_id%22%7D%7D&nested=false&type=ent_org&id=&queryData=&_search=false&nd=1731717492014&rows=20&page=1&sidx=ord_id&sord=desc&filters=%7B%22groupOp%22%3A%22AND%22%2C%22rules%22%3A%5B%5D%7D';
        return $this->getData($sessionPath, $urlCsrf, $urlRequest, $data);
    }

    public function viewTransaction()
    {
        $sessionPath = '/services';
        $urlCsrf = '/services/main/service?cat=viewTransaction_dbss';
        $urlRequest = '/services/main/viewMyDbssTransactionGrid?cat=viewMyTransaction_dbss&get=rowData';
        $data = 'masterConfig=%7B%7D&tabIndex=%7B%7D&queryData=&_search=false&nd=1731717779356&rows=20&page=1&sidx=_id&sord=desc';
        return $this->getData($sessionPath, $urlCsrf, $urlRequest, $data);
    }
}

/**
 * Step:
 * 1. Jalankan login (otomatis menyimpan cookie file yang berisi JSESSIONID, BIGipServerPool_VIVA_UI & X-CSRF-TOKEN)
 * 2. Lakukan request seperti biasa
 * 
 * Note:
 * # login
 * - Login tidak membutuhkan Captcha
 * - Login hanya perlu tambahan "execution" value yang di hide
 * 
 * # Request
 * Setiap request membutuhkan header Cookie & X-CSRF-TOKEN
 * X-CSRF-TOKEN di ambil dari halaman yang dibuka
 * Cookie yang di butuhkan hanya JSESSIONID & BIGipServerPool_VIVA_UI
 * JSESSIONID setiap halaman yang dibuka selalu berbeda tergantung path halaman
 * Contoh:
 * - Halaman yang dibuka /product/main/product?cat=fgGroup
 * - Maka path sessionnya /product
 * 
 */

// Examples
try {
    $smartfren = new Smartfren("https://dms.smartfren.com");
    // $response = $smartfren->login("SKSK0992", "Yuan1304");

    $response = $smartfren->userInfo();
    // $response = $smartfren->getProduct();
    // $response = $smartfren->inventoryAccount();
    // $response = $smartfren->fgGroup();
    // $response = $smartfren->myOrder();
    // $response = $smartfren->organizationOrder();
    // $response = $smartfren->viewTransaction();
    
    echo $response;

} catch (Exception $e) {
    echo $e->getMessage();
}
