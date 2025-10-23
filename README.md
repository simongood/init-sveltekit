# 此專案使用 
- svelte
- tailwind css
- vite

### docker 開啟服務
- `docker build -t [name] . `
- `docker run -d -p [host]:80 [name]`

### 服務快取設定
- 可參考 nginx.conf

### 開發建議版本
- "node": ">=22.0.0"

### css 字體優化設定
- 可參考 app.css 
- 對 tailwind text utility 做了平板與手機字體放大使用者友善
- 參考 gmail 設定 font family