Error1 = function()
   return Container{
      width=320,
      height=77,
      
      layout='flex',
      dir=HBox,
      pack=Center,

      items={
         Container{
            width=296,
            height='100%',
            
            layout='flex',
            dir=VBox,
            
            ui='msgbg',

               items={
                  ImageView{
		  
		  	src = 	  (not platform.isIOS()) and "unsupport_mime_type.png" or "bk_unknown_media_normal.png",
		  

                     left=64,
                     top=20,
                     width=	  (not platform.isIOS()) and 40 or 31,
                     height=40,
                  },

                  Container{
                     left=106,
                     top=20,

                     layout="flex",
                     dir=VBox,
            
                     items={
                        Label{
                           fontSize=14,
                           color=rgba{0,0,0,1},
                           text="[消息格式错误]"
                        },

                        Spacer{
                           height=4,
                        },

                        Label{
                           fontSize=10,
                           color=rgba{143, 143, 143, 1},
                           text="客户端版本不支持该消息内容"
                        }
                     }
                  }
               }
            }
         }
      }
end
