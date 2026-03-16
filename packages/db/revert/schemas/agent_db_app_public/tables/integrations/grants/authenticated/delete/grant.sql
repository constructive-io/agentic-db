-- Revert: schemas/agent_db_app_public/tables/integrations/grants/authenticated/delete/grant


REVOKE DELETE ON "agent_db_app_public".integrations FROM authenticated;


