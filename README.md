# CDN ressources Album 3D

<p align="center">
  <img src="images/preview-3d.gif" width="300" alt="Animation du projet">
</p>

## Depot Gihub:

https://github.com/DjoAHP/cdn-ressources-albums

## Lien cdn.jsdelivr.net:

https://cdn.jsdelivr.net/gh/DjoAHP/cdn-ressources-albums@v1.1.9/

## Commandes push Depot GH:

```bash
git add .
git commit -m "Ajout nouvelles ressources"
git push
```

## Créer une version stable pour jsdeLivr

### Forcer push Depot GH vers jsdeLivr:

```bash
git tag v1.0.1
git push --tags
```

/////////////////////////////

## Tout automatisé PUSH

```bash
./release.sh
./release.sh "Fix bug login"
```

### Utilise le tag dans le CDN:

```bash
<script src="https://cdn.jsdelivr.net/gh/DjoAHP/cdn-ressources-albums@v1.1.32/js/test.js"></script>

```
