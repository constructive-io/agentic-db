-- Revert: schemas/agentic_db_app_public/tables/reminder_chunks/constraints/reminder_chunks_pkey/constraint


ALTER TABLE "agentic_db_app_public".reminder_chunks 
  DROP CONSTRAINT reminder_chunks_pkey;


