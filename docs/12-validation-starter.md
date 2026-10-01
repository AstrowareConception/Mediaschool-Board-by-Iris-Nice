# 12 — Validation du starter fourni

Le présent document distingue la vérification du code de départ de la recette de l’application que les étudiants vont réaliser.

## Vérifications exécutées le 1er octobre 2026

- Build Vite/Tailwind/daisyUI réussi avec les versions verrouillées.
- Installation Composer réussie ; syntaxe des 17 fichiers PHP du socle vérifiée.
- 16 vérifications unitaires : cellules CSV, accents et séparateurs, total/vide, génération PDF et contrôle des destinataires sans envoyer de mail.
- 14 vérifications d’intégration Slim : santé, listes exactes, accès privés refusés, login valide/invalide, CSRF, déconnexion et route inconnue.
- Migrations exécutées et deuxième passage sans réapplication.
- PDF de démonstration rendu et inspecté visuellement.
- Configuration Compose validée ; scripts shell vérifiés ; archive Git créée et contrôlée : locks présents, aucun `.env`, dépendance locale ou dump.
- Liens internes du guide vérifiés.

## Vérification réelle Docker/PostgreSQL sur GitHub

Le [run GitHub Actions du starter](https://github.com/AstrowareConception/Mediaschool-Board-by-Iris-Nice/actions/runs/36881913610) a réussi sur le commit `c0c471331f2d6387a5317a13fe960a7c15e38a9c` : construction des trois services, healthchecks, syntaxe PHP, tests unitaires, tests Slim avec PostgreSQL, accès par proxy HTTP, refus anonyme et ouverture désactivée.

Cette exécution utilise un PostgreSQL 17 réel dans Docker. Elle complète les vérifications locales ; aucune dépendance de base WASM utilisée pour certains contrôles locaux n’est ajoutée au projet ou au déploiement.

## Ce qui reste à vérifier par les étudiants

L’inscription métier, la liste/détail, les statistiques, les routes d’export, l’envoi SMTP, les règles d’intégrité du modèle métier, le parcours complet sur téléphone et l’installation sur l’infrastructure du salon restent à produire et à tester. Le catalogue et les sessions fournis ne constituent pas ces fonctionnalités.

Les modèles `RAPPORT.md`, `PV.md` et `CHECKLIST.md` restent volontairement vierges de succès métier. La validation du starter ne vaut pas autorisation d’ouvrir la collecte réelle. Les tests métier doivent être ajoutés à la CI et la recette doit porter sur le commit effectivement livré.
