
window.addEventListener("load", function () {
    //html코드보다 먼저 로드되면 안되므로, 설정해줌.


    const imageUpload = document.getElementById("imageUpload");
    const imagePreview = document.getElementById("imagePreview");


    imageUpload.addEventListener("change", () => {

        const files = imageUpload.files;
        const maxFileCount = 5; // 최대 선택 가능한 파일 개수

        if (files.length > maxFileCount) {
            alert(`파일은 최대 ${maxFileCount}개까지 선택할 수 있습니다.`);
            imageUpload.value = ""; // 파일 선택 취소
            return;
        }

        // 이미지 크기 제한
        const maxSize = 5 * 1024 * 1024; // 5MB 이하로 제한
        const totalFileSize = Array.from(files).reduce((acc, file) => acc + file.size, 0);
      
        if (totalFileSize > maxSize) {
          alert('파일 크기가 너무 큽니다. 5MB 이하의 파일만 업로드해주세요.');
          imageUpload.value = '';
        }

        // 선택한 이미지 파일들을 배열로 가져오기
        const images = Array.from(imageUpload.files);

        // 반복문으로 이미지 미리보기 생성
        images.forEach((image) => {
            const reader = new FileReader();
            reader.readAsDataURL(image);
            reader.onload = () => {
                const imgElement = document.createElement("img");
                imgElement.src = reader.result;
                imagePreview.appendChild(imgElement);
            };
        });
    });
    


    // //새로고침 버튼
    // const refreshBtn = document.getElementById('refreshBtn');
    // refreshBtn.addEventListener('click', () => {
    // location.reload();
    // });
    

});

