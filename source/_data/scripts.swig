document.addEventListener('DOMContentLoaded', function() {
  const tagMenu = document.querySelector('.menu-item-tags');
  const tagLink = tagMenu.querySelector('.menu-item-link');
  const subMenu = tagMenu.querySelector('.sub-menu');

  // 點擊標籤選單時切換子選單顯示
  tagLink.addEventListener('click', function(e) {
    e.preventDefault();
    tagLink.classList.toggle('active');
    subMenu.classList.toggle('active');
  });

  // 點擊頁面其他地方時關閉子選單
  document.addEventListener('click', function(e) {
    if (!tagMenu.contains(e.target)) {
      tagLink.classList.remove('active');
      subMenu.classList.remove('active');
    }
  });
}); 