-- Revert: schemas/agent_db_simple_secrets/tables/secrets/grants/authenticated/delete/grant


REVOKE DELETE ON "agent_db_simple_secrets".secrets FROM authenticated;


