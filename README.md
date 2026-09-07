# PhotonCheckout iOS SDK

PhotonCheckout iOS SDK 提供完整的支付收银台能力，支持信用卡、Apple Pay 等多种支付方式。

## 要求

- iOS 14.0+
- Swift 5.9+
- Xcode 15.0+

## 安装

### Swift Package Manager

在 Xcode 中：

1. **File → Add Package Dependencies**
2. 输入仓库地址：
   ```
   https://github.com/PhotonPay/photon-checkout-ios
   ```
3. 选择版本规则（推荐 **Up to Next Major**）
4. 点击 **Add Package**

### Linker Flag 配置

添加包后，需在 Build Settings 中配置 Linker Flag：

1. 选中 App Target → **Build Settings**
2. 搜索 **Other Linker Flags**
3. 添加 `-ObjC`

## 版本历史

| 版本 | 说明 |
|---|---|
| 1.0.0 | 初始版本 |
