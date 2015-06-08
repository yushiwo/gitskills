Error = function()
   return Container{
      width=228,
      height=56,

      borderWidth=0,
      borderColor=rgba{255, 0,0 ,1},
      
      items={
         ImageView{
            src = (not platform.isIOS()) and "unsupport_mime_type.png" or "bk_unknown_media_normal.png",
            left=30,
            top=13,
            width=(not platform.isIOS()) and 40 or 31,
            height=40,
         },

         Container{
            left=72,
            top=14,

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
end
