# Paralympic Athlete Admin (Yii2)

A small, clean **MVC** app to manage Paralympic athletes.
Built intentionally with **no scaffolding**, **no frontend JS/Ajax**, and **no built-in validators**—all validation is hand-written.

---

## What it does

* CRUD for athletes (create/list/edit/delete)
* **Manual validation** only:

  * `givenName`, `familyName` ≥ **3** chars
  * Age ≥ **12** on registration day
  * `personalBestTime` in **`hh:mm:ss`** (string regex, no DateTime parser)
  * `sport` ∈ {athletics track, swimming, cycling, triathlon}
* Sticky forms (values stay after errors)
* List with search, sport filter, per-page, sort by created
* Human-friendly **row number** (`#`) column (not the DB id)
* Basic authZ with a global **`$USER`** policy (`canView/Create/Update/Delete`)
* CSRF protection; Delete via POST

---

## Tech

* PHP **8.2+** / Yii **2**
* MySQL / MariaDB
* Bootstrap 5
* Apache + `.htaccess` or PHP built-in server

Project root: `Paralympic project/myapp`
Database: **`athletes_db`** (dump: `athletes_db.sql`)

---

## Quick start

1. **Install deps**

```bash
cd "C:\xampp\htdocs\Paralympic project\myapp"
composer install
```

2. **Create DB & import**

* Create database **`athletes_db`**
* Import `athletes_db.sql` (phpMyAdmin → Import)
  or: `mysql -u root -p athletes_db < athletes_db.sql`

3. **DB config** (already set for XAMPP) – `config/db.php`

```php
'dsn' => 'mysql:host=127.0.0.1;dbname=athletes_db',
'username' => 'root',
'password' => '',
```

(You can override via `DB_HOST/DB_NAME/DB_USER/DB_PASS` env vars.)

4. **Run**

**A) Apache (recommended)**

* DocumentRoot → `myapp/web`
* Enable `mod_rewrite`, set `AllowOverride All`
* `web/.htaccess` rewrites to `index.php`

Open: `http://localhost/athlete`

**B) PHP built-in (no Apache)**

```bash
php -S 127.0.0.1:8088 -t web web/router.php
# then visit:
http://127.0.0.1:8088/athlete
```

---

## Authorization (Task b)

* Global `$USER` with capability methods (`canView/Create/Update/Delete`).
* Enforced in `AthleteController::beforeAction()`.

Set the demo role in `web/index.php`:

```php
require __DIR__.'/../components/UserPolicy.php';
global $USER;
$USER = new \app\components\UserPolicy('admin'); // full rights for demo
```

---

## Where to look

* `models/Athlete.php` – **manual** `validateCustom()` rules
* `controllers/AthleteController.php` – CRUD, sticky forms, guards
* `views/athlete/create.php` – form with field-level errors
* `views/athlete/index.php` – filters + table + row number column
* `views/layouts/main.php` – header/footer + single flash renderer
* `views/site/index.php` – full-bleed hero (“PARALYMPIC SPORTS”)

---

## Troubleshooting

* **Pretty URLs**: ensure `mod_rewrite` + `AllowOverride All`; use `web/.htaccess`.
* **Duplicate messages**: render flashes only in `layouts/main.php`; widget should use `getAllFlashes(true)`.
* **Hero image**: confirm `web/img/hero-sports.webp` exists; hard refresh.

---

## Structure (short)

```
myapp/
  components/ UserPolicy.php
  config/     db.php, web.php
  controllers/ AthleteController.php, SiteController.php
  models/     Athlete.php
  views/      layouts/, athlete/, site/
  web/        .htaccess, router.php, img/
  athletes_db.sql
  composer.json / composer.lock
```

---

## Notes

* Pure server-side validation, escaped output, prepared SQL (AR).
* Delete is POST + CSRF-protected.
* UI is deliberately simple and accessible.
