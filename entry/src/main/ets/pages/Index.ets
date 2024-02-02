@Entry
@Component
struct Index {
  @State message: string = 'Hello World'


  build() {
    Column({space :20}) {
      Image($r('app.media.icon'))
        .width(50)    // 宽度
        .height(50)   // 高度
        .borderRadius(10)   // 边框圆角
        .interpolation(ImageInterpolation.High)   // 图片插值
      TextInput({placeholder: '用户名'})
      TextInput({placeholder: '密码'})
        .type(InputType.Password)
        .showPasswordIcon(true)
      Button('登录')
      Row() {
        Checkbox()
        Text('记住我')
          .fontColor('#36D')
      }
    }
    .width('100%')
  }

  /*build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .fontColor('#36D')
          .onClick(() => {
            this.message = 'Hello ArkTS'
          })
      }
      .width('100%')
    }
    .height('100%')
  }*/
}