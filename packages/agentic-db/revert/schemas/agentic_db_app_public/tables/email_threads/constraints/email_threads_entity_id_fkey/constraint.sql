-- Revert: schemas/agentic_db_app_public/tables/email_threads/constraints/email_threads_entity_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".email_threads 
  DROP CONSTRAINT email_threads_entity_id_fkey;


