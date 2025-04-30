# CadQuery テンプレート

このリポジトリは、DockerとVisual Studio Codeを使用してCadQuery開発環境をセットアップするためのテンプレートを提供します。CadQueryスクリプトをすぐに開始するために必要なすべての構成とファイルが含まれています。

## プロジェクト構成

```text
cadquery-template
├── src
│   └── main.py          # CadQueryアプリケーションのメインエントリポイント
├── .devcontainer
│   └── devcontainer.json # 開発コンテナ構成
├── .vscode
│   ├── extensions.json   # 推奨されるVS Code拡張機能
│   └── settings.json     # ワークスペース固有の設定
├── copier.yml            # Copierテンプレート構成
├── Dockerfile            # Dockerイメージのセットアップ
├── requirements.txt      # Pythonの依存関係
└── README.md             # プロジェクトドキュメント
```

## はじめに

このCadQueryテンプレートを開始するには、次の手順に従います。

1. **リポジトリをクローンする**

   ```bash
   git clone https://github.com/yourusername/cadquery-template.git
   cd cadquery-template
   ```

2. **Visual Studio Codeで開く**
   プロジェクトをVisual Studio Codeで開きます。推奨される拡張機能のインストールが提案されます。

3. **Dockerコンテナをビルドする**
   開発コンテナ構成を使用してDockerイメージをビルドします。

   ```bash
   Remote-Containers: Reopen in Container
   ```

4. **依存関係をインストールする**
   コンテナ内に入ったら、必要なPythonパッケージをインストールします。

   ```bash
   pip install -r requirements.txt
   ```

5. **アプリケーションを実行する**
   メインのPythonファイルを実行して、CadQueryスクリプトを実行できます。

   ```bash
   python src/main.py
   ```

## 使い方

`src/main.py`ファイルでCadQueryスクリプトの記述を開始できます。例と使用方法については、CadQueryのドキュメントを参照してください。

## 貢献

イシューやプルリクエストを送信して、このテンプレートに自由に貢献してください。あなたの貢献を歓迎します！

## ライセンス

このプロジェクトはMITライセンスの下でライセンスされています。詳細については、LICENSEファイルを参照してください。
