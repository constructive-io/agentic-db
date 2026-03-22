-- Revert: schemas/agentic_db_app_public/tables/rule_chunks/columns/updated_at/alterations/alt0000002189


ALTER TABLE "agentic_db_app_public".rule_chunks 
  ALTER COLUMN updated_at DROP NOT NULL;


