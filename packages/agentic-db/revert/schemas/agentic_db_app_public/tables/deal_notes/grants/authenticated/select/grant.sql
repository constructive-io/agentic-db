-- Revert: schemas/agentic_db_app_public/tables/deal_notes/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_app_public".deal_notes FROM authenticated;


