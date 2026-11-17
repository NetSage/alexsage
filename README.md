# alexsage.com

Source for https://alexsage.com, built with [Zola](https://www.getzola.org/)
and deployed by GitHub Actions on every push to `main`.

## Licenses

- **Code: MIT** ([LICENSE](LICENSE)). Covers `templates/`, `sass/`, `static/`,
  `config.toml`, `.github/`, `deploy.sh`.
- **Content: CC BY 4.0** ([LICENSE-CONTENT](LICENSE-CONTENT)). Covers `content/`
  (posts and the images stored with them).

## Local preview

Requires the Zola version pinned as `ZOLA_VERSION` in
`.github/workflows/deploy.yml`.

    zola serve

## Manual deploy (if Actions is unavailable)

    NFSN_USER=... bash deploy.sh
