# CLI Provisioning Experience Log

**Date:** 2026-03-05
**Task:** Create a Bash sibling (`provision-bash.sh`) to the TypeScript provisioning script (`provision.ts`).

## Goal
Demonstrate how to perform the same provisioning flow (Sign Up -> Provision Database) using only the generated `@constructive-io/constructive-cli` and standard shell tools.

## Key Findings

### 1. Input Object Handling (Auth)
The `signUp` mutation takes a single input object argument (`input: SignUpInput!`).
*   **Initial Expectation:** The CLI would flatten the input fields into flags like `--email` and `--password`.
*   **Reality:** The generated CLI expects a JSON string for the input argument: `--input '{"email": "...", "password": "..."}'`.
*   **Output:** The command returns a JSON object. We used `jq` (or `grep`/`cut` in pure bash) to extract the `accessToken` and `userId`.

### 2. Generated CRUD vs Custom Mutations
The provisioning step uses `databaseProvisionModule.create`, which is a generated CRUD operation.
*   **Behavior:** Unlike custom mutations which often have specific arguments, the generated `create` command prompts for *every* field in the schema model, including optional ones.
*   **Automation:** To run non-interactively, we had to provide flags for *all* prompted fields, even if we just wanted to pass empty values.
    *   Example: `--status "pending" --errorMessage ""`
*   **Complex Types:** The `modules` field is a string array in the schema but treated as a string by the CLI. We passed it as a stringified JSON array: `--modules '["all"]'`.

### 3. Output Parsing
The CLI outputs standard JSON when successful.
*   **Success:** We can reliably parse `result.accessToken` and `result.userId` from the JSON output.
*   **Errors:** Errors are printed to stderr or as a JSON error object. The script checks for the presence of expected keys (like `databaseId`) to determine success.

## Conclusion
The CLI is capable of fully automating the provisioning flow, but requires careful handling of complex input types (JSON strings) and explicit flags to bypass interactive prompts for generated CRUD commands.

The resulting script (`packages/provision/src/scripts/provision-bash.sh`) is a functional, standalone alternative to the TypeScript SDK implementation.
