-- Revert: schemas/agentic_db_user_identifiers_public/tables/emails/columns/owner_id/column


ALTER TABLE "agentic_db_user_identifiers_public".emails 
  DROP COLUMN owner_id RESTRICT;


