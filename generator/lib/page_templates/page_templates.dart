library bare.layout;

import 'package:stencil/stencil.dart';
import 'package:jaguar_martini/jaguar_martini.dart';

import '../partials/partials.dart';

class SiteLayout implements SiteRenderer {
  @override
  final shortcodes = <ShortCode>[];

  @override
  final sections = <String, SectionRenderer>{};

  @override
  List<String> index(Site site) => [
        '''
<html>
  <head>
    <title>Jaguar</title>
    <meta name="generator" content="Martini 0.1.0" />
    <!-- Fonts -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">

    <!-- My stylesheets -->
    <link rel="stylesheet" href="./static/css/common.css">
    <link rel="stylesheet" href="./static/css/homepage.css">
  </head>

  <body>
    <header>
      <nav>
        <a href="https://github.com/Jaguar-dart/jaguar/wiki">Wiki</a>
        <a href="https://pub.dartlang.org/documentation/jaguar/latest/">Api</a>
        <a href="https://github.com/jaguar-examples">Examples</a>
        <a href="https://gitter.im/jaguar_dart/jaguar">Gitter</a>
        <a href="https://github.com/Jaguar-dart">Github</a>
      </nav>
    </header>
    <main>
      <div id="intro">
          <div class="title">${site.meta.title}</div>
          <div class="description">
            Full stack server framework with <a>MVC</a>, <a>ORM</a>, 
            <a>Serialization</a>, <a>Auth</a> and <a>Security</a>.
          </div>
      </div>
      
      <div id="intro-video-holder">
        <iframe width="560" height="315" src="https://www.youtube.com/embed/VPqNYtyF2G4?rel=0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
        <iframe width="560" height="315" src="https://www.youtube.com/embed/THzC75zOGi0?rel=0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
        <iframe width="560" height="315" src="https://www.youtube.com/embed/iPHCM6n79lc?rel=0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>
        <div width="560" class="more-videos"><a href="https://www.youtube.com/watch?v=VPqNYtyF2G4&list=PLS78sux6nBcRR9EyR3sBQxRXXW4jac7TR">More videos</a></div>
      </div>
      
      <div class="feat">
        <div class="feat-desc">
          <div class="desc-main">Simple, concise and Intuitive</div>
          <div class="desc-sub">Write elegant REST APIs.</div>
        </div>  <!-- feat-desc -->
        
        <div class="feat-view">
          <script src="https://gist.github.com/cb71e71ba21954e1a0a478f9f5c6a0e2.js?file=simple.dart" type="text/javascript"></script>
        </div>  <!--feat-view -->
      </div>  <!--feat-->
      
      
      <div class="feat">
        <div class="feat-desc">
          <div class="desc-main">Controller</div>
          <div class="desc-sub">Group related routes into classes.</div>
        </div>  <!-- feat-desc -->
        
        <div class="feat-view">
          <script src="https://gist.github.com/cb71e71ba21954e1a0a478f9f5c6a0e2.js?file=controller.dart" type="text/javascript"></script>
        </div>  <!--feat-view -->
      </div>  <!--feat-->
      
      
      <div class="feat">
        <div class="feat-desc">
          <div class="desc-main">Session management</div> 
          <div class="desc-sub">Read and update session data with a simple Map-like interface.</div>
        </div>  <!-- feat-desc -->
        
        <div class="feat-view">
          <script src="https://gist.github.com/cb71e71ba21954e1a0a478f9f5c6a0e2.js?file=session.dart" type="text/javascript"></script>
        </div>  <!--feat-view -->
      </div>  <!--feat-->
      
      
      <div class="feat">
        <div class="feat-desc">
          <div class="desc-main">JWT tokens</div>
          <div class="desc-sub">Sessions on JWT token.</div>
        </div>  <!-- feat-desc -->
        
        <div class="feat-view">
          <script src="https://gist.github.com/cb71e71ba21954e1a0a478f9f5c6a0e2.js?file=jwt.dart" type="text/javascript"></script>
        </div>  <!--feat-view -->
      </div>  <!--feat-->
      
      
      <div class="feat">
        <div class="feat-desc">
          <div class="desc-main">Authentication & Authorization</div>
          <div class="desc-sub">Password based authentication.</div>
          <div class="desc-sub">Oauth based authentication (Facebook, Google, Twitter).</div>
        </div>  <!-- feat-desc -->
        
        <div class="feat-view">
          <script src="https://gist.github.com/cb71e71ba21954e1a0a478f9f5c6a0e2.js?file=auth.dart" type="text/javascript"></script>
        </div>  <!--feat-view -->
      </div>  <!--feat-->
      
      
      <div class="feat">
        <div class="feat-desc">
          <div class="desc-main">Statically-typed ORM</div>
          <div class="desc-sub">
            <div>With support for</div> 
            <ul>
              <li>Relations</li>
              <li>Pre-loading</li>
              <li>Cascading</li>
            </ul>
          </div>
        </div>  <!-- feat-desc -->
        
        <div class="feat-view">
          <script src="https://gist.github.com/cb71e71ba21954e1a0a478f9f5c6a0e2.js?file=orm.dart" type="text/javascript"></script>
        </div>  <!--feat-view -->
      </div>  <!--feat-->
      
      
      <div class="feat">
        <div class="feat-desc">
          <div class="desc-main">Static files</div>
          <div class="desc-sub">Serve Static files with little to no-code.</div>
        </div>  <!-- feat-desc -->
        
        <div class="feat-view">
          <script src="https://gist.github.com/cb71e71ba21954e1a0a478f9f5c6a0e2.js?file=static_files.dart" type="text/javascript"></script>
        </div>  <!--feat-view -->
      </div>  <!--feat-->
      
      
      <div class="feat">
        <div class="feat-desc">
          <div class="desc-main">Template engine = <strong>MVC!</strong> </div>
          <div class="desc-sub">
            <strong>Stencil</strong> is Statically typed, code completed and 
            analyzable Dart-based template engine.
          </div>
        </div>  <!-- feat-desc -->
        
        <div class="feat-view">
          <script src="https://gist.github.com/cb71e71ba21954e1a0a478f9f5c6a0e2.js?file=template_engine.dart" type="text/javascript"></script>
        </div>  <!--feat-view -->
      </div>  <!--feat-->
    </main>
  </body>
</html>
    '''
      ];

  /* TODO
        <div class="feat">
        <div class="feat-desc">
          <strong>Hot reloading!</strong> During development, make changes to your
          server code without having to restart the server.
        </div>  <!-- feat-desc -->

        <div class="feat-view">
                  <pre><code class="dart">import 'package:jaguar/jaguar.dart';

main() => Jaguar(port: 8080)
  ..get('/about', (ctx) => 'Jaguar')
  ..postJson('/echo', (ctx) => ctx.bodyAsJson())
  ..serve();</code></pre>
        </div>  <!--feat-view -->
      </div>  <!--feat-->


      <div class="feat">
        <div class="feat-desc">
          <strong>Reverse proxy!</strong> During development, reverse proxy the
          HTML, CSS and Javascript requests to <i>pub serve</i>.
        </div>  <!-- feat-desc -->

        <div class="feat-view">
                  <pre><code class="dart">import 'package:jaguar/jaguar.dart';

main() => Jaguar(port: 8080)
  ..get('/about', (ctx) => 'Jaguar')
  ..postJson('/echo', (ctx) => ctx.bodyAsJson())
  ..serve();</code></pre>
        </div>  <!--feat-view -->
      </div>  <!--feat-->
   */

  @override
  List<String> categories(Category categories) => [];

  @override
  List<String> tags(Tag tags) => [];

  /// Renders single pages of the section
  @override
  String sectionSingle(SinglePage page) => '''
<html>
  ${HeadComp(page, staticDir: '../../static/').render()}
  <body>
    ${page.content}
  </body>
</html>
  ''';

  /// Renders list pages of the section
  @override
  List<String> sectionIndex(ListPage page) =>
      <String>[SectionIndexGenerator(page).render()];

  @override
  List<String> sectionTags(Tag tag) => [];

  @override
  List<String> sectionCategories(Category cat) => [];
}

class SectionIndexGenerator extends Component {
  final ListPage page;

  SectionIndexGenerator(this.page);

  Site get site => page.site;

  String get heading {
    if (page is Tag) {
      return (page as Tag).name;
    } else if (page is Category) {
      return (page as Category).name;
    } else if (page is Section) {
      return (page as Section).name;
    } else if (page is Site) {
      return (page as Site).meta.title;
    }
    throw UnsupportedError('Unsupported list page!');
  }

  @override
  String render() {
    return '''
<html>
  ${comp(HeadComp(page, staticDir: '../static/'))}

  <body>
    <header class="site">
      <div class="title"><a href="${site.meta.baseURL}">${site.meta.title}</a></div>
    </header>

    <div class="container site">

    <div class="list">
      <header class="list-title"><h1>$heading</h1></header>

      <div class="row">
        <div class="col-sm-9">
          <div class="articles">
            ${forEach(page.pages, (i) => PostsListItemPartial(i).render())}
          </div>

          <!-- TODO {{ partial "pagination.html" . }} -->
        </div>
        <div class="col-sm-3 sidebar">
          ${comp(SidebarComp(page))}
        </div>
      </div>
    </div>
    <!-- TODO {{ partial "default_foot.html" . }} -->
  </body>
</html>
    ''';
  }
}

final String templateEngineExample = r"""import 'package:jaguar/jaguar.dart';
import 'package:stencil/stencil.dart';

main() async {
  final server = Jaguar();
  server.get('/addition.html', (ctx) {
    num a = ctx.query.getInt('a'), b = ctx.query.getInt('b');
    return '''
    <html>
<head><title>Stencil: An awesome template engine</title></head>
<body>
${when(a == null ||b == null, '''
    <div>Invalid request!</div>
    ''', '''
    <div>Result is <strong>${a + b}</strong>.</div>
    ''')}
</body>
</html>
''';
  }, mimeType: MimeType.html);
  await server.serve();
}""";