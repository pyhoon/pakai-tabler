B4J=true
Group=Views
ModulesStructureVersion=1
Type=Class
Version=10.3
@EndOfDesignText@
' Main View
' Version 6.60
Sub Class_Globals
	Private mModal As MiniHtml
	Private mToast As MiniHtml
	Private mContent As MiniHtml
	Private mSubContent As MiniHtml
End Sub

Public Sub Initialize

End Sub

Public Sub LoadContent (Tag1 As MiniHtml)
	mContent = Tag1
End Sub

Public Sub LoadSubContent (Tag1 As MiniHtml)
	mSubContent = Tag1
End Sub

Public Sub LoadModal (Tag1 As MiniHtml)
	mModal = Tag1
End Sub

Public Sub LoadToast (Tag1 As MiniHtml)
	mToast = Tag1
End Sub

Public Sub Render As MiniHtml
	Dim page1 As MiniHtml = MH.Html
	PageHeader.up(page1)
	PageBody.up(page1)
	Return page1
End Sub

Private Sub PageHeader As MiniHtml
	Dim head1 As MiniHtml = MH.Head
	'MH.Meta.up(head1).attr("http-equiv", "content-type" ).attr("content", "text/html; charset=utf-8")
	MH.Meta.up(head1).attr("charset", "utf-8").Mode = "self"
	MH.Meta.up(head1).attr("name", "viewport").attr("content", "width=device-width, initial-scale=1")
	MH.Meta.up(head1).attr("name", "description").attr("content", "Created using Pakai framework")
	MH.Meta.up(head1).attr("name", "author").attr("content", "Aeric Poon")
	MH.Title.up(head1).text("$APP_TITLE$").multiline
	MH.Link.up(head1).attr("rel", "icon").attr("href", "$SERVER_URL$/favicon.ico").attr("type", "image/x-icon")
	MH.Link.up(head1).attr("rel", "shortcut icon").attr("href", "$SERVER_URL$/static/img/favicon.png").attr("type", "image/png")
	head1.comment(" BEGIN STYLES ")
	head1.cdn("css", "https://cdn.jsdelivr.net/npm/@tabler/core@1.4.0/dist/css/tabler.min.css")
	'head1.cdn("css", "https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css")	
	head1.comment(" END STYLES ")
	Return head1
End Sub

Sub PageBody As MiniHtml
	Dim body1 As MiniHtml = MH.Body
	body1.comment(" BEGIN GLOBAL THEME SCRIPT ")
	'body1.cdn2("script", "./dist/js/tabler-theme.min.js?1759774806", "sha384-SoDJmj40r6f9Rfxi6Fq+bNS8ofhlZMyxHk9dq9Y8e1M17PZGkBRN/XUpx8swn0i5", "")
	body1.cdn("script", "https://cdn.jsdelivr.net/npm/@tabler/core@1.4.0/dist/js/tabler.min.js")
	'body1.cdn2("script", "https://cdn.jsdelivr.net/npm/htmx.org@2.0.8/dist/htmx.min.js", _
	'"sha384-/TgkGk7p307TH7EXJDuUlgG3Ce1UVolAOFopFekQkkXihi5u/6OCvVKyz1W+idaz", "anonymous")
	body1.cdn("script", "$SERVER_URL$/dist/js/htmx-4.0.0-beta2.min.js")
	'body1.cdn("script", "$SERVER_URL$/dist/js/app.js")
	'body1.cdn("script", "$SERVER_URL$/dist/js/bundle.js").attr3("defer")
	body1.comment(" END GLOBAL THEME SCRIPT ")
	Dim div1 As MiniHtml = MH.Div.up(body1)
	div1.cls("page")
	div1.comment(" BEGIN NAVBAR ")
	NavbarHeader1.up(div1)
	NavbarHeader2.up(div1)
	div1.comment(" END NAVBAR ")
	PageWrapperDiv.up(div1)
	Return body1
End Sub

Sub NavbarHeader1 As MiniHtml
	Dim header1 As MiniHtml = MH.Header
	header1.cls("navbar navbar-expand-md d-print-none")
	header1.multiline
	Dim div1 As MiniHtml = MH.Div.up(header1)
	div1.cls("container-xl")
	div1.multiline
	div1.comment("BEGIN NAVBAR TOGGLER ")
	ButtonToggler.up(div1)
	div1.comment("END NAVBAR TOGGLER ")
	div1.comment("BEGIN NAVBAR LOGO ")
	NavbarLogo.up(div1)
	div1.comment("END NAVBAR LOGO ")
	Dim div3 As MiniHtml = MH.Div.up(div1)
	div3.cls("navbar-nav flex-row order-md-last")
	div3.multiline
	Dim div4 As MiniHtml = MH.Div.up(div3)
	div4.cls("nav-item d-none d-md-flex me-3")
	div4.multiline
	Dim div5 As MiniHtml = MH.Div.up(div4)
	div5.cls("btn-list")
	div5.multiline

	Dim div6 As MiniHtml = MH.Div.up(div3)
	div6.cls("d-none d-md-flex")
	div6.multiline
	Dim div7 As MiniHtml = MH.Div.up(div6)
	div7.cls("nav-item")
	div7.multiline
	
	Dim div123 As MiniHtml = MH.Div.up(div3)
	div123.cls("nav-item dropdown")
	div123.multiline
	Dim a92 As MiniHtml = MH.Anchor.up(div123)
	a92.attr("href", "#")
	a92.cls("nav-link d-flex lh-1 p-0 px-2")
	a92.attr("data-bs-toggle", "dropdown")
	a92.attr("aria-label", "Open user menu")
	a92.FormatAttributes = True
	a92.multiline
	Dim span80 As MiniHtml = MH.Span.up(a92)
	span80.cls("avatar avatar-sm")
	'span80.sty("background-image: url(./static/avatars/000m.jpg)")
	span80.sty("background-image: url(./static/avatars/002m.jpg)")
	Dim div124 As MiniHtml = MH.Div.up(a92)
	div124.cls("d-none d-xl-block ps-2")
	div124.multiline
	Dim div125 As MiniHtml = MH.Div.up(div124)
	div125.text("Aeric Poon")
	Dim div126 As MiniHtml = MH.Div.up(div124)
	div126.cls("mt-1 small text-secondary")
	div126.text("Developer")
	Return header1
End Sub

Sub NavbarHeader2 As MiniHtml
	Dim header2 As MiniHtml = MH.Header
	header2.cls("navbar-expand-md")
	header2.multiline
	Dim div1 As MiniHtml = MH.Div.up(header2)
	div1.cls("collapse navbar-collapse")
	div1.attr("id", "navbar-menu")
	div1.multiline
	Dim div2 As MiniHtml = MH.Div.up(div1)
	div2.cls("navbar")
	div2.multiline
	Dim div3 As MiniHtml = MH.Div.up(div2)
	div3.cls("container-xl")
	div3.multiline
	Dim div4 As MiniHtml = MH.Div.up(div3)
	div4.cls("row flex-column flex-md-row flex-fill align-items-center")
	div4.multiline
	Dim div5 As MiniHtml = MH.Div.up(div4)
	div5.cls("col")
	div5.multiline
	div5.comment("BEGIN NAVBAR MENU ")
	Dim ul1 As MiniHtml = MH.Ul.up(div5)
	ul1.cls("navbar-nav")
	ul1.multiline
	Dim li1 As MiniHtml = MH.Li.up(ul1)
	li1.cls("nav-item active")
	li1.multiline
	Dim a1 As MiniHtml = MH.Anchor.up(li1)
	a1.cls("nav-link")
	a1.attr("href", "./")
	a1.multiline
	Dim span1 As MiniHtml = MH.Span.up(a1)
	span1.cls("nav-link-icon d-md-none d-lg-inline-block")
	span1.multiline
	span1.comment("Download SVG icon from http://tabler.io/icons/icon/home ")
	Dim svg1 As MiniHtml = MH.Svg.up(span1)
	svg1.attr("xmlns", "http://www.w3.org/2000/svg")
	svg1.attr("width", "24")
	svg1.attr("height", "24")
	svg1.attr("viewBox", "0 0 24 24")
	svg1.attr("fill", "none")
	svg1.attr("stroke", "currentColor")
	svg1.attr("stroke-width", "2")
	svg1.attr("stroke-linecap", "round")
	svg1.attr("stroke-linejoin", "round")
	svg1.cls("icon icon-1")
	svg1.FormatAttributes = True
	svg1.multiline
	Dim path1 As MiniHtml = MH.Path.up(svg1)
	path1.attr("d", "M5 12l-2 0l9 -9l9 9l-2 0")
	path1.multiline
	Dim path2 As MiniHtml = MH.Path.up(svg1)
	path2.attr("d", "M5 12v7a2 2 0 0 0 2 2h10a2 2 0 0 0 2 -2v-7")
	path2.multiline
	Dim path3 As MiniHtml = MH.Path.up(svg1)
	path3.attr("d", "M9 21v-6a2 2 0 0 1 2 -2h2a2 2 0 0 1 2 2v6")
	Dim span2 As MiniHtml = MH.Span.up(a1)
	span2.cls("nav-link-title")
	span2.text("Home")

	Dim li6 As MiniHtml = MH.Li.up(ul1)
	li6.cls("nav-item")
	li6.multiline
	Dim a93 As MiniHtml = MH.Anchor.up(li6)
	'a93.cls("nav-link dropdown-toggle")
	a93.cls("nav-link")
	'a93.attr("href", "#navbar-plugins")
	a93.attr("href", "#")
	'a93.attr("data-bs-toggle", "dropdown")
	'a93.attr("data-bs-auto-close", "outside")
	'a93.attr("role", "button")
	'a93.attr("aria-expanded", "false")
	'a93.FormatAttributes = True
	a93.multiline
	Dim span19 As MiniHtml = MH.Span.up(a93)
	span19.cls("nav-link-icon d-md-none d-lg-inline-block")
	span19.multiline
	Dim span20 As MiniHtml = MH.Path.up(a93)
	span20.cls("nav-link-title")
	span20.text("Roles")
	
	Dim div28 As MiniHtml = MH.Div.up(div4)
	div28.cls("col col-md-auto")
	div28.multiline
	Dim ul2 As MiniHtml = MH.Ul.up(div28)
	ul2.cls("navbar-nav")
	ul2.multiline
	Dim li9 As MiniHtml = MH.Li.up(ul2)
	li9.cls("nav-item")
	li9.multiline
	Dim a117 As MiniHtml = MH.Anchor.up(li9)
	a117.cls("nav-link")
	a117.attr("href", "#")
	a117.attr("data-bs-toggle", "offcanvas")
	a117.attr("data-bs-target", "#offcanvasSettings")
	a117.FormatAttributes = True
	a117.multiline
	'Dim span25 As MiniHtml = CreateTag("span").up(a117)
	'span25.cls("badge badge-sm bg-red text-red-fg")
	'span25.text("New")
	Dim span26 As MiniHtml = MH.Span.up(a117)
	span26.cls("nav-link-icon d-md-none d-lg-inline-block")
	span26.multiline
	span26.comment("Download SVG icon from http://tabler.io/icons/icon/settings ")
	Dim svg10 As MiniHtml = MH.Svg.up(span26)
	svg10.attr("xmlns", "http://www.w3.org/2000/svg")
	svg10.attr("width", "24")
	svg10.attr("height", "24")
	svg10.attr("viewBox", "0 0 24 24")
	svg10.attr("fill", "none")
	svg10.attr("stroke", "currentColor")
	svg10.attr("stroke-width", "2")
	svg10.attr("stroke-linecap", "round")
	svg10.attr("stroke-linejoin", "round")
	svg10.cls("icon icon-1")
	svg10.FormatAttributes = True
	svg10.multiline
	Dim path28 As MiniHtml = MH.Path.up(svg10)
	path28.attr("d", "M10.325 4.317c.426 -1.756 2.924 -1.756 3.35 0a1.724 1.724 0 0 0 2.573 1.066c1.543 -.94 3.31 .826 2.37 2.37a1.724 1.724 0 0 0 1.065 2.572c1.756 .426 1.756 2.924 0 3.35a1.724 1.724 0 0 0 -1.066 2.573c.94 1.543 -.826 3.31 -2.37 2.37a1.724 1.724 0 0 0 -2.572 1.065c-.426 1.756 -2.924 1.756 -3.35 0a1.724 1.724 0 0 0 -2.573 -1.066c-1.543 .94 -3.31 -.826 -2.37 -2.37a1.724 1.724 0 0 0 -1.065 -2.572c-1.756 -.426 -1.756 -2.924 0 -3.35a1.724 1.724 0 0 0 1.066 -2.573c-.94 -1.543 .826 -3.31 2.37 -2.37c1 .608 2.296 .07 2.572 -1.065z")
	path28.multiline
	Dim path29 As MiniHtml = MH.Path.up(svg10)
	path29.attr("d", "M9 12a3 3 0 1 0 6 0a3 3 0 0 0 -6 0")
	Dim span27 As MiniHtml = MH.Span.up(a117)
	span27.cls("nav-link-title")
	span27.text("Theme Settings")

	Return header2
End Sub

Sub PageWrapperDiv As MiniHtml
	Dim div1 As MiniHtml = MH.Div
	div1.cls("page-wrapper")
	PageHeaderDiv.up(div1)
	PageBodyDiv.up(div1)
	PageFooter.up(div1)
	Return div1
End Sub

Sub PageHeaderDiv As MiniHtml
	Dim div1 As MiniHtml = MH.Div
	div1.cls("page-header d-print-none")
	div1.attr("aria-label", "Page header")
	div1.multiline
	Dim div2 As MiniHtml = MH.Div.up(div1)
	div2.cls("container-xl")
	div2.multiline
	Dim div3 As MiniHtml = MH.Div.up(div2)
	div3.cls("row g-2 align-items-center")
	div3.multiline
	Dim div4 As MiniHtml = MH.Div.up(div3)
	div4.cls("col")
	div4.multiline
	div4.comment("Page pre-title ")
	Dim div5 As MiniHtml = MH.Div.up(div4)
	div5.cls("page-pretitle")
	div5.text("Overview")
	Dim h21 As MiniHtml = MH.H2.up(div4)
	h21.cls("page-title")
	h21.text("Dashboard")
	div3.comment("Page title actions ")
	Dim div6 As MiniHtml = MH.Div.up(div3)
	div6.cls("col-auto ms-auto d-print-none")
	div6.multiline
	Dim div7 As MiniHtml = MH.Div.up(div6)
	div7.cls("btn-list")
	div7.multiline
	Dim span1 As MiniHtml = MH.Span.up(div7)
	span1.cls("d-none d-sm-inline")
	span1.multiline
	Dim a1 As MiniHtml = MH.Anchor.up(span1)
	a1.attr("href", "#")
	a1.cls("btn btn-1")
	a1.text("New view")
	Dim a2 As MiniHtml = MH.Anchor.up(div7)
	a2.attr("href", "#")
	a2.cls("btn btn-primary btn-5 d-none d-sm-inline-block")
	a2.attr("data-bs-toggle", "modal")
	a2.attr("data-bs-target", "#modal-report")
	a2.FormatAttributes = True
	a2.multiline
	'a2.comment("Download SVG icon from http://tabler.io/icons/icon/plus ")
	Dim svg1 As MiniHtml = MH.Svg.up(a2)
	svg1.attr("xmlns", "http://www.w3.org/2000/svg")
	svg1.attr("width", "24")
	svg1.attr("height", "24")
	svg1.attr("viewBox", "0 0 24 24")
	svg1.attr("fill", "none")
	svg1.attr("stroke", "currentColor")
	svg1.attr("stroke-width", "2")
	svg1.attr("stroke-linecap", "round")
	svg1.attr("stroke-linejoin", "round")
	svg1.cls("icon icon-2")
	svg1.FormatAttributes = True
	svg1.multiline
	Dim path1 As MiniHtml = MH.Path.up(svg1)
	path1.attr("d", "M12 5l0 14")
	path1.multiline
	Dim path2 As MiniHtml = MH.Path.up(svg1)
	path2.attr("d", "M5 12l14 0")
	a2.text("Create new report")
	Dim a3 As MiniHtml = MH.Anchor.up(div7)
	a3.attr("href", "#")
	a3.cls("btn btn-primary btn-6 d-sm-none btn-icon")
	a3.attr("data-bs-toggle", "modal")
	a3.attr("data-bs-target", "#modal-report")
	a3.attr("aria-label", "Create new report")
	a3.FormatAttributes = True
	a3.multiline
	'a3.comment("Download SVG icon from http://tabler.io/icons/icon/plus ")
	Dim svg2 As MiniHtml = MH.Svg.up(a3)
	svg2.attr("xmlns", "http://www.w3.org/2000/svg")
	svg2.attr("width", "24")
	svg2.attr("height", "24")
	svg2.attr("viewBox", "0 0 24 24")
	svg2.attr("fill", "none")
	svg2.attr("stroke", "currentColor")
	svg2.attr("stroke-width", "2")
	svg2.attr("stroke-linecap", "round")
	svg2.attr("stroke-linejoin", "round")
	svg2.cls("icon icon-2")
	svg2.FormatAttributes = True
	svg2.multiline
	Dim path3 As MiniHtml = MH.Path.up(svg2)
	path3.attr("d", "M12 5l0 14")
	path3.multiline
	Dim path4 As MiniHtml = MH.Path.up(svg2)
	path4.attr("d", "M5 12l14 0")
	div6.comment("BEGIN MODAL ")
	div6.comment("END MODAL ")
	Return div1
End Sub

Sub PageBodyDiv As MiniHtml
	Dim div1 As MiniHtml = MH.Div
	div1.cls("page-body")
	div1.multiline
	Dim div2 As MiniHtml = MH.Div.up(div1)
	div2.cls("container-xl")
	div2.multiline
	Dim div3 As MiniHtml = MH.Div.up(div2)
	div3.cls("row row-deck row-cards")
	div3.multiline
	
	Dim div92 As MiniHtml = MH.Div.up(div3)
	div92.cls("col-12")
	div92.multiline
	Dim div93 As MiniHtml = MH.Div.up(div92)
	div93.cls("row row-cards")
	div93.multiline
	Dim div94 As MiniHtml = MH.Div.up(div93)
	div94.cls("col-sm-6 col-lg-3")
	div94.multiline
	Dim div95 As MiniHtml = MH.Div.up(div94)
	div95.cls("card card-sm")
	div95.multiline
	Dim div96 As MiniHtml = MH.Div.up(div95)
	div96.cls("card-body")
	div96.multiline
	Dim div97 As MiniHtml = MH.Div.up(div96)
	div97.cls("row align-items-center")
	div97.multiline
	Dim div98 As MiniHtml = MH.Div.up(div97)
	div98.cls("col-auto")
	div98.multiline
	Dim span12 As MiniHtml = MH.Span.up(div98)
	span12.cls("bg-primary text-white avatar")
	span12.multiline
	span12.comment("Download SVG icon from http://tabler.io/icons/icon/currency-dollar ")
	Dim svg10 As MiniHtml = MH.Svg.up(span12)
	svg10.attr("xmlns", "http://www.w3.org/2000/svg")
	svg10.attr("width", "24")
	svg10.attr("height", "24")
	svg10.attr("viewBox", "0 0 24 24")
	svg10.attr("fill", "none")
	svg10.attr("stroke", "currentColor")
	svg10.attr("stroke-width", "2")
	svg10.attr("stroke-linecap", "round")
	svg10.attr("stroke-linejoin", "round")
	svg10.cls("icon icon-1")
	svg10.FormatAttributes = True
	svg10.multiline
	Dim path80 As MiniHtml = MH.Path.up(svg10)
	path80.attr("d", "M16.7 8a3 3 0 0 0 -2.7 -2h-4a3 3 0 0 0 0 6h4a3 3 0 0 1 0 6h-4a3 3 0 0 1 -2.7 -2")
	path80.multiline
	Dim path81 As MiniHtml = MH.Path.up(svg10)
	path81.attr("d", "M12 3v3m0 12v3")
	Dim div99 As MiniHtml = MH.Div.up(div97)
	div99.cls("col")
	div99.multiline
	Dim div100 As MiniHtml = MH.Div.up(div99)
	div100.cls("font-weight-medium")
	div100.text("132 Sales")
	Dim div101 As MiniHtml = MH.Div.up(div99)
	div101.cls("text-secondary")
	div101.text("12 waiting payments")
	Dim div102 As MiniHtml =MH.Div.up(div93)
	div102.cls("col-sm-6 col-lg-3")
	div102.multiline
	Dim div103 As MiniHtml = MH.Div.up(div102)
	div103.cls("card card-sm")
	div103.multiline
	Dim div104 As MiniHtml = MH.Div.up(div103)
	div104.cls("card-body")
	div104.multiline
	Dim div105 As MiniHtml = MH.Div.up(div104)
	div105.cls("row align-items-center")
	div105.multiline
	Dim div106 As MiniHtml = MH.Div.up(div105)
	div106.cls("col-auto")
	div106.multiline
	Dim span13 As MiniHtml = MH.Span.up(div106)
	span13.cls("bg-green text-white avatar")
	span13.multiline
	span13.comment("Download SVG icon from http://tabler.io/icons/icon/shopping-cart ")
	Dim svg11 As MiniHtml = MH.Svg.up(span13)
	svg11.attr("xmlns", "http://www.w3.org/2000/svg")
	svg11.attr("width", "24")
	svg11.attr("height", "24")
	svg11.attr("viewBox", "0 0 24 24")
	svg11.attr("fill", "none")
	svg11.attr("stroke", "currentColor")
	svg11.attr("stroke-width", "2")
	svg11.attr("stroke-linecap", "round")
	svg11.attr("stroke-linejoin", "round")
	svg11.cls("icon icon-1")
	svg11.FormatAttributes = True
	svg11.multiline
	Dim path82 As MiniHtml = MH.Path.up(svg11)
	path82.attr("d", "M6 19m-2 0a2 2 0 1 0 4 0a2 2 0 1 0 -4 0")
	path82.multiline
	Dim path83 As MiniHtml = MH.Path.up(svg11)
	path83.attr("d", "M17 19m-2 0a2 2 0 1 0 4 0a2 2 0 1 0 -4 0")
	path83.multiline
	Dim path84 As MiniHtml = MH.Path.up(svg11)
	path84.attr("d", "M17 17h-11v-14h-2")
	path84.multiline
	Dim path85 As MiniHtml = MH.Path.up(svg11)
	path85.attr("d", "M6 5l14 1l-1 7h-13")
	Dim div107 As MiniHtml = MH.Div.up(div105)
	div107.cls("col")
	div107.multiline
	Dim div108 As MiniHtml = MH.Div.up(div107)
	div108.cls("font-weight-medium")
	div108.text("78 Orders")
	Dim div109 As MiniHtml = MH.Div.up(div107)
	div109.cls("text-secondary")
	div109.text("32 shipped")
	Dim div110 As MiniHtml = MH.Div.up(div93)
	div110.cls("col-sm-6 col-lg-3")
	div110.multiline
	Dim div111 As MiniHtml = MH.Div.up(div110)
	div111.cls("card card-sm")
	div111.multiline
	Dim div112 As MiniHtml = MH.Div.up(div111)
	div112.cls("card-body")
	div112.multiline
	Dim div113 As MiniHtml = MH.Div.up(div112)
	div113.cls("row align-items-center")
	div113.multiline
	Dim div114 As MiniHtml = MH.Div.up(div113)
	div114.cls("col-auto")
	div114.multiline
	Dim span14 As MiniHtml = MH.Span.up(div114)
	span14.cls("bg-x text-white avatar")
	span14.multiline
	span14.comment("Download SVG icon from http://tabler.io/icons/icon/brand-x ")
	Dim svg12 As MiniHtml = MH.Svg.up(span14)
	svg12.attr("xmlns", "http://www.w3.org/2000/svg")
	svg12.attr("width", "24")
	svg12.attr("height", "24")
	svg12.attr("viewBox", "0 0 24 24")
	svg12.attr("fill", "none")
	svg12.attr("stroke", "currentColor")
	svg12.attr("stroke-width", "2")
	svg12.attr("stroke-linecap", "round")
	svg12.attr("stroke-linejoin", "round")
	svg12.cls("icon icon-1")
	svg12.FormatAttributes = True
	svg12.multiline
	Dim path86 As MiniHtml = MH.Path.up(svg12)
	path86.attr("d", "M4 4l11.733 16h4.267l-11.733 -16z")
	path86.multiline
	Dim path87 As MiniHtml = MH.Path.up(svg12)
	path87.attr("d", "M4 20l6.768 -6.768m2.46 -2.46l6.772 -6.772")
	Dim div115 As MiniHtml = MH.Div.up(div113)
	div115.cls("col")
	div115.multiline
	Dim div116 As MiniHtml = MH.Div.up(div115)
	div116.cls("font-weight-medium")
	div116.text("623 Shares")
	Dim div117 As MiniHtml = MH.Div.up(div115)
	div117.cls("text-secondary")
	div117.text("16 today")
	Dim div118 As MiniHtml = MH.Div.up(div93)
	div118.cls("col-sm-6 col-lg-3")
	div118.multiline
	Dim div119 As MiniHtml = MH.Div.up(div118)
	div119.cls("card card-sm")
	div119.multiline
	Dim div120 As MiniHtml = MH.Div.up(div119)
	div120.cls("card-body")
	div120.multiline
	Dim div121 As MiniHtml = MH.Div.up(div120)
	div121.cls("row align-items-center")
	div121.multiline
	Dim div122 As MiniHtml = MH.Div.up(div121)
	div122.cls("col-auto")
	div122.multiline
	Dim span15 As MiniHtml = MH.Span.up(div122)
	span15.cls("bg-facebook text-white avatar")
	span15.multiline
	span15.comment("Download SVG icon from http://tabler.io/icons/icon/brand-facebook ")
	Dim svg13 As MiniHtml = MH.Svg.up(span15)
	svg13.attr("xmlns", "http://www.w3.org/2000/svg")
	svg13.attr("width", "24")
	svg13.attr("height", "24")
	svg13.attr("viewBox", "0 0 24 24")
	svg13.attr("fill", "none")
	svg13.attr("stroke", "currentColor")
	svg13.attr("stroke-width", "2")
	svg13.attr("stroke-linecap", "round")
	svg13.attr("stroke-linejoin", "round")
	svg13.cls("icon icon-1")
	svg13.FormatAttributes = True
	svg13.multiline
	Dim path88 As MiniHtml = MH.Path.up(svg13)
	path88.attr("d", "M7 10v4h3v7h4v-7h3l1 -4h-4v-2a1 1 0 0 1 1 -1h3v-4h-3a5 5 0 0 0 -5 5v2h-3")
	Dim div123 As MiniHtml = MH.Div.up(div121)
	div123.cls("col")
	div123.multiline
	Dim div124 As MiniHtml = MH.Div.up(div123)
	div124.cls("font-weight-medium")
	div124.text("132 Likes")
	Dim div125 As MiniHtml = MH.Div.up(div123)
	div125.cls("text-secondary")
	div125.text("21 today")

	InvoiceTable.up(div3)
	Return div1
End Sub

Sub InvoiceTable As MiniHtml
	Dim div335 As MiniHtml = MH.Div
	div335.cls("col-12")
	div335.multiline
	Dim div336 As MiniHtml = MH.Div.up(div335)
	div336.cls("card")
	div336.multiline
	Dim div337 As MiniHtml = MH.Div.up(div336)
	div337.cls("card-header")
	div337.multiline
	Dim h38 As MiniHtml = MH.H3.up(div337)
	h38.cls("card-title")
	h38.text("Invoices")
	Dim div338 As MiniHtml = MH.Div.up(div336)
	div338.cls("card-body border-bottom py-3")
	div338.multiline
	Dim div339 As MiniHtml = MH.Div.up(div338)
	div339.cls("d-flex")
	div339.multiline
	Dim div340 As MiniHtml = MH.Div.up(div339)
	div340.cls("text-secondary")
	div340.multiline
	div340.text("Show")
	Dim div341 As MiniHtml = MH.Div.up(div340)
	div341.cls("mx-2 d-inline-block")
	div341.multiline
	Dim input7 As MiniHtml = MH.Input.up(div341)
	input7.attr("type", "text")
	input7.cls("form-control form-control-sm")
	input7.attr("value", "8")
	input7.attr("size", "3")
	input7.attr("aria-label", "Invoices count")
	input7.FormatAttributes = True
	input7.multiline
	div340.text("entries")
	Dim div342 As MiniHtml = MH.Div.up(div339)
	div342.cls("ms-auto text-secondary")
	div342.multiline
	div342.text("Search:")
	Dim div343 As MiniHtml = MH.Div.up(div342)
	div343.cls("ms-2 d-inline-block")
	div343.multiline
	Dim input8 As MiniHtml = MH.Input.up(div343)
	input8.attr("type", "text")
	input8.cls("form-control form-control-sm")
	input8.attr("aria-label", "Search invoice")
	Dim div344 As MiniHtml = MH.Div.up(div336)
	div344.cls("table-responsive")
	div344.multiline
	
	Dim table5 As MiniHtml = MH.Table.up(div344)
	table5.cls("table table-selectable card-table table-vcenter text-nowrap datatable")
	table5.multiline
	Dim thead4 As MiniHtml = MH.Thead.up(table5)
	thead4.multiline
	Dim tr28 As MiniHtml = MH.Tr.up(thead4)
	tr28.multiline
	Dim th10 As MiniHtml = MH.Th.up(tr28)
	th10.cls("w-1")
	Dim input9 As MiniHtml = MH.Input.up(th10)
	input9.cls("form-check-input m-0 align-middle")
	input9.attr("type", "checkbox")
	input9.attr("aria-label", "Select all invoices")
	Dim th11 As MiniHtml = MH.Th.up(tr28)
	th11.cls("w-1")
	th11.multiline
	th11.text("No.")
	th11.comment("Download SVG icon from http://tabler.io/icons/icon/chevron-up ")
	Dim svg43 As MiniHtml = MH.Svg.up(th11)
	svg43.attr("xmlns", "http://www.w3.org/2000/svg")
	svg43.attr("width", "24")
	svg43.attr("height", "24")
	svg43.attr("viewBox", "0 0 24 24")
	svg43.attr("fill", "none")
	svg43.attr("stroke", "currentColor")
	svg43.attr("stroke-width", "2")
	svg43.attr("stroke-linecap", "round")
	svg43.attr("stroke-linejoin", "round")
	svg43.cls("icon icon-sm icon-thick icon-2")
	svg43.FormatAttributes = True
	svg43.multiline
	Dim path238 As MiniHtml = MH.Path.up(svg43)
	path238.attr("d", "M6 15l6 -6l6 6")
	Dim th12 As MiniHtml = MH.Th.up(tr28)
	th12.text("Invoice Subject")
	Dim th13 As MiniHtml = MH.Th.up(tr28)
	th13.text("Client")
	Dim th14 As MiniHtml = MH.Th.up(tr28)
	th14.text("VAT No.")
	Dim th15 As MiniHtml = MH.Th.up(tr28)
	th15.text("Created")
	Dim th16 As MiniHtml = MH.Th.up(tr28)
	th16.text("Status")
	Dim th17 As MiniHtml = MH.Th.up(tr28)
	th17.text("Price")
	Dim th18 As MiniHtml = MH.Th.up(tr28)
	th18.text("")
	
	Dim tbody3 As MiniHtml = MH.Tbody.up(table5)
	tbody3.multiline
	Dim tr29 As MiniHtml = MH.Tr.up(tbody3)
	tr29.multiline
	Dim td103 As MiniHtml = MH.Td.up(tr29)
	Dim input10 As MiniHtml = MH.Input.up(td103)
	input10.cls("form-check-input m-0 align-middle table-selectable-check")
	input10.attr("type", "checkbox")
	input10.attr("aria-label", "Select invoice")
	Dim td104 As MiniHtml = MH.Td.up(tr29)
	Dim span57 As MiniHtml = MH.Span.up(td104)
	span57.cls("text-secondary")
	span57.text("001401")
	Dim td105 As MiniHtml = MH.Td.up(tr29)
	Dim a45 As MiniHtml = MH.Anchor.up(td105)
	a45.attr("href", "invoice.html")
	a45.cls("text-reset")
	a45.attr("tabindex", "-1")
	a45.text("Design Works")
	Dim td106 As MiniHtml = MH.Td.up(tr29)
	td106.multiline
	Dim span58 As MiniHtml = MH.Span.up(td106)
	span58.cls("flag flag-xs flag-country-us me-2")
	td106.text("Carlson Limited")
	Dim td107 As MiniHtml = MH.Td.up(tr29)
	td107.text("87956621")
	Dim td108 As MiniHtml = MH.Td.up(tr29)
	td108.text("15 Dec 2017")
	Dim td109 As MiniHtml = MH.Td.up(tr29)
	td109.multiline
	Dim span59 As MiniHtml = MH.Span.up(td109)
	span59.cls("badge bg-success me-1")
	td109.text("Paid")
	Dim td110 As MiniHtml = MH.Td.up(tr29)
	td110.text("$887")
	Dim td111 As MiniHtml = MH.Td.up(tr29)
	td111.cls("text-end")
	td111.multiline
	Dim span60 As MiniHtml = MH.Span.up(td111)
	span60.cls("dropdown")
	span60.multiline
	Dim button2 As MiniHtml = MH.Button.up(span60)
	button2.cls("btn dropdown-toggle align-text-top")
	button2.attr("data-bs-boundary", "viewport")
	button2.attr("data-bs-toggle", "dropdown")
	button2.text("Actions")
	Dim div345 As MiniHtml = MH.Div.up(span60)
	div345.cls("dropdown-menu dropdown-menu-end")
	div345.multiline
	Dim a46 As MiniHtml = MH.Anchor.up(div345)
	a46.cls("dropdown-item")
	a46.attr("href", "#")
	a46.text("Action")
	Dim a47 As MiniHtml = MH.Anchor.up(div345)
	a47.cls("dropdown-item")
	a47.attr("href", "#")
	a47.text("Another action")
	
	Dim tr30 As MiniHtml = MH.Tr.up(tbody3)
	tr30.multiline
	Dim td112 As MiniHtml = MH.Td.up(tr30)
	Dim input11 As MiniHtml = MH.Input.up(td112)
	input11.cls("form-check-input m-0 align-middle table-selectable-check")
	input11.attr("type", "checkbox")
	input11.attr("aria-label", "Select invoice")
	Dim td113 As MiniHtml = MH.Td.up(tr30)
	Dim span61 As MiniHtml = MH.Span.up(td113)
	span61.cls("text-secondary")
	span61.text("001402")
	Dim td114 As MiniHtml = MH.Td.up(tr30)
	Dim a48 As MiniHtml = MH.Anchor.up(td114)
	a48.attr("href", "invoice.html")
	a48.cls("text-reset")
	a48.attr("tabindex", "-1")
	a48.text("UX Wireframes")
	Dim td115 As MiniHtml = MH.Td.up(tr30)
	td115.multiline
	Dim span62 As MiniHtml = MH.Span.up(td115)
	span62.cls("flag flag-xs flag-country-gb me-2")
	td115.text("Adobe")
	Dim td116 As MiniHtml = MH.Td.up(tr30)
	td116.text("87956421")
	Dim td117 As MiniHtml = MH.Td.up(tr30)
	td117.text("12 Apr 2017")
	Dim td118 As MiniHtml = MH.Td.up(tr30)
	td118.multiline
	Dim span63 As MiniHtml = MH.Span.up(td118)
	span63.cls("badge bg-warning me-1")
	td118.text("Pending")
	Dim td119 As MiniHtml = MH.Td.up(tr30)
	td119.text("$1200")
	Dim td120 As MiniHtml = MH.Td.up(tr30)
	td120.cls("text-end")
	td120.multiline
	Dim span64 As MiniHtml = MH.Span.up(td120)
	span64.cls("dropdown")
	span64.multiline
	Dim button3 As MiniHtml = MH.Button.up(span64)
	button3.cls("btn dropdown-toggle align-text-top")
	button3.attr("data-bs-boundary", "viewport")
	button3.attr("data-bs-toggle", "dropdown")
	button3.text("Actions")
	Dim div346 As MiniHtml = MH.Div.up(span64)
	div346.cls("dropdown-menu dropdown-menu-end")
	div346.multiline
	Dim a49 As MiniHtml = MH.Anchor.up(div346)
	a49.cls("dropdown-item")
	a49.attr("href", "#")
	a49.text("Action")
	Dim a50 As MiniHtml = MH.Anchor.up(div346)
	a50.cls("dropdown-item")
	a50.attr("href", "#")
	a50.text("Another action")
	
	' Table Footer
Dim div353 As MiniHtml = MH.Div.up(div336)
	div353.cls("card-footer")
	div353.multiline
	Dim div354 As MiniHtml = MH.Div.up(div353)
	div354.cls("row g-2 justify-content-center justify-content-sm-between")
	div354.multiline
	Dim div355 As MiniHtml = MH.Div.up(div354)
	div355.cls("col-auto d-flex align-items-center")
	div355.multiline
	Dim p4 As MiniHtml = MH.P.up(div355)
	p4.cls("m-0 text-secondary")
	p4.multiline
	p4.text("Showing")
	Dim strong35 As MiniHtml = MH.Strong.up(p4)
	strong35.text("1 to 8")
	p4.text(" of ")
	Dim strong36 As MiniHtml = MH.Strong.up(p4)
	strong36.text("16 entries")
	Dim div356 As MiniHtml = MH.Div.up(div354)
	div356.cls("col-auto")
	div356.multiline
	Dim ul1 As MiniHtml = MH.Ul.up(div356)
	ul1.cls("pagination m-0 ms-auto")
	ul1.multiline
	Dim li1 As MiniHtml = MH.Li.up(ul1)
	li1.cls("page-item disabled")
	li1.multiline
	Dim a69 As MiniHtml = MH.Anchor.up(li1)
	a69.cls("page-link")
	a69.attr("href", "#")
	a69.attr("tabindex", "-1")
	a69.attr("aria-disabled", "true")
	a69.FormatAttributes = True
	a69.multiline
	a69.comment("Download SVG icon from http://tabler.io/icons/icon/chevron-left ")
	Dim svg44 As MiniHtml = MH.Svg.up(a69)
	svg44.attr("xmlns", "http://www.w3.org/2000/svg")
	svg44.attr("width", "24")
	svg44.attr("height", "24")
	svg44.attr("viewBox", "0 0 24 24")
	svg44.attr("fill", "none")
	svg44.attr("stroke", "currentColor")
	svg44.attr("stroke-width", "2")
	svg44.attr("stroke-linecap", "round")
	svg44.attr("stroke-linejoin", "round")
	svg44.cls("icon icon-1")
	svg44.FormatAttributes = True
	svg44.multiline
	Dim path239 As MiniHtml = MH.Path.up(svg44)
	path239.attr("d", "M15 6l-6 6l6 6")
	Dim li2 As MiniHtml = MH.Li.up(ul1)
	li2.cls("page-item")
	li2.multiline
	Dim a70 As MiniHtml = MH.Anchor.up(li2)
	a70.cls("page-link")
	a70.attr("href", "#")
	a70.text("1")
	Dim li3 As MiniHtml = MH.Li.up(ul1)
	li3.cls("page-item")
	li3.multiline
	Dim a71 As MiniHtml = MH.Anchor.up(li3)
	a71.cls("page-link")
	a71.attr("href", "#")
	a71.text("2")
	Dim li4 As MiniHtml = MH.Li.up(ul1)
	li4.cls("page-item active")
	li4.multiline
	Dim a72 As MiniHtml = MH.Anchor.up(li4)
	a72.cls("page-link")
	a72.attr("href", "#")
	a72.text("3")
	Dim li5 As MiniHtml = MH.Li.up(ul1)
	li5.cls("page-item")
	li5.multiline
	Dim a73 As MiniHtml = MH.Anchor.up(li5)
	a73.cls("page-link")
	a73.attr("href", "#")
	a73.text("4")
	Dim li6 As MiniHtml = MH.Li.up(ul1)
	li6.cls("page-item")
	li6.multiline
	Dim a74 As MiniHtml = MH.Anchor.up(li6)
	a74.cls("page-link")
	a74.attr("href", "#")
	a74.text("5")
	Dim li7 As MiniHtml = MH.Li.up(ul1)
	li7.cls("page-item")
	li7.multiline
	Dim a75 As MiniHtml = MH.Anchor.up(li7)
	a75.cls("page-link")
	a75.attr("href", "#")
	a75.multiline
	a75.comment("Download SVG icon from http://tabler.io/icons/icon/chevron-right ")
	Dim svg45 As MiniHtml = MH.Svg.up(a75)
	svg45.attr("xmlns", "http://www.w3.org/2000/svg")
	svg45.attr("width", "24")
	svg45.attr("height", "24")
	svg45.attr("viewBox", "0 0 24 24")
	svg45.attr("fill", "none")
	svg45.attr("stroke", "currentColor")
	svg45.attr("stroke-width", "2")
	svg45.attr("stroke-linecap", "round")
	svg45.attr("stroke-linejoin", "round")
	svg45.cls("icon icon-1")
	svg45.FormatAttributes = True
	svg45.multiline
	Dim path240 As MiniHtml = MH.Path.up(svg45)
	path240.attr("d", "M9 6l6 6l-6 6")
	Return div335
End Sub

Sub PageFooter As MiniHtml
	Dim footer1 As MiniHtml = MH.Footer
	footer1.cls("footer footer-transparent d-print-none")
	footer1.multiline
	Dim div1 As MiniHtml = MH.Div.up(footer1)
	div1.cls("container-xl")
	div1.multiline
	Dim div2 As MiniHtml = MH.Div.up(div1)
	div2.cls("row text-center align-items-center flex-row-reverse")
	div2.multiline
	Dim div3 As MiniHtml = MH.Div.up(div2)
	div3.cls("col-lg-auto ms-lg-auto")
	div3.multiline
	Dim ul1 As MiniHtml = MH.Ul.up(div3)
	ul1.cls("list-inline list-inline-dots mb-0")
	ul1.multiline
	Dim li1 As MiniHtml = MH.Li.up(ul1)
	li1.cls("list-inline-item")

	Dim div4 As MiniHtml = MH.Div.up(div2)
	div4.cls("col-12 col-lg-auto mt-3 mt-lg-0")
	div4.multiline
	Dim ul2 As MiniHtml = MH.Ul.up(div4)
	ul2.cls("list-inline list-inline-dots mb-0")
	ul2.multiline
	Dim li5 As MiniHtml = MH.Li.up(ul2)
	li5.cls("list-inline-item")
	li5.multiline
	li5.text("Copyright &copy; 2026 Computerise powered by B4X")
	li5.text(". All rights reserved.")
	Dim li6 As MiniHtml = MH.Li.up(ul2)
	li6.cls("list-inline-item")
	li6.multiline
	Dim a6 As MiniHtml = MH.Anchor.up(li6)
	a6.attr("href", "./changelog.html")
	a6.cls("link-secondary")
	a6.attr("rel", "noopener")
	a6.text("v1.4.0")
	Return footer1
End Sub

Sub ButtonToggler As MiniHtml
	Dim button1 As MiniHtml = MH.Button
	button1.cls("navbar-toggler")
	button1.attr("type", "button")
	button1.attr("data-bs-toggle", "collapse")
	button1.attr("data-bs-target", "#navbar-menu")
	button1.attr("aria-controls", "navbar-menu")
	button1.attr("aria-expanded", "false")
	button1.attr("aria-label", "Toggle navigation")
	button1.FormatAttributes = True
	button1.multiline
	Dim span1 As MiniHtml = MH.Span.up(button1)
	span1.cls("navbar-toggler-icon")
	Return button1
End Sub

Sub NavbarLogo As MiniHtml
	Dim div2 As MiniHtml = MH.Div
	div2.cls("navbar-brand navbar-brand-autodark d-none-navbar-horizontal pe-0 pe-md-3")
	div2.multiline
	Dim a1 As MiniHtml = MH.Anchor.up(div2)
	a1.attr("href", ".")
	a1.attr("aria-label", "Tabler")
	Dim svg1 As MiniHtml = MH.Svg.up(a1)
	svg1.attr2(CreateMap( _
	"xmlns": "http://www.w3.org/2000/svg", _
	"width": "110", _
	"height": "32", _
	"viewBox": "0 0 232 68"))
	svg1.cls("navbar-brand-image")
	svg1.FormatAttributes = True
	svg1.multiline
	Dim path1 As MiniHtml = MH.Path.up(svg1)
	path1.attr2(CreateMap( _
	"d": "M64.6 16.2C63 9.9 58.1 5 51.8 3.4 40 1.5 28 1.5 16.2 3.4 9.9 5 5 9.9 3.4 16.2 1.5 28 1.5 40 3.4 51.8 5 58.1 9.9 63 16.2 64.6c11.8 1.9 23.8 1.9 35.6 0C58.1 63 63 58.1 64.6 51.8c1.9-11.8 1.9-23.8 0-35.6zM33.3 36.3c-2.8 4.4-6.6 8.2-11.1 11-1.5.9-3.3.9-4.8.1s-2.4-2.3-2.5-4c0-1.7.9-3.3 2.4-4.1 2.3-1.4 4.4-3.2 6.1-5.3-1.8-2.1-3.8-3.8-6.1-5.3-2.3-1.3-3-4.2-1.7-6.4s4.3-2.9 6.5-1.6c4.5 2.8 8.2 6.5 11.1 10.9 1 1.4 1 3.3.1 4.7zM49.2 46H37.8c-2.1 0-3.8-1-3.8-3s1.7-3 3.8-3h11.4c2.1 0 3.8 1 3.8 3s-1.7 3-3.8 3z", _
	"fill": "#066fd1"))
	path1.sty("fill: var(--tblr-primary, #066fd1)")
	path1.FormatAttributes = True
	path1.multiline
	Dim path2 As MiniHtml = MH.Path.up(svg1)
	path2.attr2(CreateMap( _
	"d": "M105.8 46.1c.4 0 .9.2 1.2.6s.6 1 .6 1.7c0 .9-.5 1.6-1.4 2.2s-2 .9-3.2.9c-2 0-3.7-.4-5-1.3s-2-2.6-2-5.4V31.6h-2.2c-.8 0-1.4-.3-1.9-.8s-.9-1.1-.9-1.9c0-.7.3-1.4.8-1.8s1.2-.7 1.9-.7h2.2v-3.1c0-.8.3-1.5.8-2.1s1.3-.8 2.1-.8 1.5.3 2 .8.8 1.3.8 2.1v3.1h3.4c.8 0 1.4.3 1.9.8s.8 1.2.8 1.9-.3 1.4-.8 1.8-1.2.7-1.9.7h-3.4v13c0 .7.2 1.2.5 1.5s.8.5 1.4.5c.3 0 .6-.1 1.1-.2.5-.2.8-.3 1.2-.3zm28-20.7c.8 0 1.5.3 2.1.8.5.5.8 1.2.8 2.1v20.3c0 .8-.3 1.5-.8 2.1-.5.6-1.2.8-2.1.8s-1.5-.3-2-.8-.8-1.2-.8-2.1c-.8.9-1.9 1.7-3.2 2.4-1.3.7-2.8 1-4.3 1-2.2 0-4.2-.6-6-1.7-1.8-1.1-3.2-2.7-4.2-4.7s-1.6-4.3-1.6-6.9c0-2.6.5-4.9 1.5-6.9s2.4-3.6 4.2-4.8c1.8-1.1 3.7-1.7 5.9-1.7 1.5 0 3 .3 4.3.8 1.3.6 2.5 1.3 3.4 2.1 0-.8.3-1.5.8-2.1.5-.5 1.2-.7 2-.7zm-9.7 21.3c2.1 0 3.8-.8 5.1-2.3s2-3.4 2-5.7-.7-4.2-2-5.8c-1.3-1.5-3-2.3-5.1-2.3-2 0-3.7.8-5 2.3-1.3 1.5-2 3.5-2 5.8s.6 4.2 1.9 5.7 3 2.3 5.1 2.3zm32.1-21.3c2.2 0 4.2.6 6 1.7 1.8 1.1 3.2 2.7 4.2 4.7s1.6 4.3 1.6 6.9-.5 4.9-1.5 6.9-2.4 3.6-4.2 4.8c-1.8 1.1-3.7 1.7-5.9 1.7-1.5 0-3-.3-4.3-.9s-2.5-1.4-3.4-2.3v.3c0 .8-.3 1.5-.8 2.1-.5.6-1.2.8-2.1.8s-1.5-.3-2.1-.8c-.5-.5-.8-1.2-.8-2.1V18.9c0-.8.3-1.5.8-2.1.5-.6 1.2-.8 2.1-.8s1.5.3 2.1.8c.5.6.8 1.3.8 2.1v10c.8-1 1.8-1.8 3.2-2.5 1.3-.7 2.8-1 4.3-1zm-.7 21.3c2 0 3.7-.8 5-2.3s2-3.5 2-5.8-.6-4.2-1.9-5.7-3-2.3-5.1-2.3-3.8.8-5.1 2.3-2 3.4-2 5.7.7 4.2 2 5.8c1.3 1.6 3 2.3 5.1 2.3zm23.6 1.9c0 .8-.3 1.5-.8 2.1s-1.3.8-2.1.8-1.5-.3-2-.8-.8-1.3-.8-2.1V18.9c0-.8.3-1.5.8-2.1s1.3-.8 2.1-.8 1.5.3 2 .8.8 1.3.8 2.1v29.7zm29.3-10.5c0 .8-.3 1.4-.9 1.9-.6.5-1.2.7-2 .7h-15.8c.4 1.9 1.3 3.4 2.6 4.4 1.4 1.1 2.9 1.6 4.7 1.6 1.3 0 2.3-.1 3.1-.4.7-.2 1.3-.5 1.8-.8.4-.3.7-.5.9-.6.6-.3 1.1-.4 1.6-.4.7 0 1.2.2 1.7.7s.7 1 .7 1.7c0 .9-.4 1.6-1.3 2.4-.9.7-2.1 1.4-3.6 1.9s-3 .8-4.6.8c-2.7 0-5-.6-7-1.7s-3.5-2.7-4.6-4.6-1.6-4.2-1.6-6.6c0-2.8.6-5.2 1.7-7.2s2.7-3.7 4.6-4.8 3.9-1.7 6-1.7 4.1.6 6 1.7 3.4 2.7 4.5 4.7c.9 1.9 1.5 4.1 1.5 6.3zm-12.2-7.5c-3.7 0-5.9 1.7-6.6 5.2h12.6v-.3c-.1-1.3-.8-2.5-2-3.5s-2.5-1.4-4-1.4zm30.3-5.2c1 0 1.8.3 2.4.8.7.5 1 1.2 1 1.9 0 1-.3 1.7-.8 2.2-.5.5-1.1.8-1.8.7-.5 0-1-.1-1.6-.3-.2-.1-.4-.1-.6-.2-.4-.1-.7-.1-1.1-.1-.8 0-1.6.3-2.4.8s-1.4 1.3-1.9 2.3-.7 2.3-.7 3.7v11.4c0 .8-.3 1.5-.8 2.1-.5.6-1.2.8-2.1.8s-1.5-.3-2.1-.8c-.5-.6-.8-1.3-.8-2.1V28.8c0-.8.3-1.5.8-2.1.5-.6 1.2-.8 2.1-.8s1.5.3 2.1.8c.5.6.8 1.3.8 2.1v.6c.7-1.3 1.8-2.3 3.2-3 1.3-.7 2.8-1 4.3-1z", _
	"fill-rule": "evenodd", _
	"clip-rule": "evenodd", _
	"fill": "#4a4a4a"))
	path1.sty("fill: var(--tblr-primary, #066fd1)")
	path1.FormatAttributes = True
	path1.multiline
	Return div2
End Sub