-- Revert: schemas/agent_db_app_public/tables/integrations/grants/authenticated/update/grant


REVOKE UPDATE ON "agent_db_app_public".integrations FROM authenticated;


