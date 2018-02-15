<h1> Docker compose for php application </h1>
<h2>Short information</h2>
<span> The repository provides the following containers </span>
<ul> 
  <li>Php-fpm container</li>
  <li>Nginx container</li>
  <li>Database container</li>
  <li>Cli container</li>
</ul>

<h3>Nginx container</h3>
<p>
Actually the continer is built from <a href="https://github.com/dockerfile/ubuntu">ubuntu</a> image. During up process the continer is installing nginx into itself and exposing the ports 80 and 443.
 The container have the basic auth configured already. You can find the .htaccess file in the context of the nginx, feel free to add other users to .htaccess file, and remove the existing record before usage.
</p>

<h3>Database container</h3>
<p>The container if built from <a href="https://github.com/dockerfile/mysql">Mysql</a> image. 
Container generic mysql image exposing default 3306 port</p>


<h2> The basic usage</h2>
<strong>Prequisitories</strong><br/>
<ul>
  <li>Have docker-compose installed</li>
  <li>Free ports: 80, 443, 3306, 9000 </li>
</ul>
