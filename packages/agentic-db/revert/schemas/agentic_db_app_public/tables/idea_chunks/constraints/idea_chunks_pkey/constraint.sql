-- Revert: schemas/agentic_db_app_public/tables/idea_chunks/constraints/idea_chunks_pkey/constraint


ALTER TABLE "agentic_db_app_public".idea_chunks 
  DROP CONSTRAINT idea_chunks_pkey;


