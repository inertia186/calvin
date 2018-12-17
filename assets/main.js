$(document).ready(function() {
  $('*').filter(function() {
    var e = $(this);
    var author = e.data('author');
    var permlink = e.data('permlink');
    
    if ( !!author && !!permlink ) {
      e.steemitFullPost({
        author: author,
        permlink: permlink,
        template: '${BODY}<hr /><p>See: <a href="${URL}">${TITLE}</a> by <a href="https://steemit.com/@${AUTHOR}">@${AUTHOR}</a></p>',
        bodyCallback: function (body) {
          return new Remarkable({html: true}).render(body);
        }
      });
    }
  });
});
