-- Revert: schemas/agentic_db_app_public/tables/thread_participants/columns/entity_id/column


ALTER TABLE "agentic_db_app_public".thread_participants 
  DROP COLUMN entity_id RESTRICT;


