-- Revert: schemas/agent_db_app_public/tables/feedback/grants/authenticated/select/grant


REVOKE SELECT ON "agent_db_app_public".feedback FROM authenticated;


