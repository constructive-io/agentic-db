-- Revert: schemas/agent_db_app_public/tables/documents/grants/authenticated/select/grant


REVOKE SELECT ON "agent_db_app_public".documents FROM authenticated;


