<#macro application title="AnnotatedSpring.com" description="Spring Screencasts" active="" image="" url="">
<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

        <meta name="description" content="${description}">
        <meta name="author" content="Brian Kelly">

        <meta property="og:type"        content="website" />
        <meta property="og:title"       content="${title} - AnnotatedSpring.com" />
        <meta property="og:description" content="${description}" />
        <meta property="og:url"         content="${url}" />
        <meta property="og:image"       content="${image}" />

        <title>${title} - <@spring.message "site.domain" /></title>

        <link rel='stylesheet' href='/webjars/bootswatch-yeti/3.3.1+2/css/bootstrap.min.css'>
        <link rel='stylesheet' href='/stylesheets/annotated-spring.css'>
        <script src="/webjars/jquery/2.1.4/jquery.min.js"></script>
        <script src="/webjars/bootswatch-yeti/3.3.1+2/js/bootstrap.min.js"></script>
    </head>

    <body>
        <nav class="navbar navbar-default navbar-fixed-top">
            <div class="container">
                <div class="navbar-header">
                    <a class="navbar-brand" href="/"><@spring.message "site.title" /></a>
                    <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </button>
                </div>

                <div id="navbar" class="collapse navbar-collapse">
                    <ul class="nav navbar-nav">
                        <li class="<#if active == "episodes">active</#if>"><a href="/" id="episodes">Episodes</a></li>
                        <li class="<#if active == "resources">active</#if>"><a href="/resources/">Resources</a></li>
                        <li class="<#if active == "about">active</#if>"><a href="/about/">About</a></li>
                    </ul>
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="http://goo.gl/forms/wbcf1mJv5S" target="_blank">Request Episode</a></li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="container">
            <div class="starter-template">
                <#nested>
            </div>
        </div>

        <footer class="footer">
            <div class="container">
                <div class="row text-muted">
                    <div class="col-md-4 col-sm-4 footer-left">
                        <a href="https://github.com/spilth/annotated-spring">Website Source Code</a>
                    </div>
                    <div class="col-md-4 col-sm-4 footer-center">
                        &copy; 2015 Annotated Spring
                    </div>
                    <div class="col-md-4 col-sm-4 footer-right">
                        Hosted on <a href="https://run.pivotal.io">Pivotal Web Services</a>
                    </div>
                </div>
            </div>
        </footer>

        <script>
            (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
                        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
                    m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
            })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

            ga('create', 'UA-80575-26', 'auto');
            ga('send', 'pageview');
        </script>

        <script type="text/javascript">
            var disqus_shortname = 'annotatedspring';
            (function () {
                var s = document.createElement('script'); s.async = true;
                s.type = 'text/javascript';
                s.src = '//' + disqus_shortname + '.disqus.com/count.js';
                (document.getElementsByTagName('HEAD')[0] || document.getElementsByTagName('BODY')[0]).appendChild(s);
            }());
        </script>
    </body>
</html>
</#macro>
