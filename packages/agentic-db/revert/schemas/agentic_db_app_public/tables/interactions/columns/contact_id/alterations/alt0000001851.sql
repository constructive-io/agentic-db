-- Revert: schemas/agentic_db_app_public/tables/interactions/columns/contact_id/alterations/alt0000001851


ALTER TABLE "agentic_db_app_public".interactions 
  ALTER COLUMN contact_id DROP NOT NULL;


