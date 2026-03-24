-- Revert: schemas/agentic_db_app_public/tables/rules_chunks/constraints/rules_chunks_pkey/constraint


ALTER TABLE agentic_db_app_public.rules_chunks 
  DROP CONSTRAINT rules_chunks_pkey;


