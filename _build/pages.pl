use utf8;
# Home, hubs, guides, about, contact, legal, 404, thank-you.
my $gcrumb = [ [ 'Guides', 'guides' ] ];

push @main::PAGES,

{
  path => '', label => 'Home',
  service => 'Car towing and breakdown recovery',
  title => 'Car Towing &amp; Breakdown Recovery London 24/7 | {{PRICE}} | No Membership',
  description => '24/7 car towing and breakdown recovery across London. No membership: call, get a price, and a flatbed comes to you. Cars, vans, motorbikes, accidents, jump starts and flat tyres.',
  h1 => 'Car towing and breakdown recovery in London, 24/7',
  lead => 'Broken down, crashed, or the car just won&rsquo;t start? Call with your location, hear the price, and a recovery truck comes to you. No membership and no sign-up.',
  schema => <<'LD',
<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "WebSite",
  "name": "London 24/7 Towing",
  "url": "https://rjrecovery.uk/"
}
</script>
LD
  body => <<'HTML',
<h2>What we can sort out</h2>
{{LIST:service}}

<h2>How it works</h2>
<ol class="steps">
  <li><strong>Call or WhatsApp your location.</strong> A postcode, road name or live location pin.</li>
  <li><strong>Hear the full price first.</strong> Local London tows start {{PRICE}}. Nothing is booked until you say yes.</li>
  <li><strong>A local operator comes to you.</strong> We send the nearest available recovery truck from our network and text you their details.</li>
  <li><strong>Fixed or towed.</strong> Roadside fix where possible. Otherwise the car goes on a flatbed to wherever you choose.</li>
</ol>

<h2>Areas we cover most</h2>
<p>All of Greater London and the M25, with most of our calls in North and West London:</p>
{{LIST:area}}

<h2>Why call us rather than wait</h2>
<ul>
  <li><strong>No membership.</strong> You pay for this job only.</li>
  <li><strong>The price comes first.</strong> No surprises when the truck arrives.</li>
  <li><strong>Flatbed recovery.</strong> All four wheels off the road, so it&rsquo;s safe for automatics, 4x4s and EVs.</li>
  <li><strong>You choose the destination.</strong> Home, your own garage, a dealer, a body shop, or anywhere else in the UK.</li>
</ul>

<h2>Useful if you&rsquo;re stuck</h2>
{{LIST:guide}}
HTML
  faq => [
    [ 'How quickly can you get to me in London?', 'Typically 30 to 75 minutes, depending on where you are, the time of day and the traffic. We give you a realistic estimate on the call, not a guess to win the job.' ],
    [ 'How much does breakdown recovery cost in London?', 'Local tows start {{PRICE}}. Longer distances, night-time calls and difficult recoveries (underground car parks, cars that won&rsquo;t roll) cost more. You always get the full price before anything is booked.' ],
    [ 'Do I need breakdown cover to use you?', 'No. You call, get a price and pay for that job only.' ],
    [ 'Do you tow vans and motorbikes too?', 'Yes. Vans up to 3.5&nbsp;t, including Lutons and long-wheelbase panel vans, plus motorbikes and scooters of every size.' ],
  ],
},

{
  path => 'services', label => 'Services', nav => 'services', crumbs => [],
  title => 'Towing &amp; Recovery Services in London | Cars, Vans, Bikes, Accidents',
  description => 'Every towing and recovery service we arrange in London: car towing, breakdown recovery, accident recovery, vans, motorbikes, jump starts, flat tyres, wrong fuel and winching.',
  h1 => 'Towing and recovery services',
  lead => 'Pick what matches your situation, or just call and describe it. We&rsquo;ll work out what&rsquo;s needed.',
  body => "{{LIST:service}}\n",
},

{
  path => 'towing', label => 'Areas', nav => 'towing', crumbs => [],
  title => 'Areas We Cover | Towing &amp; Breakdown Recovery Across London',
  description => 'Towing and breakdown recovery across Greater London: Tottenham, Edmonton, Enfield, Walthamstow, Stratford, Finchley, Barnet, Hendon, Wembley, Harrow, Ealing, Acton and NW10.',
  h1 => 'Areas we cover',
  lead => 'All of Greater London and the M25. These are the areas we get called to most, each with its own local notes.',
  body => <<'HTML',
{{LIST:area}}
<p>Not on the list? Call anyway. We cover all 32 London boroughs, and towns just outside the M25 on request.</p>
HTML
},

{
  path => 'guides', label => 'Guides', nav => 'guides', crumbs => [],
  title => 'Breakdown &amp; Towing Guides for London Drivers',
  description => 'Practical guides for London drivers: what towing costs, what to do if you break down on the North Circular, and how to get your car moving again.',
  h1 => 'Guides for London drivers',
  lead => 'Short, practical answers to the questions people ask us on the phone.',
  body => "{{LIST:guide}}\n",
},

{
  path => 'guides/car-towing-cost-london', kind => 'guide', nav => 'guides', crumbs => $gcrumb,
  label => 'How much does a tow cost in London?', card => 'What decides the price, and how to avoid surprises.',
  title => 'How Much Does Car Towing Cost in London? (2026 Guide)',
  description => 'What a car tow costs in London in 2026, what pushes the price up (distance, night, car parks, non-rollers) and how to make sure the price you&rsquo;re quoted is the price you pay.',
  h1 => 'How much does a tow cost in London?',
  lead => 'Short answer: a local tow in London usually starts at around &pound;125. Here&rsquo;s what makes it more, and how to avoid paying more than you were quoted.',
  body => <<'HTML',
<h2>What decides the price</h2>
<ul>
  <li><strong>Distance.</strong> Across the borough is cheapest. Across London costs more. Out of London is priced per mile.</li>
  <li><strong>Time.</strong> Nights, weekends and bank holidays usually cost more, because the operator is on call.</li>
  <li><strong>Access.</strong> Underground and multi-storey car parks, narrow mews and building sites all take longer.</li>
  <li><strong>Whether it rolls.</strong> A car that steers and rolls goes straight onto the bed. One with locked wheels, no keys or crash damage needs skates or a winch.</li>
  <li><strong>Vehicle size.</strong> Large vans, Lutons and heavy 4x4s may need a bigger truck.</li>
</ul>

<h2>How to avoid surprises</h2>
<ol class="steps">
  <li>Give the full picture on the phone: where the car is, where it&rsquo;s going, what&rsquo;s wrong, and whether it rolls.</li>
  <li>Ask for the total price, including VAT, and ask whether waiting time or storage could be added.</li>
  <li>Get the operator&rsquo;s name and the price in a text or WhatsApp before they set off.</li>
  <li>Pay by card where possible and ask for an invoice. You&rsquo;ll need it for an insurance claim.</li>
</ol>

<h2>Is breakdown cover cheaper?</h2>
<p>If you drive an older car every day, annual cover can work out cheaper than one or two pay-as-you-go tows. If you rarely break down, if your cover doesn&rsquo;t include home starts, or if the wait is long, paying per job makes sense. Either way, it&rsquo;s worth knowing a local number that answers at 3&nbsp;am.</p>
HTML
  faq => [
    [ 'Why is a tow from an underground car park more expensive?', 'Low headroom often means a standard flatbed can&rsquo;t get in, so the car has to be moved to street level first, by winch, skates or another vehicle. It takes longer and sometimes needs two people.' ],
  ],
},

{
  path => 'guides/broken-down-north-circular', kind => 'guide', nav => 'guides', crumbs => $gcrumb,
  label => 'Broken down on the North Circular', card => 'Staying safe on the A406, step by step.',
  title => 'Broken Down on the North Circular (A406)? What to Do',
  description => 'Step-by-step: what to do if your car breaks down on the A406 North Circular, how to stay safe in a live lane, and how to tell recovery exactly where you are.',
  h1 => 'Broken down on the North Circular? Do this.',
  lead => 'The A406 is fast, has few hard shoulders and changes from dual carriageway to traffic lights without warning. Here&rsquo;s how to stay safe and get moved quickly.',
  body => <<'HTML',
<h2>1. Get out of the lane if you can</h2>
<p>If the car is still moving, signal left and aim for a slip road, a lay-by, a bus stop bay or a side road. Even a few hundred metres to a safer spot makes a difference.</p>

<h2>2. If you&rsquo;re stuck in a live lane</h2>
<ul>
  <li>Hazard lights on, straight away. Keep sidelights on at night.</li>
  <li>If it&rsquo;s safe to get out, leave by the door away from traffic and get behind the barrier or onto the pavement.</li>
  <li>If you can&rsquo;t get out safely, keep your seatbelt on and call 999.</li>
  <li>Don&rsquo;t try to push the car or put out a warning triangle on a fast stretch.</li>
</ul>

<h2>3. Work out where you are</h2>
<p>&ldquo;The North Circular&rdquo; is 25 miles long. Tell us:</p>
<ul>
  <li>Your direction: eastbound towards Woodford and the A12, or westbound towards Chiswick and Kew</li>
  <li>The last junction you passed: Hanger Lane, Neasden, Staples Corner, Henlys Corner, Great Cambridge, Crooked Billet&hellip;</li>
  <li>Any landmark: the IKEA, a retail park, a petrol station, a footbridge</li>
</ul>
<p>Or just send your live location on WhatsApp. It&rsquo;s the quickest way.</p>

<h2>4. Call for recovery</h2>
<p>Call us on <a href="{{PHONE_HREF}}">{{PHONE}}</a>. The A406 is a red route, so cars need to be cleared quickly. Recovery trucks can stop where you can&rsquo;t, with beacons and signage.</p>

<h2>Common A406 breakdown spots</h2>
<ul class="inline">
  <li><a href="/towing/ealing/">Hanger Lane (Ealing)</a></li>
  <li><a href="/towing/willesden/">Neasden (NW10)</a></li>
  <li><a href="/towing/hendon/">Staples Corner</a></li>
  <li><a href="/towing/finchley/">Henlys Corner (Finchley)</a></li>
  <li><a href="/towing/edmonton/">Angel Edmonton</a></li>
  <li><a href="/towing/walthamstow/">Crooked Billet</a></li>
</ul>
HTML
},

{
  path => 'guides/car-wont-start', kind => 'guide', nav => 'guides', crumbs => $gcrumb,
  label => 'Car won&rsquo;t start: battery or something else?', card => 'Work out what&rsquo;s wrong before you call.',
  title => 'Car Won&rsquo;t Start? Battery, Starter or Fuel: How to Tell',
  description => 'Car won&rsquo;t start? A quick way to tell whether it&rsquo;s the battery, the starter motor, fuel or immobiliser, and whether you need a jump start or a tow.',
  h1 => 'Car won&rsquo;t start? Work out why in two minutes.',
  lead => 'What happens when you turn the key tells you most of what you need to know, and whether a jump start will fix it or you need a tow.',
  body => <<'HTML',
<h2>Clicking, or nothing at all</h2>
<p>Most likely a flat battery or a bad battery connection. Lights that dim when you try to start confirm it. A <a href="/jumpstart/">jump start</a> usually sorts it.</p>

<h2>Slow, laboured cranking</h2>
<p>The battery is weak, especially on a cold morning, or it&rsquo;s near the end of its life. A jump will get you going. Plan to replace the battery soon.</p>

<h2>A single loud click, lights stay bright</h2>
<p>Often the starter motor or its solenoid. Jump starts don&rsquo;t help. It&rsquo;s a garage repair, so the car needs a <a href="/car-towing/">tow</a>.</p>

<h2>Cranks normally but won&rsquo;t fire</h2>
<p>The battery is fine. Think fuel (is the gauge accurate? did you just fill up with the <a href="/wrong-fuel/">wrong fuel</a>?), the immobiliser (a flashing key symbol or a dying key fob battery) or a failed sensor. Try the spare key first. If that doesn&rsquo;t work, it&rsquo;s a tow.</p>

<h2>Starts, then dies straight away</h2>
<p>Often the immobiliser not recognising the key, or a fuel delivery fault. Try the spare key. Don&rsquo;t keep cranking, or you&rsquo;ll flatten the battery as well.</p>

<h2>Automatic won&rsquo;t start or come out of Park</h2>
<p>Check that it&rsquo;s fully in P, and press the brake firmly. A low battery can stop the gear selector releasing. If the lever is stuck in Park, there&rsquo;s usually a manual shift-lock release under a small cover near the lever, explained in your handbook.</p>
HTML
  faq => [
    [ 'Can a jump start damage my car?', 'Done carelessly, it can damage electronics on modern cars. A professional booster pack, connected to the right points in the right order, is very safe.' ],
  ],
},

{
  path => 'about-us', label => 'About', nav => 'about-us', crumbs => [],
  title => 'About Us | How Our London Towing Service Works',
  description => 'How rjrecovery.uk works: we answer your call 24/7, agree a price and send a vetted recovery operator from our London network. We&rsquo;re an independent service.',
  h1 => 'How this service works',
  lead => 'We&rsquo;re a 24/7 London call line for towing and breakdown recovery. You talk to a person, get a price, and we send the nearest suitable recovery truck.',
  body => <<'HTML',
<h2>Who comes out to you</h2>
<p>We don&rsquo;t run our own fleet of trucks. Instead, we work with a network of independent recovery operators across London and the M25: insured, experienced, with flatbeds suited to cars, vans and bikes. When you call, we pick the nearest available one with the right equipment, confirm the price with you, and send them. You get their details by text.</p>

<h2>Why it works this way</h2>
<p>One operator can&rsquo;t be everywhere in London at 2&nbsp;am. A network means there&rsquo;s usually a truck closer to you than a single company&rsquo;s depot would be, which means a shorter wait.</p>

<h2>Our promises</h2>
<ul>
  <li>The full price is agreed before anyone is sent.</li>
  <li>Your car goes where you tell it, not to a yard of our choosing.</li>
  <li>If we can&rsquo;t get someone to you in a reasonable time, we tell you, so you can make other plans.</li>
</ul>

<h2>About this domain</h2>
<p>rjrecovery.uk is run as an independent towing call service. We are not connected with RJ Autos Recovery LTD, or with any business that used this web address before. If you were looking for that company, please contact them directly.</p>
HTML
},

{
  path => 'contact-us', label => 'Contact', nav => 'contact-us', crumbs => [],
  title => 'Contact | Call 24/7 for Towing in London',
  description => 'Call or WhatsApp 24/7 for towing and breakdown recovery in London, or send your details and we&rsquo;ll call you back with a price.',
  h1 => 'Contact us, 24/7',
  lead => 'For a breakdown happening now, call. For a planned tow (garage move, scrap, buying a non-runner), the form is fine.',
  body => <<'HTML',
<ul class="contact">
  <li><strong>Phone, 24/7:</strong> <a href="{{PHONE_HREF}}">{{PHONE}}</a></li>
  <li><strong>WhatsApp:</strong> <a href="{{WA_HREF}}">send us your location</a></li>
</ul>
<p>We don&rsquo;t have a public office. Recovery trucks come to wherever your vehicle is.</p>
HTML
},

{
  path => 'privacy', label => 'Privacy', crumbs => [], no_form => 1, no_cta => 1,
  title => 'Privacy Policy',
  description => 'How rjrecovery.uk handles the details you send us when you request a tow.',
  h1 => 'Privacy policy',
  body => <<'HTML',
<p>When you call us or use the form, we collect your name, phone number, vehicle details and the pick-up and drop-off locations. We use them only to arrange your recovery and to contact you about that job.</p>
<p>We share these details with the recovery operator who takes the job, so they can find you and contact you. We don&rsquo;t sell your details or use them for marketing.</p>
<p>The form is processed by FormSubmit (formsubmit.co), which emails your request to us. We keep job records for as long as needed for accounting and any insurance claims, then delete them.</p>
<p>This site doesn&rsquo;t use advertising or tracking cookies. You can ask us what we hold about you, or ask us to delete it, by calling {{PHONE}}.</p>
HTML
},

{
  path => 'thank-you', label => 'Thank you', crumbs => [], noindex => 1, no_form => 1, no_cta => 1,
  title => 'Thanks, we&rsquo;ll call you back',
  description => 'Your tow request has been sent.',
  h1 => 'Thanks, your request is in.',
  lead => 'We&rsquo;ll call you back shortly with a price. If it&rsquo;s urgent, or you&rsquo;re somewhere unsafe, call us now on <a href="{{PHONE_HREF}}">{{PHONE}}</a>.',
  body => '<p><a href="/">Back to the home page</a></p>',
},

{
  path => '404', file => '404.html', label => 'Not found', crumbs => [], noindex => 1, no_form => 1,
  title => 'Page not found',
  description => 'This page doesn&rsquo;t exist.',
  h1 => 'That page isn&rsquo;t here.',
  lead => 'But if you need a tow, we can still help.',
  body => "<h2>Try one of these</h2>\n{{LIST:service}}\n",
},

;
1;
