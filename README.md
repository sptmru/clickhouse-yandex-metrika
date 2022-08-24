# Yandex Metrica integration with Clickhouse

It's an easy way to export data from Yandex.Metrika to Clickhouse using <https://github.com/yndx-metrika/logs_api_integration.git>.

To start, update config.json with your data and run:

```
$ docker build -t clickhouse-metrika .
$ docker run clickhouse-metrika:latest -d
```
