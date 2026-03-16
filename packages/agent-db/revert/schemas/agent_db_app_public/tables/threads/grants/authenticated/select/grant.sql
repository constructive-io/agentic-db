-- Revert: schemas/agent_db_app_public/tables/threads/grants/authenticated/select/grant


REVOKE SELECT ON "agent_db_app_public".threads FROM authenticated;


