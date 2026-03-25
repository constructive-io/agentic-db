# site

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Site records via agentic-db CLI

## Usage

```bash
agentic-db site list
agentic-db site get --id <UUID>
agentic-db site create --databaseId <UUID> [--title <String>] [--description <String>] [--ogImage <Image>] [--favicon <Attachment>] [--appleTouchIcon <Image>] [--logo <Image>] [--dbname <String>]
agentic-db site update --id <UUID> [--databaseId <UUID>] [--title <String>] [--description <String>] [--ogImage <Image>] [--favicon <Attachment>] [--appleTouchIcon <Image>] [--logo <Image>] [--dbname <String>]
agentic-db site delete --id <UUID>
```

## Examples

### List all site records

```bash
agentic-db site list
```

### Create a site

```bash
agentic-db site create --databaseId <UUID> [--title <String>] [--description <String>] [--ogImage <Image>] [--favicon <Attachment>] [--appleTouchIcon <Image>] [--logo <Image>] [--dbname <String>]
```

### Get a site by id

```bash
agentic-db site get --id <value>
```
