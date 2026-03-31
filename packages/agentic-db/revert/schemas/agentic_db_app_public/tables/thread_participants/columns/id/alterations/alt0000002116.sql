-- Revert: schemas/agentic_db_app_public/tables/thread_participants/columns/id/alterations/alt0000002116


ALTER TABLE "agentic_db_app_public".thread_participants 
  ALTER COLUMN id DROP NOT NULL;


