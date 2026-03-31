-- Revert: schemas/agentic_db_app_public/tables/codebases_chunks/constraints/codebases_chunks_codebases_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".codebases_chunks 
  DROP CONSTRAINT codebases_chunks_codebases_id_fkey;


