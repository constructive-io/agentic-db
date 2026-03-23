-- Revert: schemas/agentic_db_app_public/tables/interactions_chunks/constraints/interactions_chunks_interactions_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".interactions_chunks 
  DROP CONSTRAINT interactions_chunks_interactions_id_fkey;


