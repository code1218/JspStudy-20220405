const fileUpload = document.querySelector(".file-upload");
const previewImg = document.querySelector(".preview-img-item");

fileUpload.onchange = () => {
	if(!isImage(fileUpload.files[0])){
		alert("이미지 파일이 아닙니다.");
		fileUpload.files[0] = "";
		return;
	}
	
	const reader = new FileReader();
	
	reader.onload = () => {
		console.log(previewImg.src);
		previewImg.src = reader.result;
	}
	
	reader.readAsDataURL(fileUpload.files[0]);
}

function isImage(file){
	console.log(file.type);
	return file.type.indexOf('image') >= 0;
}