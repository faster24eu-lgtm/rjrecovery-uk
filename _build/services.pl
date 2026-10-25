use utf8;
# Service pages. kind => 'service' puts them on /services/.
my @svc_crumb = ([ 'Services', 'services' ]);

push @main::PAGES,

{
  path => 'car-towing', kind => 'service', nav => 'services', crumbs => \@svc_crumb,
  label => 'Car towing', card => 'Flatbed tow to your home, garage or anywhere in the UK.',
  service => 'Car towing',
  title => 'Car Towing London 24/7 | Flatbed Tow {{PRICE}} | Price Agreed First',
  description => 'Car towing anywhere in Greater London, 24 hours a day. Flatbed recovery to your home, garage or dealer, with the price agreed on the phone before the truck is sent.',
  h1 => 'Car towing in London, any time of day',
  lead => 'Your car won&rsquo;t move and needs to be somewhere else: home, a garage, a dealer, a scrapyard or the other end of the country. One call and a flatbed comes to you.',
  body => <<'HTML',
<h2>How a tow works when you call us</h2>
<ol class="steps">
  <li><strong>Tell us where the car is.</strong> A postcode, road name, car park level or even &ldquo;outside the Tesco on the High Road&rdquo; is enough. If you&rsquo;re not sure, send your live location on WhatsApp.</li>
  <li><strong>Get the price.</strong> We ask what the car is, whether it rolls and steers, and where it&rsquo;s going. You hear the full price before anyone is sent. Local London tows start {{PRICE}}.</li>
  <li><strong>The truck comes to you.</strong> We pass the job to the nearest available operator in our network and text you their details. In most of London the wait is 30 to 75 minutes, depending on traffic.</li>
  <li><strong>Car loaded, delivered, done.</strong> The car goes on a flatbed, so all four wheels are off the ground. That matters for automatics, 4x4s and electric cars, which shouldn&rsquo;t be dragged on two wheels.</li>
</ol>

<h2>Common reasons Londoners book a tow</h2>
<ul>
  <li><strong>Non-starter outside the house</strong>: the car has sat for weeks, the battery is flat and a jump didn&rsquo;t fix it, or it cranks but won&rsquo;t fire.</li>
  <li><strong>Garage booking</strong>: the car has a warning light or a noise you don&rsquo;t trust, and you&rsquo;d rather not drive it across town to the garage.</li>
  <li><strong>Failed MOT</strong>: the car can&rsquo;t legally be driven home or to the repairer, so it goes on the truck.</li>
  <li><strong>Moving house or buying a car</strong>: a non-runner bought on Marketplace or at auction, or a project car that needs to come with you.</li>
  <li><strong>Scrapping</strong>: we take it to the scrapyard or authorised treatment facility you choose. Get your certificate of destruction from them.</li>
</ul>

<h2>Cars we tow</h2>
<p>Everyday hatchbacks and saloons, automatics, 4x4s and SUVs, electric and hybrid cars, low sports cars (the operator brings ramps or a low-angle bed, so mention it on the call), classics, and cars with no keys or locked steering. If the car has a flat tyre, a seized brake or no wheels at all, say so. Skates or a winch may be needed, and the price can be different.</p>

<h2>Where we can take it</h2>
<p>Anywhere. Most jobs stay inside the M25, but we also do long-distance tows from London to Birmingham, Manchester, Glasgow or a port. For long runs the price is set by distance and you hear it before you agree.</p>
HTML
  faq => [
    [ 'How much does it cost to tow a car in London?', 'A local tow inside London usually starts {{PRICE}}. The price depends on distance, time of night, how easy it is to get the car out (an underground car park takes longer than a driveway) and whether the wheels turn. You always hear the full price on the phone before anything is booked.' ],
    [ 'Do you tow automatic and electric cars?', 'Yes. Both go on a flatbed with all four wheels off the road, which is how most manufacturers say they should be moved.' ],
    [ 'Can you tow my car if I don&rsquo;t have the keys?', 'Usually, yes. Tell us before the truck is sent. A car with locked steering or the parking brake stuck on needs skates, so the operator has to know in advance.' ],
    [ 'Do I need to be with the car?', 'It&rsquo;s easiest if you are. If you can&rsquo;t be, tell us when you call. We can arrange a pick-up with the keys left somewhere safe and someone to sign at the drop-off.' ],
  ],
},

{
  path => 'breakdown-recovery', kind => 'service', nav => 'services', crumbs => \@svc_crumb,
  label => 'Breakdown recovery', card => 'Broken down on the road? Roadside fix if possible, tow if not.',
  service => 'Breakdown recovery',
  title => 'Breakdown Recovery London | 24 Hour Roadside Help, No Membership Needed',
  description => 'Broken down in London without breakdown cover? Pay-as-you-go 24 hour breakdown recovery: we fix it at the roadside where we can, or tow you home or to a garage. Price agreed first.',
  h1 => 'Broken down in London? No membership needed.',
  lead => 'No cover, cover that won&rsquo;t come out for hours, or a vehicle your policy doesn&rsquo;t include: you can still get help. Pay once, for this breakdown only.',
  body => <<'HTML',
<h2>First, get safe</h2>
<ul>
  <li><strong>On the North Circular, A40, A10 or another fast road:</strong> try to reach the hard shoulder, a lay-by or a side road. Put your hazards on. If you&rsquo;re stuck in a live lane, get everyone out on the passenger side and behind the barrier if it&rsquo;s safe. Then call 999 before you call us.</li>
  <li><strong>On a motorway:</strong> follow the same steps, and leave the car on the side away from traffic. Don&rsquo;t put a warning triangle on a motorway.</li>
  <li><strong>On a quiet street:</strong> hazards on, handbrake on, and stay with the car if you feel safe.</li>
</ul>

<h2>What happens next</h2>
<p>Tell us where you are and what the car is doing: no power at all, cranking but not starting, a warning light, smoke, a noise, or a wheel that looks wrong. The price you&rsquo;re given covers the call-out. If it can be fixed on the spot, the operator fixes it. Flat batteries, minor electrical faults, a loose hose or a puncture with a usable spare are common roadside fixes. If it can&rsquo;t, the car goes on the truck to your home or a garage you choose.</p>

<h2>Why people call us instead of their cover</h2>
<ul>
  <li>They don&rsquo;t have cover, or it ran out last month.</li>
  <li>The quoted wait was three hours or more and they have kids in the car.</li>
  <li>The policy doesn&rsquo;t cover the vehicle: a van over 3.5&nbsp;t, a modified car, a motorbike, or a car that broke down at home.</li>
  <li>The patrol came, couldn&rsquo;t fix it, and the tow to the garage would take another few hours to arrange.</li>
</ul>

<h2>Breakdowns we see most often in London</h2>
<p>Stop-start traffic is hard on cars. Clutches and dual-mass flywheels wear out, batteries never fully charge on short trips, and cooling systems overheat in jams on the A406 in summer. Short trips also clog the diesel particulate filter (DPF) on modern diesels. Add potholes that crack alloys and pinch tyres, and you have most of our weekday calls.</p>
HTML
  faq => [
    [ 'Can I get breakdown recovery without breakdown cover?', 'Yes. You pay for this call-out only, with no membership or sign-up. You hear the price before anyone is sent.' ],
    [ 'How long will I wait?', 'Across most of London it&rsquo;s typically 30 to 75 minutes, depending on where you are, the time of day and the traffic. We tell you an honest estimate on the call.' ],
    [ 'Will you try to fix it before towing?', 'Where it&rsquo;s realistic, yes: jump starts, simple electrical faults and spare-wheel changes. If it can&rsquo;t be fixed safely at the roadside, it gets towed.' ],
    [ 'I&rsquo;ve broken down on a red route. Will I get a ticket?', 'A genuine breakdown is treated differently from choosing to park, but the vehicle needs to be moved quickly. Put your hazards on and call straight away so it can be recovered.' ],
  ],
},

{
  path => 'accident-recovery', kind => 'service', nav => 'services', crumbs => \@svc_crumb,
  label => 'Accident recovery', card => 'Damaged car taken to your home, body shop or storage.',
  service => 'Accident recovery',
  title => 'Accident Recovery London | 24/7 Damaged Car Towing to Home or Body Shop',
  description => 'Accident recovery across London, 24/7. We collect damaged and non-driveable cars from the scene, police pound or garage, and take them to your home, body shop or storage.',
  h1 => 'Accident recovery in London',
  lead => 'After a collision the last thing you want is a recovery company you&rsquo;ve never heard of taking your car to a yard you can&rsquo;t find. You choose where it goes, and the price is agreed before it moves.',
  body => <<'HTML',
<h2>At the scene</h2>
<ol class="steps">
  <li><strong>Make sure everyone is safe</strong> and call 999 if anyone is hurt or the road is blocked.</li>
  <li><strong>Swap details</strong> with the other driver: name, address, phone, registration and insurer. Take photos of both cars, the road and any damage.</li>
  <li><strong>Call us</strong> once the police (if they attended) say the car can be moved. Tell us which wheels still turn and whether anything is leaking.</li>
</ol>

<h2>Where we can take your car</h2>
<ul>
  <li>Your home address, if there&rsquo;s somewhere legal to leave it.</li>
  <li>A body shop or garage of your choice, including your insurer&rsquo;s approved repairer.</li>
  <li>Secure storage while your insurer decides on the claim. Ask on the call. Storage is charged per day, so only use it if you have nowhere else.</li>
</ul>

<h2>Using your insurer</h2>
<p>Most comprehensive policies include recovery after an accident, and some insurers want to arrange it themselves. If yours does and the wait is short, use them. If they can&rsquo;t get to you for hours, or you&rsquo;re not covered, ask us for the cost. Keep the invoice, because you may be able to claim it back from the at-fault driver&rsquo;s insurer.</p>

<h2>Damaged cars are different to move</h2>
<p>Bent wheels, a smashed suspension arm or a wheel pushed back into the arch means the car won&rsquo;t roll. The operator uses skates or a winch to get it onto the flatbed. Tell us what you can see so the right truck turns up first time.</p>
HTML
  faq => [
    [ 'Can you collect a car from a police pound after an accident?', 'Yes, once it&rsquo;s released. You&rsquo;ll need the release paperwork and usually ID and proof of ownership. Tell us the pound address and we&rsquo;ll give you a price for the move.' ],
    [ 'Will my insurer pay for the recovery?', 'Often, yes, especially if you weren&rsquo;t at fault or have comprehensive cover. Keep the invoice and send it with your claim.' ],
    [ 'Can you move a car that&rsquo;s been written off?', 'Yes. We can take it to a salvage agent, a scrapyard or your home until the insurer collects it.' ],
  ],
},

{
  path => 'van-recovery', kind => 'service', nav => 'services', crumbs => \@svc_crumb,
  label => 'Van recovery', card => 'Transit, Sprinter, Luton and loaded vans up to 3.5 tonnes.',
  service => 'Van recovery',
  title => 'Van Recovery London 24/7 | Transit, Sprinter & Luton Van Towing',
  description => 'Broken-down van in London? 24/7 recovery for Transit, Sprinter, Vivaro, Crafter and Luton vans up to 3.5t, loaded or empty. Price agreed before dispatch.',
  h1 => 'Van recovery across London',
  lead => 'A van off the road is a day&rsquo;s work lost. We send a truck rated for your van&rsquo;s size and weight, loaded or empty, to the street, site or depot it broke down at.',
  body => <<'HTML',
<h2>Vans we recover</h2>
<ul>
  <li>Small vans: Berlingo, Caddy, Partner, Transit Connect, Kangoo</li>
  <li>Medium and large panel vans: Transit Custom and Transit, Sprinter, Crafter, Vivaro, Trafic, Ducato, Boxer, Master</li>
  <li>Luton and box vans, dropsides and tippers up to 3.5&nbsp;t</li>
  <li>Minibuses and campervans: tell us the length and height</li>
</ul>

<h2>What we need to know</h2>
<p>The model, the wheelbase (short, medium or long), the roof height, and roughly how much is in the back. A long-wheelbase Sprinter loaded with tools needs a bigger truck than an empty Caddy. Getting it right on the phone means the first truck can take it.</p>

<h2>Typical van problems in London</h2>
<p>Most London vans are diesels doing short trips, so DPF and EGR faults and AdBlue warnings are common. A van in limp mode, or one that has gone into &ldquo;no start&rdquo; after the AdBlue countdown, needs to go to a garage. Clutches wear quickly on multi-drop work, and starter motors and alternators fail. If it&rsquo;s a battery, the operator tries a jump first.</p>

<h2>Recovering from awkward places</h2>
<p>Building sites, loading bays, underground car parks with a 2.1&nbsp;m height limit, narrow mews: tell us where the van is and we&rsquo;ll send something that fits. For a van stuck in mud on a site, see <a href="/stuck-vehicle-winching/">winching out stuck vehicles</a>.</p>
HTML
  faq => [
    [ 'Can you recover a loaded van?', 'Yes, up to the truck&rsquo;s rated payload. Tell us roughly what&rsquo;s in the back. Very heavy loads may need to come out first.' ],
    [ 'Do you recover vans over 3.5 tonnes?', 'Light commercials up to 3.5&nbsp;t are our everyday work. For anything heavier, call us with the vehicle details and we&rsquo;ll check whether a heavy recovery truck is available near you.' ],
    [ 'My van is in limp mode. Can I drive it to the garage?', 'Limp mode protects the engine, but driving far on it can make things worse, and it&rsquo;s slow and risky on fast roads. If the garage isn&rsquo;t round the corner, have it towed.' ],
  ],
},

{
  path => 'motorbike-recovery', kind => 'service', nav => 'services', crumbs => \@svc_crumb,
  label => 'Motorbike recovery', card => 'Bikes and scooters strapped down properly, no scratches.',
  service => 'Motorcycle recovery',
  title => 'Motorbike Recovery London 24/7 | Bike & Scooter Transport',
  description => 'Motorbike and scooter recovery across London, 24 hours. Bikes strapped down with soft ties, on a bike-ready truck. Breakdowns, accidents, non-runners and garage moves.',
  h1 => 'Motorbike and scooter recovery in London',
  lead => 'Bikes need different handling to cars. We send an operator with wheel chocks and soft straps, so your bike arrives the way it left.',
  body => <<'HTML',
<h2>Bikes we move</h2>
<p>Delivery scooters and 125s, commuter bikes, sports bikes, big tourers and adventure bikes, cruisers, and electric motorbikes. If your bike has been dropped and the bars are bent or the front wheel won&rsquo;t turn, tell us. It can still be moved.</p>

<h2>For delivery riders</h2>
<p>If your scooter is your income, every hour matters. Common jobs are a seized engine, a dead battery, a puncture or a broken chain. We take the bike to your home, your dealer or a bike shop that can see it the same day. A courier or rental company might cover the cost, so ask for an invoice.</p>

<h2>Theft recoveries</h2>
<p>If police have found your stolen bike, you&rsquo;ll often have to collect it fast, and it often can&rsquo;t be ridden: the ignition is damaged and the steering lock is broken. We can collect it and take it home or to a garage. Have the police reference and your ID ready.</p>
HTML
  faq => [
    [ 'How will my motorbike be secured?', 'On a flatbed or bike trailer, with a wheel chock at the front and soft loops around the bars or frame, so the ratchet straps don&rsquo;t touch paint or plastics.' ],
    [ 'Can you recover a bike that&rsquo;s been dropped or damaged?', 'Yes. Bent bars, a locked steering head or a flat front tyre can all be handled. Say what you can see when you call.' ],
  ],
},

{
  path => 'jumpstart', kind => 'service', nav => 'services', crumbs => \@svc_crumb,
  label => 'Jump start', card => 'Flat battery? Roadside jump start, or a tow if it won&rsquo;t take.',
  service => 'Jump start',
  title => 'Jump Start London 24/7 | Flat Battery Help at Home or Roadside',
  description => 'Flat battery in London? 24/7 jump start at your home, work or the roadside for cars, vans and bikes. If the battery won&rsquo;t hold a charge, we can tow you to a garage.',
  h1 => 'Flat battery? Jump start, day or night',
  lead => 'Clicking, dashboard lights flickering, or nothing at all when you turn the key: it&rsquo;s probably the battery. An operator with a professional booster pack can usually have you running in minutes.',
  body => <<'HTML',
<h2>Signs it&rsquo;s the battery</h2>
<ul>
  <li>A rapid clicking when you turn the key or press start</li>
  <li>The dashboard comes on but dims or goes out when you try to start</li>
  <li>The engine turns over slowly, then gives up</li>
  <li>Nothing at all, and the central locking didn&rsquo;t work either</li>
</ul>
<p>If the engine cranks at normal speed but won&rsquo;t start, the battery is probably fine and the fault is elsewhere: fuel, ignition or a sensor. A jump won&rsquo;t help, so tell us and we&rsquo;ll plan for a tow.</p>

<h2>After the jump</h2>
<p>Drive for at least 30 minutes, ideally not in stop-start traffic, to put some charge back. If it&rsquo;s flat again the next morning, the battery is probably at the end of its life. A three-to-five-year-old battery that has gone flat twice is due for replacement. If something is draining it overnight, a garage will need to find it.</p>

<h2>Modern cars need care</h2>
<p>Start-stop cars with AGM or EFB batteries, hybrids and cars with lots of electronics can be damaged by careless jump starts, especially from another car&rsquo;s leads. Our operators use proper booster packs and the car&rsquo;s own jump points.</p>
HTML
  faq => [
    [ 'Can you jump start an automatic or hybrid?', 'Yes. Automatics jump like any other car, using the battery or jump points. Hybrids usually have a 12&nbsp;V battery that starts the car&rsquo;s systems, and that&rsquo;s the one that gets jumped. The operator will know where it is.' ],
    [ 'What if the jump start doesn&rsquo;t work?', 'Then it&rsquo;s probably not just the battery. We can tow the car to a garage or home on the same call. Ask for the combined price up front.' ],
    [ 'Do you fit new batteries?', 'Some operators in our network carry common batteries. Ask when you call and give us the make, model and year.' ],
  ],
},

{
  path => 'wrong-fuel', kind => 'service', nav => 'services', crumbs => \@svc_crumb,
  label => 'Wrong fuel', card => 'Petrol in a diesel or diesel in a petrol? Don&rsquo;t start it.',
  service => 'Wrong fuel recovery',
  title => 'Wrong Fuel London | Petrol in Diesel? Don&rsquo;t Start It, Call Us 24/7',
  description => 'Put petrol in a diesel or diesel in a petrol car in London? Don&rsquo;t start the engine. We tow the car from the forecourt to a garage that can drain the tank, 24/7.',
  h1 => 'Wrong fuel? Don&rsquo;t turn the key.',
  lead => 'Petrol in a diesel is the expensive one. The longer it circulates, the more damage it does to the pump and injectors. If you haven&rsquo;t started the car, you&rsquo;ve done the most important thing.',
  body => <<'HTML',
<h2>Right now</h2>
<ol class="steps">
  <li><strong>Don&rsquo;t start the engine,</strong> and don&rsquo;t even switch the ignition on. On many cars that primes the fuel pump.</li>
  <li><strong>Tell the forecourt staff.</strong> They&rsquo;ll help you push the car to a safe spot, put it in neutral and take the handbrake off.</li>
  <li><strong>Call us</strong> with the filling station name. We&rsquo;ll get the car off the forecourt and to a garage that can drain and flush the tank.</li>
</ol>

<h2>If you&rsquo;ve already driven it</h2>
<p>Pull over as soon as it&rsquo;s safe, switch off and don&rsquo;t restart. Typical signs of petrol in a diesel are knocking, white smoke, losing power and then stalling. With diesel in a petrol car you get misfiring and smoke, and it&rsquo;s usually less damaging. Either way, the car now needs to be towed, not driven.</p>

<h2>Drain at the roadside or at a garage?</h2>
<p>Mobile fuel-drain vans exist and can be quicker if you caught it before starting. If you&rsquo;ve driven on the wrong fuel, a garage should check the fuel system. Tell us exactly what happened and we&rsquo;ll suggest the cheaper sensible option.</p>
HTML
  faq => [
    [ 'I put a little petrol in my diesel. Can I just top up with diesel?', 'It isn&rsquo;t worth the risk on a modern common-rail diesel. Even a small amount of petrol reduces lubrication in the high-pressure pump. Have it drained.' ],
    [ 'Does insurance cover wrong fuel?', 'Some policies and breakdown covers include misfuelling, often with an excess. Check your documents and keep our invoice for a claim.' ],
  ],
},

{
  path => 'mobile-tyre-fitting', kind => 'service', nav => 'services', crumbs => \@svc_crumb,
  label => 'Flat tyre help', card => 'Puncture, no spare, or locking wheel nut missing.',
  service => 'Flat tyre assistance',
  title => 'Flat Tyre London 24/7 | Mobile Tyre Help or Tow to a Tyre Shop',
  description => 'Flat tyre in London with no spare, a seized wheel or no locking wheel nut key? 24/7 help: we change to your spare, arrange a mobile tyre fitter, or tow you to a tyre shop.',
  h1 => 'Flat tyre in London? We&rsquo;ll get you rolling.',
  lead => 'A flat tyre is simple until it isn&rsquo;t: no spare, only a foam kit, a locking wheel nut with no key, or a tyre torn by a pothole. Tell us what you have and we&rsquo;ll send the right help.',
  body => <<'HTML',
<h2>Three ways we sort a flat</h2>
<ul class="options">
  <li><strong>Spare wheel fitted at the roadside.</strong> If you have a spare and the bolts come off, the operator changes it and checks the pressure. Space-saver spares are limited to 50&nbsp;mph, so get the proper tyre replaced soon.</li>
  <li><strong>Mobile tyre fitter.</strong> If there&rsquo;s no spare, a mobile fitter with a van and a stock of common sizes can fit a new tyre where you are. Have your tyre size ready. It&rsquo;s on the sidewall, e.g. 205/55 R16 91V.</li>
  <li><strong>Tow to a tyre shop.</strong> At 2&nbsp;am, or with an unusual size, run-flats or a damaged wheel, a tow to a tyre shop that opens in the morning is often the cheaper and quicker answer.</li>
</ul>

<h2>Locking wheel nut problems</h2>
<p>A lost key, a key that has rounded off, or a nut that has seized: our operators and fitters can remove most locking nuts with dedicated tools. Mention it on the call.</p>

<h2>Is it safe to drive on it?</h2>
<p>No. Driving even a short distance on a flat destroys the tyre and can damage the wheel. Run-flat tyres are the exception: typically up to 50 miles at 50&nbsp;mph, but check your handbook.</p>

<h2>London potholes and kerbs</h2>
<p>Most of the punctures we see in London are sidewall cuts and bulges from potholes, kerbs and speed humps. These can&rsquo;t be repaired and the tyre needs replacing. A nail in the middle of the tread can often be plugged.</p>

<h2>Flat tyre help by area</h2>
<ul class="inline">
  <li><a href="/mobile-tyre-fitting-wembley/">Wembley</a></li>
  <li><a href="/mobile-tyre-fitting-ealing/">Ealing</a></li>
  <li><a href="/mobile-tyre-fitting-harrow/">Harrow</a></li>
  <li><a href="/mobile-tyre-fitting-nw10/">NW10</a></li>
  <li><a href="/mobile-tyre-fitting-acton/">Acton</a></li>
</ul>
HTML
  faq => [
    [ 'I don&rsquo;t have a spare wheel, only a tyre repair kit. What now?', 'Kits only work for small punctures in the tread. For a sidewall cut or a big hole, you need a new tyre fitted where you are, or a tow to a tyre shop. Call us and we&rsquo;ll arrange whichever is quicker.' ],
    [ 'Can you fit a tyre in the middle of the night?', 'It depends on whether a mobile fitter with your size is available. If not, the car can be towed to a tyre shop for the morning.' ],
  ],
},

{
  path => 'stuck-vehicle-winching', kind => 'service', nav => 'services', crumbs => \@svc_crumb,
  label => 'Stuck vehicle winching', card => 'In a ditch, mud, kerb or snow? Winched out and checked.',
  service => 'Vehicle winching',
  title => 'Stuck Car or Van Winching London | Mud, Ditch, Kerb & Snow Recovery',
  description => 'Car or van stuck in mud, a ditch, grass verge, snow or beached on a kerb in or around London? We winch it out and check it, then tow it if needed. 24/7.',
  h1 => 'Stuck in mud, a ditch or on a kerb?',
  lead => 'Spinning the wheels usually digs you deeper. Stop, and let a recovery truck with a winch pull it out in a straight, controlled line.',
  body => <<'HTML',
<h2>Typical stuck-vehicle jobs</h2>
<ul>
  <li>Wheels sunk in a grass verge or a muddy field after parking at an event</li>
  <li>A van stuck on a building site after rain</li>
  <li>A car beached on a high kerb or a bollard, with the wheels off the ground</li>
  <li>Slid into a ditch on a lane at the edge of London, on the Essex or Herts side</li>
  <li>Stuck on ice or snow on a steep residential hill</li>
</ul>

<h2>What the operator does</h2>
<p>They find a safe anchor, rig the winch to a proper recovery point on your car (not the bumper), and pull it out slowly. Then they check the tyres, the underside and the steering. If anything is damaged or leaking, the car goes on the bed instead of being driven away.</p>

<h2>Help us find you</h2>
<p>Fields and sites rarely have a postcode that takes you to the right spot. Send your live location on WhatsApp, or a what3words address, and tell us which way in is best for a truck.</p>
HTML
  faq => [
    [ 'Will winching damage my car?', 'Not when it&rsquo;s attached to a proper towing eye or recovery point and pulled slowly. Damage usually comes from pulling on bumpers or suspension parts, or from spinning the wheels beforehand.' ],
  ],
},

;
1;
