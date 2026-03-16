-- Revert: schemas/agent_db_encrypted/tables/encrypted_secrets/grants/authenticated/delete/grant


REVOKE DELETE ON "agent_db_encrypted".encrypted_secrets FROM authenticated;


