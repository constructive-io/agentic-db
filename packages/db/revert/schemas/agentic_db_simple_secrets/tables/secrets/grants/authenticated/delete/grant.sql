-- Revert: schemas/agentic_db_simple_secrets/tables/secrets/grants/authenticated/delete/grant


REVOKE DELETE ON "agentic_db_simple_secrets".secrets FROM authenticated;


