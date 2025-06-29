<?php
/**
 * Copyright (C) 2007,2008  Arie Nugraha (dicarve@yahoo.com), Hendro Wicaksono (hendrowicaksono@yahoo.com)
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2 of the License, or
 * (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
 *
 */

// key to authenticate
define('INDEX_AUTH', '1');
#use SLiMS\AdvancedLogging;
use SLiMS\AlLibrarian;

/* Library Automation logout */

// required file
require '../sysconfig.inc.php';
// start the session
require SB.'admin/default/session.inc.php';

if(!isset($_SESSION['uid'])) header('location: ../index.php');

// write log
utility::writeLogs($dbs, 'staff', $_SESSION['uid'], 'system', $_SESSION['realname'].' Log Out from application from address '.ip());
# ADV LOG SYSTEM - STIIL EXPERIMENTAL
$log = new AlLibrarian('1003', array("username" => $_SESSION['uname'], "uid" => $_SESSION['uid'], "realname" => $_SESSION['realname']));

// redirecting pages
$msg = '<script type="text/javascript">';
if ($sysconf['logout_message']) {
    $msg .= 'alert(\''.__('You Have Been Logged Out From Library Automation System').'\');';
}
$msg .= 'location.href = \'http://127.0.0.1:8000/admin/homeAdmin\';';

// Disconnect Websocket
$msg .= 'Server = new FancyWebSocket("ws://'.$sysconf['chat_system']['server'].':'.$sysconf['chat_system']['server_port'].'");';
$msg .= 'Server.bind("close", function( data ) { log( "Disconnected." ); });';
$msg .= '</script>';

// unset admin cookie flag
#setcookie('admin_logged_in', true, time()-86400, SWB);
#setcookie('admin_logged_in', true, time()-86400, SWB, "", FALSE, TRUE);

setcookie('admin_logged_in', TRUE, [
    'expires' => time()-86400,
    'path' => SWB,
    'domain' => '',
    'secure' => false,
    'httponly' => true,
    'samesite' => 'Lax',
]);


// completely destroy session cookie
simbio_security::destroySessionCookie($msg, COOKIES_NAME, SWB.'admin/', true);
