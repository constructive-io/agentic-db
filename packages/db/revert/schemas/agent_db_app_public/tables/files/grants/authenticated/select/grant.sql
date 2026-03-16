-- Revert: schemas/agent_db_app_public/tables/files/grants/authenticated/select/grant


REVOKE SELECT ON "agent_db_app_public".files FROM authenticated;


