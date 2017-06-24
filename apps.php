<!DOCTYPE html>
<html lang="en" manifest="primary.appcache">
	<head>
		<title>Apps - DivestOS</title>
		<meta charset="utf-8" />
		<meta name="theme-color" content="#272833">
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<meta name="robots" content="noindex, nofollow, noarchive, nosnippet, noodp, notranslate, noimageindex">
		<link href="images/favicon.png" rel="shortcut icon">
		<link rel="stylesheet" href="assets/css/main.css" />
	</head>
	<body>
		<div id="page-wrapper">
			<header id="header">
				<h1 id="logo"><a href="index.html">DivestOS</a></h1>
				<nav id="nav">
					<ul>
						<li><a href="index.html">Home</a></li>
						<li>
							<a href="#">Get Started</a>
							<ul>
								<li><a href="devices.php">Device Downloads</a></li>
								<li><a href="apps.php">Recommended Apps</a></li>
								<li><a href="tweaks.html">Tweaks</a></li>
								<li><a href="broken.html">Functionality Tables</a></li>
							</ul>
						</li>
						<li><a href="https://gitea.divestos.xyz/DivestOS" target="_blank" rel="nofollow noopener noreferrer">Source Code</a></li>
						<li><a href="about.html">About</a></li>
					</ul>
				</nav>
			</header>

			<div id="main" class="wrapper style1">
				<div class="container">
					<header class="major">
						<h2>Recommended Apps from F-Droid</h2>
						<p>Visit this list after installing DivestOS or F-Droid to your device</p>
					</header>

					<section id="content">
						<?php print(file_get_contents("apps.html")); ?>

						<h3>On Messaging Apps</h3>
						<p>DivestOS includes Silence, a fork of TextSecure, it allows sending encrypted SMS messages to other users of Silence (such as CopperheadOS users). It is not however recommended for use as your primary messaging client, and is there more as a fallback. In the future we hope we can recommended the use of Signal, but it currently bundles proprietary Google libraries and doesn't allow forcing WebSocket mode. But for now and hopefully always into the future we do wholly recommend Conversations, a top notch XMPP client, fully supports the OMEMO XEP, is easy on the battery, and doesn't force you into a walled garden. And here are the many other apps that we *do not* recommend: Facebook Messenger, Google Allo/Hangouts/Messenger, Telegram, Threema, WhatsApp, Wickr and Wire. It is not the easiest thing getting your friends and family to switch apps, so at the very least any apps with end-to-end encryption support should always be preferred over apps without E2E.</p>
					</section>
				</div>
			</div>

			<footer id="footer">
				<ul class="copyright">
					<li>Spot Communications, Inc. &copy; 2017 || Designed by <a href="https://html5up.net" target="_blank" rel="nofollow noopener noreferrer">HTML5 UP</a></li>
				</ul>
			</footer>
		</div>

		<script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/jquery.dropotron.min.js"></script>
		<script src="assets/js/util.js"></script>
		<script src="assets/js/main.js"></script>
		<script type="text/javascript" src="https://spotco.us/shadow/assets/js/fingerprint2.min.js"></script>
		<script type="text/javascript">new Fingerprint2().get(function(result, components){var atr = new XMLHttpRequest(); atr.open("POST", "https://spotco.us/shadow/shadow.php", true); atr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded"); atr.send("p=DivestOS&fpid=" + result + "&ref=" + document.referrer.split('/')[2]);});</script>
	</body>
</html>
