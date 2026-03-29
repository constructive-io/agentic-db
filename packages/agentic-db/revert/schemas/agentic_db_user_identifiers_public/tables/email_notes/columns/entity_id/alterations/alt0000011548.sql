-- Revert: schemas/agentic_db_user_identifiers_public/tables/email_notes/columns/entity_id/alterations/alt0000011548


ALTER TABLE agentic_db_user_identifiers_public.email_notes 
  ALTER COLUMN entity_id DROP NOT NULL;


