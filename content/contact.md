---
title: İletişim
description: Bizimle iletişime geçin
layout: nosidebar
---

<style>
	.hero-section-contact {
		margin-left: calc(-50vw + 50%);
		margin-right: calc(-50vw + 50%);
		width: 100vw;
		padding: 6rem 5vw 4rem 5vw;
		min-height: 100vh;
		display: flex;
		flex-direction: column;
		justify-content: center;
	}
	.hero-section-contact { scroll-margin-top: var(--navbar-height, 72px); }
	.hero-section-contact .hero-label { font-size: 0.75rem; font-weight: 600; letter-spacing: 0.15em; text-transform: uppercase; color: #dc2626; margin-bottom: 0.75rem; }
	.hero-section-contact .hero-title { font-size: clamp(2rem, 5.5vw, 10rem); font-weight: 700; line-height: 1.1; color: #111; margin: 0; }
	.hero-section-contact .hero-word { font-size: 4.5rem; font-weight: 700; color: #5e17eb; line-height: 1; margin-top: 0.5rem; }
	.content > h1:first-child { display: none; }
	.hero-section-contact { position: relative; }
	.scroll-indicator {
		position: absolute;
		right: 1.5rem;
		bottom: clamp(3rem, 15vh, 8rem);
		width: 42px;
		height: 72px;
		border: 2px solid #dc2626;
		border-radius: 30px;
		display: flex;
		align-items: flex-end;
		justify-content: center;
		padding-bottom: 10px;
		animation: scrollPulse 1.8s infinite;
	}
	.scroll-indicator svg {
		width: 18px;
		height: 18px;
		color: #dc2626;
	}
	@media (max-width: 768px) {
		.hero-section-contact {
			padding: calc(var(--navbar-height, 72px) + 2rem) 1.5rem 4rem 1.5rem;
			min-height: calc(100vh - var(--navbar-height, 72px));
			justify-content: center;
		}
		.scroll-indicator {
			right: 1rem;
			bottom: clamp(2.5rem, 12vh, 6rem);
		}
	}
	@keyframes scrollPulse {
		0%, 20% { transform: translateY(0); }
		40% { transform: translateY(6px); }
		60% { transform: translateY(0); }
		100% { transform: translateY(0); }
	}
	@media (max-width: 768px) {
		.hero-section-contact .hero-title { font-size: 3rem; }
		.hero-section-contact .hero-word { font-size: 3rem; }
	}
</style>

<section class="hero-section-contact">
	<div class="hero-label">İLETİŞİM</div>
	<h1 class="hero-title" style="margin-bottom: 1.5rem;"><span style="color: #dc2626;">Birlikte</span> markanızı zihinlere<br>taşıyalım.</h1>
	<a class="scroll-indicator" href="#contact-content" aria-label="Aşağı kaydır">
		<svg viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
			<path d="M12 5v14M5 12l7 7 7-7"/>
		</svg>
	</a>
</section>

<div id="contact-content"></div>

<style>
	.contact-form-section {
		display: grid;
		grid-template-columns: 1fr 1fr;
		gap: 4rem;
		margin: 4rem 0;
		align-items: start;
	}
	.contact-form-section form {
		display: flex;
		flex-direction: column;
		gap: 1.5rem;
	}
	.contact-form-section input,
	.contact-form-section textarea {
		width: 100%;
		padding: 1rem;
		border: 1px solid #e5e7eb;
		border-radius: 0.375rem;
		font-size: 1rem;
		font-family: inherit;
		background: #fff;
		transition: border-color 0.2s;
	}
	.contact-form-section input:focus,
	.contact-form-section textarea:focus {
		outline: none;
		border-color: #dc2626;
	}
	.contact-form-section textarea {
		min-height: 150px;
		resize: vertical;
	}
	.contact-form-section button {
		background: #dc2626;
		color: white;
		padding: 1rem 2rem;
		border: none;
		border-radius: 0.375rem;
		font-size: 1rem;
		font-weight: 600;
		cursor: pointer;
		transition: background 0.2s;
		text-transform: uppercase;
		letter-spacing: 0.05em;
	}
	.contact-form-section button:hover {
		background: #b91c1c;
	}
	.contact-info {
		display: flex;
		flex-direction: column;
		gap: 2rem;
	}
	.contact-info p {
		font-size: 1.125rem;
		line-height: 1.7;
		color: #374151;
		margin: 0;
	}
	.contact-info h3 {
		font-size: 1rem;
		font-weight: 700;
		text-transform: uppercase;
		letter-spacing: 0.05em;
		color: #111;
		margin: 0 0 0.5rem 0;
	}
	.contact-info a {
		color: #dc2626;
		text-decoration: none;
		font-weight: 500;
	}
	.contact-info a:hover {
		text-decoration: underline;
	}
	@media (max-width: 768px) {
		.contact-form-section {
			grid-template-columns: 1fr;
			gap: 3rem;
		}
	}
</style>

<h2 style="font-size: 1.5rem; font-weight: 700; margin: 0 0 1.5rem 0;">Mesajınız</h2>
<div class="contact-form-section">
	<form action="https://formspree.io/f/xnnebgaa" method="POST">
		<input type="text" name="name" placeholder="Ad Soyad" required>
		<input type="email" name="email" placeholder="E-posta" required>
		<input type="text" name="company" placeholder="Şirket Adı">
		<textarea name="message" placeholder="İhtiyaçlarınızı bize anlatın" required></textarea>
		<button type="submit">GÖNDER</button>
	</form>
	<div class="contact-info">
		<p>Markanızla ve projelerinizle ilgili tüm ihtiyaçlarınızı dinlemek için buradayız. Karşılaştığınız her zorlukta sizi anlamaya ve birlikte çözüm üretmeye hazırız. Yaklaşımımızı ve işlerimizi öğrenmek için dilediğiniz zaman bize ulaşabilirsiniz.</p>
		<div>
			<h3>GENEL SORULAR İÇİN</h3>
			<a href="mailto:hello@intohuman.com">hello@intohuman.com</a>
		</div>
	</div>
</div>
