-- Revert: schemas/agent_db_app_public/tables/attachments/grants/authenticated/delete/grant


REVOKE DELETE ON "agent_db_app_public".attachments FROM authenticated;


