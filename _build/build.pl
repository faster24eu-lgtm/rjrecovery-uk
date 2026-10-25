#!/usr/bin/perl
# Site builder for rjrecovery.uk
#
#   perl _build/build.pl
#
# Every page is generated from the content files next to this script:
#   services.pl  service pages (incl. the old URLs /breakdown-recovery/, /jumpstart/, /mobile-tyre-fitting/)
#   areas.pl     /towing/<area>/ pages and the old /mobile-tyre-fitting-<area>/ URLs
#   pages.pl     home, hubs, guides, about, contact, legal, 404, thank-you
# Each page is written as <path>/index.html, so URLs end in a slash.
# Also writes sitemap.xml and robots.txt, and reports broken internal links.
#
# Change the phone number, WhatsApp or form recipient here only.
use strict;
use warnings;
use utf8;
use File::Path qw(make_path);
use File::Basename qw(dirname);
use FindBin qw($Bin);

our $BASE       = 'https://rjrecovery.uk';
our $NAME       = 'London 24/7 Towing';
our $PHONE_HREF = 'tel:+442080580013';
our $PHONE      = '020 8058 0013';
our $WA_HREF    = 'https://wa.me/447988974609?text=Hi%2C%20I%20need%20a%20tow%20in%20London.%20My%20location%20is%3A%20';
our $FORM_TO    = 'faster24eu@gmail.com';    # formsubmit.co recipient
our $PRICE      = 'from &pound;125';
our $YEAR       = (localtime)[5] + 1900;

my $ROOT = dirname($Bin);
our @PAGES;    # filled by the content files: { path, title, description, h1, lead, body, faq, crumbs, schema, ... }

for my $f (qw(services.pl areas.pl pages.pl)) {
  my $r = do "$Bin/$f";
  die "$f: $@" if $@;
  die "$f: $!" unless defined $r;
}

my %BY_PATH = map { $_->{path} => $_ } @PAGES;

# ------------------------------------------------------------------ helpers
sub esc { my $s = shift // ''; $s =~ s/&(?![a-z]+;|#\d+;)/&amp;/g; $s =~ s/"/&quot;/g; $s =~ s/</&lt;/g; $s }
sub plain { my $s = shift // ''; $s =~ s/<[^>]+>//g; $s =~ s/&pound;/£/g; $s =~ s/&rsquo;|&#39;/'/g; $s =~ s/&ndash;/–/g; $s =~ s/&mdash;/—/g; $s =~ s/&nbsp;/ /g; $s =~ s/&amp;/&/g; $s }
sub json { my $s = plain(shift); $s =~ s/\\/\\\\/g; $s =~ s/"/\\"/g; $s =~ s/\n/ /g; qq("$s") }
sub url { my $p = shift; $p eq '' ? "$BASE/" : "$BASE/$p/" }
sub href { my $p = shift; $p eq '' ? '/' : "/$p/" }

sub fill {
  my $s = shift;
  $s =~ s/\{\{PHONE\}\}/$PHONE/g;
  $s =~ s/\{\{PHONE_HREF\}\}/$PHONE_HREF/g;
  $s =~ s/\{\{WA_HREF\}\}/$WA_HREF/g;
  $s =~ s/\{\{PRICE\}\}/$PRICE/g;
  $s =~ s/\{\{LIST:(\w+)\}\}/link_list($1)/ge;
  $s =~ s/\{\{FORM\}\}/quote_form()/ge;
  $s;
}

sub link_list {
  my $kind = shift;
  my @p = grep { ($_->{kind} // '') eq $kind } @PAGES;
  my $h = qq(<ul class="cards">\n);
  for (@p) {
    $h .= sprintf qq(  <li><a href="%s"><strong>%s</strong><span>%s</span></a></li>\n), href($_->{path}), $_->{label}, $_->{card} // '';
  }
  $h . "</ul>";
}

sub quote_form {
  return <<"HTML";
<form class="quote" action="https://formsubmit.co/$FORM_TO" method="POST">
  <input type="hidden" name="_subject" value="rjrecovery.uk: new tow request">
  <input type="hidden" name="_next" value="$BASE/thank-you/">
  <input type="hidden" name="_template" value="table">
  <input type="text" name="_honey" class="hp" tabindex="-1" autocomplete="off">
  <label>Your name<input type="text" name="name" required autocomplete="name"></label>
  <label>Phone number<input type="tel" name="phone" required autocomplete="tel"></label>
  <label>Where is the vehicle? <small>Road, postcode or landmark</small><input type="text" name="pickup" required></label>
  <label>Where should it go?<input type="text" name="dropoff" placeholder="Home, garage, or not sure yet"></label>
  <label>Vehicle and problem<textarea name="details" rows="3" placeholder="e.g. 2015 Ford Focus, won't start, in a residents' bay"></textarea></label>
  <button type="submit" class="btn btn-main">Send &ndash; we&rsquo;ll call you back</button>
  <p class="fine">For a breakdown in a live lane, call instead: <a href="$PHONE_HREF">$PHONE</a>.</p>
</form>
HTML
}

# ---------------------------------------------------------------- layout
my @NAV = (
  [ 'Services', 'services' ],
  [ 'Areas',    'towing' ],
  [ 'Guides',   'guides' ],
  [ 'About',    'about-us' ],
  [ 'Contact',  'contact-us' ],
);

sub breadcrumbs {
  my $p = shift;
  return ('', '') if !$p->{crumbs};
  my @c = ([ 'Home', '' ], @{ $p->{crumbs} }, [ $p->{label}, $p->{path} ]);
  my $html = qq(<nav class="crumbs" aria-label="Breadcrumb"><ol>);
  $html .= join '', map { $_ == $#c ? "<li>$c[$_][0]</li>" : sprintf('<li><a href="%s">%s</a></li>', href($c[$_][1]), $c[$_][0]) } 0 .. $#c;
  $html .= "</ol></nav>";
  my $ld = join ",\n", map { sprintf '      { "@type": "ListItem", "position": %d, "name": %s, "item": "%s" }', $_ + 1, json($c[$_][0]), url($c[$_][1]) } 0 .. $#c;
  return ($html, qq(<script type="application/ld+json">\n{\n  "\@context": "https://schema.org",\n  "\@type": "BreadcrumbList",\n  "itemListElement": [\n$ld\n  ]\n}\n</script>\n));
}

sub faq_html {
  my $p = shift;
  return ('', '') unless $p->{faq} && @{ $p->{faq} };
  my $html = qq(<section class="faq"><h2>Questions people ask</h2>\n);
  my @ld;
  for my $q (@{ $p->{faq} }) {
    $html .= "<details><summary>$q->[0]</summary><p>" . fill($q->[1]) . "</p></details>\n";
    push @ld, sprintf qq(    { "\@type": "Question", "name": %s, "acceptedAnswer": { "\@type": "Answer", "text": %s } }), json($q->[0]), json(fill($q->[1]));
  }
  $html .= "</section>";
  return ($html, qq(<script type="application/ld+json">\n{\n  "\@context": "https://schema.org",\n  "\@type": "FAQPage",\n  "mainEntity": [\n) . join(",\n", @ld) . qq(\n  ]\n}\n</script>\n));
}

sub service_ld {
  my $p = shift;
  return '' unless $p->{service};
  my $area = $p->{area} // 'Greater London';
  return sprintf <<'LD', json($p->{service}), json(fill($p->{description})), url($p->{path}), json($area), json($NAME), $BASE, $PHONE_HREF =~ s/^tel://r;
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Service",
  "serviceType": %s,
  "description": %s,
  "url": "%s",
  "areaServed": { "@type": "Place", "name": %s },
  "provider": { "@type": "Organization", "name": %s, "url": "%s/", "telephone": "%s" },
  "hoursAvailable": "Mo-Su 00:00-23:59"
}
</script>
LD
}

sub render {
  my $p = shift;
  my ($crumbs, $crumb_ld) = breadcrumbs($p);
  my ($faq, $faq_ld) = faq_html($p);
  my $canon = url($p->{path});
  my $robots = $p->{noindex} ? qq(<meta name="robots" content="noindex">\n) : '';
  my $nav = join '', map {
    my $cur = ($p->{nav} // '') eq $_->[1] ? ' aria-current="page"' : '';
    sprintf '<li><a href="%s"%s>%s</a></li>', href($_->[1]), $cur, $_->[0]
  } @NAV;
  my $lead = $p->{lead} ? '<p class="lead">' . fill($p->{lead}) . '</p>' : '';
  my $hero_cta = $p->{no_cta} ? '' : <<"HTML";
<div class="hero-cta">
  <a class="btn btn-main" href="$PHONE_HREF">Call $PHONE</a>
  <a class="btn btn-ghost" href="$WA_HREF">Send location on WhatsApp</a>
</div>
<ul class="ticks"><li>Answered 24/7</li><li>Price agreed before dispatch</li><li>Cars, vans &amp; motorbikes</li></ul>
HTML
  my $body = fill($p->{body} // '');
  my $aside = $p->{no_form} ? '' : <<"HTML";
<aside class="side" id="quote">
  <div class="side-box">
    <h2>Get a tow price</h2>
    <p>Fill this in and we call you back, usually within a few minutes. Quickest is still a phone call.</p>
    @{[ quote_form() ]}
  </div>
</aside>
HTML
  my $extra_ld = $p->{schema} // '';
  my $svc_ld = service_ld($p);
  my $title = esc(plain(fill($p->{title})));
  my $desc = esc(plain(fill($p->{description})));
  my $h1 = fill($p->{h1});
  my $wrap = $p->{no_form} ? 'wrap one' : 'wrap';

  return <<"HTML";
<!DOCTYPE html>
<html lang="en-GB">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>$title</title>
<meta name="description" content="$desc">
$robots<link rel="canonical" href="$canon">
<meta property="og:locale" content="en_GB">
<meta property="og:type" content="website">
<meta property="og:site_name" content="$NAME">
<meta property="og:title" content="$title">
<meta property="og:description" content="$desc">
<meta property="og:url" content="$canon">
<meta name="theme-color" content="#0f1b2d">
<link rel="icon" type="image/svg+xml" href="/assets/favicon.svg">
<link rel="stylesheet" href="/assets/site.css">
$crumb_ld$faq_ld$svc_ld$extra_ld</head>
<body>
<a class="skip" href="#main">Skip to content</a>
<header class="top">
  <div class="top-in">
    <a class="brand" href="/"><svg aria-hidden="true" viewBox="0 0 32 32" width="30" height="30"><rect width="32" height="32" rx="6" fill="#ff7a1a"/><path d="M5 21h3l3-8h8l3 4h4v4h-2a3 3 0 0 1-6 0h-6a3 3 0 0 1-6 0H5z" fill="#0f1b2d"/><circle cx="11" cy="21" r="1.6" fill="#ff7a1a"/><circle cx="23" cy="21" r="1.6" fill="#ff7a1a"/></svg><span>London <b>24/7</b> Towing</span></a>
    <nav class="desk" aria-label="Main"><ul>$nav</ul></nav>
    <a class="top-call" href="$PHONE_HREF"><span>24/7</span> $PHONE</a>
    <details class="menu"><summary aria-label="Menu">&#9776;</summary><ul>$nav</ul></details>
  </div>
</header>
$crumbs
<main id="main">
<section class="hero">
  <div class="hero-in">
    <h1>$h1</h1>
    $lead
    $hero_cta
  </div>
</section>
<div class="$wrap">
  <article class="content">
$body
$faq
  </article>
$aside</div>
<section class="band">
  <div class="band-in">
    <h2>Stuck right now?</h2>
    <p>Tell us the road or postcode, the vehicle and what happened. You get a price on the call, and the recovery truck comes straight to you.</p>
    <a class="btn btn-main" href="$PHONE_HREF">Call $PHONE</a>
  </div>
</section>
</main>
<footer class="foot">
  <div class="foot-in">
    <div>
      <p class="foot-brand">$NAME</p>
      <p>Car, van and motorbike towing and breakdown recovery across Greater London, day and night.</p>
      <p><a href="$PHONE_HREF">$PHONE</a> &middot; <a href="$WA_HREF">WhatsApp</a></p>
    </div>
    <div>
      <p class="foot-h">Services</p>
      <ul><li><a href="/car-towing/">Car towing</a></li><li><a href="/breakdown-recovery/">Breakdown recovery</a></li><li><a href="/accident-recovery/">Accident recovery</a></li><li><a href="/van-recovery/">Van recovery</a></li><li><a href="/motorbike-recovery/">Motorbike recovery</a></li><li><a href="/jumpstart/">Jump start</a></li></ul>
    </div>
    <div>
      <p class="foot-h">Areas</p>
      <ul><li><a href="/towing/tottenham/">Tottenham</a></li><li><a href="/towing/enfield/">Enfield</a></li><li><a href="/towing/wembley/">Wembley</a></li><li><a href="/towing/ealing/">Ealing</a></li><li><a href="/towing/harrow/">Harrow</a></li><li><a href="/towing/">All areas</a></li></ul>
    </div>
  </div>
  <p class="disclaimer">rjrecovery.uk is an independent call-connection service: we take your call and send a vetted recovery operator from our network to your vehicle. We are not connected with RJ Autos Recovery LTD or any business that used this domain before. <a href="/about-us/">How it works</a> &middot; <a href="/privacy/">Privacy</a> &middot; &copy; $YEAR</p>
</footer>
<a class="fab" href="$PHONE_HREF">Call now &ndash; 24/7</a>
</body>
</html>
HTML
}

# ------------------------------------------------------------------ write
my %seen;
for my $p (@PAGES) {
  die "duplicate path $p->{path}" if $seen{ $p->{path} }++;
  my $file = $p->{file} // ($p->{path} eq '' ? 'index.html' : "$p->{path}/index.html");
  my $out = "$ROOT/$file";
  make_path(dirname($out));
  open my $fh, '>:encoding(UTF-8)', $out or die "$out: $!";
  print $fh render($p);
  close $fh;
}

# sitemap + robots
my $sm = qq(<?xml version="1.0" encoding="UTF-8"?>\n<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">\n);
$sm .= "  <url><loc>" . url($_->{path}) . "</loc></url>\n" for grep { !$_->{noindex} } @PAGES;
$sm .= "</urlset>\n";
open my $s, '>:encoding(UTF-8)', "$ROOT/sitemap.xml" or die $!; print $s $sm; close $s;
open my $r, '>', "$ROOT/robots.txt" or die $!; print $r "User-agent: *\nAllow: /\n\nSitemap: $BASE/sitemap.xml\n"; close $r;

# broken internal links
my $bad = 0;
for my $p (@PAGES) {
  my $file = $p->{file} // ($p->{path} eq '' ? 'index.html' : "$p->{path}/index.html");
  open my $fh, '<:encoding(UTF-8)', "$ROOT/$file" or die $!;
  local $/; my $html = <$fh>; close $fh;
  for my $h ($html =~ /href="(\/[^"#]*)"/g) {
    next if $h =~ m{^/assets/};
    (my $k = $h) =~ s{^/|/$}{}g;
    unless (exists $BY_PATH{$k}) { print "broken link in /$p->{path}: $h\n"; $bad++ }
  }
}
printf "%d pages written, %d broken links\n", scalar(@PAGES), $bad;
