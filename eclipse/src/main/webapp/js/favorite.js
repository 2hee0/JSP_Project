  document.addEventListener("DOMContentLoaded", function() {
    const favoriteButton = document.getElementById("favorite");
    const titleArea = document.querySelector(".title-area");
    let isFavorite = false;

    favoriteButton.addEventListener("click", function() {
      if (!isFavorite) {
        alert("관심 표시가 되었습니다!");
        isFavorite = true;
      } else {
        alert("관심 표시가 해제되었습니다!");
        isFavorite = false;
      }
    });
  });