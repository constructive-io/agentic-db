-- Revert: schemas/agentic_db_user_identifiers_public/tables/emails/columns/id/alterations/alt0000001546


ALTER TABLE "agentic_db_user_identifiers_public".emails 
  ALTER COLUMN id DROP NOT NULL;


