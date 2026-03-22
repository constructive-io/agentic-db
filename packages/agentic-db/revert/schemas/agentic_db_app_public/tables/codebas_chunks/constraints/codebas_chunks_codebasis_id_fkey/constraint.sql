-- Revert: schemas/agentic_db_app_public/tables/codebas_chunks/constraints/codebas_chunks_codebasis_id_fkey/constraint


ALTER TABLE agentic_db_app_public.codebas_chunks 
  DROP CONSTRAINT codebas_chunks_codebasis_id_fkey;


