const itemInputs = document.querySelectorAll(".item-input");
const usernameInput = itemInputs[2].querySelector("input");
let usernameCheckFlag = "true";

function isEmpty(str) {
	let flag = true;

	if (str == "" || typeof str == "undefined" || str == null) {
		flag = true;
	} else {
		flag = false;
	}

	return flag;
}

usernameInput.onblur = () => {
	let username = usernameInput.value;

	if (isEmpty(username)) {
		alert("사용자 아이디를 입력해주세요.");
		usernameCheckFlag = "true";
	} else {
		$.ajax({
			type: "get",
			url: "/JspStudy_1916/signup-username-check",
			data: {
				"username": username
			},
			dataType: "text",
			success: function(data) {
				if (data == "true") {
					alert("이미 존재하는 사용자 이름입니다.");
					usernameCheckFlag = "true";
				} else {
					alert("가입 가능한 사용자 이름입니다.");
					usernameCheckFlag = "false";
				}
			},
			error: function(data) {
				alert("비동기 통신 오류");
			}

		});
	}

}