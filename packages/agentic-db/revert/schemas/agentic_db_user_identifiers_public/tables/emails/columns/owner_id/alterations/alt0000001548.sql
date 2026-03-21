-- Revert: schemas/agentic_db_user_identifiers_public/tables/emails/columns/owner_id/alterations/alt0000001548


ALTER TABLE "agentic_db_user_identifiers_public".emails 
  ALTER COLUMN owner_id DROP NOT NULL;


