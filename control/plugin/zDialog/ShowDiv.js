        function showDiv(divid,width,height) {
			try{parent.CloseLoading();}catch(err){}//关闭loading
            var divObj = document.getElementById(divid);

            var winWidth = document.documentElement.clientWidth;
            var winHeight = document.documentElement.clientHeight;

            divObj.style.left = (winWidth / 2) - ((width + 20) / 2);
            //divObj.style.top = (winHeight / 2) - ((height) / 2);
			divObj.style.top = 40;

            divObj.style.display = 'block';
            //创建灰色背景层
            /*procbg = document.createElement("div");
            procbg.setAttribute("id", "mybg");
            procbg.style.background = "#000";
            procbg.style.width = "100%";
            procbg.style.height = "100%";
            procbg.style.position = "absolute";
            procbg.style.top = "0";
            procbg.style.left = "0";
            procbg.style.zIndex = "1";
            procbg.style.opacity = "0.3";
            procbg.style.filter = "Alpha(opacity=10)";
            //背景层加入页面
            document.body.appendChild(procbg);
            document.body.style.overflow = "hidden";*/
        }

        function closeDiv(divid) {
			try{parent.CloseLoading();}catch(err){}//关闭loading
            document.getElementById(divid).style.display = 'none';
            //procbg.style.visibility = "hidden";
        }




        //拖动
        function drag(obj) {
            var s = obj.style;
            var b = document.body;
            var x = event.clientX + b.scrollLeft - s.pixelLeft;
            var y = event.clientY + b.scrollTop - s.pixelTop;

            var m = function () {
                if (event.button == 1) {
                    s.pixelLeft = event.clientX + b.scrollLeft - x;
                    s.pixelTop = event.clientY + b.scrollTop - y;
                } else {
                    document.detachEvent("onmousemove", m);
                }
            }

            document.attachEvent("onmousemove", m)

            if (!this.z)
                this.z = 999;
            s.zIndex = ++this.z;
            event.cancelBubble = true;
        }