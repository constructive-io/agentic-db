-- Revert: schemas/agentic_db_app_public/tables/session_chunks/constraints/session_chunks_pkey/constraint


ALTER TABLE agentic_db_app_public.session_chunks 
  DROP CONSTRAINT session_chunks_pkey;


