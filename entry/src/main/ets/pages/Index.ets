import { router } from '@kit.ArkUI';
import { BusinessError } from '@kit.BasicServicesKit';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World !!';

  build() {
    RelativeContainer() {
      Text(this.message)
        .id('HelloWorld')
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
        .fontColor('red')
      Button() {
        Text('Click')
          .fontSize(30)
          .fontWeight(FontWeight.Bold)
          .fontColor('#fff')
      }
      .type(ButtonType.Capsule)
      .alignRules({
        center: { anchor: '__container__', align: VerticalAlign.Center },
        middle: { anchor: '__container__', align: HorizontalAlign.Center }
      })
      .margin({
        top: 130
      })
      .backgroundColor('#0D9FFB')
      .padding(10)
      .onClick(() => {
        console.info('index')
        router.pushUrl({ url: 'pages/Page' }).then(() => {
          console.info('跳转page成功')
        }).catch((err: BusinessError) => {
          console.error(`1111 ${err.code}, message is ${err.message}`)
        })
      })
    }
    .height('100%')
    .width('100%')

  }
}