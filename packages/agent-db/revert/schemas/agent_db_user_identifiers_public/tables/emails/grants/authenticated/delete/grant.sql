-- Revert: schemas/agent_db_user_identifiers_public/tables/emails/grants/authenticated/delete/grant


REVOKE DELETE ON "agent_db_user_identifiers_public".emails FROM authenticated;


