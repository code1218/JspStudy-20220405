const profileInputs = document.querySelectorAll(".profile-input");
const updateSubmitBtn = document.querySelector(".update-submit-btn");
const passwordUpdateBtn = document.querySelector(".password-update-btn");

const originPrincipal = {
	"name" : profileInputs[0].value,
	"email" : profileInputs[1].value
};


updateSubmitBtn.onclick = () => {
	//1. 빈값이 아니어야한다.
	
	//2. 기존(originData랑 현재 data랑 변화가 있는지 체크)
	
	// 1, 2 조건이 만족되면 submit()
	alert("회원 정보 수정 요청");
	
	console.log(originPrincipal.name);
	console.log(originPrincipal.email);
	console.log(profileInputs[0].value);
	console.log(profileInputs[1].value);
}


