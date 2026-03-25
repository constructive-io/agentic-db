# app

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for App records via agentic-db CLI

## Usage

```bash
agentic-db app list
agentic-db app get --id <UUID>
agentic-db app create --databaseId <UUID> --siteId <UUID> [--name <String>] [--appImage <Image>] [--appStoreLink <Url>] [--appStoreId <String>] [--appIdPrefix <String>] [--playStoreLink <Url>]
agentic-db app update --id <UUID> [--databaseId <UUID>] [--siteId <UUID>] [--name <String>] [--appImage <Image>] [--appStoreLink <Url>] [--appStoreId <String>] [--appIdPrefix <String>] [--playStoreLink <Url>]
agentic-db app delete --id <UUID>
```

## Examples

### List all app records

```bash
agentic-db app list
```

### Create a app

```bash
agentic-db app create --databaseId <UUID> --siteId <UUID> [--name <String>] [--appImage <Image>] [--appStoreLink <Url>] [--appStoreId <String>] [--appIdPrefix <String>] [--playStoreLink <Url>]
```

### Get a app by id

```bash
agentic-db app get --id <value>
```
