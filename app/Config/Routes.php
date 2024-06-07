<?php


use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'MyHome::index');
$routes->get('/test', 'Test::index');
$routes->get('/MyCorp/Dashboard', 'Admin\MyCorp::index');
$routes->get('/MyCorp/List_Karyawan', 'Admin\MyCorp::List_Karyawan');
$routes->delete('/MyCorp/(:num)/DelKrywn', 'Admin\MyCorp::DKarywanCorp/$1');
$routes->get('/MyCorp/Add_Karyawan', 'Admin\MyCorp::NewKaryawan');
$routes->post('/MyCorp/Create', 'Admin\MyCorp::AddNewKaryawan');
$routes->get('/MyCorp/(:num)/edit_karyawan', 'Admin\MyCorp::Detail_Karyawan/$1');
$routes->post('/MyCorp/edit_karyawan/(:num)', 'Admin\MyCorp::EditKaryawan/$1');
