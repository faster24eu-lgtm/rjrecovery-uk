use utf8;
# Area pages (/towing/<slug>/) and the old /mobile-tyre-fitting-<area>/ URLs.
# Every area has its own intro, roads and local notes, so no two pages read alike.

my @AREAS = (
  {
    slug => 'tottenham', name => 'Tottenham', pc => 'N17 &amp; N15', borough => 'Haringey',
    intro => 'From the High Road to Tottenham Hale retail park, Tottenham is one of the busiest parts of North London to break down in, especially on a match day. We cover N17 and N15 around the clock.',
    roads => [
      [ 'A10 High Road and Seven Sisters Road', 'Bus lanes and red-route stretches, so a broken-down car has to be moved quickly.' ],
      [ 'Tottenham Hale gyratory and Ferry Lane', 'Fast-moving traffic heading for the A406 and the Lea Valley. Get out on the kerb side.' ],
      [ 'A406 at Angel Edmonton and Great Cambridge junction', 'One of the most common places we&rsquo;re called to in the area.' ],
      [ 'Industrial estates off Willoughby Lane and Northumberland Park', 'Vans that won&rsquo;t start first thing in the morning.' ],
    ],
    local => 'On Spurs match and concert days, roads around the stadium close and the High Road slows to walking pace. If you break down nearby, tell us. The operator may need to come in from the north via the A406 or wait for the road closure to lift. Much of Tottenham also has controlled parking zones, so get a car that died in a residents&rsquo; bay moved before the ticket arrives.',
    nearby => [qw(edmonton wood-green walthamstow enfield)],
    faq => [
      [ 'Can you get to me near the Tottenham Hotspur Stadium on a match day?', 'Usually, yes, but road closures around the stadium can add time. Tell us exactly where you are, and we&rsquo;ll give you an honest arrival estimate.' ],
      [ 'My car died in a residents&rsquo; bay in N17. Can you move it today?', 'Yes. We can tow it to your driveway, a garage or anywhere you choose. Give us the street name and a rough house number.' ],
    ],
  },
  {
    slug => 'edmonton', name => 'Edmonton', pc => 'N9, N18 &amp; N21', borough => 'Enfield',
    intro => 'Edmonton sits right on the North Circular, so a lot of our calls here come from the A406 itself or the roads feeding it. Cars, vans and bikes, 24/7.',
    roads => [
      [ 'A406 North Circular from Silver Street to Meridian Water', 'Heavy traffic and lane changes. Get behind the barrier and call.' ],
      [ 'A1010 Fore Street and Hertford Road', 'Busy shopping streets with bus lanes and loading bays.' ],
      [ 'Meridian Way and the IKEA and Tesco retail park', 'Flat batteries and lost keys in the car parks.' ],
      [ 'Montagu Road and the Eley Industrial Estate', 'Vans and light commercials.' ],
    ],
    local => 'If your car breaks down in a retail park car park, let the security team know it&rsquo;s waiting for recovery. Some car parks have time limits and private-parking enforcement. Our operator can collect from multi-storey and ground-level car parks. Tell us the level and bay number.',
    nearby => [qw(tottenham enfield walthamstow wood-green)],
    faq => [
      [ 'I&rsquo;ve broken down on the North Circular near Edmonton. What should I do?', 'Get to the left lane or a slip road if you can, switch on your hazards and get out on the kerb side. If you&rsquo;re stuck in a live lane, call 999 first, then call us.' ],
      [ 'Can you collect my car from the IKEA Edmonton car park?', 'Yes. Give us the car park and roughly where the car is, and let site security know a recovery truck is coming.' ],
    ],
  },
  {
    slug => 'enfield', name => 'Enfield', pc => 'EN1, EN2 &amp; EN3', borough => 'Enfield',
    intro => 'From Enfield Town to Ponders End, Brimsdown and the M25 at Bullsmoor, we recover cars, vans and motorbikes across the whole of Enfield, any hour of the day.',
    roads => [
      [ 'A10 Great Cambridge Road', 'Fast dual carriageway between the A406 and the M25. A breakdown here needs moving quickly.' ],
      [ 'M25 junction 25 (Bullsmoor / Waltham Cross)', 'Motorway breakdowns: leave the car and wait behind the barrier.' ],
      [ 'A110 Southbury Road and Enfield Town', 'Town-centre traffic and car parks.' ],
      [ 'Brimsdown and Innova Park industrial areas', 'Vans and fleets, including early-morning non-starters.' ],
    ],
    local => 'Enfield is where London meets Hertfordshire, so we often tow cars out to Cheshunt, Potters Bar or further up the A10. If you&rsquo;re just over the border, call anyway. The price simply reflects the distance.',
    nearby => [qw(edmonton barnet tottenham)],
    faq => [
      [ 'Do you cover the M25 near Enfield?', 'Yes, including junction 25 and the stretches either side. On a motorway, wait behind the barrier and tell us which carriageway you&rsquo;re on and the nearest marker post number.' ],
      [ 'Can you tow from Enfield to a garage in Hertfordshire?', 'Yes. Just tell us the garage address when you call so the price includes the full distance.' ],
    ],
  },
  {
    slug => 'walthamstow', name => 'Walthamstow', pc => 'E17', borough => 'Waltham Forest',
    intro => 'Walthamstow&rsquo;s narrow terraced streets, low-traffic filters and the North Circular on its doorstep make local knowledge useful. We cover all of E17, 24/7.',
    roads => [
      [ 'A406 at Crooked Billet and Waterworks Corner', 'Big, fast junctions where a breakdown blocks a lane quickly.' ],
      [ 'A503 Forest Road and Blackhorse Road', 'Busy through-routes with bus lanes.' ],
      [ 'Hoe Street and Lea Bridge Road', 'Stop-start traffic that overheats tired cooling systems in summer.' ],
      [ 'Residential streets with modal filters', 'Some streets can only be reached from one end. We plan the truck&rsquo;s route.' ],
    ],
    local => 'Parts of Walthamstow are low-traffic neighbourhoods with planters and camera-enforced filters. Recovery trucks have to follow the same rules, so tell us the nearest through-road if you know it. Terraced streets with cars parked on both sides can also be tight for a flatbed. A smaller truck or a short push to a wider spot may be needed.',
    nearby => [qw(tottenham edmonton stratford)],
    faq => [
      [ 'Can a recovery truck get into my street in Walthamstow?', 'Almost always. Tell us the street and whether it&rsquo;s blocked at one end. If it&rsquo;s very narrow, we send a smaller truck or load from the nearest wider point.' ],
    ],
  },
  {
    slug => 'stratford', name => 'Stratford', pc => 'E15 &amp; E20', borough => 'Newham',
    intro => 'Stratford is a knot of fast A-roads, a huge shopping centre and the Olympic Park. We handle breakdowns on the A12 and A11 and in the Westfield car parks, all day and all night.',
    roads => [
      [ 'A12 East Cross Route and Blackwall Tunnel approach', 'High-speed and often congested. Get out and away from the car if you stop in a lane.' ],
      [ 'Bow roundabout and the A11 / A12 flyover', 'A notorious spot for breakdowns at rush hour.' ],
      [ 'Stratford gyratory and the High Street', 'Bus lanes, lights and red routes.' ],
      [ 'Westfield and Olympic Park car parks', 'Flat batteries, lost keys and cars that won&rsquo;t start after a long day out.' ],
    ],
    local => 'Westfield&rsquo;s multi-storeys are fine for a standard flatbed, but some car parks around the Olympic Park and newer apartment blocks have a 2&nbsp;m height limit. Tell us the car park name and level, and if it&rsquo;s underground, check the height sign at the entrance.',
    nearby => [qw(walthamstow tottenham)],
    faq => [
      [ 'Can you recover a car from an underground car park in Stratford?', 'Usually, yes. Tell us the height limit at the entrance. Under about 2.1&nbsp;m, the car may need to be winched or rolled to street level first, which we arrange.' ],
    ],
  },
  {
    slug => 'wood-green', name => 'Wood Green &amp; Hornsey', pc => 'N22, N8 &amp; N10', borough => 'Haringey',
    intro => 'Wood Green, Turnpike Lane, Hornsey, Crouch End and Muswell Hill: hilly streets, busy high roads and a lot of permit parking. We recover cars and vans across the area 24/7.',
    roads => [
      [ 'A105 Green Lanes', 'Long, busy and full of buses. A breakdown here causes queues fast.' ],
      [ 'Wood Green High Road and Lordship Lane', 'Shopping-street traffic and loading bays.' ],
      [ 'Alexandra Palace and Muswell Hill hills', 'Steep roads where clutches and handbrakes give up.' ],
      [ 'Hornsey and Crouch End side streets', 'Tight residential streets and controlled parking.' ],
    ],
    local => 'On steep streets around Alexandra Palace and Muswell Hill, a car that won&rsquo;t start in gear or has a failed handbrake is a real hazard. Chock a wheel with something solid if you can, turn the wheels into the kerb and don&rsquo;t try to roll-start it downhill. The operator will winch it onto the bed safely.',
    nearby => [qw(tottenham finchley edmonton)],
    faq => [
      [ 'My car won&rsquo;t hold on a hill in Muswell Hill. Is it safe to leave?', 'Turn the front wheels into the kerb, leave it in gear (or Park), and chock a wheel if you can. Then call us. A failing handbrake is a tow job, not a drive-to-the-garage job.' ],
    ],
  },
  {
    slug => 'finchley', name => 'Finchley', pc => 'N3, N12 &amp; N2', borough => 'Barnet',
    intro => 'Henlys Corner, Tally Ho and the High Road: Finchley sees a lot of North Circular traffic. Breakdown recovery and car towing across N3, N12 and N2, day and night.',
    roads => [
      [ 'A406 at Henlys Corner', 'A complex junction with the A598. Stay out of the traffic if you stop here.' ],
      [ 'A1000 High Road from East Finchley to North Finchley', 'Busy, with bus lanes and frequent parking restrictions.' ],
      [ 'A598 Regents Park Road and Finchley Road', 'Through-traffic to Golders Green and the A41.' ],
      [ 'Tally Ho Corner and North Finchley', 'Town-centre car parks and side streets.' ],
    ],
    local => 'Many Finchley cars are older, low-mileage cars that only do short local trips. They&rsquo;re classic candidates for flat batteries, sticky brakes and failed MOTs. We tow plenty of them to local garages for MOT and repair, often with a booked slot, so the car arrives at the right time.',
    nearby => [qw(barnet hendon wood-green)],
    faq => [
      [ 'Can you take my car to a garage for its MOT?', 'Yes. If it&rsquo;s not roadworthy or you&rsquo;d rather not drive it, we can tow it there for the booked time, and back again later if you need us to.' ],
    ],
  },
  {
    slug => 'barnet', name => 'Barnet', pc => 'EN4, EN5 &amp; N20', borough => 'Barnet',
    intro => 'High Barnet, New Barnet, Whetstone and out to the M25 at South Mimms: we cover the far north of London and the roads just beyond it.',
    roads => [
      [ 'A1 Barnet bypass', 'A fast dual carriageway. Get out and behind the barrier.' ],
      [ 'M25 junction 23 (South Mimms)', 'Motorway breakdowns and the services car park.' ],
      [ 'A1000 Barnet High Street and Great North Road', 'Busy town-centre traffic and hills.' ],
      [ 'Whetstone and Totteridge Lane', 'Residential roads and narrow lanes.' ],
    ],
    local => 'South Mimms services is a common place to limp into with a warning light on. If you&rsquo;ve made it there, you&rsquo;re safe. Park away from the fuel pumps and give us the car park area, and we can collect from there or take the car back into London.',
    nearby => [qw(finchley enfield hendon)],
    faq => [
      [ 'I&rsquo;ve stopped at South Mimms services with a fault. Can you come?', 'Yes. Tell us which car park you&rsquo;re in (car, lorry or fuel station) and roughly where. We&rsquo;ll collect and take it to a garage or home.' ],
    ],
  },
  {
    slug => 'hendon', name => 'Hendon &amp; Colindale', pc => 'NW4, NW9 &amp; NW7', borough => 'Barnet',
    intro => 'Where the M1 starts, the A41 runs through and Brent Cross draws traffic from all over North London. Breakdown recovery across Hendon, Colindale, Mill Hill and Brent Cross.',
    roads => [
      [ 'M1 junctions 1 to 4 (Staples Corner to Edgware)', 'Motorway rules apply: wait behind the barrier and call.' ],
      [ 'A41 Watford Way and Hendon Way', 'Fast dual carriageways with few safe stopping places.' ],
      [ 'A5 Edgware Road through Colindale', 'Busy shopping and through-traffic.' ],
      [ 'Brent Cross shopping centre and Staples Corner', 'Car-park recoveries and junction breakdowns.' ],
    ],
    local => 'Staples Corner is where the M1, A406 and A5 meet, and it&rsquo;s often under roadworks. If you break down on the approach, the exact lane and direction help the operator reach you on the right side of the junction. Use landmarks: the flyover, the retail park, or the slip road you were heading for.',
    nearby => [qw(finchley wembley willesden)],
    faq => [
      [ 'Do you cover the start of the M1?', 'Yes, from Staples Corner up through the first junctions. On the motorway, wait behind the barrier and tell us the direction and the nearest marker post.' ],
    ],
  },
  {
    slug => 'wembley', name => 'Wembley', pc => 'HA9 &amp; HA0', borough => 'Brent',
    intro => 'Wembley Park, Wembley Central, Alperton and Brent Park: stadium crowds, the North Circular and big retail car parks. We recover cars, vans and bikes across HA9 and HA0 around the clock.',
    roads => [
      [ 'A406 North Circular past Brent Park and Neasden', 'Busy six-lane road with junctions close together.' ],
      [ 'A404 Harrow Road and Wembley High Road', 'Bus lanes and town-centre traffic.' ],
      [ 'Ealing Road and Alperton', 'Shops, side streets and parking restrictions.' ],
      [ 'Wembley Park and stadium car parks', 'Event-day breakdowns and flat batteries after a long concert.' ],
    ],
    local => 'On stadium and arena event days, roads around Wembley Park close and car parks empty all at once. If you break down after an event, stay with the car and tell us your car park name and zone. Recovery may have to wait until the traffic clears, and we&rsquo;ll be straight with you about timing.',
    nearby => [qw(harrow willesden ealing hendon)],
    faq => [
      [ 'My car won&rsquo;t start after a concert at Wembley. Can you help?', 'Yes. Give us the car park name and zone. After big events, the first 30 to 60 minutes are gridlocked. We&rsquo;ll tell you honestly when the truck can reach you.' ],
    ],
  },
  {
    slug => 'harrow', name => 'Harrow', pc => 'HA1, HA2 &amp; HA3', borough => 'Harrow',
    intro => 'Harrow on the Hill, Kenton, Wealdstone, Rayners Lane and Stanmore: we recover cars and vans across the whole borough, 24/7.',
    roads => [
      [ 'A404 Pinner Road and Northolt Road', 'Busy commuter routes through South Harrow.' ],
      [ 'A409 and Station Road, Harrow town centre', 'One-way systems, bus lanes and multi-storey car parks.' ],
      [ 'Kenton Road and Kenton Lane', 'Long residential roads with a lot of traffic.' ],
      [ 'A410 Uxbridge Road and Stanmore', 'Faster roads toward the A41 and Bushey.' ],
    ],
    local => 'Harrow town centre&rsquo;s one-way loop and car parks (St Ann&rsquo;s, St George&rsquo;s and the council multi-storeys) are common call-out spots. For multi-storeys, give us the level and the nearest stairwell. Most standard cars can be driven or winched down to the exit for loading.',
    nearby => [qw(wembley ealing)],
    faq => [
      [ 'Can you collect from a multi-storey car park in Harrow?', 'Yes. Tell us the car park and level. If the car won&rsquo;t move, it can be winched or rolled to a loading point.' ],
    ],
  },
  {
    slug => 'ealing', name => 'Ealing', pc => 'W5, W13 &amp; W7', borough => 'Ealing',
    intro => 'Hanger Lane, the A40, Ealing Broadway and the Uxbridge Road: Ealing has some of West London&rsquo;s busiest junctions. Breakdown recovery and towing across W5, W13 and W7, 24 hours.',
    roads => [
      [ 'Hanger Lane gyratory (A406 / A40)', 'One of London&rsquo;s most notorious junctions. Stay out of the traffic and call.' ],
      [ 'A40 Western Avenue', 'A fast dual carriageway with few lay-bys.' ],
      [ 'A4020 Uxbridge Road through Ealing, West Ealing and Hanwell', 'Bus lanes and frequent stops.' ],
      [ 'Gunnersbury Avenue and the South Ealing side', 'North Circular traffic heading for Chiswick.' ],
    ],
    local => 'If you break down on the Hanger Lane gyratory, don&rsquo;t try to cross the lanes on foot. Stay behind the barrier or on a pavement island and call. Tell us which arm of the gyratory you were coming from and heading to, because that decides where the truck comes in.',
    nearby => [qw(acton harrow wembley)],
    faq => [
      [ 'I&rsquo;ve broken down on the Hanger Lane gyratory. What do I do?', 'Hazards on. Get out on the side away from traffic if it&rsquo;s safe, and stay off the carriageway. If you&rsquo;re in a live lane, call 999 first. Then call us with the direction you were heading.' ],
    ],
  },
  {
    slug => 'acton', name => 'Acton &amp; Park Royal', pc => 'W3 &amp; NW10', borough => 'Ealing',
    intro => 'Acton&rsquo;s high street, the A40 at East Acton and Park Royal&rsquo;s huge industrial estate keep us busy with cars and vans alike. 24/7 recovery across W3 and Park Royal.',
    roads => [
      [ 'A40 Western Avenue at Savoy Circus and East Acton', 'A busy flyover and junctions.' ],
      [ 'A406 Gunnersbury Avenue and North Acton', 'North Circular traffic all day.' ],
      [ 'Acton High Street and Horn Lane', 'Shopping-street traffic and bus lanes.' ],
      [ 'Park Royal industrial estate', 'Vans, minibuses and fleet vehicles that won&rsquo;t start.' ],
    ],
    local => 'Park Royal is one of the largest industrial areas in London, and a lot of our jobs there are vans: dead batteries on cold mornings, clutches, AdBlue faults and limp mode. Tell us the unit number and the estate road. Satnav postcodes there can cover a very wide area.',
    nearby => [qw(ealing willesden wembley)],
    faq => [
      [ 'Can you recover a van from a unit in Park Royal?', 'Yes. Give us the unit number and road, and tell us whether the van is inside a yard with a gate or a height barrier.' ],
    ],
  },
  {
    slug => 'willesden', name => 'Willesden, Harlesden &amp; Neasden', pc => 'NW10 &amp; NW2', borough => 'Brent',
    intro => 'NW10 covers Willesden, Harlesden, Neasden, Stonebridge, Kensal Green and Dollis Hill, with the North Circular cutting through it. We tow and recover across the whole postcode, 24/7.',
    roads => [
      [ 'A406 at Neasden and Staples Corner', 'Fast and busy, with junctions close together.' ],
      [ 'A404 Harrow Road through Harlesden and Kensal Green', 'Bus lanes and red routes.' ],
      [ 'A407 Craven Park Road and Willesden High Road', 'Town-centre traffic.' ],
      [ 'Neasden Lane and the Brent Park retail area', 'Shoppers&rsquo; car parks and industrial units.' ],
    ],
    local => 'Harlesden and Willesden streets are lined with parked cars and have controlled parking zones. If your car died outside your house, we can move it the same day so it doesn&rsquo;t pick up tickets, and take it to a garage or a driveway.',
    nearby => [qw(wembley acton hendon)],
    faq => [
      [ 'Do you cover all of NW10?', 'Yes: Willesden, Harlesden, Neasden, Stonebridge, Kensal Green, Dollis Hill and the Park Royal side.' ],
    ],
  },
);

my %BY = map { $_->{slug} => $_ } @AREAS;

sub area_body {
  my $a = shift;
  my $roads = join "\n", map { "  <li><strong>$_->[0]</strong>: $_->[1]</li>" } @{ $a->{roads} };
  my $nearby = join "\n", map { sprintf '  <li><a href="/towing/%s/">%s</a></li>', $_, $BY{$_}{name} } @{ $a->{nearby} };
  return <<"HTML";
<p>$a->{intro}</p>

<h2>Where we&rsquo;re called to in $a->{name}</h2>
<ul>
$roads
</ul>

<h2>Good to know locally</h2>
<p>$a->{local}</p>

<h2>What we can do in $a->{name}</h2>
<ul class="inline">
  <li><a href="/car-towing/">Car towing</a></li>
  <li><a href="/breakdown-recovery/">Breakdown recovery</a></li>
  <li><a href="/accident-recovery/">Accident recovery</a></li>
  <li><a href="/van-recovery/">Van recovery</a></li>
  <li><a href="/motorbike-recovery/">Motorbike recovery</a></li>
  <li><a href="/jumpstart/">Jump start</a></li>
  <li><a href="/mobile-tyre-fitting/">Flat tyres</a></li>
  <li><a href="/wrong-fuel/">Wrong fuel</a></li>
</ul>

<h2>Price</h2>
<p>Local tows in and around $a->{name} start {{PRICE}}. You hear the full price before the truck is sent. It depends on where the car is going, the time of night and how easy it is to load.</p>

<h2>Nearby areas</h2>
<ul class="inline">
$nearby
</ul>
HTML
}

for my $a (@AREAS) {
  my $n = $a->{name};
  (my $nplain = $n) =~ s/&amp;/&/g;
  push @main::PAGES, {
    path => "towing/$a->{slug}", kind => 'area', nav => 'towing', crumbs => [ [ 'Areas', 'towing' ] ],
    label => $n, card => $a->{pc},
    service => 'Car towing and breakdown recovery', area => "$nplain, London",
    title => "Towing $n 24/7 | Car &amp; Van Recovery $a->{pc} | {{PRICE}}",
    description => "24/7 car towing and breakdown recovery in $n ($a->{pc}). Flatbed recovery to home or garage, jump starts, accident and van recovery. Price agreed before dispatch.",
    h1 => "Towing and breakdown recovery in $n",
    lead => "Cars, vans and motorbikes recovered across $a->{pc}, 24 hours a day. Call with your location and get a price straight away.",
    body => area_body($a),
    faq => $a->{faq},
  };
}

# ---- old tyre URLs, kept so existing links to them still land on a relevant page
my @TYRE = (
  [ 'wembley', 'Wembley', 'wembley', 'On the North Circular past Brent Park, potholes on the slip roads and kerbs in the stadium car parks cause a lot of sidewall damage. If you&rsquo;re on the A406 itself, don&rsquo;t change a wheel next to live traffic. Get to a side road or wait behind the barrier.' ],
  [ 'ealing', 'Ealing', 'ealing', 'Speed humps and high kerbs on Ealing&rsquo;s residential streets cause many of the punctures we see in W5 and W13. On the A40 or around Hanger Lane, don&rsquo;t attempt a wheel change at the roadside. Wait somewhere safe for the truck.' ],
  [ 'harrow', 'Harrow', 'harrow', 'Harrow&rsquo;s hills and multi-storey car park ramps are hard on tyres and wheels, and locking wheel nuts often seize on cars that only do short local trips. Let us know if you can&rsquo;t find your locking nut key.' ],
  [ 'nw10', 'NW10', 'willesden', 'Across Willesden, Harlesden and Neasden, a flat often happens on a busy red route like the Harrow Road, where you can&rsquo;t stay long. If it&rsquo;s not safe to change the wheel there, the car can go on the truck to a tyre shop.' ],
  [ 'acton', 'Acton', 'acton', 'Park Royal&rsquo;s industrial roads are full of screws, nails and debris, so vans there pick up punctures all the time. Tell us the van&rsquo;s tyre size (it&rsquo;s on the sidewall). Commercial tyres are often not stocked on mobile vans, and a tow to a tyre depot can be quicker.' ],
);

for my $t (@TYRE) {
  my ($slug, $name, $area, $local) = @$t;
  my $an = $BY{$area}{name};
  push @main::PAGES, {
    path => "mobile-tyre-fitting-$slug", kind => 'tyre', nav => 'services',
    crumbs => [ [ 'Services', 'services' ], [ 'Flat tyre help', 'mobile-tyre-fitting' ] ],
    label => "Flat tyre $name",
    service => 'Flat tyre assistance', area => "$name, London",
    title => "Flat Tyre $name 24/7 | Mobile Tyre Help, Spare Fitted or Tow",
    description => "Flat tyre in $name with no spare or a stuck locking wheel nut? 24/7 help: spare wheel fitted, a mobile tyre fitter arranged, or the car towed to a tyre shop.",
    h1 => "Flat tyre in $name? Help 24/7.",
    lead => "Spare fitted at the roadside, a mobile tyre fitter sent to you, or a tow to a tyre shop. We pick whichever gets you moving fastest.",
    body => <<"HTML",
<h2>A flat in $name</h2>
<p>$local</p>

<h2>What to tell us when you call</h2>
<ul>
  <li>Where you are: road, postcode or car park and level</li>
  <li>Whether you have a spare wheel, a space-saver or only a repair kit</li>
  <li>Your tyre size from the sidewall, e.g. 225/45 R17 94W</li>
  <li>Whether you have the locking wheel nut key</li>
  <li>Whether the wheel itself is damaged: a bent rim, or a tyre torn off the rim</li>
</ul>

<h2>Our options</h2>
<p>With a usable spare, the operator fits it and you drive on. With no spare, we either arrange a mobile fitter with your size or tow the car to a tyre shop. At night or with an unusual size, the tow is often quicker. The price is agreed before anyone is sent. See <a href="/mobile-tyre-fitting/">flat tyre help</a> for more detail.</p>

<p>Car won&rsquo;t move at all? See <a href="/towing/$area/">towing and breakdown recovery in $an</a>.</p>
HTML
    faq => [
      [ "Can you fit a new tyre at my home in $name?", 'Often, yes, through a mobile fitter, if your size is in stock. Give us the size when you call and we&rsquo;ll check before booking.' ],
      [ 'Is it OK to drive slowly to a tyre shop on a flat?', 'No. Even a short distance on a flat ruins the tyre and can damage the wheel, unless it&rsquo;s a run-flat tyre within its stated distance.' ],
    ],
  };
}

1;
