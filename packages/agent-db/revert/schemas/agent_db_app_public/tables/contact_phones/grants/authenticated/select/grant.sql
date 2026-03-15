-- Revert: schemas/agent_db_app_public/tables/contact_phones/grants/authenticated/select/grant


REVOKE SELECT ON "agent_db_app_public".contact_phones FROM authenticated;


