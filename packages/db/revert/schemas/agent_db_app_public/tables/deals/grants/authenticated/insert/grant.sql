-- Revert: schemas/agent_db_app_public/tables/deals/grants/authenticated/insert/grant


REVOKE INSERT ON "agent_db_app_public".deals FROM authenticated;


