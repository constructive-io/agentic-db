-- Revert: schemas/agentic_db_app_public/tables/files/columns/entity_id/alterations/alt0000002414


ALTER TABLE "agentic_db_app_public".files 
  ALTER COLUMN entity_id DROP NOT NULL;


