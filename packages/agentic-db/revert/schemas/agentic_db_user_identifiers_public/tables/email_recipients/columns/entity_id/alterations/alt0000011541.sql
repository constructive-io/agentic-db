-- Revert: schemas/agentic_db_user_identifiers_public/tables/email_recipients/columns/entity_id/alterations/alt0000011541


ALTER TABLE agentic_db_user_identifiers_public.email_recipients 
  ALTER COLUMN entity_id DROP NOT NULL;


