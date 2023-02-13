/**
 * audioFileUpload.js
 */

 $(document).ready(function(){
 	$('#audioFileForm').on('submit', function(){
 	//폼이 submit 되지 않도록 기본 기능 중단
 		event.preventDefault();
 		
 		//폼데이터 읽어오기
 		var formData = new FormData($('#audioFileForm')[0]);
 		
 		//업로드 된 파일명 알아오기 : imageBox에 이미지 출력하기 위해 
 		var fileName =$('#uploadFile').val().split("\\").pop();
		alert($('#uploadFile').val()); 		 		
 		// 서버에 전송하고 결과 받아서 처리
 		$.ajax({
 			type:"post",
 			url:"allFileUpload",
 			enctype:"multipart/form-data",
 			processData:false,
 			contentType:false,
 			data: formData,
 			
 			success:function(result){
 				if(result == "success"){
 					${'audioBox').html('<audio src="/audio/'+fileName+'"controls>');
 					//images : 매핑 이름
 					// C:\springWorkspace\upload 폴더에 접근하기 위해서는 
 					// WebConfig.java에 upload 폴더로 설정되어있어야함 -> 추가
 					
 					}
 			},
 			error:function(){
 				alert("실패");
 			},
 			complete:function(){
 				alert("작업 완료");
 			}
 		}); // ajax 종료 	
 	});// submit 종료
});
 