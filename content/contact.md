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
	.hero-section-contact .hero-label { font-size: 0.75rem; font-weight: 600; letter-spacing: 0.15em; text-transform: uppercase; color: #dc2626; margin-bottom: 0.75rem; }
	.hero-section-contact .hero-title { font-size: clamp(2rem, 5.5vw, 10rem); font-weight: 700; line-height: 1.1; color: #111; margin: 0; }
	.hero-section-contact .hero-word { font-size: 4.5rem; font-weight: 700; color: #5e17eb; line-height: 1; margin-top: 0.5rem; }
	.content > h1:first-child { display: none; }
	@media (max-width: 768px) {
		.hero-section-contact { padding-top: 4rem; min-height: 90vh; justify-content: flex-start; }
		.hero-section-contact .hero-title { font-size: 3rem; }
		.hero-section-contact .hero-word { font-size: 3rem; }
	}
</style>

<section class="hero-section-contact">
	<div class="hero-label">İLETİŞİM</div>
	<h1 class="hero-title" style="margin-bottom: 1.5rem;"><span style="color: #dc2626;">Birlikte</span> markanızı zihinlere<br>taşıyalım.</h1>
</section>

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
