-- Revert: schemas/agentic_db_app_public/tables/rule_chunks/columns/chunk_index/alterations/alt0000002185


ALTER TABLE "agentic_db_app_public".rule_chunks 
  ALTER COLUMN chunk_index DROP NOT NULL;


