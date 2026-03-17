# contact

<!-- @constructive-io/graphql-codegen - DO NOT EDIT -->

CRUD operations for Contact records via agentic-db CLI

## Usage

```bash
agentic-db contact list
agentic-db contact get --id <value>
agentic-db contact create --entityId <value> --firstName <value> --searchTsvRank <value> --embeddingTextBm25Score <value> --firstNameTrgmSimilarity <value> --lastNameTrgmSimilarity <value> --emailTrgmSimilarity <value> --phoneTrgmSimilarity <value> --headlineTrgmSimilarity <value> --bioTrgmSimilarity <value> --locationTrgmSimilarity <value> --relationshipTypeTrgmSimilarity <value> --howWeMetTrgmSimilarity <value> --twitterHandleTrgmSimilarity <value> --linkedinUrlTrgmSimilarity <value> --githubUsernameTrgmSimilarity <value> --instagramHandleTrgmSimilarity <value> --websiteTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--lastName <value>] [--email <value>] [--phone <value>] [--headline <value>] [--bio <value>] [--location <value>] [--birthday <value>] [--relationshipType <value>] [--howWeMet <value>] [--twitterHandle <value>] [--linkedinUrl <value>] [--githubUsername <value>] [--instagramHandle <value>] [--website <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>] [--mainImageId <value>]
agentic-db contact update --id <value> [--entityId <value>] [--firstName <value>] [--lastName <value>] [--email <value>] [--phone <value>] [--headline <value>] [--bio <value>] [--location <value>] [--birthday <value>] [--relationshipType <value>] [--howWeMet <value>] [--twitterHandle <value>] [--linkedinUrl <value>] [--githubUsername <value>] [--instagramHandle <value>] [--website <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>] [--mainImageId <value>] [--searchTsvRank <value>] [--embeddingTextBm25Score <value>] [--firstNameTrgmSimilarity <value>] [--lastNameTrgmSimilarity <value>] [--emailTrgmSimilarity <value>] [--phoneTrgmSimilarity <value>] [--headlineTrgmSimilarity <value>] [--bioTrgmSimilarity <value>] [--locationTrgmSimilarity <value>] [--relationshipTypeTrgmSimilarity <value>] [--howWeMetTrgmSimilarity <value>] [--twitterHandleTrgmSimilarity <value>] [--linkedinUrlTrgmSimilarity <value>] [--githubUsernameTrgmSimilarity <value>] [--instagramHandleTrgmSimilarity <value>] [--websiteTrgmSimilarity <value>] [--embeddingTextTrgmSimilarity <value>] [--embeddingVectorDistance <value>] [--searchScore <value>]
agentic-db contact delete --id <value>
```

## Examples

### List all contact records

```bash
agentic-db contact list
```

### Create a contact

```bash
agentic-db contact create --entityId <value> --firstName <value> --searchTsvRank <value> --embeddingTextBm25Score <value> --firstNameTrgmSimilarity <value> --lastNameTrgmSimilarity <value> --emailTrgmSimilarity <value> --phoneTrgmSimilarity <value> --headlineTrgmSimilarity <value> --bioTrgmSimilarity <value> --locationTrgmSimilarity <value> --relationshipTypeTrgmSimilarity <value> --howWeMetTrgmSimilarity <value> --twitterHandleTrgmSimilarity <value> --linkedinUrlTrgmSimilarity <value> --githubUsernameTrgmSimilarity <value> --instagramHandleTrgmSimilarity <value> --websiteTrgmSimilarity <value> --embeddingTextTrgmSimilarity <value> --embeddingVectorDistance <value> --searchScore <value> [--lastName <value>] [--email <value>] [--phone <value>] [--headline <value>] [--bio <value>] [--location <value>] [--birthday <value>] [--relationshipType <value>] [--howWeMet <value>] [--twitterHandle <value>] [--linkedinUrl <value>] [--githubUsername <value>] [--instagramHandle <value>] [--website <value>] [--tags <value>] [--embeddingText <value>] [--embedding <value>] [--searchTsv <value>] [--mainImageId <value>]
```

### Get a contact by id

```bash
agentic-db contact get --id <value>
```
