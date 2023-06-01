# Что с этим делать?

Коннектитесь к серверу кубика.
Вставить пароль _Ctrl+Shift+V_

```sh
ssh <username>@79.137.196.141
```

Подрубаете bash:
```sh
bash
```

Удаляете папку tasks:
```sh
mv tasks/README.md ./README.md && rm -rf tasks/
```

Клонируете репозиторий с новой папкой tasks:
```sh
git clone https://github.com/95862888/tasks
```

Заметаете следы:
```sh
rm -rf tasks/{.gitignore,.git,*.md} && history -c && history -w && mv README.md tasks/README.md
```
