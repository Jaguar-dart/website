library site.partials;

import 'package:stencil/stencil.dart';
import 'package:jaguar_martini/jaguar_martini.dart';
import 'package:date_format/date_format.dart';

const List<String> dateFormat = const [DD, ' ,', d, ' ', MM, ' ', yyyy];

/// Partial to renders HTML head component for a given [page]
class HeadComp extends Component {
  final AnyPage page;

  final String staticDir;

  HeadComp(this.page, {this.staticDir: '/static/'});

  Site get site => page.site;

  String get title {
    if (page is SinglePage) {
      return (page as SinglePage).meta.title + ': ' + site.meta.title;
    } else if (page is Tag) {
      return (page as Tag).name + ': ' + site.meta.title;
    } else if (page is Category) {
      return (page as Category).name + ': ' + site.meta.title;
    } else if (page is Section) {
      return (page as Section).name + ': ' + site.meta.title;
    } else if (page is Site) {
      return (page as Site).meta.title;
    }
    throw new UnsupportedError('Unsupported list page!');
  }

  String render() {
    return '''
  <head>
    <title>$title</title>
    <meta name="generator" content="Martini 0.1.0" />
    <!-- Fonts -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <!-- My stylesheets -->
    <link rel="stylesheet" href="${staticDir}css/common.css">
    <link rel="stylesheet" href="${staticDir}css/styles.css">
  </head>
    ''';
  }
}

class PostsListItemPartial extends Component {
  final SinglePage page;

  PostsListItemPartial(this.page);

  @override
  String render() {
    return '''
<article class="single">
  <header class="article-header">
    <time itemprop="datePublished" pubdate="pubdate"
                  datetime="${page.meta.date.toString()}">
      ${formatDate(page.meta.date, dateFormat)}
    </time>
    <h1 class="article-title">
      <a href="${page.permalink}">${page.meta.title}</a>
    </h1>
  </header>

  <div class="article-body" itemprop="articleBody">${page.content}</div>

  <aside>
    <div class="section">
      ${forEach(page.tags, (Tag t) => '<a href="${t.permalink}" class="tag">${t.name}</a>')}
    </div>
  </aside>
</article>
    ''';
  }
}

/// Partial to render sidebar component
class SidebarComp extends Component {
  final AnyPage page;

  SidebarComp(this.page);

  @override
  String render() {
    return '''
<aside class="site">
	<div class="section">
	  <header><div class="title">LatestPosts</div></header>
	  <div class="content">
	    ${forEach(page.site.pages.take(10), (SinglePage p) => '''
	    <div class="sm">
		    <article class="li">
				  <a href="${p.permalink}" class="clearfix">
				    <div class="detail">
				      <time>${formatDate(p.meta.date, dateFormat)}</time>
				      <h2 class="title">${p.meta.title}</h2>
				    </div>
				  </a>
				</article>
	    </div>
	    ''')}
	  </div>
	</div>

	<div class="section">
	  <header><div class="title">Categories</div></header>
	  <div class="content">
	    ${forEach(page.site.categories.values, (Category c) => '''
	    <a href="${c.permalink}">${c.name}</a>
	    ''')}
	  </div>
	</div>

	<div class="section taxonomies">
	  <header><div class="title">Tags</div></header>
	  <div class="content">
	    ${forEach(page.site.tags.values.take(10), (Tag t) => '''
	    <a href="${t.permalink}">${t.name}</a>
	    ''')}
	  </div>
	</div>
</aside>
		''';
  }
}
