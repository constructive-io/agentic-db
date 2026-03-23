-- Revert: schemas/agentic_db_app_public/tables/agents/constraints/agents_pkey/constraint


ALTER TABLE agentic_db_app_public.agents 
  DROP CONSTRAINT agents_pkey;


