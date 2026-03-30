-- Revert: schemas/agentic_db_app_public/tables/thread_participants/columns/entity_id/alterations/alt0000002091


ALTER TABLE "agentic_db_app_public".thread_participants 
  ALTER COLUMN entity_id DROP NOT NULL;


