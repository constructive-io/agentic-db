-- Revert: schemas/agent_db_app_public/tables/chunks/constraints/chunks_pkey/constraint


ALTER TABLE agent_db_app_public.chunks 
  DROP CONSTRAINT chunks_pkey;


