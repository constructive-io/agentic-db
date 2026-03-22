-- Revert: schemas/agentic_db_app_public/tables/interaction_chunks/constraints/interaction_chunks_interaction_id_fkey/constraint


ALTER TABLE "agentic_db_app_public".interaction_chunks 
  DROP CONSTRAINT interaction_chunks_interaction_id_fkey;


