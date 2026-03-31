-- Revert: schemas/agentic_db_app_public/tables/prompts/constraints/prompts_pkey/constraint


ALTER TABLE "agentic_db_app_public".prompts 
  DROP CONSTRAINT prompts_pkey;


