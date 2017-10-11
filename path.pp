#add path to global.
class path{
exec { 'export PATH=$PATH:/usr/local/bin' :
path => ['/usr/bin','/usr/sbin','/usr/local/bin'],
}
}}