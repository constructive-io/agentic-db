-- Revert: schemas/agent_db_app_public/tables/tags/grants/authenticated/select/grant


REVOKE SELECT ON "agent_db_app_public".tags FROM authenticated;


