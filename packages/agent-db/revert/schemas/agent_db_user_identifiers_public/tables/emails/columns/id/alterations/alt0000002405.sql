-- Revert: schemas/agent_db_user_identifiers_public/tables/emails/columns/id/alterations/alt0000002405


ALTER TABLE "agent_db_user_identifiers_public".emails 
  ALTER COLUMN id DROP NOT NULL;


