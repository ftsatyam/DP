<div align="center">

# ⚕️ ***HEROKU DEPLOY GUIDE***

</div>

---

### 🚀 ***HEROKU CLI DEPLOYMENT***

<details>
  <summary><b>Expand All Steps to Deploy <sup><kbd>Click Here</kbd></sup></b></summary>

**Step 1 :** Git clone this Repo and change directory

> Make sure git is installed on your system.

```shell
apt-get install git pip curl -y
```

```shell
git clone https://github.com/SilentDemonSD/WZ-Deploy wzbot && cd wzbot
```

**Step 2 :** Install Heroku CLI

For Android, use **Termux** (available via F-Droid) for CLI usage.

**The script requires sudo and isn’t Windows compatible.**

```shell
curl https://cli-assets.heroku.com/install.sh | sh
```

**Install with Ubuntu / Debian:**

```shell
curl https://cli-assets.heroku.com/install-ubuntu.sh | sh
```

**Install via npm:** _(Not Recommended)_

```shell
npm install -g heroku
```

**Official Heroku Install Guide:**  
https://devcenter.heroku.com/articles/heroku-cli#install-the-heroku-cli

**Step 3 :** Login into Heroku

_With Browser:_

```shell
heroku login
```

**OR**

_Without Browser:_

```shell
heroku login -i
```

- Enter your **Heroku Email**
- Enter your **Heroku Password / API Key**

**Step 4 :** Create Heroku App

```shell
heroku create --region us --stack container APP_NAME
```

**Notes:**

- `--region eu` for Europe Server.
- `--region us` for United States Server.
- Replace `APP_NAME` with your preferred unique app name.
- If `APP_NAME` is not provided, Heroku generates a random name.
- `--stack container` configures Heroku to deploy using the Dockerfile.
- `--buildpack heroku/python` can be used for Python buildpack-based deployments.

> Copy the `BASE_URL` generated after creating the app if your bot requires it.

**Step 5 :** Configure Required Variables and Files

Configure the required files and variables for your bot, such as:

- `config.py`
- `accounts.zip` _(if required)_
- `token.pickle` _(if required)_
- Other required private files or variables

**Sample `config.py`:**

```python
BOT_TOKEN = ""
TELEGRAM_API = 0
TELEGRAM_HASH = ""
OWNER_ID = 0
UPSTREAM_REPO = ""
UPSTREAM_BRANCH = "wzv3"
DATABASE_URL = ""
BASE_URL = ""
```

**To edit `config.py` using Nano:**

```shell
nano config.py
```

Save using `CTRL + O`, press `Enter`, then exit using `CTRL + X`.

**Helpful Nano Commands:**

- **Exit:** `CTRL + X`
- **Save:** `CTRL + O`
- **Help:** `CTRL + G`
- **Undo:** `ALT + U`
- `^` means `CTRL` in Termux.

**Step 6 :** Set Heroku Git Remote

```shell
git add . -f
git commit -m "HK Setup"
heroku git:remote -a APP_NAME
```

**Step 7 :** Deploy to Heroku

```shell
git push heroku main -f
```

**Step 8 :** Check Heroku Logs

```shell
heroku logs -a APP_NAME -t
```

> Use `CTRL + C` to stop the live log stream.

**All Heroku CLI Commands:**  
https://devcenter.heroku.com/articles/heroku-cli-commands

</details>

---
