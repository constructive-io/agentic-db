-- Revert: schemas/agent_db_app_public/tables/context_relations/grants/authenticated/insert/grant


REVOKE INSERT ON "agent_db_app_public".context_relations FROM authenticated;


