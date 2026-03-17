-- Revert: schemas/agentic_db_app_public/tables/deal_contacts/grants/authenticated/select/grant


REVOKE SELECT ON "agentic_db_app_public".deal_contacts FROM authenticated;


