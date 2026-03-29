-- Revert: schemas/agentic_db_app_public/tables/event_links/columns/embedding_stale/alterations/alt0000001006


ALTER TABLE "agentic_db_app_public".event_links 
  ALTER COLUMN embedding_stale DROP NOT NULL;


