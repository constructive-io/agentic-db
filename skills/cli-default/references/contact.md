# contact

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Contact records via agent-db CLI

## Usage

```bash
agent-db contact list
agent-db contact get --id <value>
agent-db contact create --entityId <value> --firstName <value> --searchTsvRank <value> --embeddingDistance <value> [--lastName <value>] [--email <value>] [--phone <value>] [--headline <value>] [--bio <value>] [--location <value>] [--birthday <value>] [--relationshipType <value>] [--howWeMet <value>] [--twitterHandle <value>] [--linkedinUrl <value>] [--githubUsername <value>] [--instagramHandle <value>] [--website <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>] [--mainImageId <value>]
agent-db contact update --id <value> [--entityId <value>] [--firstName <value>] [--lastName <value>] [--email <value>] [--phone <value>] [--headline <value>] [--bio <value>] [--location <value>] [--birthday <value>] [--relationshipType <value>] [--howWeMet <value>] [--twitterHandle <value>] [--linkedinUrl <value>] [--githubUsername <value>] [--instagramHandle <value>] [--website <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>] [--mainImageId <value>] [--searchTsvRank <value>] [--embeddingDistance <value>]
agent-db contact delete --id <value>
```

## Examples

### List all contact records

```bash
agent-db contact list
```

### Create a contact

```bash
agent-db contact create --entityId <value> --firstName <value> --searchTsvRank <value> --embeddingDistance <value> [--lastName <value>] [--email <value>] [--phone <value>] [--headline <value>] [--bio <value>] [--location <value>] [--birthday <value>] [--relationshipType <value>] [--howWeMet <value>] [--twitterHandle <value>] [--linkedinUrl <value>] [--githubUsername <value>] [--instagramHandle <value>] [--website <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>] [--mainImageId <value>]
```

### Get a contact by id

```bash
agent-db contact get --id <value>
```
