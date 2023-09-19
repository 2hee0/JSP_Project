const closePopupButton = document.getElementById("close-popup");
const hourCloseCheckbox = document.getElementById("hour-close");

if (closePopupButton && hourCloseCheckbox) {
	closePopupButton.addEventListener("click", function(event) {
		event.preventDefault();

		const popupBack = document.querySelector(".popup-back");
		if (popupBack) {
			popupBack.style.display = "none";
		}

		if (hourCloseCheckbox.checked) {
			const now = new Date();
			const expires = new Date(now.getTime() + 60 * 60 * 1000);
			document.cookie = "popupClosed=true; expires=" + expires.toUTCString() + "; path=/";
		}
	});
}

window.addEventListener("load", function() {
	const popupClosed = document.cookie.includes("popupClosed=true");
	if (!popupClosed) {
		const popupBack = document.querySelector(".popup-back");
		if (popupBack) {
			popupBack.style.display = "block";
		}
	}
});

console.clear();

function swiper_slide() {
	const swiper01 = new Swiper('.section01 .swiper', {
		loop: true, // 슬라이드 반복 여부
		slidesPerView: 1.5, // 한 화면에 보이는 슬라이드 수
		centeredSlides: true, // 슬라이드 가운데 정렬 여부
		spaceBetween: 10, // 슬라이드 간의 간격 설정

		// 자동 재생 원할 경우 설정, 지우면 멈춰 있음
		autoplay: {
			delay: 3000, // 3초마다 슬라이드 넘김
			disableOnInteraction: true, // 자동 재생 중 건드려도 비활성화되지 않음
		},

		// 페이지에 대한 설정입니다 이 부분은 건들지 않습니다.
		pagination: {
			el: '.swiper-pagination',
		},

		// 버튼 대한 설정입니다 이 부분은 건들지 않습니다.
		navigation: {
			nextEl: '.swiper-button-next',
			prevEl: '.swiper-button-prev',
		},

	});

	const swiper02 = new Swiper('.portrait .swiper', {
		loop: true, // 슬라이드 반복 여부
		slidesPerView: 1, // 한 화면에 보이는 슬라이드 수
		centeredSlides: true, // 슬라이드 가운데 정렬 여부
		spaceBetween: 10, // 슬라이드 간의 간격 설정

		// 버튼 대한 설정입니다 이 부분은 건들지 않습니다.
		navigation: {
			nextEl: '.swiper-button-next',
			prevEl: '.swiper-button-prev',
		},

	});

	const swiper03 = new Swiper('.footer-notice .swiper', {
		loop: true, // 슬라이드 반복 여부
		direction: 'vertical',
		slidesPerView: 1, // 한 화면에 보이는 슬라이드 수
		centeredSlides: true, // 슬라이드 가운데 정렬 여부
		spaceBetween: 1, // 슬라이드 간의 간격 설정

		// 자동 재생 원할 경우 설정, 지우면 멈춰 있음
		autoplay: {
			delay: 3000, // 5초마다 슬라이드 넘김
			disableOnInteraction: false, // 자동 재생 중 건드려도 비활성화되지 않음
		},

		// 버튼 대한 설정입니다 이 부분은 건들지 않습니다.
		navigation: {
			nextEl: '.swiper-button-next',
			prevEl: '.swiper-button-prev',
		},

	});
}
swiper_slide();

function login() {
	if (confirm(" 로그인 후 이용하실 수 있습니다.\n 로그인 페이지로 이동하시겠습니까?") == true) {
		window.location.href = "login.jsp"
	} else {
		return false;
	}
}

function logout() {
	   alert("로그아웃 되었습니다.");
    window.location.href = "/giggle/LogoutAction.mo";
	}


