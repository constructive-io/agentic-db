-- Revert: schemas/agentic_db_app_public/tables/touchpoints_chunks/columns/created_at/alterations/alt0000001079


ALTER TABLE "agentic_db_app_public".touchpoints_chunks 
  ALTER COLUMN created_at DROP DEFAULT;


