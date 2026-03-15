-- Revert: schemas/agent_db_app_public/tables/list_items/grants/authenticated/update/grant


REVOKE UPDATE ON "agent_db_app_public".list_items FROM authenticated;


