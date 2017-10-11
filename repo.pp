class repo{
        exec { 'wget http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-10.noarch.rpm ; sudo  rpm -ivh epel-release-7-10.noarch.rpm ; sudo rm epel-release-7-10.noarch.rpm':
        path => ['/usr/bin','/usr/sbin','/usr/local/bin'],
        }

        exec { 'sudo yum-config-manager --enable rhui-REGION-rhel-server-extras rhui-REGION-rhel-server-optional':
        path => ['/usr/bin','/usr/sbin','/usr/local/bin'],
        }

        exec { 'wget https://dev.mysql.com/get/mysql57-community-release-el7-11.noarch.rpm ; sudo rpm -Uvh mysql57-community-release-el7-11.noarch.rpm ; rm mysql57-community-release-el7-11.noarch.rpm' :
        path => ['/usr/bin','/usr/sbin','/usr/local/bin'],
        }
}