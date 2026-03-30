-- Revert: schemas/agentic_db_app_public/tables/touchpoints_chunks/columns/touchpoints_id/alterations/alt0000001074


ALTER TABLE "agentic_db_app_public".touchpoints_chunks 
  ALTER COLUMN touchpoints_id DROP NOT NULL;


