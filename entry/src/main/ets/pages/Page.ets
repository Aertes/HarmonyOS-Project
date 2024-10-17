import { router } from '@kit.ArkUI'

@Entry
@Component
struct Page {
  @State msg: string = 'Hi this'

  build() {
    RelativeContainer() {
      Text(this.msg)
        .fontSize(30)
        .fontWeight(FontWeight.Bold)
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
      Button('Back')
        .alignRules({
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
        .onClick(() => {
          console.info('back----')
          router.back()
        })
      Toggle({type: ToggleType.Switch, isOn:true})
        .margin({
          top: 100
        })
        .alignRules({
          center: { anchor: '__container__', align: VerticalAlign.Center },
          middle: { anchor: '__container__', align: HorizontalAlign.Center }
        })
    }
  }
}