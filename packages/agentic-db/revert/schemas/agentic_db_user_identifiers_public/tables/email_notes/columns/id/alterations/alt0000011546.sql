-- Revert: schemas/agentic_db_user_identifiers_public/tables/email_notes/columns/id/alterations/alt0000011546


ALTER TABLE agentic_db_user_identifiers_public.email_notes 
  ALTER COLUMN id DROP NOT NULL;


