# contact

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Contact records via agentic-db CLI

**Unified Search API fields:** `embeddingTextBm25Score`, `firstNameTrgmSimilarity`, `lastNameTrgmSimilarity`, `emailTrgmSimilarity`, `phoneTrgmSimilarity`, `headlineTrgmSimilarity`, `bioTrgmSimilarity`, `locationTrgmSimilarity`, `relationshipTypeTrgmSimilarity`, `howWeMetTrgmSimilarity`, `twitterHandleTrgmSimilarity`, `linkedinUrlTrgmSimilarity`, `githubUsernameTrgmSimilarity`, `instagramHandleTrgmSimilarity`, `websiteTrgmSimilarity`, `embeddingTextTrgmSimilarity`, `searchScore`
Fields provided by the Unified Search plugin. Includes full-text search (tsvector/BM25), trigram similarity scores, and the combined searchScore. Computed fields are read-only and cannot be set in create/update operations.

## Usage

```bash
agentic-db contact list
agentic-db contact get --id <UUID>
agentic-db contact create --entityId <UUID> --firstName <String> [--lastName <String>] [--email <String>] [--phone <String>] [--headline <String>] [--bio <String>] [--location <String>] [--birthday <Date>] [--relationshipType <String>] [--howWeMet <String>] [--twitterHandle <String>] [--linkedinUrl <String>] [--githubUsername <String>] [--instagramHandle <String>] [--website <String>] [--tags <String>] [--embeddingText <String>] [--mainImageId <UUID>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db contact update --id <UUID> [--entityId <UUID>] [--firstName <String>] [--lastName <String>] [--email <String>] [--phone <String>] [--headline <String>] [--bio <String>] [--location <String>] [--birthday <Date>] [--relationshipType <String>] [--howWeMet <String>] [--twitterHandle <String>] [--linkedinUrl <String>] [--githubUsername <String>] [--instagramHandle <String>] [--website <String>] [--tags <String>] [--embeddingText <String>] [--mainImageId <UUID>] [--embedding <Vector>] [--embeddingStale <Boolean>]
agentic-db contact delete --id <UUID>
```

## Examples

### List all contact records

```bash
agentic-db contact list
```

### Create a contact

```bash
agentic-db contact create --entityId <UUID> --firstName <String> [--lastName <String>] [--email <String>] [--phone <String>] [--headline <String>] [--bio <String>] [--location <String>] [--birthday <Date>] [--relationshipType <String>] [--howWeMet <String>] [--twitterHandle <String>] [--linkedinUrl <String>] [--githubUsername <String>] [--instagramHandle <String>] [--website <String>] [--tags <String>] [--embeddingText <String>] [--mainImageId <UUID>] [--embedding <Vector>] [--embeddingStale <Boolean>]
```

### Get a contact by id

```bash
agentic-db contact get --id <value>
```
