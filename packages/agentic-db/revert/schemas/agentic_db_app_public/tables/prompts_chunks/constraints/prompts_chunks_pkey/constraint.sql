-- Revert: schemas/agentic_db_app_public/tables/prompts_chunks/constraints/prompts_chunks_pkey/constraint


ALTER TABLE "agentic_db_app_public".prompts_chunks 
  DROP CONSTRAINT prompts_chunks_pkey;


