-- Revert: schemas/agent_db_app_public/tables/milestones/grants/authenticated/insert/grant


REVOKE INSERT ON "agent_db_app_public".milestones FROM authenticated;


