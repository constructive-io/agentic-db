-- Revert: schemas/agentic_db_app_public/tables/project_chunks/constraints/project_chunks_pkey/constraint


ALTER TABLE "agentic_db_app_public".project_chunks 
  DROP CONSTRAINT project_chunks_pkey;


