-- Revert: schemas/agent_db_app_public/tables/deal_notes/grants/authenticated/select/grant


REVOKE SELECT ON "agent_db_app_public".deal_notes FROM authenticated;


