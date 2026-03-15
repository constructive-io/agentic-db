-- Revert: schemas/agent_db_app_public/tables/documents/grants/authenticated/delete/grant


REVOKE DELETE ON "agent_db_app_public".documents FROM authenticated;


