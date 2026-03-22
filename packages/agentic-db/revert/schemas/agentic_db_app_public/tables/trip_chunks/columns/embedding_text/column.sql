-- Revert: schemas/agentic_db_app_public/tables/trip_chunks/columns/embedding_text/column


ALTER TABLE "agentic_db_app_public".trip_chunks 
  DROP COLUMN embedding_text RESTRICT;


