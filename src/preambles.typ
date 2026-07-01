// 定义
#let name = it => {
	underline(emph(it));
}
#let brokenlist = arr => arr.intersperse(linebreak()).join()

// 封面
#let coverpage(title: "", author: "") = {
	set page(margin: 0pt);
	box(width: 100%, height: 100%)[
		#set align(center + horizon)

		#text(title, size: 24pt, weight: "bold")

		#text(author)

		最后编辑：#datetime.today().display("[year]年[month]月[day]日")
	];
}

// 文档模板
#let document(content, title: "") = {
	// 页面
	set page("iso-b5", margin: (top: 0.8in, bottom: 0.6in));

	// 页眉
	set page(
		header: box(
			align(right, title),
			width: 100%,
			inset: (bottom: 0.2em),
			stroke: (bottom: 0.5pt),
		),
		numbering: "1",
	);

	// 语言
	set text(lang: "zh");
	show text.where(lang: "zh", style: "normal"): set text(font: "Source Han Serif SC");
	show text.where(lang: "zh", style: "italic"): set text(font: "KaiTi");

	// 行内样式
	show emph: it => {
		if text.style == "normal" {
			set text(style: "italic");
			it;
		}
		else {
			set text(style: "normal");
			it;
		}
	};
	set underline(offset: 2pt);
	show link: it => text(underline(it), fill: blue);

	// 段落样式
	set par(linebreaks: "optimized");
	show heading: it => {
		it;
		v(0.8em);
	};
	show heading.where(level: 1): it => {
		set align(center);
		set text(size: 18pt);
		it;
	};

	// 块元素样式
	set table(stroke: none);
	set block(breakable: true);
	show table.cell.where(y: 0): set text(weight: "bold");

	// 内容
	content;
}