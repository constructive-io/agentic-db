-- Revert: schemas/agent_db_app_public/tables/attachments/grants/authenticated/update/grant


REVOKE UPDATE ON "agent_db_app_public".attachments FROM authenticated;


