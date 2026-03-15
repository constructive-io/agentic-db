-- Revert: schemas/agent_db_app_public/tables/feedback/grants/authenticated/update/grant


REVOKE UPDATE ON "agent_db_app_public".feedback FROM authenticated;


