-- Revert: schemas/agentic_db_simple_secrets/tables/secrets/grants/authenticated/insert/grant


REVOKE INSERT ON agentic_db_simple_secrets.secrets FROM authenticated;


