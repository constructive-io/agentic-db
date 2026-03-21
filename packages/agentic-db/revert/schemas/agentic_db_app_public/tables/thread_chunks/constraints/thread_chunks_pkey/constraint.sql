-- Revert: schemas/agentic_db_app_public/tables/thread_chunks/constraints/thread_chunks_pkey/constraint


ALTER TABLE "agentic_db_app_public".thread_chunks 
  DROP CONSTRAINT thread_chunks_pkey;


