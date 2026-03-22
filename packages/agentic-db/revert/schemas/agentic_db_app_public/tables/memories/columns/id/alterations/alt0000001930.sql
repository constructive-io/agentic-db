-- Revert: schemas/agentic_db_app_public/tables/memories/columns/id/alterations/alt0000001930


ALTER TABLE "agentic_db_app_public".memories 
  ALTER COLUMN id DROP NOT NULL;


