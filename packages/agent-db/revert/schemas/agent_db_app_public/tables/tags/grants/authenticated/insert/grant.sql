-- Revert: schemas/agent_db_app_public/tables/tags/grants/authenticated/insert/grant


REVOKE INSERT ON "agent_db_app_public".tags FROM authenticated;


