-- Revert: schemas/agentic_db_app_public/tables/rule_chunks/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_app_public".rule_chunks FROM authenticated;


