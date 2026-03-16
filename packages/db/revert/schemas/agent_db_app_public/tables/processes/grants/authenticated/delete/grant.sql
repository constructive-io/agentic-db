-- Revert: schemas/agent_db_app_public/tables/processes/grants/authenticated/delete/grant


REVOKE DELETE ON "agent_db_app_public".processes FROM authenticated;


