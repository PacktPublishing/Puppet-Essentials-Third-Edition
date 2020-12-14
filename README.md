## $5 Tech Unlocked 2021!
[Buy and download this Book for only $5 on PacktPub.com](https://www.packtpub.com/product/puppet-5-essentials-third-edition/9781787284715)
-----
*If you have read this book, please leave a review on [Amazon.com](https://www.amazon.com/gp/product/1787284719).     Potential readers can then use your unbiased opinion to help them make purchase decisions. Thank you. The $5 campaign         runs from __December 15th 2020__ to __January 13th 2021.__*

# Puppet 5 Essentials - Third Edition
This is the code repository for [Puppet 5 Essentials - Third Edition](https://www.packtpub.com/networking-and-servers/puppet-essentials-third-edition?utm_source=github&utm_medium=repository&utm_campaign=9781787284715), published by [Packt](https://www.packtpub.com/?utm_source=github). It contains all the supporting project files necessary to work through the book from start to finish.

## About the Book
Puppet Essentials, Third Edition gets you started quickly with Puppet and its tools in the right way. It highlights improvements in Puppet and provides solutions for upgrading. This edition also covers Puppet/Docker integration. It starts with a quick introduction to Puppet to quickly get your IT automation platform in place. Then you learn about the Puppet Agent and its installation and configuration along with Puppet Server and its scaling options. The book adopts an innovative structure and approach, and Puppet is explained with flexible use cases that empower you to manage complex infrastructures easily.

## Instructions and Navigation
All of the code is organized into folders. Each folder starts with a number followed by the application name. For example, Chapter02.

The code will look like the following:
```
service { 'puppet': enable => false }
cron { 'puppet-agent-run':
  user    => 'root',
  command =>
    'puppet agent --no-daemonize --onetime --
     logdest=syslog',
   minute => fqdn_rand(60),
   hour   => absent,
} 
```

You need Debian 8+ or Ubuntu 14+, and physical/virtual x86.

## Related Products
* [Puppet: Mastering Infrastructure Automation](https://www.packtpub.com/virtualization-and-cloud/puppet-mastering-infrastructure-automation?utm_source=github&utm_medium=repository&utm_campaign=9781788399708)

* [Learning Puppet [Video]](https://www.packtpub.com/networking-and-servers/learning-puppet-video?utm_source=github&utm_medium=repository&utm_campaign=9781787128637)

* [Mastering Puppet for Large Infrastructures [Video]](https://www.packtpub.com/virtualization-and-cloud/mastering-puppet-large-infrastructures-video?utm_source=github&utm_medium=repository&utm_campaign=9781786462527)

