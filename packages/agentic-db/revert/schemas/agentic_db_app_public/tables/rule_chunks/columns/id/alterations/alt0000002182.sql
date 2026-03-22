-- Revert: schemas/agentic_db_app_public/tables/rule_chunks/columns/id/alterations/alt0000002182


ALTER TABLE "agentic_db_app_public".rule_chunks 
  ALTER COLUMN id DROP NOT NULL;


