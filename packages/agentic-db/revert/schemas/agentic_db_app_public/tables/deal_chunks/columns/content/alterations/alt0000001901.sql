-- Revert: schemas/agentic_db_app_public/tables/deal_chunks/columns/content/alterations/alt0000001901


ALTER TABLE "agentic_db_app_public".deal_chunks 
  ALTER COLUMN content DROP NOT NULL;


