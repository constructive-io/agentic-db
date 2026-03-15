-- Revert: schemas/agent_db_app_public/tables/contact_documents/grants/authenticated/select/grant


REVOKE SELECT ON "agent_db_app_public".contact_documents FROM authenticated;


