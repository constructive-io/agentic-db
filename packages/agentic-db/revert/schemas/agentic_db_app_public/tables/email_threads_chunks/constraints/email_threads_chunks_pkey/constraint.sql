-- Revert: schemas/agentic_db_app_public/tables/email_threads_chunks/constraints/email_threads_chunks_pkey/constraint


ALTER TABLE "agentic_db_app_public".email_threads_chunks 
  DROP CONSTRAINT email_threads_chunks_pkey;


