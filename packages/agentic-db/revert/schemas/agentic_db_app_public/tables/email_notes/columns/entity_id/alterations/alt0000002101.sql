-- Revert: schemas/agentic_db_app_public/tables/email_notes/columns/entity_id/alterations/alt0000002101


ALTER TABLE "agentic_db_app_public".email_notes 
  ALTER COLUMN entity_id DROP NOT NULL;


