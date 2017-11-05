'use strict';

class Platform{
	init()
	{
		// 検索ボタンを有効化
		let button = document.getElementById("query-area__query-input__button");

		button.addEventListener("click", query_input_element, false);

		return true;
	}

	get_platform_name(){
		return "android";
	}
};

