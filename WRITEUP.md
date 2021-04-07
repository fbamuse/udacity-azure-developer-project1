# Write-up Template

### Analyze, choose, and justify the appropriate resource option for deploying the app.

*For **both** a VM or App Service solution for the CMS app:*
- *Analyze costs, scalability, availability, and workflow*
- *Choose the appropriate solution (VM or App Service) for deploying the app*
- *Justify your choice*

コスト

VMはサーバ、ストレージのリソースが固定され、価格が見積もりやすい
セキュリティパッチや監視帰納の実装、
スケールアウトではロードバランサーコスト、運用負荷
高可用性対応など管理コストを考慮

Appserviceは価格ロードバランサー、すけ

、レポジトリとの連携、モニタリング機能との統合、ディプロイスロットによりABテスト、スワップ、ブルーグリーン、ABテストが容易などがあり、アプリケーションのライフサイクルを意識したCICDを前提にしたサービスが提供される。
加えて、フルマネージでメンテの手間が省けて開発に集中できる。

スケールアップ、ダウン、スケールアウト、インが無停止、
ラインタイムのアップグレードが無停止

プランによって占有



### Assess app changes that would change your decision.

*Detail how the app and any other needs would have to change for you to change your decision in the last section.* 


運用、負荷など使われ方が定常的に落着き、必要なリソースが見積が可能になり、Appserciceに比べてIaas構成の方が、運用コスト含めて優位な場合に、VM構成に変更を判断する。