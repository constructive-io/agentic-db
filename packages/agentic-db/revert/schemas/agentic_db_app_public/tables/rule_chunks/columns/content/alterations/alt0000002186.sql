-- Revert: schemas/agentic_db_app_public/tables/rule_chunks/columns/content/alterations/alt0000002186


ALTER TABLE "agentic_db_app_public".rule_chunks 
  ALTER COLUMN content DROP NOT NULL;


