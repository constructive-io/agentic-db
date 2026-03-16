-- Revert: schemas/agent_db_app_public/tables/deal_notes/grants/authenticated/delete/grant


REVOKE DELETE ON "agent_db_app_public".deal_notes FROM authenticated;


