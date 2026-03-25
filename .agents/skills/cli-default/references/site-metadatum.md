# siteMetadatum

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for SiteMetadatum records via agentic-db CLI

## Usage

```bash
agentic-db site-metadatum list
agentic-db site-metadatum get --id <UUID>
agentic-db site-metadatum create --databaseId <UUID> --siteId <UUID> [--title <String>] [--description <String>] [--ogImage <Image>]
agentic-db site-metadatum update --id <UUID> [--databaseId <UUID>] [--siteId <UUID>] [--title <String>] [--description <String>] [--ogImage <Image>]
agentic-db site-metadatum delete --id <UUID>
```

## Examples

### List all siteMetadatum records

```bash
agentic-db site-metadatum list
```

### Create a siteMetadatum

```bash
agentic-db site-metadatum create --databaseId <UUID> --siteId <UUID> [--title <String>] [--description <String>] [--ogImage <Image>]
```

### Get a siteMetadatum by id

```bash
agentic-db site-metadatum get --id <value>
```
