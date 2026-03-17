-- Revert: schemas/agentic_db_encrypted/tables/encrypted_secrets/grants/authenticated/insert/grant


REVOKE INSERT ON "agentic_db_encrypted".encrypted_secrets FROM authenticated;


