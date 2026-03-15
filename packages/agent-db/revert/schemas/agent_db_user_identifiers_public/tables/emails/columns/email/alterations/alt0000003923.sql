-- Revert: schemas/agent_db_user_identifiers_public/tables/emails/columns/email/alterations/alt0000003923


ALTER TABLE "agent_db_user_identifiers_public".emails 
  ALTER COLUMN email DROP NOT NULL;


