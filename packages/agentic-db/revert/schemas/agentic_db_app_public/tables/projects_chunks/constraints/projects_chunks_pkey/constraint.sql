-- Revert: schemas/agentic_db_app_public/tables/projects_chunks/constraints/projects_chunks_pkey/constraint


ALTER TABLE agentic_db_app_public.projects_chunks 
  DROP CONSTRAINT projects_chunks_pkey;


